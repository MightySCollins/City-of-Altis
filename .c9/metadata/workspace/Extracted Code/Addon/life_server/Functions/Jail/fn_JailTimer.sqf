{"filter":false,"title":"fn_JailTimer.sqf","tooltip":"/Extracted Code/Addon/life_server/Functions/Jail/fn_JailTimer.sqf","undoManager":{"mark":4,"position":4,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"remove","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":13,"column":48},"action":"insert","lines":["private[\"_player\", \"_playeruid\", \"_query\", \"_injail\", \"_queryResult\"];","","_player = _this select 0;","_playeruid = _this select 1;","","_player = owner _player;","","_query = format[\"UPDATE players SET jail_time=(jail_time - 1) WHERE playerid='%1'\", _playeruid];","waitUntil {!DB_Async_Active};","[_query,1] call DB_fnc_asyncCall;","","_query = format[\"SELECT IF( remainingtime <= '0', TRUE, FALSE ) FROM players WHERE playerid='%1'\", _playeruid];","waitUntil{!DB_Async_Active};","_queryResult = [_query,2] call DB_fnc_asyncCall;"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":13,"column":48},"end":{"row":13,"column":48},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421494047662,"hash":"d70c32e8b148a9c7d1acd41d36f33acc99713e9b"}