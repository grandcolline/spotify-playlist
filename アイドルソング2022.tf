data "spotify_track" "わたしの一番かわいいところ_FruitsZipper" {
  url = "https://open.spotify.com/track/3DR2RbatuGm3UVMrFflZxM"

  ## Computed
  # name   = "わたしの一番かわいいところ"
  # artist = "FRUITS ZIPPER"
}

data "spotify_track" "だいしきゅーだいしゅき_FemmeFatal" {
  url = "https://open.spotify.com/track/0TQpPhA1OBrVGIfaKShRrx"

  ## Computed
  # name   = "femme fatal"
  # artist = "だいしきゅーだいしゅき"
}

data "spotify_track" "HAZIMA-RHYTHM_JONAGOLD" {
  url = "https://open.spotify.com/track/2Z7Kpoh85XBTrCmsYfdSmg"

  ## Computed
  # name   = "ハジマリズム"
  # artist = "ジョナゴールド"
}

data "spotify_track" "シュガーゲーム_ステラシュガレット" {
  url = "https://open.spotify.com/track/29WVraNo2Gcd8BtTYlA5ox"

  ## Computed
  # name   = "シュガーゲーム"
  # artist = "ステラシュガレット"
}

data "spotify_track" "蜃気楼_タイトル未定" {
  url = "https://open.spotify.com/track/0Yh8KpL8Iu733TRiUILNup"

  ## Computed
  # name   = "蜃気楼"
  # artist = "タイトル未定"
}

data "spotify_track" "Sagashimono_ばってん少女隊" {
  url = "https://open.spotify.com/track/5EyoUNX0NkkotkTD3cL8aE"

  ## Computed
  # name   = "さがしもの"
  # artist = "ばってん少女隊"
}

data "spotify_track" "パルス_Ringwanderung" {
  url = "https://open.spotify.com/track/5TDU6FxtwdFzLvNgO0XAkj"

  ## Computed
  # name   = "パルス"
  # artist = "Ringwanderung"
}

data "spotify_track" "きらめきいま見えるでしょ_リルネード" {
  url = "https://open.spotify.com/track/61jpOEFOyTfHFh9N3WDc2E"

  ## Computed
  # name   = "きらめき、いま、見えるでしょ"
  # artist = "リルネード"
}

data "spotify_track" "税金なんてわかんない_NELN" {
  url = "https://open.spotify.com/track/0lWgp9d6pQExx2lRptw10s"

  ## Computed
  # name   = "税金なんてわかんない"
  # artist = "NELN"
}

data "spotify_track" "uragaeshi_llie" {
  url = "https://open.spotify.com/track/7g4bY7cvUAYw3lBUMfNz1T"

  ## Computed
  # name   = "uragaeshi"
  # artist = "llie"
}

data "spotify_track" "LastScene_LyricalSchool" {
  url = "https://open.spotify.com/track/68WIAbiapPKpkyLX0BoUeY"

  ## Computed
  # name   = "last scene"
  # artist = "lyrical school"
}

resource "spotify_playlist" "idol_2022" {
  name        = "🎤 アイドルソング2022"
  description = "個人的な独断と偏見に満ちた2022年のアイドルソングのベスト13曲"
  public      = true

  tracks = [
    data.spotify_track.わたしの一番かわいいところ_FruitsZipper.id,
    data.spotify_track.だいしきゅーだいしゅき_FemmeFatal.id,
    data.spotify_track.HAZIMA-RHYTHM_JONAGOLD.id,
    data.spotify_track.シュガーゲーム_ステラシュガレット.id,
    data.spotify_track.蜃気楼_タイトル未定.id,
    data.spotify_track.Sagashimono_ばってん少女隊.id,
    data.spotify_track.パルス_Ringwanderung.id,
    data.spotify_track.きらめきいま見えるでしょ_リルネード.id,
    data.spotify_track.税金なんてわかんない_NELN.id,
    data.spotify_track.uragaeshi_llie.id,
    data.spotify_track.LastScene_LyricalSchool.id,
  ]
}

output "idol_2022_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.idol_2022.id}"
  description = "プレイリスト「アイドルソング2022」のURL"
}
