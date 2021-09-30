data "spotify_track" "listen_up" {
  url = "https://open.spotify.com/track/1lQWhRQ1JoPmIsVYZhDiCD"

  ## Computed
  # name   = "Listen Up (1985)"
  # artist = "Passion Pit"
}

data "spotify_track" "if_i_ever_feel_better" {
  url = "https://open.spotify.com/track/3AA8xNhDC0MpqwkGX3EP5V"

  ## Computed
  # name   = "If I Ever Feel Better"
  # artist = "Phoenix"
}

data "spotify_track" "easy" {
  url = "https://open.spotify.com/track/1kSiGrc3GAOWLnLuLlHh0e"

  ## Computed
  # name   = "Easy"
  # artist = "Tahiti 80"
}

data "spotify_track" "dance_with_somebady" {
  url = "https://open.spotify.com/track/39EISCnBUBzbDxBtaOCyPD"

  ## Computed
  # name   = "Dance With Somebody"
  # artist = "Mando Diao"
}

data "spotify_track" "groria" {
  url = "https://open.spotify.com/track/0zz9Y8cDtiIe56XpG73vJy"

  ## Computed
  # name   = "Groria"
  # artist = "Mando Diao"
}

data "spotify_track" "if_you_ever_leave_im_comming_with_you" {
  url = "https://open.spotify.com/track/1BiRaCcUqWpLLb4LZpvRMF"

  ## Computed
  # name   = "If You Ever Leave, I'm Comming with You"
  # artist = "The Wombats"
}

resource "spotify_playlist" "up" {
  name        = "🤘 テンションぶちあげ"
  description = "とにかくノリたいときに🕺"
  public      = true

  tracks = [
    data.spotify_track.listen_up.id,
    data.spotify_track.if_i_ever_feel_better.id,
    data.spotify_track.easy.id,
    data.spotify_track.dance_with_somebady.id,
    data.spotify_track.groria.id,
    data.spotify_track.if_you_ever_leave_im_comming_with_you.id,
  ]
}

output "up_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.up.id}"
  description = "プレイリスト「🤘 テンションぶちあげ」のURL"
}

