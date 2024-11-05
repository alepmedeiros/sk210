
unit sk210.bridge.topwise.AidlSystem;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAidlPosKeyListener = interface;//com.topwise.cloudpos.aidl.system.AidlPosKeyListener
  JAidlSystem = interface;//com.topwise.cloudpos.aidl.system.AidlSystem
  JApnInfoExt = interface;//com.topwise.cloudpos.aidl.system.ApnInfoExt
  JInstallAppObserver = interface;//com.topwise.cloudpos.aidl.system.InstallAppObserver
  JUninstallAppObserver = interface;//com.topwise.cloudpos.aidl.system.UninstallAppObserver
  JAidlSystem_Stub = interface;//com.topwise.cloudpos.aidl.system.AidlSystem$Stub

// ===== Interface declarations =====

  JAidlSystem_StubClass = interface(JBinderClass)
    ['{BFA4C15B-95AD-4921-92E4-C12121FECCEF}']
    {class} function _GetTRANSACTION_SystemPropertiesGet: Integer; cdecl;
    {class} function _GetTRANSACTION_SystemPropertiesSet: Integer; cdecl;
    {class} function _GetTRANSACTION_adbEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_adbLogEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_apnGetConnectedId: Integer; cdecl;
    {class} function _GetTRANSACTION_apnRestore: Integer; cdecl;
    {class} function _GetTRANSACTION_apnSet: Integer; cdecl;
    {class} function _GetTRANSACTION_apnUpdate: Integer; cdecl;
    {class} function _GetTRANSACTION_appErrorDialogEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_appPermissionEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_autoCheckCard: Integer; cdecl;
    {class} function _GetTRANSACTION_autoTimeZoneEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_batteryPercentEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_bootAnimationSet: Integer; cdecl;
    {class} function _GetTRANSACTION_caNotificationEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_checkStatus: Integer; cdecl;
    {class} function _GetTRANSACTION_clearLastPressPhysicalKey: Integer; cdecl;
    {class} function _GetTRANSACTION_clearSdcard: Integer; cdecl;
    {class} function _GetTRANSACTION_clearUserData: Integer; cdecl;
    {class} function _GetTRANSACTION_configLongpressPhysicalKeyAction: Integer; cdecl;
    {class} function _GetTRANSACTION_daydreamActiveSet: Integer; cdecl;
    {class} function _GetTRANSACTION_daydreamEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_daydreamModeSet: Integer; cdecl;
    {class} function _GetTRANSACTION_deleteAPN: Integer; cdecl;
    {class} function _GetTRANSACTION_doubleTapButtonActionSet: Integer; cdecl;
    {class} function _GetTRANSACTION_enableBackButton: Integer; cdecl;
    {class} function _GetTRANSACTION_enableDropDownMenu: Integer; cdecl;
    {class} function _GetTRANSACTION_enableHomeButton: Integer; cdecl;
    {class} function _GetTRANSACTION_enableMobileDataAlwaysOn: Integer; cdecl;
    {class} function _GetTRANSACTION_enablePhysicalKeyboardBacklight: Integer; cdecl;
    {class} function _GetTRANSACTION_enablePowerButton: Integer; cdecl;
    {class} function _GetTRANSACTION_enablePressPhysicalKeySound: Integer; cdecl;
    {class} function _GetTRANSACTION_enableRecentAppButton: Integer; cdecl;
    {class} function _GetTRANSACTION_enableWifi: Integer; cdecl;
    {class} function _GetTRANSACTION_enableWifiPassWord: Integer; cdecl;
    {class} function _GetTRANSACTION_enabledApp: Integer; cdecl;
    {class} function _GetTRANSACTION_enabledAppPowerSave: Integer; cdecl;
    {class} function _GetTRANSACTION_enabledCameraDoubleTapPower: Integer; cdecl;
    {class} function _GetTRANSACTION_enabledDonotDisturbMode: Integer; cdecl;
    {class} function _GetTRANSACTION_enabledRescueParty: Integer; cdecl;
    {class} function _GetTRANSACTION_factoryTestAppEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_fileManagerEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_forgetAllWiFi: Integer; cdecl;
    {class} function _GetTRANSACTION_get24HourRebootTime: Integer; cdecl;
    {class} function _GetTRANSACTION_getAPNList: Integer; cdecl;
    {class} function _GetTRANSACTION_getAPNListExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getAndroidKernelVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getAndroidOsVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getBatteryLevel: Integer; cdecl;
    {class} function _GetTRANSACTION_getBatteryUsage: Integer; cdecl;
    {class} function _GetTRANSACTION_getCameraDisabled: Integer; cdecl;
    {class} function _GetTRANSACTION_getCurSdkVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getCustomerSN: Integer; cdecl;
    {class} function _GetTRANSACTION_getDisplayDensityDpi: Integer; cdecl;
    {class} function _GetTRANSACTION_getDriverVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getHardWireVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getICCID: Integer; cdecl;
    {class} function _GetTRANSACTION_getICCIDExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getIMEI: Integer; cdecl;
    {class} function _GetTRANSACTION_getIMEIExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getIMSI: Integer; cdecl;
    {class} function _GetTRANSACTION_getIMSIExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getKsn: Integer; cdecl;
    {class} function _GetTRANSACTION_getLKLOSSpecsVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getLastPressPhysicalKey: Integer; cdecl;
    {class} function _GetTRANSACTION_getManufacture: Integer; cdecl;
    {class} function _GetTRANSACTION_getModel: Integer; cdecl;
    {class} function _GetTRANSACTION_getPinServiceVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getProcStat: Integer; cdecl;
    {class} function _GetTRANSACTION_getRomVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getSecurityDriverVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_getStoragePath: Integer; cdecl;
    {class} function _GetTRANSACTION_getUpdateFirmwareState: Integer; cdecl;
    {class} function _GetTRANSACTION_installApp: Integer; cdecl;
    {class} function _GetTRANSACTION_installCACertificate: Integer; cdecl;
    {class} function _GetTRANSACTION_isMobileDataEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_isShowNvBar: Integer; cdecl;
    {class} function _GetTRANSACTION_locationEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_longTapButtonActionSet: Integer; cdecl;
    {class} function _GetTRANSACTION_passwordSet: Integer; cdecl;
    {class} function _GetTRANSACTION_preferredTTSEngineSet: Integer; cdecl;
    {class} function _GetTRANSACTION_reboot: Integer; cdecl;
    {class} function _GetTRANSACTION_rebootModem: Integer; cdecl;
    {class} function _GetTRANSACTION_removeAllWIFIInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_screenBrightnessSet: Integer; cdecl;
    {class} function _GetTRANSACTION_screenTimeOutSet: Integer; cdecl;
    {class} function _GetTRANSACTION_selectAPN: Integer; cdecl;
    {class} function _GetTRANSACTION_set24HourRebootTime: Integer; cdecl;
    {class} function _GetTRANSACTION_setAPN: Integer; cdecl;
    {class} function _GetTRANSACTION_setAPNExt: Integer; cdecl;
    {class} function _GetTRANSACTION_setAdbMode: Integer; cdecl;
    {class} function _GetTRANSACTION_setAirplaneMode: Integer; cdecl;
    {class} function _GetTRANSACTION_setBootLogo: Integer; cdecl;
    {class} function _GetTRANSACTION_setCameraDisabled: Integer; cdecl;
    {class} function _GetTRANSACTION_setCleanKeyBehavior: Integer; cdecl;
    {class} function _GetTRANSACTION_setCustomerSN: Integer; cdecl;
    {class} function _GetTRANSACTION_setDefaultSimCardForCellularData: Integer; cdecl;
    {class} function _GetTRANSACTION_setDeviceSerialNumber: Integer; cdecl;
    {class} function _GetTRANSACTION_setDisplayDensityDpi: Integer; cdecl;
    {class} function _GetTRANSACTION_setLockScreenCameraVisibility: Integer; cdecl;
    {class} function _GetTRANSACTION_setMobileDataEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_setPhysicalKeySoundDuration: Integer; cdecl;
    {class} function _GetTRANSACTION_setPhysicalKeySoundFrequency: Integer; cdecl;
    {class} function _GetTRANSACTION_setPosKeyListener: Integer; cdecl;
    {class} function _GetTRANSACTION_setPrivateAdbKey: Integer; cdecl;
    {class} function _GetTRANSACTION_setProvidedTime: Integer; cdecl;
    {class} function _GetTRANSACTION_setScreenLock: Integer; cdecl;
    {class} function _GetTRANSACTION_setTamperScreen: Integer; cdecl;
    {class} function _GetTRANSACTION_setTethering: Integer; cdecl;
    {class} function _GetTRANSACTION_setTimeZone: Integer; cdecl;
    {class} function _GetTRANSACTION_showAppIconInLauncher3: Integer; cdecl;
    {class} function _GetTRANSACTION_showClockInStatusbarRight: Integer; cdecl;
    {class} function _GetTRANSACTION_shutDownDevice: Integer; cdecl;
    {class} function _GetTRANSACTION_simCardEnabled: Integer; cdecl;
    {class} function _GetTRANSACTION_systemConfigurationMenuVisibilitySet: Integer; cdecl;
    {class} function _GetTRANSACTION_systemReset: Integer; cdecl;
    {class} function _GetTRANSACTION_talkbackEnable: Integer; cdecl;
    {class} function _GetTRANSACTION_uninstallApp: Integer; cdecl;
    {class} function _GetTRANSACTION_uninstallCustomerCACertificate: Integer; cdecl;
    {class} function _GetTRANSACTION_update: Integer; cdecl;
    {class} function _GetTRANSACTION_updateFirmware: Integer; cdecl;
    {class} function _GetTRANSACTION_updateFirmwareSP: Integer; cdecl;
    {class} function _GetTRANSACTION_updateSysTime: Integer; cdecl;
    {class} function _GetTRANSACTION_ussdMessagesEnabled: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlSystem; cdecl;
    {class} function init: JAidlSystem_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_SystemPropertiesGet: Integer read _GetTRANSACTION_SystemPropertiesGet;
    {class} property TRANSACTION_SystemPropertiesSet: Integer read _GetTRANSACTION_SystemPropertiesSet;
    {class} property TRANSACTION_adbEnable: Integer read _GetTRANSACTION_adbEnable;
    {class} property TRANSACTION_adbLogEnabled: Integer read _GetTRANSACTION_adbLogEnabled;
    {class} property TRANSACTION_apnGetConnectedId: Integer read _GetTRANSACTION_apnGetConnectedId;
    {class} property TRANSACTION_apnRestore: Integer read _GetTRANSACTION_apnRestore;
    {class} property TRANSACTION_apnSet: Integer read _GetTRANSACTION_apnSet;
    {class} property TRANSACTION_apnUpdate: Integer read _GetTRANSACTION_apnUpdate;
    {class} property TRANSACTION_appErrorDialogEnabled: Integer read _GetTRANSACTION_appErrorDialogEnabled;
    {class} property TRANSACTION_appPermissionEnabled: Integer read _GetTRANSACTION_appPermissionEnabled;
    {class} property TRANSACTION_autoCheckCard: Integer read _GetTRANSACTION_autoCheckCard;
    {class} property TRANSACTION_autoTimeZoneEnable: Integer read _GetTRANSACTION_autoTimeZoneEnable;
    {class} property TRANSACTION_batteryPercentEnabled: Integer read _GetTRANSACTION_batteryPercentEnabled;
    {class} property TRANSACTION_bootAnimationSet: Integer read _GetTRANSACTION_bootAnimationSet;
    {class} property TRANSACTION_caNotificationEnable: Integer read _GetTRANSACTION_caNotificationEnable;
    {class} property TRANSACTION_checkStatus: Integer read _GetTRANSACTION_checkStatus;
    {class} property TRANSACTION_clearLastPressPhysicalKey: Integer read _GetTRANSACTION_clearLastPressPhysicalKey;
    {class} property TRANSACTION_clearSdcard: Integer read _GetTRANSACTION_clearSdcard;
    {class} property TRANSACTION_clearUserData: Integer read _GetTRANSACTION_clearUserData;
    {class} property TRANSACTION_configLongpressPhysicalKeyAction: Integer read _GetTRANSACTION_configLongpressPhysicalKeyAction;
    {class} property TRANSACTION_daydreamActiveSet: Integer read _GetTRANSACTION_daydreamActiveSet;
    {class} property TRANSACTION_daydreamEnable: Integer read _GetTRANSACTION_daydreamEnable;
    {class} property TRANSACTION_daydreamModeSet: Integer read _GetTRANSACTION_daydreamModeSet;
    {class} property TRANSACTION_deleteAPN: Integer read _GetTRANSACTION_deleteAPN;
    {class} property TRANSACTION_doubleTapButtonActionSet: Integer read _GetTRANSACTION_doubleTapButtonActionSet;
    {class} property TRANSACTION_enableBackButton: Integer read _GetTRANSACTION_enableBackButton;
    {class} property TRANSACTION_enableDropDownMenu: Integer read _GetTRANSACTION_enableDropDownMenu;
    {class} property TRANSACTION_enableHomeButton: Integer read _GetTRANSACTION_enableHomeButton;
    {class} property TRANSACTION_enableMobileDataAlwaysOn: Integer read _GetTRANSACTION_enableMobileDataAlwaysOn;
    {class} property TRANSACTION_enablePhysicalKeyboardBacklight: Integer read _GetTRANSACTION_enablePhysicalKeyboardBacklight;
    {class} property TRANSACTION_enablePowerButton: Integer read _GetTRANSACTION_enablePowerButton;
    {class} property TRANSACTION_enablePressPhysicalKeySound: Integer read _GetTRANSACTION_enablePressPhysicalKeySound;
    {class} property TRANSACTION_enableRecentAppButton: Integer read _GetTRANSACTION_enableRecentAppButton;
    {class} property TRANSACTION_enableWifi: Integer read _GetTRANSACTION_enableWifi;
    {class} property TRANSACTION_enableWifiPassWord: Integer read _GetTRANSACTION_enableWifiPassWord;
    {class} property TRANSACTION_enabledApp: Integer read _GetTRANSACTION_enabledApp;
    {class} property TRANSACTION_enabledAppPowerSave: Integer read _GetTRANSACTION_enabledAppPowerSave;
    {class} property TRANSACTION_enabledCameraDoubleTapPower: Integer read _GetTRANSACTION_enabledCameraDoubleTapPower;
    {class} property TRANSACTION_enabledDonotDisturbMode: Integer read _GetTRANSACTION_enabledDonotDisturbMode;
    {class} property TRANSACTION_enabledRescueParty: Integer read _GetTRANSACTION_enabledRescueParty;
    {class} property TRANSACTION_factoryTestAppEnable: Integer read _GetTRANSACTION_factoryTestAppEnable;
    {class} property TRANSACTION_fileManagerEnable: Integer read _GetTRANSACTION_fileManagerEnable;
    {class} property TRANSACTION_forgetAllWiFi: Integer read _GetTRANSACTION_forgetAllWiFi;
    {class} property TRANSACTION_get24HourRebootTime: Integer read _GetTRANSACTION_get24HourRebootTime;
    {class} property TRANSACTION_getAPNList: Integer read _GetTRANSACTION_getAPNList;
    {class} property TRANSACTION_getAPNListExt: Integer read _GetTRANSACTION_getAPNListExt;
    {class} property TRANSACTION_getAndroidKernelVersion: Integer read _GetTRANSACTION_getAndroidKernelVersion;
    {class} property TRANSACTION_getAndroidOsVersion: Integer read _GetTRANSACTION_getAndroidOsVersion;
    {class} property TRANSACTION_getBatteryLevel: Integer read _GetTRANSACTION_getBatteryLevel;
    {class} property TRANSACTION_getBatteryUsage: Integer read _GetTRANSACTION_getBatteryUsage;
    {class} property TRANSACTION_getCameraDisabled: Integer read _GetTRANSACTION_getCameraDisabled;
    {class} property TRANSACTION_getCurSdkVersion: Integer read _GetTRANSACTION_getCurSdkVersion;
    {class} property TRANSACTION_getCustomerSN: Integer read _GetTRANSACTION_getCustomerSN;
    {class} property TRANSACTION_getDisplayDensityDpi: Integer read _GetTRANSACTION_getDisplayDensityDpi;
    {class} property TRANSACTION_getDriverVersion: Integer read _GetTRANSACTION_getDriverVersion;
    {class} property TRANSACTION_getHardWireVersion: Integer read _GetTRANSACTION_getHardWireVersion;
    {class} property TRANSACTION_getICCID: Integer read _GetTRANSACTION_getICCID;
    {class} property TRANSACTION_getICCIDExt: Integer read _GetTRANSACTION_getICCIDExt;
    {class} property TRANSACTION_getIMEI: Integer read _GetTRANSACTION_getIMEI;
    {class} property TRANSACTION_getIMEIExt: Integer read _GetTRANSACTION_getIMEIExt;
    {class} property TRANSACTION_getIMSI: Integer read _GetTRANSACTION_getIMSI;
    {class} property TRANSACTION_getIMSIExt: Integer read _GetTRANSACTION_getIMSIExt;
    {class} property TRANSACTION_getKsn: Integer read _GetTRANSACTION_getKsn;
    {class} property TRANSACTION_getLKLOSSpecsVersion: Integer read _GetTRANSACTION_getLKLOSSpecsVersion;
    {class} property TRANSACTION_getLastPressPhysicalKey: Integer read _GetTRANSACTION_getLastPressPhysicalKey;
    {class} property TRANSACTION_getManufacture: Integer read _GetTRANSACTION_getManufacture;
    {class} property TRANSACTION_getModel: Integer read _GetTRANSACTION_getModel;
    {class} property TRANSACTION_getPinServiceVersion: Integer read _GetTRANSACTION_getPinServiceVersion;
    {class} property TRANSACTION_getProcStat: Integer read _GetTRANSACTION_getProcStat;
    {class} property TRANSACTION_getRomVersion: Integer read _GetTRANSACTION_getRomVersion;
    {class} property TRANSACTION_getSecurityDriverVersion: Integer read _GetTRANSACTION_getSecurityDriverVersion;
    {class} property TRANSACTION_getStoragePath: Integer read _GetTRANSACTION_getStoragePath;
    {class} property TRANSACTION_getUpdateFirmwareState: Integer read _GetTRANSACTION_getUpdateFirmwareState;
    {class} property TRANSACTION_installApp: Integer read _GetTRANSACTION_installApp;
    {class} property TRANSACTION_installCACertificate: Integer read _GetTRANSACTION_installCACertificate;
    {class} property TRANSACTION_isMobileDataEnabled: Integer read _GetTRANSACTION_isMobileDataEnabled;
    {class} property TRANSACTION_isShowNvBar: Integer read _GetTRANSACTION_isShowNvBar;
    {class} property TRANSACTION_locationEnable: Integer read _GetTRANSACTION_locationEnable;
    {class} property TRANSACTION_longTapButtonActionSet: Integer read _GetTRANSACTION_longTapButtonActionSet;
    {class} property TRANSACTION_passwordSet: Integer read _GetTRANSACTION_passwordSet;
    {class} property TRANSACTION_preferredTTSEngineSet: Integer read _GetTRANSACTION_preferredTTSEngineSet;
    {class} property TRANSACTION_reboot: Integer read _GetTRANSACTION_reboot;
    {class} property TRANSACTION_rebootModem: Integer read _GetTRANSACTION_rebootModem;
    {class} property TRANSACTION_removeAllWIFIInfo: Integer read _GetTRANSACTION_removeAllWIFIInfo;
    {class} property TRANSACTION_screenBrightnessSet: Integer read _GetTRANSACTION_screenBrightnessSet;
    {class} property TRANSACTION_screenTimeOutSet: Integer read _GetTRANSACTION_screenTimeOutSet;
    {class} property TRANSACTION_selectAPN: Integer read _GetTRANSACTION_selectAPN;
    {class} property TRANSACTION_set24HourRebootTime: Integer read _GetTRANSACTION_set24HourRebootTime;
    {class} property TRANSACTION_setAPN: Integer read _GetTRANSACTION_setAPN;
    {class} property TRANSACTION_setAPNExt: Integer read _GetTRANSACTION_setAPNExt;
    {class} property TRANSACTION_setAdbMode: Integer read _GetTRANSACTION_setAdbMode;
    {class} property TRANSACTION_setAirplaneMode: Integer read _GetTRANSACTION_setAirplaneMode;
    {class} property TRANSACTION_setBootLogo: Integer read _GetTRANSACTION_setBootLogo;
    {class} property TRANSACTION_setCameraDisabled: Integer read _GetTRANSACTION_setCameraDisabled;
    {class} property TRANSACTION_setCleanKeyBehavior: Integer read _GetTRANSACTION_setCleanKeyBehavior;
    {class} property TRANSACTION_setCustomerSN: Integer read _GetTRANSACTION_setCustomerSN;
    {class} property TRANSACTION_setDefaultSimCardForCellularData: Integer read _GetTRANSACTION_setDefaultSimCardForCellularData;
    {class} property TRANSACTION_setDeviceSerialNumber: Integer read _GetTRANSACTION_setDeviceSerialNumber;
    {class} property TRANSACTION_setDisplayDensityDpi: Integer read _GetTRANSACTION_setDisplayDensityDpi;
    {class} property TRANSACTION_setLockScreenCameraVisibility: Integer read _GetTRANSACTION_setLockScreenCameraVisibility;
    {class} property TRANSACTION_setMobileDataEnabled: Integer read _GetTRANSACTION_setMobileDataEnabled;
    {class} property TRANSACTION_setPhysicalKeySoundDuration: Integer read _GetTRANSACTION_setPhysicalKeySoundDuration;
    {class} property TRANSACTION_setPhysicalKeySoundFrequency: Integer read _GetTRANSACTION_setPhysicalKeySoundFrequency;
    {class} property TRANSACTION_setPosKeyListener: Integer read _GetTRANSACTION_setPosKeyListener;
    {class} property TRANSACTION_setPrivateAdbKey: Integer read _GetTRANSACTION_setPrivateAdbKey;
    {class} property TRANSACTION_setProvidedTime: Integer read _GetTRANSACTION_setProvidedTime;
    {class} property TRANSACTION_setScreenLock: Integer read _GetTRANSACTION_setScreenLock;
    {class} property TRANSACTION_setTamperScreen: Integer read _GetTRANSACTION_setTamperScreen;
    {class} property TRANSACTION_setTethering: Integer read _GetTRANSACTION_setTethering;
    {class} property TRANSACTION_setTimeZone: Integer read _GetTRANSACTION_setTimeZone;
    {class} property TRANSACTION_showAppIconInLauncher3: Integer read _GetTRANSACTION_showAppIconInLauncher3;
    {class} property TRANSACTION_showClockInStatusbarRight: Integer read _GetTRANSACTION_showClockInStatusbarRight;
    {class} property TRANSACTION_shutDownDevice: Integer read _GetTRANSACTION_shutDownDevice;
    {class} property TRANSACTION_simCardEnabled: Integer read _GetTRANSACTION_simCardEnabled;
    {class} property TRANSACTION_systemConfigurationMenuVisibilitySet: Integer read _GetTRANSACTION_systemConfigurationMenuVisibilitySet;
    {class} property TRANSACTION_systemReset: Integer read _GetTRANSACTION_systemReset;
    {class} property TRANSACTION_talkbackEnable: Integer read _GetTRANSACTION_talkbackEnable;
    {class} property TRANSACTION_uninstallApp: Integer read _GetTRANSACTION_uninstallApp;
    {class} property TRANSACTION_uninstallCustomerCACertificate: Integer read _GetTRANSACTION_uninstallCustomerCACertificate;
    {class} property TRANSACTION_update: Integer read _GetTRANSACTION_update;
    {class} property TRANSACTION_updateFirmware: Integer read _GetTRANSACTION_updateFirmware;
    {class} property TRANSACTION_updateFirmwareSP: Integer read _GetTRANSACTION_updateFirmwareSP;
    {class} property TRANSACTION_updateSysTime: Integer read _GetTRANSACTION_updateSysTime;
    {class} property TRANSACTION_ussdMessagesEnabled: Integer read _GetTRANSACTION_ussdMessagesEnabled;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlSystem$Stub')]
  JAidlSystem_Stub = interface(JBinder)
    ['{DC8E41EE-3F6E-43DC-B749-6F5276980BD0}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlSystem_Stub = class(TJavaGenericImport<JAidlSystem_StubClass, JAidlSystem_Stub>) end;

  JAidlPosKeyListenerClass = interface(JIInterfaceClass)
    ['{64B71C2D-1E9A-4EB1-A89F-90E4939DC2BB}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlPosKeyListener')]
  JAidlPosKeyListener = interface(JIInterface)
    ['{A01DD566-1156-42C6-BEE4-099A54439F48}']
    procedure dispatchKeyEvent(keyEvent: JKeyEvent); cdecl;
  end;
  TJAidlPosKeyListener = class(TJavaGenericImport<JAidlPosKeyListenerClass, JAidlPosKeyListener>) end;

  JAidlSystemClass = interface(JIInterfaceClass)
    ['{0D935275-B357-44EE-8EC1-6ECA0B8DE575}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlSystem')]
  JAidlSystem = interface(JIInterface)
    ['{72E556C3-671A-47C7-A135-AD1DF8B56AAC}']
    function SystemPropertiesGet(string_: JString; string_1: JString): JString; cdecl;
    procedure SystemPropertiesSet(string_: JString; string_1: JString); cdecl;
    procedure adbEnable(b: Boolean); cdecl;
    function adbLogEnabled(b: Boolean): Integer; cdecl;
    function apnGetConnectedId: JString; cdecl;
    procedure apnRestore; cdecl;
    procedure apnSet(contentValues: JContentValues); cdecl;
    function apnUpdate(string_: JString; contentValues: JContentValues): Integer; cdecl;
    procedure appErrorDialogEnabled(b: Boolean); cdecl;
    procedure appPermissionEnabled(string_: JString; b: Boolean); cdecl;
    procedure autoCheckCard(b: Boolean); cdecl;
    procedure autoTimeZoneEnable(b: Boolean); cdecl;
    procedure batteryPercentEnabled(b: Boolean); cdecl;
    procedure bootAnimationSet(string_: JString); cdecl;
    procedure caNotificationEnable(b: Boolean); cdecl;
    function checkStatus(i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Boolean; cdecl;
    procedure clearLastPressPhysicalKey; cdecl;
    procedure clearSdcard; cdecl;
    procedure clearUserData(string_: TJavaObjectArray<JString>); cdecl;
    function configLongpressPhysicalKeyAction(i: Integer; i1: Integer): Integer; cdecl;
    procedure daydreamActiveSet(string_: JString); cdecl;
    procedure daydreamEnable(b: Boolean); cdecl;
    procedure daydreamModeSet(i: Integer); cdecl;
    function deleteAPN(string_: JString): Boolean; cdecl;
    procedure doubleTapButtonActionSet(i: Integer; i1: Integer); cdecl;
    function enableBackButton(b: Boolean): Boolean; cdecl;
    function enableDropDownMenu(b: Boolean): Boolean; cdecl;
    function enableHomeButton(b: Boolean): Boolean; cdecl;
    function enableMobileDataAlwaysOn(b: Boolean): Boolean; cdecl;
    function enablePhysicalKeyboardBacklight(b: Boolean): Integer; cdecl;
    function enablePowerButton(b: Boolean): Boolean; cdecl;
    function enablePressPhysicalKeySound(b: Boolean): Integer; cdecl;
    function enableRecentAppButton(b: Boolean): Boolean; cdecl;
    function enableWifi(b: Boolean): Boolean; cdecl;
    function enableWifiPassWord(b: Boolean): Boolean; cdecl;
    procedure enabledApp(string_: JString; b: Boolean); cdecl;
    procedure enabledAppPowerSave(string_: JString; b: Boolean); cdecl;
    procedure enabledCameraDoubleTapPower(b: Boolean); cdecl;
    procedure enabledDonotDisturbMode(b: Boolean); cdecl;
    procedure enabledRescueParty(b: Boolean); cdecl;
    procedure factoryTestAppEnable(b: Boolean); cdecl;
    procedure fileManagerEnable(b: Boolean); cdecl;
    procedure forgetAllWiFi; cdecl;
    function get24HourRebootTime: JString; cdecl;
    function getAPNList: JList; cdecl;
    function getAPNListExt: JList; cdecl;
    function getAndroidKernelVersion: JString; cdecl;
    function getAndroidOsVersion: JString; cdecl;
    function getBatteryLevel: Single; cdecl;
    function getBatteryUsage(string_: JString): Single; cdecl;
    function getCameraDisabled(componentName: JComponentName): Boolean; cdecl;
    function getCurSdkVersion: JString; cdecl;
    function getCustomerSN: JString; cdecl;
    function getDisplayDensityDpi: Integer; cdecl;
    function getDriverVersion: JString; cdecl;
    function getHardWireVersion: JString; cdecl;
    function getICCID: JString; cdecl;
    function getICCIDExt(i: Integer): JString; cdecl;
    function getIMEI: JString; cdecl;
    function getIMEIExt(i: Integer): JString; cdecl;
    function getIMSI: JString; cdecl;
    function getIMSIExt(i: Integer): JString; cdecl;
    function getKsn: JString; cdecl;
    function getLKLOSSpecsVersion: JString; cdecl;
    function getLastPressPhysicalKey: Integer; cdecl;
    function getManufacture: JString; cdecl;
    function getModel: JString; cdecl;
    function getPinServiceVersion: JString; cdecl;
    function getProcStat: JString; cdecl;
    function getRomVersion: JString; cdecl;
    function getSecurityDriverVersion: JString; cdecl;
    function getSerialNo: JString; cdecl;
    function getStoragePath: JString; cdecl;
    function getUpdateFirmwareState(string_: JString): Integer; cdecl;
    procedure installApp(string_: JString; installAppObserver: JInstallAppObserver); cdecl;
    function installCACertificate(i: Integer; string_: JString): JString; cdecl;
    function isMobileDataEnabled: Boolean; cdecl;
    procedure isShowNvBar(b: Boolean); cdecl;
    procedure locationEnable(b: Boolean); cdecl;
    procedure longTapButtonActionSet(i: Integer; i1: Integer); cdecl;
    procedure passwordSet(string_: JString); cdecl;
    procedure preferredTTSEngineSet(string_: JString); cdecl;
    procedure reboot; cdecl;
    procedure rebootModem; cdecl;
    procedure removeAllWIFIInfo; cdecl;
    procedure screenBrightnessSet(i: Integer); cdecl;
    procedure screenTimeOutSet(i: Integer); cdecl;
    function selectAPN(string_: JString): Boolean; cdecl;
    procedure set24HourRebootTime(i: Integer; i1: Integer); cdecl;
    function setAPN(string_: JString; string_1: JString; string_2: JString; string_3: JString): Boolean; cdecl;
    function setAPNExt(apnInfoExt: JApnInfoExt): Integer; cdecl;
    procedure setAdbMode(i: Integer); cdecl;
    procedure setAirplaneMode(b: Boolean); cdecl;
    procedure setBootLogo(string_: JString); cdecl;
    procedure setCameraDisabled(b: Boolean); cdecl;
    procedure setCleanKeyBehavior(b: Boolean); cdecl;
    function setCustomerSN(string_: JString): Integer; cdecl;
    procedure setDefaultSimCardForCellularData(i: Integer); cdecl;
    procedure setDeviceSerialNumber(string_: JString); cdecl;
    procedure setDisplayDensityDpi(i: Integer); cdecl;
    procedure setLockScreenCameraVisibility(b: Boolean); cdecl;
    procedure setMobileDataEnabled(b: Boolean); cdecl;
    procedure setPhysicalKeySoundDuration(i: Integer); cdecl;
    procedure setPhysicalKeySoundFrequency(i: Integer); cdecl;
    procedure setPosKeyListener(aidlPosKeyListener: JAidlPosKeyListener); cdecl;
    function setPrivateAdbKey(string_: JString): Integer; cdecl;
    procedure setProvidedTime(i: Integer); cdecl;
    procedure setScreenLock(i: Integer); cdecl;
    function setTamperScreen(string_: JString): Boolean; cdecl;
    procedure setTethering(i: Integer; b: Boolean); cdecl;
    procedure setTimeZone(string_: JString); cdecl;
    procedure showAppIconInLauncher3(string_: JString; b: Boolean); cdecl;
    procedure showClockInStatusbarRight(b: Boolean); cdecl;
    procedure shutDownDevice; cdecl;
    function simCardEnabled(i: Integer; b: Boolean): Integer; cdecl;
    procedure systemConfigurationMenuVisibilitySet(i: Integer; b: Boolean); cdecl;
    function systemReset(string_: JString; i: Integer): Integer; cdecl;
    function talkbackEnable(b: Boolean): Integer; cdecl;
    procedure uninstallApp(string_: JString; uninstallAppObserver: JUninstallAppObserver); cdecl;
    procedure uninstallCustomerCACertificate(i: Integer; string_: JString); cdecl;
    procedure update(i: Integer); cdecl;
    function updateFirmware(i: Integer; string_: JString): JString; cdecl;
    function updateFirmwareSP(string_: JString): Integer; cdecl;
    function updateSysTime(string_: JString): Boolean; cdecl;
    procedure ussdMessagesEnabled(b: Boolean); cdecl;
  end;
  TJAidlSystem = class(TJavaGenericImport<JAidlSystemClass, JAidlSystem>) end;

  JApnInfoExtClass = interface(JParcelableClass)
    ['{354498B5-DE8C-4445-A60D-451381EF17FD}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JApnInfoExt; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/ApnInfoExt')]
  JApnInfoExt = interface(JParcelable)
    ['{D7E6628D-DD84-489C-A106-4AE7F3C57653}']
    function coverfromCursor(cursor: JCursor): JApnInfoExt; cdecl;
    function describeContents: Integer; cdecl;
    function getApn: JString; cdecl;
    function getAuthtype: Integer; cdecl;
    function getBearer: Integer; cdecl;
    function getContentValue: JContentValues; cdecl;
    function getCsdnum: JString; cdecl;
    function getCurrent: Integer; cdecl;
    function getImsi: JString; cdecl;
    function getKey: Integer; cdecl;
    function getMax_conns: Integer; cdecl;
    function getMax_conns_time: Integer; cdecl;
    function getMcc: JString; cdecl;
    function getMmsc: JString; cdecl;
    function getMmsport: JString; cdecl;
    function getMmsproxy: JString; cdecl;
    function getMnc: JString; cdecl;
    function getMtu: Integer; cdecl;
    function getMvno_match_data: JString; cdecl;
    function getMvno_type: JString; cdecl;
    function getName: JString; cdecl;
    function getNapid: JString; cdecl;
    function getOmacpid: JString; cdecl;
    function getPassword: JString; cdecl;
    function getPnn: JString; cdecl;
    function getPort: JString; cdecl;
    function getPpp: JString; cdecl;
    function getProfile_id: Integer; cdecl;
    function getProtocol: JString; cdecl;
    function getProxy: JString; cdecl;
    function getProxyid: JString; cdecl;
    function getRoaming_protocol: JString; cdecl;
    function getServer: JString; cdecl;
    function getSourcetype: Integer; cdecl;
    function getSpn: JString; cdecl;
    function getSub_id: Integer; cdecl;
    function getType: JString; cdecl;
    function getUser: JString; cdecl;
    function getWait_time: Integer; cdecl;
    function isCarrier_enabled: Boolean; cdecl;
    function isModem_cognitive: Boolean; cdecl;
    procedure setApn(string_: JString); cdecl;
    procedure setAuthtype(i: Integer); cdecl;
    procedure setBearer(i: Integer); cdecl;
    procedure setCarrier_enabled(b: Boolean); cdecl;
    procedure setCsdnum(string_: JString); cdecl;
    procedure setCurrent(i: Integer); cdecl;
    procedure setImsi(string_: JString); cdecl;
    procedure setKey(i: Integer); cdecl;
    procedure setMax_conns(i: Integer); cdecl;
    procedure setMax_conns_time(i: Integer); cdecl;
    procedure setMcc(string_: JString); cdecl;
    procedure setMmsc(string_: JString); cdecl;
    procedure setMmsport(string_: JString); cdecl;
    procedure setMmsproxy(string_: JString); cdecl;
    procedure setMnc(string_: JString); cdecl;
    procedure setModem_cognitive(b: Boolean); cdecl;
    procedure setMtu(i: Integer); cdecl;
    procedure setMvno_match_data(string_: JString); cdecl;
    procedure setMvno_type(string_: JString); cdecl;
    procedure setName(string_: JString); cdecl;
    procedure setNapid(string_: JString); cdecl;
    procedure setOmacpid(string_: JString); cdecl;
    procedure setPassword(string_: JString); cdecl;
    procedure setPnn(string_: JString); cdecl;
    procedure setPort(string_: JString); cdecl;
    procedure setPpp(string_: JString); cdecl;
    procedure setProfile_id(i: Integer); cdecl;
    procedure setProtocol(string_: JString); cdecl;
    procedure setProxy(string_: JString); cdecl;
    procedure setProxyid(string_: JString); cdecl;
    procedure setRoaming_protocol(string_: JString); cdecl;
    procedure setServer(string_: JString); cdecl;
    procedure setSourcetype(i: Integer); cdecl;
    procedure setSpn(string_: JString); cdecl;
    procedure setSub_id(i: Integer); cdecl;
    procedure setType(string_: JString); cdecl;
    procedure setUser(string_: JString); cdecl;
    procedure setWait_time(i: Integer); cdecl;
    function toString: JString; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJApnInfoExt = class(TJavaGenericImport<JApnInfoExtClass, JApnInfoExt>) end;

  JInstallAppObserverClass = interface(JIInterfaceClass)
    ['{FC2F53CF-44EE-4E9F-B832-ECC17D0493BB}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/InstallAppObserver')]
  JInstallAppObserver = interface(JIInterface)
    ['{42A33CB7-5759-4089-9E1F-C04F9AABA134}']
    procedure onInstallError(i: Integer); cdecl;
    procedure onInstallFinished; cdecl;
  end;
  TJInstallAppObserver = class(TJavaGenericImport<JInstallAppObserverClass, JInstallAppObserver>) end;

  JUninstallAppObserverClass = interface(JIInterfaceClass)
    ['{7CD14F3B-A46B-40D0-85B4-270053DAE3E0}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/UninstallAppObserver')]
  JUninstallAppObserver = interface(JIInterface)
    ['{D3C29282-45FF-4C66-8451-0551BC6D948E}']
    procedure onUninstallError(i: Integer); cdecl;
    procedure onUninstallFinished; cdecl;
  end;
  TJUninstallAppObserver = class(TJavaGenericImport<JUninstallAppObserverClass, JUninstallAppObserver>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlSystem.JAidlPosKeyListener', TypeInfo(sk210.bridge.topwise.AidlSystem.JAidlPosKeyListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlSystem.JAidlSystem', TypeInfo(sk210.bridge.topwise.AidlSystem.JAidlSystem));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlSystem.JApnInfoExt', TypeInfo(sk210.bridge.topwise.AidlSystem.JApnInfoExt));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlSystem.JInstallAppObserver', TypeInfo(sk210.bridge.topwise.AidlSystem.JInstallAppObserver));
  TRegTypes.RegisterType('sk210.bridge.topwise.AidlSystem.JUninstallAppObserver', TypeInfo(sk210.bridge.topwise.AidlSystem.JUninstallAppObserver));
end;

initialization
  RegisterTypes;
end.

