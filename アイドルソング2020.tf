data "spotify_track" "untie" {
  url = "https://open.spotify.com/track/3k9WcHPr33PMiikGxRyrso"

  ## Computed
  # name   = "untie"
  # artist = "sora tob sakana"
}

data "spotify_track" "yumewomiru" {
  url = "https://open.spotify.com/track/6jMqb8DaeiD6ZZTFDCYytA"

  ## Computed
  # name   = "ゆめをみる"
  # artist = "根本凪"
}

data "spotify_track" "saiai" {
  url = "https://open.spotify.com/track/4mZYwndiM9L7uQlyzWdTnx"

  ## Computed
  # name   = "再逢い"
  # artist = "963"
}

data "spotify_track" "sekisyo" {
  url = "https://open.spotify.com/track/7qBGMMt5oXeDRpA6lvG88P"

  ## Computed
  # name   = "sekisyo"
  # artist = "nuance"
}

data "spotify_track" "asaninare" {
  url = "https://open.spotify.com/track/6NRTJsFSssuOXz19AjL63V?si=667fb2e9dbae4102"

  ## Computed
  # name   = "朝になれ"
  # artist = "加納エミリ"
}

data "spotify_track" "nonfiction" {
  url = "https://open.spotify.com/track/50i41IVm0YCEdZ2wpHi5MF"

  ## Computed
  # name   = "ノンフィクション"
  # artist = "NELN"
}

data "spotify_track" "kokoronusunde" {
  url = "https://open.spotify.com/track/4gJTvGUAY17WN8r7heccoj"

  ## Computed
  # name   = "こころ盗んで"
  # artist = "奥津マリリ"
}

data "spotify_track" "haruniyubikiri" {
  url = "https://open.spotify.com/track/3KD3C7dwO95PPzQXQifft8"

  ## Computed
  # name   = "春にゆびきり"
  # artist = "RYUTist"
}

data "spotify_track" "hyaluronligirl" {
  url = "https://open.spotify.com/track/27FOGkwF96dWrfjBtXs78r"

  ## Computed
  # name   = "ヒアルロンリーガール"
  # artist = "ZOC"
}

data "spotify_track" "dancer_in_the_night" {
  url = "https://open.spotify.com/track/4kwTBNoFgxKWounDvAgFtT"

  ## Computed
  # name   = "Dancer in the Night"
  # artist = "ばってん少女隊"
}


resource "spotify_playlist" "idol_2020" {
  name        = "🎤 アイドルソング2020"
  description = "個人的な独断と偏見に満ちた2020年のアイドルソングのベスト10曲"
  public      = true

  tracks = [
    data.spotify_track.untie.id,
    data.spotify_track.yumewomiru.id,
    data.spotify_track.saiai.id,
    data.spotify_track.sekisyo.id,
    data.spotify_track.asaninare.id,
    data.spotify_track.nonfiction.id,
    data.spotify_track.kokoronusunde.id,
    data.spotify_track.haruniyubikiri.id,
    data.spotify_track.hyaluronligirl.id,
    data.spotify_track.dancer_in_the_night.id,
  ]
}

output "idol_2020_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.idol_2020.id}"
  description = "プレイリスト「アイドルソング2020」のURL"
}
