# General Admins Info

## Ansible commands

Add ansible deps:
    
    ansible-galaxy install -r requirements.yml
    ln -s ~/.ansible/collections/ansible_collections/community/mysql community.mysql ???

Expects username of `tf2server` and custom group name `tf2` with ssh keys setup. The rest is automated

- `make setup` Setup base system stuff. packgages, tuning, etc.
- `make web` Setup databases and webserver with sourcebans
- `make sourcemod` Download and build sourcemod plugins and distribution
- `make srcds` Download and configure tf2 server

## Server Admin Commands

### Server Permissions / Reserved Slots

- run *once* in server shell upon install: `sm_create_adm_tables`

Permissions are granted by flags shown [here](https://wiki.alliedmods.net/Adding_Admins_(SourceMod)). 

Admin user, level 100 immunity

    sm_sql_addadmin roto steam "STEAM_0:1:61934148" z 100

Admin user, level 50 immunity, cannot perform actions against the 100, despite both having `z`

    sm_sql_addadmin some_nerd steam "STEAM_0:1:61934149" z 50

You *must* run this command after making changes to admins, or otherwise restart the server.

    sm_reloadadmins

### General Admin Commands

Most admin commands can be access through a high level menu:
    
    /sm_admin    

Bans / Kick players
    
    /sm_ban
    /sm_kick

Rcon Example
    
    /sm_rcon status

Change cvar

    /sm_cvar mp_waitingforplayers_time 35 

Player bans commands
    
    # menu
    /sm_ban
    # command 
    /sm_addban <time> <steamid> [reason]

You can find a list of all base sourcemod commands [here](https://wiki.alliedmods.net/Admin_commands_(sourcemod)).

### Stats

Some require html motds enabled to work in game `cl_disablehtmlmotd "0"`

High level stats command menu

    /hlx

Your current alltime/session rank

    /rank
    
