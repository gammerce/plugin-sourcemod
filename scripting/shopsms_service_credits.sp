#pragma semicolon 1
#pragma newdecls required
#include <sourcemod>
#include <shopsms>

#define      CREDITS_BY_NATIVE       -1

/**
 *      Gives certain amount of credits to the player
 *      -
 *      @param client                   Client index
 *      @param amount                   Amount to give
 *      @param by_who                   Optional param to set by who the credits being given from
 *      -
 *      @return New amount of credits
*/
native int Shop_GiveClientCredits(int client, int amount, int by_who = CREDITS_BY_NATIVE);

#define SERVICE_ID "credits"

public Plugin myinfo =
{
	name = "Shop SMS: Service: Credits",
	author = "SeeK",
	description = "ShopSMS's extension that allow players to purchase credits.",
	version = VERSION,
	url = "https://www.sklep-sms.pl/"
};

public void OnPluginStart()
{
	ShopRegisterService(SERVICE_ID);
}

public void ShopServicePurchased(int client, int quantity)
{
	Shop_GiveClientCredits(client, quantity);
}
