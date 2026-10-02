# PS5

Umbrella repo for Home Assistant PS5 add-ons.

## Add-ons

- `ps5-hub-addon` — single add-on serving the plugin dashboard (443/80)
  plus three vendored exploit-delivery plugins, each on its own port, all
  in one container:
  - `plugins/webkit-autoloader` (8082) — mirrors [sanchitd5/ps5-webkit-autoloader](https://github.com/sanchitd5/ps5-webkit-autoloader)
  - `plugins/relapse` (8083) — mirrors [sanchitd5/Relapse-Exploit](https://github.com/sanchitd5/Relapse-Exploit)
  - `plugins/relapse-sonic` (8084) — mirrors [sanchitd5/relapse](https://github.com/sanchitd5/relapse)

Everything here is vendored (plain copies), not git submodules — HA
supervisor's repo clone doesn't reliably init submodules, so files are
synced in directly. Source of truth for each plugin's code is its own
fork repo above; update there first, then re-sync into
`ps5-hub-addon/plugins/`.

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
