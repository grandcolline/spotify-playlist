# spotify-playlist

Spotify のプレイリスト管理

## Playlist

| Name                                                                               | Description                                                      |
| :--------------------------------------------------------------------------------- | :--------------------------------------------------------------- |
| [🌃 おしゃシティポップ](https://open.spotify.com/playlist/3Uf0EjLrfkcWg5UeEn12LI)  | いま流行りの Chill とやらをする曲たち 🌛                         |
| [🤘 テンションぶちあげ](https://open.spotify.com/playlist/5JfyVXie2NkPwij6s4G6Bg)  | とにかくノリたいときに 🕺                                        |
| [🎤 アイドルソング 2020](https://open.spotify.com/playlist/6TsxDGJwzNWFo7WgOcZ2b5) | 個人的な独断と偏見に満ちた 2020 年のアイドルソングのベスト 10 曲 |
| [🎤 アイドルソング 2021](https://open.spotify.com/playlist/3CyXtSIkEQavG7gQCXmFnJ) | 個人的な独断と偏見に満ちた 2021 年のアイドルソングのベスト 13 曲 |
| [🎤 アイドルソング 2022](https://open.spotify.com/playlist/1UmIgFvWz3CmuBm1v1Oxb0) | 個人的な独断と偏見に満ちた 2022 年のアイドルソングのベスト 12 曲 |

## Terraform Cloud (State file)

https://app.terraform.io/app/grandcolline/workspaces/spotify-playlist

## How to Apply

0. Setup

```bash
$ npm ci
```

1. create `.env` file

```
SPOTIFY_CLIENT_ID=XXXXXXXXXXXXXXXXXXX
SPOTIFY_CLIENT_SECRET=YYYYYYYYYYYYYYYYYYY
SPOTIFY_PROXY_API_KEY=ZZZZZZZZZZZZZZZZZZZ(適当なランダム値)
```

2. run proxy server

```bash
$ nerdctl run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy

# Auth URL: http://localhost:27228/authorize?token=r0KhhWIbd3UJYrNXu048uBw88M9bOvjWNTmK6cgX3y4yBIwU7_wN4xA_DOzwHvAo
```

3. Access `Auth URL` & authorize Spotify

4. cdktf apply

```bash
# like terraform plan
$ npm run diff

# like terraform apply
$ npm run apply
```
