#!/bin/bash

DIRS=(\
"app/" \
"priv-app/" \
"vendor/app/" \
"vendor/operator/app/"
)

APPS=(\
"CarHomeGoogle/CarHomeGoogle.apk" \
"ConfigUpdater/ConfigUpdater.apk" \
"FOTAKill/FOTAKill.apk" \
"GenieWidget/GenieWidget.apk" \
"Gmail/Gmail.apk" \
"GmsCore/GmsCore.apk" \
"GoogleBackupTransport/GoogleBackupTransport.apk" \
"GoogleEars/GoogleEars.apk" \
"GoogleFeedback/GoogleFeedback.apk" \
"GoogleLoginService/GoogleLoginService.apk" \
"GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk" \
"GooglePartnerSetup/GooglePartnerSetup.apk" \
"GooglePlusPlugin/GooglePlusPlugin.apk" \
"LatinImeTutorial/LatinImeTutorial.apk" \
"MarketUpdater/MarketUpdater.apk" \
"MyGoogleTaskPlugin/MyGoogleTaskPlugin.apk" \
"MyGoogledrive/MyGoogledrive.apk" \
"NetworkLocation/NetworkLocation.apk" \
"OneTimeInitializer/OneTimeInitializer.apk" \
"PhoneSky/PhoneSky.apk" \
"Phonesky/Phonesky.apk" \
"PrebuiltGmsCore/PrebuiltGmsCore.apk" \
"Talk/Talk.apk" \
"Velvet/Velvet.apk" \
"Vending/Vending.apk" \
"com.android.vending/com.android.vending.apk" \
"prebuiltgmscore/prebuiltgmscore.apk" \
"GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk" \
"GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk" \
"Maps/Maps.apk" \
"PicoTts/PicoTts.apk" \
"GoogleServicesFramework/GoogleServicesFramework.apk" \
"AppManager/AppManager.apk" \
"GpsTester/GpsTester.apk" \
"SelfTest/SelfTest.apk" \
)

REMS=(\
"framework/com.google.android.maps.jar" \
"framework/com.google.android.media.effects.jar" \
"framework/com.google.widevine.software.drm.jar" \
"tts/lang_pico" \
"vendor/operator/app/KMPlayer-v2" \
"vendor/operator/app/YandexNavi" \
"vendor/app/V6FeiXingEnLauncher_4G" \
"vendor/app/FeiXingV8ENLauncher4G" \
)

for path in "${DIRS[@]}"; do
 for app in "${APPS[@]}"; do
  rm -v  "${path}${app}"
  rm -vr "$(dirname "${path}${app}")"
 done
done

for rem in "${REMS[@]}"; do
 rm -vr "${rem}"
done
