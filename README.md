# PS5

Umbrella repo for Home Assistant PS5 add-ons.

## Add-ons

- `ps5-hub-addon` — plugin dashboard (cards linking out to other PS5 plugins), mirrors [sanchitd5/ps5-hub](https://github.com/sanchitd5/ps5-hub)
- `ps5-webkit-server` — serves the PS5 WebKit Autoloader exploit files for `manuals.playstation.net` DNS-rewrite installs, mirrors [sanchitd5/ps5-webkit-autoloader](https://github.com/sanchitd5/ps5-webkit-autoloader)
- `ps5-relapse` — serves the Relapse WebKit+kernel exploit chain (firmware 7.00-13.60) as a standalone dashboard plugin, mirrors [sanchitd5/Relapse-Exploit](https://github.com/sanchitd5/Relapse-Exploit)

Add-on content here is vendored (plain copies), not git submodules — HA
supervisor's repo clone doesn't reliably init submodules, so files are
synced in directly. Source of truth for each add-on's code is its own
repo above; update there first, then re-sync into this repo.

## Install in Home Assistant

Settings → Add-ons → Add-on Store → ⋮ → Repositories → add:

```
https://github.com/sanchitd5/ps5
```
