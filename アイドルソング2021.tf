data "spotify_track" "shinkai" {
  url = "https://open.spotify.com/track/2kWnEqjiLZKHnKBfPvDqi2"

  ## Computed
  # name   = "深海"
  # artist = "fishbowl"
}

data "spotify_track" "watakoi" {
  url = "https://open.spotify.com/track/6hvaKToIxRW1wJQMcT6bYH"

  ## Computed
  # name   = "わたし、恋始めたってよ"
  # artist = "ばってん少女隊"
}

data "spotify_track" "mizugarasu" {
  url = "https://open.spotify.com/track/2Z7Kpoh85XBTrCmsYfdSmg"

  ## Computed
  # name   = "水硝子"
  # artist = "RYUTist"
}

data "spotify_track" "rem" {
  url = "https://open.spotify.com/track/4bfajV2uBsIORZdANZZNwe"

  ## Computed
  # name   = "REM"
  # artist = "NELN"
}

data "spotify_track" "secret_summer" {
  url = "https://open.spotify.com/track/5SXfrdgEbI7dN1NYRtTYFI"

  ## Computed
  # name   = "Secret Summer"
  # artist = "開歌"
}

data "spotify_track" "nemohamo_rumor" {
  url = "https://open.spotify.com/track/2l0gIK1rMEDPuQUCCZ32yk"

  ## Computed
  # name   = "根も葉もRumor"
  # artist = "AKB48"
}

data "spotify_track" "nichijo" {
  url = "https://open.spotify.com/track/0j7N2tCclKzN8oW2rbW2iU"

  ## Computed
  # name   = "Nichijo"
  # artist = "ピューパ!!"
}

data "spotify_track" "kangetsukyo" {
  url = "https://open.spotify.com/track/2vMLuzEFT4pbA8Ih4uFvD7"

  ## Computed
  # name   = "観月京"
  # artist = "きのホ。"
}

data "spotify_track" "firstkissharyujinkun" {
  url = "https://open.spotify.com/track/03sd4RARpMXsXqiGLRnxqX"

  ## Computed
  # name   = "ファーストキッスは竜人くん"
  # artist = "ねもぺろ"
}


data "spotify_track" "clockwork_sparkle" {
  url = "https://open.spotify.com/track/6etFSn4PmCKt0SYrdU7eJT"

  ## Computed
  # name   = "クロックワーク・スパークル"
  # artist = "tipToe."
}

data "spotify_track" "forksong" {
  url = "https://open.spotify.com/track/1qFW5JX6JucWQCPthalaSn"

  ## Computed
  # name   = "フォークソング"
  # artist = "リルネード"
}

data "spotify_track" "kakaekirenaiwa" {
  url = "https://open.spotify.com/track/190fjpD9ZRqtuwRSOJZAcQ"

  ## Computed
  # name   = "抱えきれないわ"
  # artist = "SAKA-SAMA"
}

data "spotify_track" "last_summer_girl" {
  url = "https://open.spotify.com/track/4hHESNOgRzQq9QaMSXCmjp"

  ## Computed
  # name   = "LastSummer Girl"
  # artist = "カナミル"
}


resource "spotify_playlist" "idol_2021" {
  name        = "🎤 アイドルソング2021"
  description = "個人的な独断と偏見に満ちた2021年のアイドルソングのベスト10曲"
  public      = true

  tracks = [
    data.spotify_track.shinkai.id,
    data.spotify_track.watakoi.id,
    data.spotify_track.mizugarasu.id,
    data.spotify_track.rem.id,
    data.spotify_track.secret_summer.id,
    data.spotify_track.nemohamo_rumor.id,
    data.spotify_track.nichijo.id,
    data.spotify_track.kangetsukyo.id,
    data.spotify_track.firstkissharyujinkun.id,
    data.spotify_track.clockwork_sparkle.id,
    data.spotify_track.forksong.id,
    data.spotify_track.kakaekirenaiwa.id,
    data.spotify_track.last_summer_girl.id,
  ]
}

output "idol_2021_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.idol_2021.id}"
  description = "プレイリスト「アイドルソング2021」のURL"
}
