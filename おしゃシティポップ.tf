data "spotify_track" "climax_night" {
  url = "https://open.spotify.com/track/3O4SdpqF7RzZkA79cRBvwV"

  ## Computed
  # name   = "Climax Night"
  # artist = "Yogee New Waves"
}

data "spotify_track" "hit_number" {
  url = "https://open.spotify.com/track/3qAT9iw2AiiJ0CxTcqxQn1"

  ## Computed
  # name   = "HIT NUMBER - EVISBEATSとPUNCH REMIX"
  # artist = "Emi Okamoto"
}

data "spotify_track" "nimaruni" {
  url = "https://open.spotify.com/track/75HcneiRhhR7rSz9wNp5I3"

  ## Computed
  # name   = "202 feat. 泉まくら - New Mix"
  # artist = "Lovely Summer Chan"
}

data "spotify_track" "hachijudebier" {
  url = "https://open.spotify.com/track/1PQzEVA6AtkAkJTS28RJD8"

  ## Computed
  # name   = "80denier"
  # artist = "kiki vivi lily"
}

data "spotify_track" "blue" {
  url = "https://open.spotify.com/track/2YACdk3xERwvxuT0JUBxvy"

  ## Computed
  # name   = "BLUE feat. kojikoji (Acoustic)"
  # artist = "LUCKY TAPES"
}

data "spotify_track" "buddies" {
  url = "https://open.spotify.com/track/5MUtNMkyc3wG8k4Zwzdvmv"

  ## Computed
  # name   = "Buddies"
  # artist = "ZIN"
}

data "spotify_track" "call_me_in_your_summer" {
  url = "https://open.spotify.com/track/2mrT7SZff7rpWppD9C8XEQ"

  ## Computed
  # name   = "CALL ME IN YOUR SUMMER"
  # artist = "SHE IS SUMMER"

}

data "spotify_track" "contact" {
  url = "https://open.spotify.com/track/5cAEkJEYiNTO26oXRKnxJn"

  ## Computed
  # name   = "Contact - TOSHIKI HAYASHI(%C) remix"
  # artist = "Mamiko Suzuki"

}

data "spotify_track" "tenminutes" {
  url = "https://open.spotify.com/track/7kBSLhGehCNcUJMpTUWkO9"

  ## Computed
  # name   = "For ten minutes, for a hundred yen"
  # artist = "MAISONdes"

}

data "spotify_track" "melt_bitter" {
  url = "https://open.spotify.com/track/6uSe3ACORUIVrAyiP84RZi"

  ## Computed
  # name   = "melt bitter"
  # artist = "satomoka"

}

data "spotify_track" "pool" {
  url = "https://open.spotify.com/track/7I8UsN16TuLIv1NctuVShw"

  ## Computed
  # name   = "POOL - (gappy ver.)"
  # artist = "Emi Okamoto"

}

data "spotify_track" "rainbow_town" {
  url = "https://open.spotify.com/track/5b6ZcC3q855F3Sv1rV9jsF"

  ## Computed
  # name   = "Rainbow Town"
  # artist = "SUKISHA"

}

data "spotify_track" "spacecraft" {
  url = "https://open.spotify.com/track/7bQKZTYbOdpJLICtehCBCz"

  ## Computed
  # name   = "spacecraft"
  # artist = "sui sui duck"

}

data "spotify_track" "summer_gate" {
  url = "https://open.spotify.com/track/2YfE0VF7XENPWTf7hP6TQU"

  ## Computed
  # name   = "Summer Gate"
  # artist = "CHIAKI SATO"

}

data "spotify_track" "sweet_and_sour" {
  url = "https://open.spotify.com/track/7E0HrAjY5imdytUxy8Nerf"

  ## Computed
  # name   = "Sweet and Sour"
  # artist = "Nulbarich"

}

data "spotify_track" "chronostasis" {
  url = "https://open.spotify.com/track/6Mavd9uk89Y9OTdvcDTfGG"

  ## Computed
  # name   = "クロノスタシス"
  # artist = "Kinokoteikoku"

}

data "spotify_track" "circus_night" {
  url = "https://open.spotify.com/track/5woQHWA238n9vsaCxehJMa"

  ## Computed
  # name   = "サーカスナイト"
  # artist = "Tavito Nanao"

}

data "spotify_track" "labyrinth" {
  url = "https://open.spotify.com/track/1nzgVwPzKY8V4RcMK7AvaC"

  ## Computed
  # name   = "ラビリンス'97"
  # artist = "chelmico"

}

data "spotify_track" "brother" {
  url = "https://open.spotify.com/track/2fHKfpwuo4gioZajag3N7T"

  ## Computed
  # name   = "兄弟"
  # artist = "Mega Shinnosuke"
}

data "spotify_track" "kimihaqueen" {
  url = "https://open.spotify.com/track/1cr5cFqUzUPYVLM0s3xHkv"

  ## Computed
  # name   = "君はQueen"
  # artist = "ぷにぷに電機"
}

data "spotify_track" "natsunomahou" {
  url = "https://open.spotify.com/track/0ZQ9oSwoUAbrOGMoUDUJwf"

  ## Computed
  # name   = "夏の魔法"
  # artist = "Enjoy Music Club"
}

data "spotify_track" "yorunotanken" {
  url = "https://open.spotify.com/track/6XwsccSztaHfssOmwUmR1c"

  ## Computed
  # name   = "夜の探検"
  # artist = "chilldspot"
}

data "spotify_track" "suiseidaoko" {
  url = "https://open.spotify.com/track/5RbV7Ps6HM2tBbxTd3FnDh"

  ## Computed
  # name   = "水星"
  # artist = "daoko"
}

resource "spotify_playlist" "citypop" {
  name        = "🌃 おしゃシティポップ"
  description = "いま流行りのChillとやらをする曲たち🌛"
  public      = true

  tracks = [
    data.spotify_track.climax_night.id,
    data.spotify_track.hit_number.id,
    data.spotify_track.nimaruni.id,
    data.spotify_track.hachijudebier.id,
    data.spotify_track.blue.id,
    data.spotify_track.buddies.id,
    data.spotify_track.call_me_in_your_summer.id,
    data.spotify_track.contact.id,
    data.spotify_track.tenminutes.id,
    data.spotify_track.melt_bitter.id,
    data.spotify_track.pool.id,
    data.spotify_track.rainbow_town.id,
    data.spotify_track.spacecraft.id,
    data.spotify_track.summer_gate.id,
    data.spotify_track.sweet_and_sour.id,
    data.spotify_track.chronostasis.id,
    data.spotify_track.circus_night.id,
    data.spotify_track.labyrinth.id,
    data.spotify_track.brother.id,
    data.spotify_track.kimihaqueen.id,
    data.spotify_track.natsunomahou.id,
    data.spotify_track.yorunotanken.id,
    data.spotify_track.suiseidaoko.id,
  ]
}

output "citypop_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.citypop.id}"
  description = "プレイリスト「おしゃシティポップ」のURL"
}
