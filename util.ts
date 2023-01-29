import { Construct } from "constructs";
import { TerraformOutput } from "cdktf";
import { Playlist } from "./.gen/providers/spotify/playlist";

export interface MyPlaylistConfig {
  name: string;
  description?: string;
  public?: boolean;
  tracks: string[];
}

export const MyPlaylist = (
  scope: Construct,
  id: string,
  config: MyPlaylistConfig
) => {
  // デフォルト値を設定
  const description = config.description ?? "";
  const publicFlg = config.public ?? true;

  // プレイリストの作成
  const playlist = new Playlist(scope, id, {
    name: config.name,
    description,
    public: publicFlg,
    tracks: config.tracks,
  });

  // URL のアウトプット
  new TerraformOutput(scope, id + "_url", {
    value: `https://open.spotify.com/playlist/${playlist.id}`,
    description: "プレイリスト「" + config.name + "」のURL",
  });
};
