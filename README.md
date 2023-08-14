# Atlanta Regulars

Playbooks for managing the atlantaregulars.com server. 

Some general command tips are avail in [ADMIN.md](ADMIN.md)

## Playbooks

Add ansible deps:

    ansible-galaxy install -r requirements.yml

Expects username of `tf2server` and custom group name `tf2` with ssh keys setup. The rest is automated

`make setup` Setup base system stuff. packages, tuning, etc.

`make web` Setup databases and webserver with sourcebans

- [web](playbooks/roles/web) 
  - [Caddy](https://caddyserver.com)
  - [sourcebans++](https://github.com/sbpp/sourcebans-pp)
  - [hlstatsx:ce](https://github.com/A1mDev/hlstatsx-community-edition)

`make sourcemod` Download and build sourcemod plugins and distribution

- [sourcemod](playbooks/roles/sourcemod) ([plugins](playbooks/roles/sourcemod/files/addons/sourcemod/scripting))

`make srcds` Download and configure tf2 server

- [srcds](playbooks/roles/srcds)
  - [Depot Downloader](https://github.com/SteamRE/DepotDownloader)
  - Team Fortress 2

## Commands

    

