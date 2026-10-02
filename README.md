# PS5

Umbrella repo for Home Assistant PS5 add-ons.

## Add-ons

- `ps5-hub-addon` — single add-on serving the plugin dashboard (443/80)
  plus three exploit-delivery plugins, each on its own port, all in one
  container:
  - `plugins/webkit-autoloader` (8082) — built fresh from [itsPLK/ps5-webkit-autoloader](https://github.com/itsPLK/ps5-webkit-autoloader)
  - `plugins/relapse` (8083) — cloned fresh from [ntfargo/Relapse-Exploit](https://github.com/ntfargo/Relapse-Exploit)
  - `plugins/relapse-sonic` (8084) — cloned fresh from [soniciso1/relapse](https://github.com/soniciso1/relapse)

No forks, no vendoring: `ps5-hub-addon/Dockerfile`'s first build stage
`git clone`s each plugin straight from its real upstream repo (running
webkit-autoloader's own build pipeline — submodules + patch scripts +
`download_deps.sh` — for its frontend), then the final image copies
only the built output. Every image rebuild picks up whatever is
current upstream at that time.

These plugins used to ship as separate standalone add-ons. If you have
`ps5-webkit-server`, `ps5-relapse`, or `ps5-relapse-sonic` already
installed from before this change, uninstall them — their ports
(8082/8083/8084) now belong to `ps5-hub-addon` directly, and leaving
the old add-ons running will conflict.

## Install in Home Assistant

Settings → Add-ons → Add-on Store → ⋮ → Repositories → add:

```
https://github.com/sanchitd5/ps5
```
