data "spotify_track" "easybreezy" {
  url = "https://open.spotify.com/track/4B0iIMQz88iQiMlRP47fJ1"

  ## Computed
  # name   = "Easy Breezy"
  # artist = "chelmico"
}

data "spotify_track" "disco" {
  url = "https://open.spotify.com/track/17JZ5WJ1XZfAMmI1s1OGB0"

  ## Computed
  # name   = "Disco"
  # artist = "chelmico"
}

data "spotify_track" "loveisover" {
  url = "https://open.spotify.com/track/5rYXZ9jGNnxCtWQ9mq7pfe"

  ## Computed
  # name   = "Love Is Over"
  # artist = "chelmico"
}

data "spotify_track" "zuruine" {
  url = "https://open.spotify.com/track/0btLLjOMp8mQ1q1NA18XpU"

  ## Computed
  # name   = "ずるいね"
  # artist = "chelmico"
}

data "spotify_track" "player" {
  url = "https://open.spotify.com/track/6ZgrQlvRIPKVTCLV02hnMt"

  ## Computed
  # name   = "Player"
  # artist = "chelmico"
}

data "spotify_track" "balloon" {
  url = "https://open.spotify.com/track/7zBjKO6CGdnCbd1EPyianB"

  ## Computed
  # name   = "Balloon"
  # artist = "chelmico"
}

data "spotify_track" "cozy" {
  url = "https://open.spotify.com/track/50drYJ6rmBOBdYH6L6a9Ii"

  ## Computed
  # name   = "cozy"
  # artist = "chelmico"
}

resource "spotify_playlist" "chelmico_25" {
  name        = "⏰25min chelmico"
  description = "chelmicoの代表曲で Let's Pomodoro!"
  public      = true

  tracks = [
    data.spotify_track.easybreezy.id,
    data.spotify_track.disco.id,
    data.spotify_track.loveisover.id,
    data.spotify_track.zuruine.id,
    data.spotify_track.player.id,
    data.spotify_track.balloon.id,
    data.spotify_track.cozy.id,
  ]
}

output "chelmico_25_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.chelmico_25.id}"
  description = "プレイリスト「25min chelmico」のURL"
}


