# General In-Game Admins Commands

## Server Permissions / Reserved Slots

- run *once* in server shell upon install: `sm_create_adm_tables`

Permissions are granted by flags shown [here](https://wiki.alliedmods.net/Adding_Admins_(SourceMod)). 

Admin user, level 100 immunity

    sm_sql_addadmin roto steam "STEAM_0:1:61934148" z 100

Admin user, level 50 immunity, cannot perform actions against the 100, despite both having `z`

    sm_sql_addadmin some_nerd steam "STEAM_0:1:61934149" z 50

You *must* run this command after making changes to admins, or otherwise restart the server.

    sm_reloadadmins

## General Admin Commands

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

## Stats

Some require html motds enabled to work in game `cl_disablehtmlmotd "0"`

High level stats command menu

    /hlx

Your current alltime/session rank

    /rank
    

### Configure Stats

Current non standard reward are set

```sql
UPDATE hlstats_Actions SET reward_player = 2 where code = 'air2airshot_pipebomb';
UPDATE hlstats_Actions SET reward_player = 2 where code = 'air2airshot_rocket';
UPDATE hlstats_Actions SET reward_player = 2 where code = 'airshot_arrow';
UPDATE hlstats_Actions SET reward_player = 1 where code = 'airshot_headshot';
UPDATE hlstats_Actions SET reward_player = 1 where code = 'airshot_pipebomb';
UPDATE hlstats_Actions SET reward_player = 1 where code = 'airshot_rocket';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'builtobject_obj_attachment_sapper';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'builtobject_obj_dispenser';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'builtobject_obj_sentrygun';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'builtobject_obj_sentrygun_mini';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'builtobject_obj_teleporter';
UPDATE hlstats_Actions SET reward_player = 4 where code = 'chargedeployed';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'defended_medic';
UPDATE hlstats_Actions SET reward_player = 4 where code = 'domination';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'flagevent_dropped';
UPDATE hlstats_Actions SET reward_player = 10 where code = 'flagevent_captured';
UPDATE hlstats_Actions SET reward_player = 1 where code = 'headshot';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'jarate';
UPDATE hlstats_Actions SET reward_player = 1 where code = 'kill assist';
UPDATE hlstats_Actions SET reward_player = 2 where code = 'kill_assist_medic';
UPDATE hlstats_Actions SET reward_player = 4 where code = 'killed_charged_medic';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'killedobject_obj_attachment_sapper';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'killedobject_obj_dispenser';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'killedobject_obj_sentrygun';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'killedobject_obj_sentrygun_mini';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'killedobject_obj_teleporter';
UPDATE hlstats_Actions SET reward_player = 20 where code = 'mvp1';
UPDATE hlstats_Actions SET reward_player = 15 where code = 'mvp2';
UPDATE hlstats_Actions SET reward_player = 10 where code = 'mvp3';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'owner_killedobject_obj_attachment_sapper';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'owner_killedobject_obj_dispenser';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'owner_killedobject_obj_sentrygun';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'owner_killedobject_obj_sentrygun_mini';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'owner_killedobject_obj_teleporter';
UPDATE hlstats_Actions SET reward_player = 0 where code = 'teleport';

```