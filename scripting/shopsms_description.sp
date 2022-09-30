#pragma semicolon 1
#pragma newdecls required
#include <sourcemod>
#include <shopsms>

public Plugin myinfo =
{
	name = "Shop SMS: Services description",
	author = "SeeK",
	description = "ShopSMS's sxtension that add commands to display services descriptions.",
	version = VERSION,
	url = "http://www.sklep-sms.pl/"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_vip", CmdVip);
	RegConsoleCmd("sm_vippro", CmdVipPro);
}

public Action CmdVip(int client, int args)
{
	ShopShowServiceDescription(client, "govip");
	return Plugin_Continue;
}

public Action CmdVipPro(int client, int args)
{
	ShopShowServiceDescription(client, "govippro");
	return Plugin_Continue;
}
