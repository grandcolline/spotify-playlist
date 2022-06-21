data "spotify_track" "mouwatashiwosukininatterukimihe" {
  url = "https://open.spotify.com/track/0864cdUzJvNGOrk1HUa5Vi"

  ## Computed
  # name   = "もうわたしを好きになっている君へ"
  # artist = "リルネード"
}

data "spotify_track" "renaichu" {
  url = "https://open.spotify.com/track/4hztZpGTd0r6sfWpOxvmyk"

  ## Computed
  # name   = "恋愛ちゅー"
  # artist = "リルネード"
}

data "spotify_track" "sarune" {
  url = "https://open.spotify.com/track/6JoOY88ZvjqJrBkkPqmHWs"

  ## Computed
  # name   = "サルネ!"
  # artist = "リルネード"
}

data "spotify_track" "natsunorecordgamawaridasu" {
  url = "https://open.spotify.com/track/7kDVpg1otrgRUqAwjdJwzZ"

  ## Computed
  # name   = "夏のレコードがまわりだす"
  # artist = "リルネード"
}

data "spotify_track" "konyaromantickgekijode" {
  url = "https://open.spotify.com/track/5vLv7undU7YNMayPCjRDQu"

  ## Computed
  # name   = "今夜、ロマンチック劇場で"
  # artist = "リルネード"
}

data "spotify_track" "oudoutekinalovesong" {
  url = "https://open.spotify.com/track/1ufzEDBZM5VEQOXftLravB"

  ## Computed
  # name   = "王道的なLOVEソング"
  # artist = "リルネード"
}

resource "spotify_playlist" "rirune_25" {
  name        = "[⏰25min] リルネード"
  description = "リルネードの代表曲で, Let's Pomodoro!"
  public      = true

  tracks = [
    data.spotify_track.mouwatashiwosukininatterukimihe.id,
    data.spotify_track.forksong.id,
    data.spotify_track.renaichu.id,
    data.spotify_track.sarune.id,
    data.spotify_track.natsunorecordgamawaridasu.id,
    data.spotify_track.konyaromantickgekijode.id,
    data.spotify_track.oudoutekinalovesong.id,
  ]
}

output "rirune_25_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.rirune_25.id}"
  description = "プレイリスト「25min リルネード」のURL"
}

