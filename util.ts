import { Construct } from "constructs";
import { TerraformOutput } from "cdktf";
import { Playlist } from "./.gen/providers/spotify/playlist";

export interface MyPlaylistConfig {
  name: string;
  description?: string;
  public?: boolean;
  tracks: string[];
}

export class MyPlaylist {
  public constructor(scope: Construct, id: string, config: MyPlaylistConfig) {
    // デフォルト値を設定
    const name = config.name;
    const description = config.description ?? "";
    const publicFlg = config.public ?? true;
    const tracks = config.tracks;

    // プレイリストの作成
    const playlist = new Playlist(scope, id, {
      name,
      description,
      public: publicFlg,
      tracks,
    });

    // URL のアウトプット
    new TerraformOutput(scope, id + "_url", {
      value: `https://open.spotify.com/playlist/${playlist.id}`,
      description: "プレイリスト「" + name + "」のURL",
    });
  }
}
