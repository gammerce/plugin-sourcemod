/** Double-include prevention */
#if defined _shopsms_included_
  #endinput
#endif
#define _shopsms_included_

#include <shopsms_const>

/**
 * Register service so that players can purchase it.
 *
 * @param service_id    Unique service ID
 */
native void ShopRegisterService(const char[] service_id);

/**
 * Continues shopping process. Function can be called if SHOP_WAIT was returned in ShopServiceChosen function.
 *
 * @param client    ID of a player making a purchase
 */
native void ShopShowPurchaseSummary(int client);

/**
 * Log info to the shop server logs
 */
native void ShopLog(char[] message, any ...);

/**
 * Log info to shop global logs
 */
native void ShopLogDb(char[] message, any ...);

/**
 * Shows service description in language of client
 *
 * @param client        ID of client
 * @param service_id    ID of a service to be shown
 */
native void ShopShowServiceDescription(int client, const char[] service_id);

/**
 * Definition of function that is called when service data is loaded
 *
 * @param name      Service name
 * @param flags     Service flags
 */
typedef ShopServiceLoaded = function void (const char[] name, const char[] flags);

/**
 * Forward send to a service plugin, when shop is creating menu with available services.
 */
typedef ShopServiceAddingToList = function void (int client);

/**
 * Forward send to a service plugin, when player chose to purchase this service
 * and he gave all necessary data. Now service plugin can give him some extra paper work.
 *
 * @param client    ID of client who makes purchase
 * @param quantity  Purchase quantity
 * @return          SHOP_OK   when purchase can be continued
 *                  SHOP_WAIT when purchase should wait until service plugin ends necessary actions
 */
typedef ShopServiceChosen = function void (int client, int quantity);

/**
 * Forward send to a service plugin, when player purchase this service.
 *
 * @param client    ID of client who makes purchase
 * @param quantity  Purchase quantity
 * @return          SHOP_OK       when everything is fine
 *                  SHOP_ERROR    when there are some problems with finalizing
 */
typedef ShopServicePurchased = function void (int client, int quantity);

/**
 * Global forward send on client chat say / say_team
 *
 * @param client    ID of client who sends a message
 * @param message   Message that client typed
 */
forward Action ShopOnClientSay(int client, const char[] message);
forward Action ShopOnClientSayTeam(int client, const char[] message);
