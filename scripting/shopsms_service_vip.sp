#pragma semicolon 1
#pragma newdecls required
#include <sourcemod>
#include <shopsms>

#define SERVICE_ID "govip"

char g_szFlags[MAX_FLAGS + 1];

public Plugin myinfo =
{
	name = "Shop SMS: Service: VIP",
	author = "SeeK",
	description = "ShopSMS's extension that allow players to purchase VIP.",
	version = VERSION,
	url = "http://www.sklep-sms.pl/"
};

public void OnPluginStart()
{
	ShopRegisterService(SERVICE_ID);
}

public void ShopServiceLoaded(const char[] name, const char[] flags)
{
	strcopy(g_szFlags, sizeof(g_szFlags), flags);
}

public int ShopServiceAddingToList(int id)
{
	// Client cannot purchase a product if already has this set of flags
	if (GetUserFlagBits(id) & ReadFlagString(g_szFlags) == ReadFlagString(g_szFlags)) {
		return ITEMDRAW_DISABLED;
	}

	return ITEMDRAW_DEFAULT;
}
