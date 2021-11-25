#include "vshPackageManager.inc"

#undef REQUIRE_EXTENSIONS
#include <cURL>
#include <socket>
#include <steamtools>
#include <SteamWorks>
#define REQUIRE_EXTENSIONS

#pragma semicolon            1
#pragma newdecls             required

#define CURL_AVAILABLE()		(GetFeatureStatus(FeatureType_Native, "curl_easy_init") == FeatureStatus_Available)
#define SOCKET_AVAILABLE()		(GetFeatureStatus(FeatureType_Native, "SocketCreate") == FeatureStatus_Available)
#define STEAMTOOLS_AVAILABLE()	(GetFeatureStatus(FeatureType_Native, "Steam_CreateHTTPRequest") == FeatureStatus_Available)
#define STEAMWORKS_AVAILABLE()	(GetFeatureStatus(FeatureType_Native, "SteamWorks_WriteHTTPResponseBodyToFile") == FeatureStatus_Available)

#define EXTENSION_ERROR		"This plugin requires one of the cURL, Socket, SteamTools, or SteamWorks extensions to function."

public Plugin pluginInfo = {
	name             = "Vs Saxton Hale 2 package manager proto",
	author           = "Pheubel",
	description      = "Allows server managers to add bosses through the use of a package manager",
	version          = VSH_PM_VERSION,
	url              = "https://forums.alliedmods.net/showthread.php?t=286701"
};

public void OnPluginStart() {

	if (!CURL_AVAILABLE() && !SOCKET_AVAILABLE() && !STEAMTOOLS_AVAILABLE() && !STEAMWORKS_AVAILABLE())
	{
		SetFailState(EXTENSION_ERROR);
	}
}