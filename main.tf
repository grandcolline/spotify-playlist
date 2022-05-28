terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.7"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  auth_server = "https://oauth2.conrad.cafe"
  username    = "grandcolline"
  token_id    = var.spotify_token_id
  api_key     = var.spotify_api_key
}

variable "spotify_api_key" {
  type = string
}

variable "spotify_token_id" {
  type = string
}
