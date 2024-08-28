
unit sk210.bridge.topwise.cloudpos;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util,
  Androidapi.JNI.Widget;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JInterpolator = interface;//android.view.animation.Interpolator
  Jtoplibrary_BuildConfig = interface;//com.android.topwise.toplibrary.BuildConfig
  JExpandFunctionConstant = interface;//com.topwise.cloudpos.ExpandFunctionConstant
  JExpandFunctionConstant_Error = interface;//com.topwise.cloudpos.ExpandFunctionConstant$Error
  JExpandFunctionConstant_Key = interface;//com.topwise.cloudpos.ExpandFunctionConstant$Key
  JAidlDeviceService = interface;//com.topwise.cloudpos.aidl.AidlDeviceService
  JAidlDeviceService_Stub = interface;//com.topwise.cloudpos.aidl.AidlDeviceService$Stub
  JAidlDeviceService_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.AidlDeviceService$Stub$Proxy
  JAidlBuzzer = interface;//com.topwise.cloudpos.aidl.buzzer.AidlBuzzer
  JAidlBuzzer_Stub = interface;//com.topwise.cloudpos.aidl.buzzer.AidlBuzzer$Stub
  JAidlBuzzer_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.buzzer.AidlBuzzer$Stub$Proxy
  JAidlCameraScanCode = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCode
  JAidlCameraScanCode_Stub = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCode$Stub
  JAidlCameraScanCode_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCode$Stub$Proxy
  JAidlCameraScanCodeListener = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCodeListener
  JAidlCameraScanCodeListener_Stub = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCodeListener$Stub
  JAidlCameraScanCodeListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.camera.AidlCameraScanCodeListener$Stub$Proxy
  JAidlDecodeCallBack = interface;//com.topwise.cloudpos.aidl.camera.AidlDecodeCallBack
  JAidlDecodeCallBack_Stub = interface;//com.topwise.cloudpos.aidl.camera.AidlDecodeCallBack$Stub
  JAidlDecodeCallBack_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.camera.AidlDecodeCallBack$Stub$Proxy
  JDecodeMode = interface;//com.topwise.cloudpos.aidl.camera.DecodeMode
  JDecodeMode_1 = interface;//com.topwise.cloudpos.aidl.camera.DecodeMode$1
  JDecodeParameter = interface;//com.topwise.cloudpos.aidl.camera.DecodeParameter
  JDecodeParameter_1 = interface;//com.topwise.cloudpos.aidl.camera.DecodeParameter$1
  JAidlCheckCard = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCard
  JAidlCheckCard_Stub = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCard$Stub
  JAidlCheckCard_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCard$Stub$Proxy
  JAidlCheckCardListener = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCardListener
  JAidlCheckCardListener_Stub = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCardListener$Stub
  JAidlCheckCardListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.card.AidlCheckCardListener$Stub$Proxy
  JAidlCPUCard = interface;//com.topwise.cloudpos.aidl.cpucard.AidlCPUCard
  JAidlCPUCard_Stub = interface;//com.topwise.cloudpos.aidl.cpucard.AidlCPUCard$Stub
  JAidlCPUCard_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.cpucard.AidlCPUCard$Stub$Proxy
  JAidlDecoderManager = interface;//com.topwise.cloudpos.aidl.decoder.AidlDecoderManager
  JAidlDecoderManager_Stub = interface;//com.topwise.cloudpos.aidl.decoder.AidlDecoderManager$Stub
  JAidlDecoderManager_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.decoder.AidlDecoderManager$Stub$Proxy
  Jemv_AidlCheckCardListener = interface;//com.topwise.cloudpos.aidl.emv.AidlCheckCardListener
  Jemv_AidlCheckCardListener_Stub = interface;//com.topwise.cloudpos.aidl.emv.AidlCheckCardListener$Stub
  Jemv_AidlCheckCardListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.AidlCheckCardListener$Stub$Proxy
  JCandidateApp = interface;//com.topwise.cloudpos.aidl.emv.CandidateApp
  JCandidateApp_1 = interface;//com.topwise.cloudpos.aidl.emv.CandidateApp$1
  Jemv_CardInfo = interface;//com.topwise.cloudpos.aidl.emv.CardInfo
  JCardInfo_1 = interface;//com.topwise.cloudpos.aidl.emv.CardInfo$1
  JEmvTransData = interface;//com.topwise.cloudpos.aidl.emv.EmvTransData
  JEmvTransData_1 = interface;//com.topwise.cloudpos.aidl.emv.EmvTransData$1
  JPCardLoadLog = interface;//com.topwise.cloudpos.aidl.emv.PCardLoadLog
  JPCardLoadLog_1 = interface;//com.topwise.cloudpos.aidl.emv.PCardLoadLog$1
  JPCardTransLog = interface;//com.topwise.cloudpos.aidl.emv.PCardTransLog
  JPCardTransLog_1 = interface;//com.topwise.cloudpos.aidl.emv.PCardTransLog$1
  JTerminalParam = interface;//com.topwise.cloudpos.aidl.emv.TerminalParam
  JTerminalParam_1 = interface;//com.topwise.cloudpos.aidl.emv.TerminalParam$1
  JAidlAmex = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlAmex
  JAidlAmex_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlAmex$Stub
  JAidlAmex_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlAmex$Stub$Proxy
  JAidlDpas = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlDpas
  JAidlDpas_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlDpas$Stub
  JAidlDpas_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlDpas$Stub$Proxy
  JAidlEmvL2 = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEmvL2
  JAidlEmvL2_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEmvL2$Stub
  JAidlEmvL2_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEmvL2$Stub$Proxy
  JAidlEntry = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEntry
  JAidlEntry_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEntry$Stub
  JAidlEntry_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlEntry$Stub$Proxy
  JAidlJcb = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlJcb
  JAidlJcb_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlJcb$Stub
  JAidlJcb_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlJcb$Stub$Proxy
  JAidlMir = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlMir
  JAidlMir_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlMir$Stub
  JAidlMir_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlMir$Stub$Proxy
  JAidlPaypass = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaypass
  JAidlPaypass_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaypass$Stub
  JAidlPaypass_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaypass$Stub$Proxy
  JAidlPaywave = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaywave
  JAidlPaywave_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaywave$Stub
  JAidlPaywave_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPaywave$Stub$Proxy
  JAidlPure = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPure
  JAidlPure_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPure$Stub
  JAidlPure_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlPure$Stub$Proxy
  JAidlQpboc = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlQpboc
  JAidlQpboc_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlQpboc$Stub
  JAidlQpboc_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlQpboc$Stub$Proxy
  JAidlRupay = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlRupay
  JAidlRupay_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlRupay$Stub
  JAidlRupay_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.AidlRupay$Stub$Proxy
  JApduL2Resp = interface;//com.topwise.cloudpos.aidl.emv.level2.ApduL2Resp
  JApduL2Resp_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.ApduL2Resp$1
  JApduL2Send = interface;//com.topwise.cloudpos.aidl.emv.level2.ApduL2Send
  JApduL2Send_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.ApduL2Send$1
  JBaseStruct = interface;//com.topwise.cloudpos.struct.BaseStruct
  JCandList = interface;//com.topwise.cloudpos.aidl.emv.level2.CandList
  JCandList_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.CandList$1
  JClssTornLogRecord = interface;//com.topwise.cloudpos.aidl.emv.level2.ClssTornLogRecord
  JClssTornLogRecord_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.ClssTornLogRecord$1
  JCombination = interface;//com.topwise.cloudpos.aidl.emv.level2.Combination
  JCombination_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.Combination$1
  JEmvCallback = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCallback
  JEmvCallback_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCallback$Stub
  JEmvCallback_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCallback$Stub$Proxy
  JEmvCandidateItem = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCandidateItem
  JEmvCandidateItem_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCandidateItem$1
  JEmvCapk = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCapk
  JEmvCapk_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvCapk$1
  JEmvKernelConfig = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvKernelConfig
  JEmvKernelConfig_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvKernelConfig$1
  JEmvRevocList = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvRevocList
  JEmvRevocList_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvRevocList$1
  JEmvTerminalInfo = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvTerminalInfo
  JEmvTerminalInfo_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.EmvTerminalInfo$1
  JPaypassCallback = interface;//com.topwise.cloudpos.aidl.emv.level2.PaypassCallback
  JPaypassCallback_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.PaypassCallback$Stub
  JPaypassCallback_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.PaypassCallback$Stub$Proxy
  JPreProcResult = interface;//com.topwise.cloudpos.aidl.emv.level2.PreProcResult
  JPreProcResult_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.PreProcResult$1
  JProgramID = interface;//com.topwise.cloudpos.aidl.emv.level2.ProgramID
  JProgramID_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.ProgramID$1
  JQpbocCallback = interface;//com.topwise.cloudpos.aidl.emv.level2.QpbocCallback
  JQpbocCallback_Stub = interface;//com.topwise.cloudpos.aidl.emv.level2.QpbocCallback$Stub
  JQpbocCallback_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.emv.level2.QpbocCallback$Stub$Proxy
  JReturnCodeCLSS = interface;//com.topwise.cloudpos.aidl.emv.level2.ReturnCodeCLSS
  JReturnCodeEMV = interface;//com.topwise.cloudpos.aidl.emv.level2.ReturnCodeEMV
  JTransParam = interface;//com.topwise.cloudpos.aidl.emv.level2.TransParam
  JTransParam_1 = interface;//com.topwise.cloudpos.aidl.emv.level2.TransParam$1
  JAidlFingerprint = interface;//com.topwise.cloudpos.aidl.fingerprint.AidlFingerprint
  JAidlFingerprint_Stub = interface;//com.topwise.cloudpos.aidl.fingerprint.AidlFingerprint$Stub
  JAidlFingerprint_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.fingerprint.AidlFingerprint$Stub$Proxy
  JFingerprintConstant = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant
  JFingerprintConstant_FingerPosition = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$FingerPosition
  JFingerprintConstant_ImgCompressAlg = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$ImgCompressAlg
  JFingerprintConstant_ImgFormat = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$ImgFormat
  JFingerprintConstant_LfdLevel = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$LfdLevel
  JFingerprintConstant_SecurityLevel = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$SecurityLevel
  JFingerprintConstant_TrustFingerException = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintConstant$TrustFingerException
  JFingerprintListener = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintListener
  JFingerprintListener_Stub = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintListener$Stub
  JFingerprintListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintListener$Stub$Proxy
  JFingerprintParam = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintParam
  JFingerprintParam_1 = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintParam$1
  JFingerprintResult = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintResult
  JFingerprintResult_1 = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintResult$1
  JFingerprintVerifyResult = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintVerifyResult
  JFingerprintVerifyResult_1 = interface;//com.topwise.cloudpos.aidl.fingerprint.FingerprintVerifyResult$1
  JAidlICCard = interface;//com.topwise.cloudpos.aidl.iccard.AidlICCard
  JAidlICCard_Stub = interface;//com.topwise.cloudpos.aidl.iccard.AidlICCard$Stub
  JAidlICCard_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.iccard.AidlICCard$Stub$Proxy
  JAidlKeyManager = interface;//com.topwise.cloudpos.aidl.keymanager.AidlKeyManager
  JAidlKeyManager_Stub = interface;//com.topwise.cloudpos.aidl.keymanager.AidlKeyManager$Stub
  JAidlKeyManager_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.keymanager.AidlKeyManager$Stub$Proxy
  JAlgType = interface;//com.topwise.cloudpos.aidl.keymanager.AlgType
  JAlgType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AlgType$1
  JAsyCalType = interface;//com.topwise.cloudpos.aidl.keymanager.AsyCalType
  JAsyCalType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AsyCalType$1
  JAsyKeyPairType = interface;//com.topwise.cloudpos.aidl.keymanager.AsyKeyPairType
  JAsyKeyPairType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AsyKeyPairType$1
  JAsyKeyType = interface;//com.topwise.cloudpos.aidl.keymanager.AsyKeyType
  JAsyKeyType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AsyKeyType$1
  JAsyPaddingMode = interface;//com.topwise.cloudpos.aidl.keymanager.AsyPaddingMode
  JAsyPaddingMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AsyPaddingMode$1
  JAsymmetricKey = interface;//com.topwise.cloudpos.aidl.keymanager.AsymmetricKey
  JAsymmetricKey_1 = interface;//com.topwise.cloudpos.aidl.keymanager.AsymmetricKey$1
  JBytesTypeValue = interface;//com.topwise.cloudpos.aidl.keymanager.BytesTypeValue
  JBytesTypeValue_1 = interface;//com.topwise.cloudpos.aidl.keymanager.BytesTypeValue$1
  JDukptKeyType = interface;//com.topwise.cloudpos.aidl.keymanager.DukptKeyType
  JDukptKeyType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.DukptKeyType$1
  JIncreaseMode = interface;//com.topwise.cloudpos.aidl.keymanager.IncreaseMode
  JIncreaseMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.IncreaseMode$1
  JIntArrayTypeValue = interface;//com.topwise.cloudpos.aidl.keymanager.IntArrayTypeValue
  JIntArrayTypeValue_1 = interface;//com.topwise.cloudpos.aidl.keymanager.IntArrayTypeValue$1
  JKCVVerifyMode = interface;//com.topwise.cloudpos.aidl.keymanager.KCVVerifyMode
  JKCVVerifyMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.KCVVerifyMode$1
  JKeyManagerErrorCode = interface;//com.topwise.cloudpos.aidl.keymanager.KeyManagerErrorCode
  JKeyType = interface;//com.topwise.cloudpos.aidl.keymanager.KeyType
  JKeyType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.KeyType$1
  JKeyUsage = interface;//com.topwise.cloudpos.aidl.keymanager.KeyUsage
  JKeyUsage_1 = interface;//com.topwise.cloudpos.aidl.keymanager.KeyUsage$1
  JMacAlgMode = interface;//com.topwise.cloudpos.aidl.keymanager.MacAlgMode
  JMacAlgMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.MacAlgMode$1
  JSymAlgMode = interface;//com.topwise.cloudpos.aidl.keymanager.SymAlgMode
  JSymAlgMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.SymAlgMode$1
  JSymAlgType = interface;//com.topwise.cloudpos.aidl.keymanager.SymAlgType
  JSymAlgType_1 = interface;//com.topwise.cloudpos.aidl.keymanager.SymAlgType$1
  JSymPaddingMode = interface;//com.topwise.cloudpos.aidl.keymanager.SymPaddingMode
  JSymPaddingMode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.SymPaddingMode$1
  JTr31Mode = interface;//com.topwise.cloudpos.aidl.keymanager.Tr31Mode
  JTr31Mode_1 = interface;//com.topwise.cloudpos.aidl.keymanager.Tr31Mode$1
  JAidlKLDLogExportListener = interface;//com.topwise.cloudpos.aidl.kld.AidlKLDLogExportListener
  JAidlKLDLogExportListener_Stub = interface;//com.topwise.cloudpos.aidl.kld.AidlKLDLogExportListener$Stub
  JAidlKLDLogExportListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.kld.AidlKLDLogExportListener$Stub$Proxy
  JAidlKeyLoadDown = interface;//com.topwise.cloudpos.aidl.kld.AidlKeyLoadDown
  JAidlKeyLoadDown_Stub = interface;//com.topwise.cloudpos.aidl.kld.AidlKeyLoadDown$Stub
  JAidlKeyLoadDown_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.kld.AidlKeyLoadDown$Stub$Proxy
  JKeyLoadManagerConstant = interface;//com.topwise.cloudpos.aidl.kld.KeyLoadManagerConstant
  JKeyLoadManagerConstant_AlgMode = interface;//com.topwise.cloudpos.aidl.kld.KeyLoadManagerConstant$AlgMode
  JTr34Data = interface;//com.topwise.cloudpos.aidl.kld.Tr34Data
  JTr34Data_1 = interface;//com.topwise.cloudpos.aidl.kld.Tr34Data$1
  JAidlLed = interface;//com.topwise.cloudpos.aidl.led.AidlLed
  JAidlLed_Stub = interface;//com.topwise.cloudpos.aidl.led.AidlLed$Stub
  JAidlLed_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.led.AidlLed$Stub$Proxy
  JAidlMagCard = interface;//com.topwise.cloudpos.aidl.magcard.AidlMagCard
  JAidlMagCard_Stub = interface;//com.topwise.cloudpos.aidl.magcard.AidlMagCard$Stub
  JAidlMagCard_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.magcard.AidlMagCard$Stub$Proxy
  JEncryptMagCardListener = interface;//com.topwise.cloudpos.aidl.magcard.EncryptMagCardListener
  JEncryptMagCardListener_Stub = interface;//com.topwise.cloudpos.aidl.magcard.EncryptMagCardListener$Stub
  JEncryptMagCardListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.magcard.EncryptMagCardListener$Stub$Proxy
  JMagCardListener = interface;//com.topwise.cloudpos.aidl.magcard.MagCardListener
  JMagCardListener_Stub = interface;//com.topwise.cloudpos.aidl.magcard.MagCardListener$Stub
  JMagCardListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.magcard.MagCardListener$Stub$Proxy
  JTrackData = interface;//com.topwise.cloudpos.aidl.magcard.TrackData
  JTrackData_1 = interface;//com.topwise.cloudpos.aidl.magcard.TrackData$1
  JAidlPedestal = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestal
  JAidlPedestal_Stub = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestal$Stub
  JAidlPedestal_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestal$Stub$Proxy
  JAidlPedestalSerialManager = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestalSerialManager
  JAidlPedestalSerialManager_Stub = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestalSerialManager$Stub
  JAidlPedestalSerialManager_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.pedestal.AidlPedestalSerialManager$Stub$Proxy
  JAidlPinpad = interface;//com.topwise.cloudpos.aidl.pinpad.AidlPinpad
  JAidlPinpad_Stub = interface;//com.topwise.cloudpos.aidl.pinpad.AidlPinpad$Stub
  JAidlPinpad_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.pinpad.AidlPinpad$Stub$Proxy
  JGetPinListener = interface;//com.topwise.cloudpos.aidl.pinpad.GetPinListener
  JGetPinListener_Stub = interface;//com.topwise.cloudpos.aidl.pinpad.GetPinListener$Stub
  JGetPinListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.pinpad.GetPinListener$Stub$Proxy
  JMacParam = interface;//com.topwise.cloudpos.aidl.pinpad.MacParam
  JPinPadAlgParam = interface;//com.topwise.cloudpos.aidl.pinpad.PinPadAlgParam
  JPinParam = interface;//com.topwise.cloudpos.aidl.pinpad.PinParam
  JAidlPM = interface;//com.topwise.cloudpos.aidl.pm.AidlPM
  JAidlPM_Stub = interface;//com.topwise.cloudpos.aidl.pm.AidlPM$Stub
  JAidlPM_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.pm.AidlPM$Stub$Proxy
  JCertificateInfo = interface;//com.topwise.cloudpos.aidl.pm.CertificateInfo
  JCertificateInfo_1 = interface;//com.topwise.cloudpos.aidl.pm.CertificateInfo$1
  JAidlPrinter = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinter
  JAidlPrinter_Stub = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinter$Stub
  JAidlPrinter_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinter$Stub$Proxy
  JAidlPrinterListener = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinterListener
  JAidlPrinterListener_Stub = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinterListener$Stub
  JAidlPrinterListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.printer.AidlPrinterListener$Stub$Proxy
  JAlign = interface;//com.topwise.cloudpos.aidl.printer.Align
  JImageUnit = interface;//com.topwise.cloudpos.aidl.printer.ImageUnit
  JPrintCuttingMode = interface;//com.topwise.cloudpos.aidl.printer.PrintCuttingMode
  JPrintCuttingMode_1 = interface;//com.topwise.cloudpos.aidl.printer.PrintCuttingMode$1
  JPrintItemObj = interface;//com.topwise.cloudpos.aidl.printer.PrintItemObj
  JPrintItemEnhancedObj = interface;//com.topwise.cloudpos.aidl.printer.PrintItemEnhancedObj
  JPrintItemEnhancedObj_1 = interface;//com.topwise.cloudpos.aidl.printer.PrintItemEnhancedObj$1
  JPrintItemObj_1 = interface;//com.topwise.cloudpos.aidl.printer.PrintItemObj$1
  JPrintItemObj_ALIGN = interface;//com.topwise.cloudpos.aidl.printer.PrintItemObj$ALIGN
  JPrintTemplate = interface;//com.topwise.cloudpos.aidl.printer.PrintTemplate
  JPrinterMessage = interface;//com.topwise.cloudpos.aidl.printer.PrinterMessage
  JPrinterMessage_1 = interface;//com.topwise.cloudpos.aidl.printer.PrinterMessage$1
  JPrnTextView = interface;//com.topwise.cloudpos.aidl.printer.PrnTextView
  JTextUnit = interface;//com.topwise.cloudpos.aidl.printer.TextUnit
  JTextUnit_TextSize = interface;//com.topwise.cloudpos.aidl.printer.TextUnit$TextSize
  JAidlPsam = interface;//com.topwise.cloudpos.aidl.psam.AidlPsam
  JAidlPsam_Stub = interface;//com.topwise.cloudpos.aidl.psam.AidlPsam$Stub
  JAidlPsam_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.psam.AidlPsam$Stub$Proxy
  JAidlRFCard = interface;//com.topwise.cloudpos.aidl.rfcard.AidlRFCard
  JAidlRFCard_Stub = interface;//com.topwise.cloudpos.aidl.rfcard.AidlRFCard$Stub
  JAidlRFCard_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.rfcard.AidlRFCard$Stub$Proxy
  JAidlScannerManager = interface;//com.topwise.cloudpos.aidl.scanner.AidlScannerManager
  JAidlScannerManager_Stub = interface;//com.topwise.cloudpos.aidl.scanner.AidlScannerManager$Stub
  JAidlScannerManager_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.scanner.AidlScannerManager$Stub$Proxy
  JAidlSerialport = interface;//com.topwise.cloudpos.aidl.serialport.AidlSerialport
  JAidlSerialport_Stub = interface;//com.topwise.cloudpos.aidl.serialport.AidlSerialport$Stub
  JAidlSerialport_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.serialport.AidlSerialport$Stub$Proxy
  JAidlShellMonitor = interface;//com.topwise.cloudpos.aidl.shellmonitor.AidlShellMonitor
  JAidlShellMonitor_Stub = interface;//com.topwise.cloudpos.aidl.shellmonitor.AidlShellMonitor$Stub
  JAidlShellMonitor_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.shellmonitor.AidlShellMonitor$Stub$Proxy
  JInstructionSendDataCallback = interface;//com.topwise.cloudpos.aidl.shellmonitor.InstructionSendDataCallback
  JInstructionSendDataCallback_Stub = interface;//com.topwise.cloudpos.aidl.shellmonitor.InstructionSendDataCallback$Stub
  JInstructionSendDataCallback_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.shellmonitor.InstructionSendDataCallback$Stub$Proxy
  JAidlPosKeyListener = interface;//com.topwise.cloudpos.aidl.system.AidlPosKeyListener
  JAidlPosKeyListener_Stub = interface;//com.topwise.cloudpos.aidl.system.AidlPosKeyListener$Stub
  JAidlPosKeyListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.system.AidlPosKeyListener$Stub$Proxy
  JAidlSystem = interface;//com.topwise.cloudpos.aidl.system.AidlSystem
  JAidlSystem_Stub = interface;//com.topwise.cloudpos.aidl.system.AidlSystem$Stub
  JAidlSystem_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.system.AidlSystem$Stub$Proxy
  JApnInfo = interface;//com.topwise.cloudpos.aidl.system.ApnInfo
  JApnInfo_1 = interface;//com.topwise.cloudpos.aidl.system.ApnInfo$1
  JApnInfoExt = interface;//com.topwise.cloudpos.aidl.system.ApnInfoExt
  JApnInfoExt_1 = interface;//com.topwise.cloudpos.aidl.system.ApnInfoExt$1
  JInstallAppObserver = interface;//com.topwise.cloudpos.aidl.system.InstallAppObserver
  JInstallAppObserver_Stub = interface;//com.topwise.cloudpos.aidl.system.InstallAppObserver$Stub
  JInstallAppObserver_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.system.InstallAppObserver$Stub$Proxy
  JUninstallAppObserver = interface;//com.topwise.cloudpos.aidl.system.UninstallAppObserver
  JUninstallAppObserver_Stub = interface;//com.topwise.cloudpos.aidl.system.UninstallAppObserver$Stub
  JUninstallAppObserver_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.system.UninstallAppObserver$Stub$Proxy
  JAidlTM = interface;//com.topwise.cloudpos.aidl.tm.AidlTM
  JAidlTM_Stub = interface;//com.topwise.cloudpos.aidl.tm.AidlTM$Stub
  JAidlTM_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.tm.AidlTM$Stub$Proxy
  JAidlTMListener = interface;//com.topwise.cloudpos.aidl.tm.AidlTMListener
  JAidlTMListener_Stub = interface;//com.topwise.cloudpos.aidl.tm.AidlTMListener$Stub
  JAidlTMListener_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.tm.AidlTMListener$Stub$Proxy
  JAidlTriggerStatus = interface;//com.topwise.cloudpos.aidl.trigger.AidlTriggerStatus
  JAidlTriggerStatus_Stub = interface;//com.topwise.cloudpos.aidl.trigger.AidlTriggerStatus$Stub
  JAidlTriggerStatus_Stub_Proxy = interface;//com.topwise.cloudpos.aidl.trigger.AidlTriggerStatus$Stub$Proxy
  JAidlErrorCode = interface;//com.topwise.cloudpos.data.AidlErrorCode
  JAidlErrorCode_CPUCard = interface;//com.topwise.cloudpos.data.AidlErrorCode$CPUCard
  JAidlErrorCode_EMV = interface;//com.topwise.cloudpos.data.AidlErrorCode$EMV
  JAidlErrorCode_MagCard = interface;//com.topwise.cloudpos.data.AidlErrorCode$MagCard
  JAidlErrorCode_Pinpad = interface;//com.topwise.cloudpos.data.AidlErrorCode$Pinpad
  JAidlErrorCode_Printer = interface;//com.topwise.cloudpos.data.AidlErrorCode$Printer
  JAidlErrorCode_RFCard = interface;//com.topwise.cloudpos.data.AidlErrorCode$RFCard
  JAidlErrorCode_ScannerError = interface;//com.topwise.cloudpos.data.AidlErrorCode$ScannerError
  JAidlErrorCode_SerialPort = interface;//com.topwise.cloudpos.data.AidlErrorCode$SerialPort
  JAidlErrorCode_System = interface;//com.topwise.cloudpos.data.AidlErrorCode$System
  JAidlScanParam = interface;//com.topwise.cloudpos.data.AidlScanParam
  JBuzzerCode = interface;//com.topwise.cloudpos.data.BuzzerCode
  JCPUCard = interface;//com.topwise.cloudpos.data.CPUCard
  JCPUCard_AT24CCardType = interface;//com.topwise.cloudpos.data.CPUCard$AT24CCardType
  JCPUCard_AT88SCCardType = interface;//com.topwise.cloudpos.data.CPUCard$AT88SCCardType
  JCPUCard_AT88SCZoneNumber = interface;//com.topwise.cloudpos.data.CPUCard$AT88SCZoneNumber
  JCPUCard_CPUCardType = interface;//com.topwise.cloudpos.data.CPUCard$CPUCardType
  JEmvConstant = interface;//com.topwise.cloudpos.data.EmvConstant
  JEmvConstant_AccountType = interface;//com.topwise.cloudpos.data.EmvConstant$AccountType
  JEmvConstant_AidCapkOptFlag = interface;//com.topwise.cloudpos.data.EmvConstant$AidCapkOptFlag
  JEmvConstant_AppType = interface;//com.topwise.cloudpos.data.EmvConstant$AppType
  JEmvConstant_CertType = interface;//com.topwise.cloudpos.data.EmvConstant$CertType
  JEmvConstant_PinType = interface;//com.topwise.cloudpos.data.EmvConstant$PinType
  JEmvConstant_ReadCardLoadLogType = interface;//com.topwise.cloudpos.data.EmvConstant$ReadCardLoadLogType
  JEmvConstant_SlotType = interface;//com.topwise.cloudpos.data.EmvConstant$SlotType
  JLedCode = interface;//com.topwise.cloudpos.data.LedCode
  JPinpadConstant = interface;//com.topwise.cloudpos.data.PinpadConstant
  JPinpadConstant_BasicAlg = interface;//com.topwise.cloudpos.data.PinpadConstant$BasicAlg
  JPinpadConstant_DelPedMode = interface;//com.topwise.cloudpos.data.PinpadConstant$DelPedMode
  JPinpadConstant_KCVVerifyMode = interface;//com.topwise.cloudpos.data.PinpadConstant$KCVVerifyMode
  JPinpadConstant_KeyType = interface;//com.topwise.cloudpos.data.PinpadConstant$KeyType
  JPinpadConstant_MacAlg = interface;//com.topwise.cloudpos.data.PinpadConstant$MacAlg
  JPinpadConstant_PinType = interface;//com.topwise.cloudpos.data.PinpadConstant$PinType
  JPinpadConstant_PinpadId = interface;//com.topwise.cloudpos.data.PinpadConstant$PinpadId
  JPinpadConstant_StoredRecord = interface;//com.topwise.cloudpos.data.PinpadConstant$StoredRecord
  JPinpadConstant_WKeyType = interface;//com.topwise.cloudpos.data.PinpadConstant$WKeyType
  JPrinterConstant = interface;//com.topwise.cloudpos.data.PrinterConstant
  JPrinterConstant_BarCodeType = interface;//com.topwise.cloudpos.data.PrinterConstant$BarCodeType
  JPrinterConstant_FontSize = interface;//com.topwise.cloudpos.data.PrinterConstant$FontSize
  JPrinterConstant_HRIPosition = interface;//com.topwise.cloudpos.data.PrinterConstant$HRIPosition
  JPrinterConstant_PrintLen = interface;//com.topwise.cloudpos.data.PrinterConstant$PrintLen
  JPrinterConstant_PrinterLed = interface;//com.topwise.cloudpos.data.PrinterConstant$PrinterLed
  JPrinterConstant_PrinterState = interface;//com.topwise.cloudpos.data.PrinterConstant$PrinterState
  JPsamConstant = interface;//com.topwise.cloudpos.data.PsamConstant
  JRFCard = interface;//com.topwise.cloudpos.data.RFCard
  JRFCard_RFCardType = interface;//com.topwise.cloudpos.data.RFCard$RFCardType
  JSerialportConstant = interface;//com.topwise.cloudpos.data.SerialportConstant
  JSystemConstant = interface;//com.topwise.cloudpos.data.SystemConstant
  JSystemConstant_DayDreamMode = interface;//com.topwise.cloudpos.data.SystemConstant$DayDreamMode
  JSystemConstant_NavigationButton = interface;//com.topwise.cloudpos.data.SystemConstant$NavigationButton
  JSystemConstant_ScreenLockType = interface;//com.topwise.cloudpos.data.SystemConstant$ScreenLockType
  JSystemConstant_SystemConfigurationMenu = interface;//com.topwise.cloudpos.data.SystemConstant$SystemConfigurationMenu
  JSystemConstant_TetheringOption = interface;//com.topwise.cloudpos.data.SystemConstant$TetheringOption
  JBytesUtil = interface;//com.topwise.cloudpos.struct.BytesUtil
  JTlv = interface;//com.topwise.cloudpos.struct.Tlv
  JTlvList = interface;//com.topwise.cloudpos.struct.TlvList

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;//Deprecated
    {class} procedure cancel; cdecl;
    {class} function clone: JAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getStartDelay: Int64; cdecl;
    {class} function isPaused: Boolean; cdecl;
    {class} function isRunning: Boolean; cdecl;
    {class} procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;
    {class} procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    {class} procedure resume; cdecl;
    {class} procedure setTarget(target: JObject); cdecl;
    {class} procedure setupEndValues; cdecl;
    {class} procedure setupStartValues; cdecl;
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure addListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    function getDuration: Int64; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    function getListeners: JArrayList; cdecl;
    function isStarted: Boolean; cdecl;
    procedure pause; cdecl;
    procedure removeAllListeners; cdecl;
    function setDuration(duration: Int64): JAnimator; cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure start; cdecl;//Deprecated
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationStart(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationCancel(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationEnd(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationRepeat(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
    {class} procedure onAnimationResume(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationPause(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;//Deprecated
    {class} function getType: Jlang_Class; cdecl;//Deprecated
    {class} function getValue: JObject; cdecl;//Deprecated
    {class} function hasValue: Boolean; cdecl;//Deprecated
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;//Deprecated
    {class} procedure setValue(value: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function clone: JKeyframe; cdecl;//Deprecated
    function getFraction: Single; cdecl;//Deprecated
    function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    procedure setFraction(fraction: Single); cdecl;//Deprecated
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;//Deprecated
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;//Deprecated
    {class} procedure addChild(parent: JViewGroup; child: JView); cdecl;
    {class} procedure enableTransitionType(transitionType: Integer); cdecl;
    {class} function getAnimator(transitionType: Integer): JAnimator; cdecl;
    {class} function getDuration(transitionType: Integer): Int64; cdecl;
    {class} function getTransitionListeners: JList; cdecl;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;//Deprecated
    {class} procedure removeChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    {class} procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;//Deprecated
    {class} procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;//Deprecated
    {class} procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;//Deprecated
    {class} procedure setStagger(transitionType: Integer; duration: Int64); cdecl;//Deprecated
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    procedure disableTransitionType(transitionType: Integer); cdecl;
    function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;//Deprecated
    function getStagger(transitionType: Integer): Int64; cdecl;//Deprecated
    function getStartDelay(transitionType: Integer): Int64; cdecl;//Deprecated
    procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;//Deprecated
    function isChangingLayout: Boolean; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;//Deprecated
    procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;//Deprecated
    procedure setDuration(duration: Int64); cdecl; overload;//Deprecated
    procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;//Deprecated
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
    {class} procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;//Deprecated
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} procedure setConverter(converter: JTypeConverter); cdecl;//Deprecated
    {class} procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;//Deprecated
    {class} procedure setProperty(property_: JProperty); cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    function clone: JPropertyValuesHolder; cdecl;//Deprecated
    function getPropertyName: JString; cdecl;//Deprecated
    procedure setPropertyName(propertyName: JString); cdecl;
    function toString: JString; cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;//Deprecated
    {class} procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;//Deprecated
    {class} function clone: JStateListAnimator; cdecl;//Deprecated
    {class} procedure jumpToCurrentState; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
    function getInterpolation(input: Single): Single; cdecl;
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;//Deprecated
    {class} function convert(value: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
    {class} function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;//Deprecated
    {class} function clone: JValueAnimator; cdecl;
    {class} procedure &end; cdecl;
    {class} function getAnimatedFraction: Single; cdecl;
    {class} function getDuration: Int64; cdecl;
    {class} function getFrameDelay: Int64; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;//Deprecated
    {class} function isRunning: Boolean; cdecl;//Deprecated
    {class} function isStarted: Boolean; cdecl;//Deprecated
    {class} procedure pause; cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} procedure reverse; cdecl;//Deprecated
    {class} procedure setCurrentFraction(fraction: Single); cdecl;//Deprecated
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;//Deprecated
    {class} procedure setRepeatMode(value: Integer); cdecl;
    {class} procedure setStartDelay(startDelay: Int64); cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    procedure cancel; cdecl;
    function getAnimatedValue: JObject; cdecl; overload;
    function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;
    function getCurrentPlayTime: Int64; cdecl;
    function getRepeatCount: Integer; cdecl;//Deprecated
    function getRepeatMode: Integer; cdecl;//Deprecated
    function getStartDelay: Int64; cdecl;//Deprecated
    procedure removeAllUpdateListeners; cdecl;//Deprecated
    procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    procedure setCurrentPlayTime(playTime: Int64); cdecl;//Deprecated
    function setDuration(duration: Int64): JValueAnimator; cdecl;//Deprecated
    procedure setEvaluator(value: JTypeEvaluator); cdecl;//Deprecated
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setRepeatCount(value: Integer); cdecl;
    procedure start; cdecl;
    function toString: JString; cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
    procedure onAnimationUpdate(animation: JValueAnimator); cdecl;//Deprecated
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  Jtoplibrary_BuildConfigClass = interface(JObjectClass)
    ['{93D37964-3356-4987-940B-DA9AE3CDF2C7}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jtoplibrary_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/android/topwise/toplibrary/BuildConfig')]
  Jtoplibrary_BuildConfig = interface(JObject)
    ['{08F6FC33-1990-4F7D-9164-D428B4C82484}']
  end;
  TJtoplibrary_BuildConfig = class(TJavaGenericImport<Jtoplibrary_BuildConfigClass, Jtoplibrary_BuildConfig>) end;

  JExpandFunctionConstantClass = interface(JObjectClass)
    ['{BABE636C-2381-493E-B40A-3A75555725EA}']
    {class} function _GetFUNCTION_LIST: JString; cdecl;
    {class} function init: JExpandFunctionConstant; cdecl;
    {class} property FUNCTION_LIST: JString read _GetFUNCTION_LIST;
  end;

  [JavaSignature('com/topwise/cloudpos/ExpandFunctionConstant')]
  JExpandFunctionConstant = interface(JObject)
    ['{7A97B56C-F3E3-4644-AB89-5D739E152F61}']
  end;
  TJExpandFunctionConstant = class(TJavaGenericImport<JExpandFunctionConstantClass, JExpandFunctionConstant>) end;

  JExpandFunctionConstant_ErrorClass = interface(JObjectClass)
    ['{0A8F76A9-D7F5-4D44-B8B7-7E937E818D56}']
    {class} function _GetNOT_SUPPORT: Integer; cdecl;
    {class} function _GetSUCCESS: Integer; cdecl;
    {class} function init(expandFunctionConstant: JExpandFunctionConstant): JExpandFunctionConstant_Error; cdecl;//Deprecated
    {class} property NOT_SUPPORT: Integer read _GetNOT_SUPPORT;
    {class} property SUCCESS: Integer read _GetSUCCESS;
  end;

  [JavaSignature('com/topwise/cloudpos/ExpandFunctionConstant$Error')]
  JExpandFunctionConstant_Error = interface(JObject)
    ['{E981723B-02E0-4D46-876C-34153C9327C1}']
    function _Getthis: JExpandFunctionConstant; cdecl;
    property this: JExpandFunctionConstant read _Getthis;
  end;
  TJExpandFunctionConstant_Error = class(TJavaGenericImport<JExpandFunctionConstant_ErrorClass, JExpandFunctionConstant_Error>) end;

  JExpandFunctionConstant_KeyClass = interface(JObjectClass)
    ['{5FEFA1FD-FD13-49A4-AB77-7DB896CF79C9}']
    {class} function _GetERROR_CODE: JString; cdecl;
    {class} function _GetERROR_MSG: JString; cdecl;
    {class} function _GetFUNCTION_NAME: JString; cdecl;
    {class} function _GetRESULT: JString; cdecl;
    {class} function init(expandFunctionConstant: JExpandFunctionConstant): JExpandFunctionConstant_Key; cdecl;
    {class} property ERROR_CODE: JString read _GetERROR_CODE;
    {class} property ERROR_MSG: JString read _GetERROR_MSG;
    {class} property FUNCTION_NAME: JString read _GetFUNCTION_NAME;
    {class} property RESULT: JString read _GetRESULT;
  end;

  [JavaSignature('com/topwise/cloudpos/ExpandFunctionConstant$Key')]
  JExpandFunctionConstant_Key = interface(JObject)
    ['{63BE72C8-4B49-4EB6-B2D8-5ED8789CB226}']
    function _Getthis: JExpandFunctionConstant; cdecl;
    property this: JExpandFunctionConstant read _Getthis;
  end;
  TJExpandFunctionConstant_Key = class(TJavaGenericImport<JExpandFunctionConstant_KeyClass, JExpandFunctionConstant_Key>) end;

  JAidlDeviceServiceClass = interface(JIInterfaceClass)
    ['{24759AEE-BB0D-4DA0-8B03-606F3680417F}']
    {class} function getSystemService: JIBinder; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/AidlDeviceService')]
  JAidlDeviceService = interface(JIInterface)
    ['{CAC70881-EBF6-4C5D-9783-6A4DE6107FE6}']
    function expandFunction(bundle: JBundle): JBundle; cdecl;
    function getBuzzer: JIBinder; cdecl;
    function getCPUCard: JIBinder; cdecl;
    function getCameraManager: JIBinder; cdecl;
    function getCheckCard: JIBinder; cdecl;
    function getDecoder: JIBinder; cdecl;
    function getFingerprint: JIBinder; cdecl;
    function getInsertCardReader: JIBinder; cdecl;
    function getKLD: JIBinder; cdecl;
    function getKeyManager: JIBinder; cdecl;
    function getL2Amex: JIBinder; cdecl;
    function getL2Dpas: JIBinder; cdecl;
    function getL2Emv: JIBinder; cdecl;
    function getL2Entry: JIBinder; cdecl;
    function getL2JCB: JIBinder; cdecl;
    function getL2Mir: JIBinder; cdecl;
    function getL2Paypass: JIBinder; cdecl;
    function getL2Paywave: JIBinder; cdecl;
    function getL2Pure: JIBinder; cdecl;
    function getL2Qpboc: JIBinder; cdecl;
    function getL2Rupay: JIBinder; cdecl;
    function getLed: JIBinder; cdecl;
    function getMagCardReader: JIBinder; cdecl;
    function getPM: JIBinder; cdecl;
    function getPSAMReader(i: Integer): JIBinder; cdecl;
    function getPedestal: JIBinder; cdecl;
    function getPinPad(i: Integer): JIBinder; cdecl;
    function getPosTriggerStatus: JIBinder; cdecl;
    function getPrinter: JIBinder; cdecl;
    function getRFIDReader: JIBinder; cdecl;
    function getScanner: JIBinder; cdecl;
    function getSerialPort(i: Integer): JIBinder; cdecl;
    function getShellMonitor: JIBinder; cdecl;
    function getTM: JIBinder; cdecl;
  end;
  TJAidlDeviceService = class(TJavaGenericImport<JAidlDeviceServiceClass, JAidlDeviceService>) end;

  JAidlDeviceService_StubClass = interface(JBinderClass)
    ['{D2888703-25AF-41C7-A95C-35310EDED211}']
    {class} function _GetTRANSACTION_expandFunction: Integer; cdecl;
    {class} function _GetTRANSACTION_getBuzzer: Integer; cdecl;
    {class} function _GetTRANSACTION_getCPUCard: Integer; cdecl;
    {class} function _GetTRANSACTION_getCameraManager: Integer; cdecl;
    {class} function _GetTRANSACTION_getCheckCard: Integer; cdecl;
    {class} function _GetTRANSACTION_getDecoder: Integer; cdecl;
    {class} function _GetTRANSACTION_getFingerprint: Integer; cdecl;
    {class} function _GetTRANSACTION_getInsertCardReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getKLD: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyManager: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Amex: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Dpas: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Emv: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Entry: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2JCB: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Mir: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Paypass: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Paywave: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Pure: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Qpboc: Integer; cdecl;
    {class} function _GetTRANSACTION_getL2Rupay: Integer; cdecl;
    {class} function _GetTRANSACTION_getLed: Integer; cdecl;
    {class} function _GetTRANSACTION_getMagCardReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getPM: Integer; cdecl;
    {class} function _GetTRANSACTION_getPSAMReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getPedestal: Integer; cdecl;
    {class} function _GetTRANSACTION_getPinPad: Integer; cdecl;
    {class} function _GetTRANSACTION_getPosTriggerStatus: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinter: Integer; cdecl;
    {class} function _GetTRANSACTION_getRFIDReader: Integer; cdecl;
    {class} function _GetTRANSACTION_getScanner: Integer; cdecl;
    {class} function _GetTRANSACTION_getSerialPort: Integer; cdecl;
    {class} function _GetTRANSACTION_getShellMonitor: Integer; cdecl;
    {class} function _GetTRANSACTION_getTM: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlDeviceService; cdecl;
    {class} function init: JAidlDeviceService_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_expandFunction: Integer read _GetTRANSACTION_expandFunction;
    {class} property TRANSACTION_getBuzzer: Integer read _GetTRANSACTION_getBuzzer;
    {class} property TRANSACTION_getCPUCard: Integer read _GetTRANSACTION_getCPUCard;
    {class} property TRANSACTION_getCameraManager: Integer read _GetTRANSACTION_getCameraManager;
    {class} property TRANSACTION_getCheckCard: Integer read _GetTRANSACTION_getCheckCard;
    {class} property TRANSACTION_getDecoder: Integer read _GetTRANSACTION_getDecoder;
    {class} property TRANSACTION_getFingerprint: Integer read _GetTRANSACTION_getFingerprint;
    {class} property TRANSACTION_getInsertCardReader: Integer read _GetTRANSACTION_getInsertCardReader;
    {class} property TRANSACTION_getKLD: Integer read _GetTRANSACTION_getKLD;
    {class} property TRANSACTION_getKeyManager: Integer read _GetTRANSACTION_getKeyManager;
    {class} property TRANSACTION_getL2Amex: Integer read _GetTRANSACTION_getL2Amex;
    {class} property TRANSACTION_getL2Dpas: Integer read _GetTRANSACTION_getL2Dpas;
    {class} property TRANSACTION_getL2Emv: Integer read _GetTRANSACTION_getL2Emv;
    {class} property TRANSACTION_getL2Entry: Integer read _GetTRANSACTION_getL2Entry;
    {class} property TRANSACTION_getL2JCB: Integer read _GetTRANSACTION_getL2JCB;
    {class} property TRANSACTION_getL2Mir: Integer read _GetTRANSACTION_getL2Mir;
    {class} property TRANSACTION_getL2Paypass: Integer read _GetTRANSACTION_getL2Paypass;
    {class} property TRANSACTION_getL2Paywave: Integer read _GetTRANSACTION_getL2Paywave;
    {class} property TRANSACTION_getL2Pure: Integer read _GetTRANSACTION_getL2Pure;
    {class} property TRANSACTION_getL2Qpboc: Integer read _GetTRANSACTION_getL2Qpboc;
    {class} property TRANSACTION_getL2Rupay: Integer read _GetTRANSACTION_getL2Rupay;
    {class} property TRANSACTION_getLed: Integer read _GetTRANSACTION_getLed;
    {class} property TRANSACTION_getMagCardReader: Integer read _GetTRANSACTION_getMagCardReader;
    {class} property TRANSACTION_getPM: Integer read _GetTRANSACTION_getPM;
    {class} property TRANSACTION_getPSAMReader: Integer read _GetTRANSACTION_getPSAMReader;
    {class} property TRANSACTION_getPedestal: Integer read _GetTRANSACTION_getPedestal;
    {class} property TRANSACTION_getPinPad: Integer read _GetTRANSACTION_getPinPad;
    {class} property TRANSACTION_getPosTriggerStatus: Integer read _GetTRANSACTION_getPosTriggerStatus;
    {class} property TRANSACTION_getPrinter: Integer read _GetTRANSACTION_getPrinter;
    {class} property TRANSACTION_getRFIDReader: Integer read _GetTRANSACTION_getRFIDReader;
    {class} property TRANSACTION_getScanner: Integer read _GetTRANSACTION_getScanner;
    {class} property TRANSACTION_getSerialPort: Integer read _GetTRANSACTION_getSerialPort;
    {class} property TRANSACTION_getShellMonitor: Integer read _GetTRANSACTION_getShellMonitor;
    {class} property TRANSACTION_getTM: Integer read _GetTRANSACTION_getTM;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/AidlDeviceService$Stub')]
  JAidlDeviceService_Stub = interface(JBinder)
    ['{A5428558-551D-4BA4-9FBD-EDE48E9BEC37}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlDeviceService_Stub = class(TJavaGenericImport<JAidlDeviceService_StubClass, JAidlDeviceService_Stub>) end;

  JAidlDeviceService_Stub_ProxyClass = interface(JAidlDeviceServiceClass)
    ['{A8752A98-C0BA-4105-806D-F1598FD770FF}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/AidlDeviceService$Stub$Proxy')]
  JAidlDeviceService_Stub_Proxy = interface(JAidlDeviceService)
    ['{F674648C-E0EE-47CE-997D-1D7E489A512E}']
    function asBinder: JIBinder; cdecl;
    function expandFunction(bundle: JBundle): JBundle; cdecl;
    function getBuzzer: JIBinder; cdecl;
    function getCPUCard: JIBinder; cdecl;
    function getCameraManager: JIBinder; cdecl;
    function getCheckCard: JIBinder; cdecl;
    function getDecoder: JIBinder; cdecl;
    function getFingerprint: JIBinder; cdecl;
    function getInsertCardReader: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getKLD: JIBinder; cdecl;
    function getKeyManager: JIBinder; cdecl;
    function getL2Amex: JIBinder; cdecl;
    function getL2Dpas: JIBinder; cdecl;
    function getL2Emv: JIBinder; cdecl;
    function getL2Entry: JIBinder; cdecl;
    function getL2JCB: JIBinder; cdecl;
    function getL2Mir: JIBinder; cdecl;
    function getL2Paypass: JIBinder; cdecl;
    function getL2Paywave: JIBinder; cdecl;
    function getL2Pure: JIBinder; cdecl;
    function getL2Qpboc: JIBinder; cdecl;
    function getL2Rupay: JIBinder; cdecl;
    function getLed: JIBinder; cdecl;
    function getMagCardReader: JIBinder; cdecl;
    function getPM: JIBinder; cdecl;
    function getPSAMReader(i: Integer): JIBinder; cdecl;
    function getPedestal: JIBinder; cdecl;
    function getPinPad(i: Integer): JIBinder; cdecl;
    function getPosTriggerStatus: JIBinder; cdecl;
    function getPrinter: JIBinder; cdecl;
    function getRFIDReader: JIBinder; cdecl;
    function getScanner: JIBinder; cdecl;
    function getSerialPort(i: Integer): JIBinder; cdecl;
    function getShellMonitor: JIBinder; cdecl;
    function getSystemService: JIBinder; cdecl;
    function getTM: JIBinder; cdecl;
  end;
  TJAidlDeviceService_Stub_Proxy = class(TJavaGenericImport<JAidlDeviceService_Stub_ProxyClass, JAidlDeviceService_Stub_Proxy>) end;

  JAidlBuzzerClass = interface(JIInterfaceClass)
    ['{82972A97-1C70-4CA8-8C34-F42AEA58B1AB}']
    {class} function beep(i: Integer; i1: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/buzzer/AidlBuzzer')]
  JAidlBuzzer = interface(JIInterface)
    ['{520B5B28-9F93-4B13-9D92-D9D4FB794BAD}']
    function stopBeep: Boolean; cdecl;
  end;
  TJAidlBuzzer = class(TJavaGenericImport<JAidlBuzzerClass, JAidlBuzzer>) end;

  JAidlBuzzer_StubClass = interface(JBinderClass)
    ['{9DA828DC-2BDA-47AD-BF62-6E2C66CBF799}']
    {class} function _GetTRANSACTION_stopBeep: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlBuzzer; cdecl;
    {class} function init: JAidlBuzzer_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_stopBeep: Integer read _GetTRANSACTION_stopBeep;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/buzzer/AidlBuzzer$Stub')]
  JAidlBuzzer_Stub = interface(JBinder)
    ['{DE7F2FFF-3D0C-423B-9867-D7D60488AC12}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlBuzzer_Stub = class(TJavaGenericImport<JAidlBuzzer_StubClass, JAidlBuzzer_Stub>) end;

  JAidlBuzzer_Stub_ProxyClass = interface(JAidlBuzzerClass)
    ['{5007E4AC-A7C4-4F7D-8DD3-1C3887D8099C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/buzzer/AidlBuzzer$Stub$Proxy')]
  JAidlBuzzer_Stub_Proxy = interface(JAidlBuzzer)
    ['{68613FF6-73CB-44FC-B61A-28FEAABA1568}']
    function asBinder: JIBinder; cdecl;
    function beep(i: Integer; i1: Integer): Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function stopBeep: Boolean; cdecl;
  end;
  TJAidlBuzzer_Stub_Proxy = class(TJavaGenericImport<JAidlBuzzer_Stub_ProxyClass, JAidlBuzzer_Stub_Proxy>) end;

  JAidlCameraScanCodeClass = interface(JIInterfaceClass)
    ['{50E261F3-2E85-4E2A-8A2C-724750BDD14C}']
    {class} procedure scanCode(bundle: JBundle; aidlCameraScanCodeListener: JAidlCameraScanCodeListener); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCode')]
  JAidlCameraScanCode = interface(JIInterface)
    ['{EC900D4B-3AED-42C5-9252-172A28AB7145}']
    function getDecodeLibVersion: JString; cdecl;
    function startDecode(decodeParameter: JDecodeParameter; aidlDecodeCallBack: JAidlDecodeCallBack): Integer; cdecl;
    function stopDecode: Integer; cdecl;
    procedure stopScan; cdecl;
  end;
  TJAidlCameraScanCode = class(TJavaGenericImport<JAidlCameraScanCodeClass, JAidlCameraScanCode>) end;

  JAidlCameraScanCode_StubClass = interface(JBinderClass)
    ['{14DC882C-F18D-415D-BAE1-3ECE51D1DC42}']
    {class} function _GetTRANSACTION_getDecodeLibVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_startDecode: Integer; cdecl;
    {class} function _GetTRANSACTION_stopDecode: Integer; cdecl;
    {class} function _GetTRANSACTION_stopScan: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlCameraScanCode; cdecl;
    {class} function init: JAidlCameraScanCode_Stub; cdecl;
    {class} property TRANSACTION_getDecodeLibVersion: Integer read _GetTRANSACTION_getDecodeLibVersion;
    {class} property TRANSACTION_startDecode: Integer read _GetTRANSACTION_startDecode;
    {class} property TRANSACTION_stopDecode: Integer read _GetTRANSACTION_stopDecode;
    {class} property TRANSACTION_stopScan: Integer read _GetTRANSACTION_stopScan;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCode$Stub')]
  JAidlCameraScanCode_Stub = interface(JBinder)
    ['{54BDF0D4-3FD4-4C51-B4FD-58CA34592BE6}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlCameraScanCode_Stub = class(TJavaGenericImport<JAidlCameraScanCode_StubClass, JAidlCameraScanCode_Stub>) end;

  JAidlCameraScanCode_Stub_ProxyClass = interface(JAidlCameraScanCodeClass)
    ['{C714E187-A677-4467-972A-F7C1BF6626F2}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCode$Stub$Proxy')]
  JAidlCameraScanCode_Stub_Proxy = interface(JAidlCameraScanCode)
    ['{E1E5E2BD-CE77-41A9-A49E-5A2F1DDCB2D8}']
    function asBinder: JIBinder; cdecl;
    function getDecodeLibVersion: JString; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure scanCode(bundle: JBundle; aidlCameraScanCodeListener: JAidlCameraScanCodeListener); cdecl;
    function startDecode(decodeParameter: JDecodeParameter; aidlDecodeCallBack: JAidlDecodeCallBack): Integer; cdecl;
    function stopDecode: Integer; cdecl;
    procedure stopScan; cdecl;
  end;
  TJAidlCameraScanCode_Stub_Proxy = class(TJavaGenericImport<JAidlCameraScanCode_Stub_ProxyClass, JAidlCameraScanCode_Stub_Proxy>) end;

  JAidlCameraScanCodeListenerClass = interface(JIInterfaceClass)
    ['{5998EE4D-B292-4C78-A03D-421D07CF7B63}']
    {class} procedure onResult(string_: JString); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCodeListener')]
  JAidlCameraScanCodeListener = interface(JIInterface)
    ['{084D49C8-36FE-4119-B5D7-2225A8E22FF9}']
    procedure onCancel; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJAidlCameraScanCodeListener = class(TJavaGenericImport<JAidlCameraScanCodeListenerClass, JAidlCameraScanCodeListener>) end;

  JAidlCameraScanCodeListener_StubClass = interface(JBinderClass)
    ['{2A50ED58-81B7-4DA3-9576-93C2CB09785E}']
    {class} function _GetTRANSACTION_onCancel: Integer; cdecl;
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onTimeout: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlCameraScanCodeListener; cdecl;
    {class} function init: JAidlCameraScanCodeListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onCancel: Integer read _GetTRANSACTION_onCancel;
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onTimeout: Integer read _GetTRANSACTION_onTimeout;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCodeListener$Stub')]
  JAidlCameraScanCodeListener_Stub = interface(JBinder)
    ['{AAE45CB8-C36A-4068-8849-9D407A6D0968}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlCameraScanCodeListener_Stub = class(TJavaGenericImport<JAidlCameraScanCodeListener_StubClass, JAidlCameraScanCodeListener_Stub>) end;

  JAidlCameraScanCodeListener_Stub_ProxyClass = interface(JAidlCameraScanCodeListenerClass)
    ['{27394431-6D36-4D3D-BBB4-D883A1402D55}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlCameraScanCodeListener$Stub$Proxy')]
  JAidlCameraScanCodeListener_Stub_Proxy = interface(JAidlCameraScanCodeListener)
    ['{65CEDB32-4F56-4B9D-8C03-1B240724DA10}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCancel; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onResult(string_: JString); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJAidlCameraScanCodeListener_Stub_Proxy = class(TJavaGenericImport<JAidlCameraScanCodeListener_Stub_ProxyClass, JAidlCameraScanCodeListener_Stub_Proxy>) end;

  JAidlDecodeCallBackClass = interface(JIInterfaceClass)
    ['{432D70FE-C3EA-406B-8EBA-F76314FCC918}']
    {class} procedure onResult(string_: JString); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlDecodeCallBack')]
  JAidlDecodeCallBack = interface(JIInterface)
    ['{09A6272C-D4E9-4771-A9F2-44CFB9647019}']
    procedure onError(i: Integer); cdecl;
  end;
  TJAidlDecodeCallBack = class(TJavaGenericImport<JAidlDecodeCallBackClass, JAidlDecodeCallBack>) end;

  JAidlDecodeCallBack_StubClass = interface(JBinderClass)
    ['{EF749A6F-AECD-45D2-9D3D-14433DC0421B}']
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlDecodeCallBack; cdecl;
    {class} function init: JAidlDecodeCallBack_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlDecodeCallBack$Stub')]
  JAidlDecodeCallBack_Stub = interface(JBinder)
    ['{B5662CCC-A16A-4063-8688-C5A32BF07FDE}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlDecodeCallBack_Stub = class(TJavaGenericImport<JAidlDecodeCallBack_StubClass, JAidlDecodeCallBack_Stub>) end;

  JAidlDecodeCallBack_Stub_ProxyClass = interface(JAidlDecodeCallBackClass)
    ['{899CABAB-05E0-4462-B165-4164914A644C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/AidlDecodeCallBack$Stub$Proxy')]
  JAidlDecodeCallBack_Stub_Proxy = interface(JAidlDecodeCallBack)
    ['{AD50C77A-EA47-4F4C-9126-4A81764600E8}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onResult(string_: JString); cdecl;
  end;
  TJAidlDecodeCallBack_Stub_Proxy = class(TJavaGenericImport<JAidlDecodeCallBack_Stub_ProxyClass, JAidlDecodeCallBack_Stub_Proxy>) end;

  JDecodeModeClass = interface(JEnumClass)
    ['{77A1ECB9-9C32-4220-808E-5695837525F5}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetMODE_CONTINUE_SCAN_CODE: JDecodeMode; cdecl;
    {class} function _GetMODE_DEFAULT: JDecodeMode; cdecl;
    {class} function _GetMODE_SINGLE_SCAN_CODE: JDecodeMode; cdecl;
    {class} function valueOf(string_: JString): JDecodeMode; cdecl;
    {class} function values: TJavaObjectArray<JDecodeMode>; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property MODE_CONTINUE_SCAN_CODE: JDecodeMode read _GetMODE_CONTINUE_SCAN_CODE;
    {class} property MODE_DEFAULT: JDecodeMode read _GetMODE_DEFAULT;
    {class} property MODE_SINGLE_SCAN_CODE: JDecodeMode read _GetMODE_SINGLE_SCAN_CODE;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeMode')]
  JDecodeMode = interface(JEnum)
    ['{716F7CB4-B2E7-4338-9C58-2D7F72053075}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJDecodeMode = class(TJavaGenericImport<JDecodeModeClass, JDecodeMode>) end;

  JDecodeMode_1Class = interface(JParcelable_CreatorClass)
    ['{FBC577C2-F011-4194-819D-F6BEEE06DAB7}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeMode$1')]
  JDecodeMode_1 = interface(JParcelable_Creator)
    ['{11D255C7-2674-4A7F-971B-CADDDFA4531F}']
    function createFromParcel(parcel: JParcel): JDecodeMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JDecodeMode>; cdecl;
  end;
  TJDecodeMode_1 = class(TJavaGenericImport<JDecodeMode_1Class, JDecodeMode_1>) end;

  JDecodeParameterClass = interface(JParcelableClass)
    ['{B0661ADC-3254-477C-A6BD-A2124CC365CD}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JDecodeParameter; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeParameter')]
  JDecodeParameter = interface(JParcelable)
    ['{CE392152-ACFE-4E41-8AB0-E3677ED00FB5}']
    function describeContents: Integer; cdecl;
    function getAutoDetect: Integer; cdecl;
    function getDecodeIntervalTime: Integer; cdecl;
    function getDecodeMode: Integer; cdecl;
    function getDecodeSingleTimeout: Integer; cdecl;
    function getFlashLightTimeout: Integer; cdecl;
    function getNoSupportCodeTypeList: JList; cdecl;
    function getSupportCodeTypeList: JList; cdecl;
    function setAutoDetect(i: Integer): JDecodeParameter; cdecl;
    function setDecodeIntervalTime(i: Integer): JDecodeParameter; cdecl;
    function setDecodeMode(decodeMode: JDecodeMode): JDecodeParameter; cdecl;
    function setDecodeSingleTimeout(i: Integer): JDecodeParameter; cdecl;
    function setFlashLightTimeout(i: Integer): JDecodeParameter; cdecl;
    function setNoSupportCodeTypeList(list: JList): JDecodeParameter; cdecl;
    function setSupportCodeTypeList(list: JList): JDecodeParameter; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJDecodeParameter = class(TJavaGenericImport<JDecodeParameterClass, JDecodeParameter>) end;

  JDecodeParameter_1Class = interface(JParcelable_CreatorClass)
    ['{11F80C96-FEFB-4C09-814F-6A98B175C630}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/camera/DecodeParameter$1')]
  JDecodeParameter_1 = interface(JParcelable_Creator)
    ['{FFCDE2EF-BC69-4E59-9251-8F6429967846}']
    function createFromParcel(parcel: JParcel): JDecodeParameter; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JDecodeParameter>; cdecl;
  end;
  TJDecodeParameter_1 = class(TJavaGenericImport<JDecodeParameter_1Class, JDecodeParameter_1>) end;

  JAidlCheckCardClass = interface(JIInterfaceClass)
    ['{A0E6D679-ACBB-4877-867F-AF2A2DB027AC}']
    {class} procedure checkCard(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: JAidlCheckCardListener); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCard')]
  JAidlCheckCard = interface(JIInterface)
    ['{E01BCCAA-7394-47E9-85FB-FD119DCE6714}']
    procedure cancelCheckCard; cdecl;
  end;
  TJAidlCheckCard = class(TJavaGenericImport<JAidlCheckCardClass, JAidlCheckCard>) end;

  JAidlCheckCard_StubClass = interface(JBinderClass)
    ['{DC7287F2-0494-4874-A4EB-02A0D1999506}']
    {class} function _GetTRANSACTION_cancelCheckCard: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlCheckCard; cdecl;
    {class} function init: JAidlCheckCard_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cancelCheckCard: Integer read _GetTRANSACTION_cancelCheckCard;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCard$Stub')]
  JAidlCheckCard_Stub = interface(JBinder)
    ['{17533A8D-9CCB-4042-BD19-4DF54535B756}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlCheckCard_Stub = class(TJavaGenericImport<JAidlCheckCard_StubClass, JAidlCheckCard_Stub>) end;

  JAidlCheckCard_Stub_ProxyClass = interface(JAidlCheckCardClass)
    ['{853D4BCB-9D7E-4071-B466-149AA271C5F5}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCard$Stub$Proxy')]
  JAidlCheckCard_Stub_Proxy = interface(JAidlCheckCard)
    ['{6922FB25-D4A2-4E59-B785-AF526189DBCF}']
    function asBinder: JIBinder; cdecl;
    procedure cancelCheckCard; cdecl;
    procedure checkCard(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: JAidlCheckCardListener); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJAidlCheckCard_Stub_Proxy = class(TJavaGenericImport<JAidlCheckCard_Stub_ProxyClass, JAidlCheckCard_Stub_Proxy>) end;

  JAidlCheckCardListenerClass = interface(JIInterfaceClass)
    ['{42C4932E-4892-45A5-AC82-D7D276D1A4DB}']
    {class} procedure onFindMagCard(trackData: JTrackData); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCardListener')]
  JAidlCheckCardListener = interface(JIInterface)
    ['{5FF628E1-9771-4856-8EE3-397AB126BCB5}']
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onFindICCard; cdecl;
    procedure onFindRFCard; cdecl;
    procedure onSwipeCardFail; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJAidlCheckCardListener = class(TJavaGenericImport<JAidlCheckCardListenerClass, JAidlCheckCardListener>) end;

  JAidlCheckCardListener_StubClass = interface(JBinderClass)
    ['{916A3E2A-944D-4115-80C8-9FEF309B4D89}']
    {class} function _GetTRANSACTION_onCanceled: Integer; cdecl;
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onFindICCard: Integer; cdecl;
    {class} function _GetTRANSACTION_onFindRFCard: Integer; cdecl;
    {class} function _GetTRANSACTION_onSwipeCardFail: Integer; cdecl;
    {class} function _GetTRANSACTION_onTimeout: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlCheckCardListener; cdecl;
    {class} function init: JAidlCheckCardListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onCanceled: Integer read _GetTRANSACTION_onCanceled;
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onFindICCard: Integer read _GetTRANSACTION_onFindICCard;
    {class} property TRANSACTION_onFindRFCard: Integer read _GetTRANSACTION_onFindRFCard;
    {class} property TRANSACTION_onSwipeCardFail: Integer read _GetTRANSACTION_onSwipeCardFail;
    {class} property TRANSACTION_onTimeout: Integer read _GetTRANSACTION_onTimeout;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCardListener$Stub')]
  JAidlCheckCardListener_Stub = interface(JBinder)
    ['{428DAC78-4A3E-45DB-9628-9DC38E8A480D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlCheckCardListener_Stub = class(TJavaGenericImport<JAidlCheckCardListener_StubClass, JAidlCheckCardListener_Stub>) end;

  JAidlCheckCardListener_Stub_ProxyClass = interface(JAidlCheckCardListenerClass)
    ['{26A16B92-B805-4750-B948-4AC7E97F44F6}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/card/AidlCheckCardListener$Stub$Proxy')]
  JAidlCheckCardListener_Stub_Proxy = interface(JAidlCheckCardListener)
    ['{176CD9B0-5D05-4EEC-ADF9-64D40ACDAADD}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onFindICCard; cdecl;
    procedure onFindMagCard(trackData: JTrackData); cdecl;
    procedure onFindRFCard; cdecl;
    procedure onSwipeCardFail; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJAidlCheckCardListener_Stub_Proxy = class(TJavaGenericImport<JAidlCheckCardListener_Stub_ProxyClass, JAidlCheckCardListener_Stub_Proxy>) end;

  JAidlCPUCardClass = interface(JIInterfaceClass)
    ['{01902556-D61E-4153-962B-9E69E95BBFD0}']
    {class} function open(i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/cpucard/AidlCPUCard')]
  JAidlCPUCard = interface(JIInterface)
    ['{6C4001BE-F513-495F-8FA4-D3EC4D03B3EB}']
    function changePassword(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    procedure close; cdecl;
    function getAT88SCPwdCheckNum(i: Integer): Integer; cdecl;
    function initAT88SCAuth(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function openWithATRVerification(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function read(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function readAT88SCDomainData(i: Integer; i1: Integer; i2: Integer; i3: Integer): TJavaArray<Byte>; cdecl;
    function readAT88SCFuseMark(i: Integer): Integer; cdecl;
    function readAt24c(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function verifyAT88SCAuth(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function verifyAT88SCPwd(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function verifyPwd(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function write(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function writeAT88SCDomainData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function writeAT88SCFuseMark(i: Integer; i1: Integer): Boolean; cdecl;
    function writeAt24c(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
  end;
  TJAidlCPUCard = class(TJavaGenericImport<JAidlCPUCardClass, JAidlCPUCard>) end;

  JAidlCPUCard_StubClass = interface(JBinderClass)
    ['{E6A0B875-0E63-4EB1-9B76-6108FD50DC1F}']
    {class} function _GetTRANSACTION_changePassword: Integer; cdecl;
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_getAT88SCPwdCheckNum: Integer; cdecl;
    {class} function _GetTRANSACTION_initAT88SCAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_openWithATRVerification: Integer; cdecl;
    {class} function _GetTRANSACTION_read: Integer; cdecl;
    {class} function _GetTRANSACTION_readAT88SCDomainData: Integer; cdecl;
    {class} function _GetTRANSACTION_readAT88SCFuseMark: Integer; cdecl;
    {class} function _GetTRANSACTION_readAt24c: Integer; cdecl;
    {class} function _GetTRANSACTION_verifyAT88SCAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_verifyAT88SCPwd: Integer; cdecl;
    {class} function _GetTRANSACTION_verifyPwd: Integer; cdecl;
    {class} function _GetTRANSACTION_write: Integer; cdecl;
    {class} function _GetTRANSACTION_writeAT88SCDomainData: Integer; cdecl;
    {class} function _GetTRANSACTION_writeAT88SCFuseMark: Integer; cdecl;
    {class} function _GetTRANSACTION_writeAt24c: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlCPUCard; cdecl;
    {class} function init: JAidlCPUCard_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_changePassword: Integer read _GetTRANSACTION_changePassword;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_getAT88SCPwdCheckNum: Integer read _GetTRANSACTION_getAT88SCPwdCheckNum;
    {class} property TRANSACTION_initAT88SCAuth: Integer read _GetTRANSACTION_initAT88SCAuth;
    {class} property TRANSACTION_openWithATRVerification: Integer read _GetTRANSACTION_openWithATRVerification;
    {class} property TRANSACTION_read: Integer read _GetTRANSACTION_read;
    {class} property TRANSACTION_readAT88SCDomainData: Integer read _GetTRANSACTION_readAT88SCDomainData;
    {class} property TRANSACTION_readAT88SCFuseMark: Integer read _GetTRANSACTION_readAT88SCFuseMark;
    {class} property TRANSACTION_readAt24c: Integer read _GetTRANSACTION_readAt24c;
    {class} property TRANSACTION_verifyAT88SCAuth: Integer read _GetTRANSACTION_verifyAT88SCAuth;
    {class} property TRANSACTION_verifyAT88SCPwd: Integer read _GetTRANSACTION_verifyAT88SCPwd;
    {class} property TRANSACTION_verifyPwd: Integer read _GetTRANSACTION_verifyPwd;
    {class} property TRANSACTION_write: Integer read _GetTRANSACTION_write;
    {class} property TRANSACTION_writeAT88SCDomainData: Integer read _GetTRANSACTION_writeAT88SCDomainData;
    {class} property TRANSACTION_writeAT88SCFuseMark: Integer read _GetTRANSACTION_writeAT88SCFuseMark;
    {class} property TRANSACTION_writeAt24c: Integer read _GetTRANSACTION_writeAt24c;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/cpucard/AidlCPUCard$Stub')]
  JAidlCPUCard_Stub = interface(JBinder)
    ['{928FB848-215E-41FE-9772-A9C3B07B8E44}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlCPUCard_Stub = class(TJavaGenericImport<JAidlCPUCard_StubClass, JAidlCPUCard_Stub>) end;

  JAidlCPUCard_Stub_ProxyClass = interface(JAidlCPUCardClass)
    ['{5200950A-F3BB-454C-BC27-EE5C05F4998F}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/cpucard/AidlCPUCard$Stub$Proxy')]
  JAidlCPUCard_Stub_Proxy = interface(JAidlCPUCard)
    ['{04709223-A7FA-4298-B16C-8DCB860A56A7}']
    function asBinder: JIBinder; cdecl;
    function changePassword(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    procedure close; cdecl;
    function getAT88SCPwdCheckNum(i: Integer): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function initAT88SCAuth(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function open(i: Integer): Integer; cdecl;
    function openWithATRVerification(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function read(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function readAT88SCDomainData(i: Integer; i1: Integer; i2: Integer; i3: Integer): TJavaArray<Byte>; cdecl;
    function readAT88SCFuseMark(i: Integer): Integer; cdecl;
    function readAt24c(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function verifyAT88SCAuth(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function verifyAT88SCPwd(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function verifyPwd(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function write(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function writeAT88SCDomainData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function writeAT88SCFuseMark(i: Integer; i1: Integer): Boolean; cdecl;
    function writeAt24c(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
  end;
  TJAidlCPUCard_Stub_Proxy = class(TJavaGenericImport<JAidlCPUCard_Stub_ProxyClass, JAidlCPUCard_Stub_Proxy>) end;

  JAidlDecoderManagerClass = interface(JIInterfaceClass)
    ['{A9DE1AA5-A231-467B-8625-C4547C410E3C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/decoder/AidlDecoderManager')]
  JAidlDecoderManager = interface(JIInterface)
    ['{54651176-0233-4B6A-A91C-A5FC662B219A}']
    function decode(b: TJavaArray<Byte>; i: Integer; i1: Integer): JString; cdecl;
    function decodeByBigData(parcelFileDescriptor: JParcelFileDescriptor; i: Integer; i1: Integer): JString; cdecl;
    procedure exit; cdecl;
  end;
  TJAidlDecoderManager = class(TJavaGenericImport<JAidlDecoderManagerClass, JAidlDecoderManager>) end;

  JAidlDecoderManager_StubClass = interface(JBinderClass)
    ['{67F68910-9D1A-4D5A-8F8C-554ED7C7EF66}']
    {class} function _GetTRANSACTION_decode: Integer; cdecl;
    {class} function _GetTRANSACTION_decodeByBigData: Integer; cdecl;
    {class} function _GetTRANSACTION_exit: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlDecoderManager; cdecl;
    {class} function init: JAidlDecoderManager_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_decode: Integer read _GetTRANSACTION_decode;
    {class} property TRANSACTION_decodeByBigData: Integer read _GetTRANSACTION_decodeByBigData;
    {class} property TRANSACTION_exit: Integer read _GetTRANSACTION_exit;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/decoder/AidlDecoderManager$Stub')]
  JAidlDecoderManager_Stub = interface(JBinder)
    ['{3B272913-C4A5-434C-8E74-E309A7404AFB}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlDecoderManager_Stub = class(TJavaGenericImport<JAidlDecoderManager_StubClass, JAidlDecoderManager_Stub>) end;

  JAidlDecoderManager_Stub_ProxyClass = interface(JAidlDecoderManagerClass)
    ['{4AFE4BE8-38A6-4E31-89E0-C5C4F5DEB5AA}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/decoder/AidlDecoderManager$Stub$Proxy')]
  JAidlDecoderManager_Stub_Proxy = interface(JAidlDecoderManager)
    ['{3D090161-5A15-43D0-A379-4B630503787E}']
    function asBinder: JIBinder; cdecl;
    function decode(b: TJavaArray<Byte>; i: Integer; i1: Integer): JString; cdecl;
    function decodeByBigData(parcelFileDescriptor: JParcelFileDescriptor; i: Integer; i1: Integer): JString; cdecl;
    procedure exit; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function init: Integer; cdecl; overload;
  end;
  TJAidlDecoderManager_Stub_Proxy = class(TJavaGenericImport<JAidlDecoderManager_Stub_ProxyClass, JAidlDecoderManager_Stub_Proxy>) end;

  Jemv_AidlCheckCardListenerClass = interface(JIInterfaceClass)
    ['{3D3541DF-7A85-4557-B848-58E748B7086C}']
    {class} procedure onFindMagCard(trackData: JTrackData); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/AidlCheckCardListener')]
  Jemv_AidlCheckCardListener = interface(JIInterface)
    ['{69F40145-EF7E-4AA5-AED7-CB289F305FB2}']
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onFindICCard; cdecl;
    procedure onFindRFCard; cdecl;
    procedure onSwipeCardFail; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJemv_AidlCheckCardListener = class(TJavaGenericImport<Jemv_AidlCheckCardListenerClass, Jemv_AidlCheckCardListener>) end;

  Jemv_AidlCheckCardListener_StubClass = interface(JBinderClass)
    ['{2A963D5A-1A82-4BE8-AC23-C92A1C204B53}']
    {class} function _GetTRANSACTION_onCanceled: Integer; cdecl;
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onFindICCard: Integer; cdecl;
    {class} function _GetTRANSACTION_onFindRFCard: Integer; cdecl;
    {class} function _GetTRANSACTION_onSwipeCardFail: Integer; cdecl;
    {class} function _GetTRANSACTION_onTimeout: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): Jemv_AidlCheckCardListener; cdecl;
    {class} function init: Jemv_AidlCheckCardListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onCanceled: Integer read _GetTRANSACTION_onCanceled;
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onFindICCard: Integer read _GetTRANSACTION_onFindICCard;
    {class} property TRANSACTION_onFindRFCard: Integer read _GetTRANSACTION_onFindRFCard;
    {class} property TRANSACTION_onSwipeCardFail: Integer read _GetTRANSACTION_onSwipeCardFail;
    {class} property TRANSACTION_onTimeout: Integer read _GetTRANSACTION_onTimeout;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/AidlCheckCardListener$Stub')]
  Jemv_AidlCheckCardListener_Stub = interface(JBinder)
    ['{BBFEA637-BCFF-4DB4-B6D4-C913A7D7723A}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJemv_AidlCheckCardListener_Stub = class(TJavaGenericImport<Jemv_AidlCheckCardListener_StubClass, Jemv_AidlCheckCardListener_Stub>) end;

  Jemv_AidlCheckCardListener_Stub_ProxyClass = interface(Jemv_AidlCheckCardListenerClass)
    ['{AC599111-43B1-4C67-996A-E9DB9E9A298B}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/AidlCheckCardListener$Stub$Proxy')]
  Jemv_AidlCheckCardListener_Stub_Proxy = interface(Jemv_AidlCheckCardListener)
    ['{8A8239CE-3140-4C83-9CCF-3DA9E93ECA25}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onFindICCard; cdecl;
    procedure onFindMagCard(trackData: JTrackData); cdecl;
    procedure onFindRFCard; cdecl;
    procedure onSwipeCardFail; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJemv_AidlCheckCardListener_Stub_Proxy = class(TJavaGenericImport<Jemv_AidlCheckCardListener_Stub_ProxyClass, Jemv_AidlCheckCardListener_Stub_Proxy>) end;

  JCandidateAppClass = interface(JParcelableClass)
    ['{75716D26-F6E3-43EF-868F-489AF72CE55B}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JCandidateApp; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/CandidateApp')]
  JCandidateApp = interface(JParcelable)
    ['{B69AE80F-1B27-48B3-B8B4-F1AA960E852C}']
    function describeContents: Integer; cdecl;
    procedure fromBytes(b: TJavaArray<Byte>); cdecl;
    function getAid: TJavaArray<Byte>; cdecl;
    function getApid: Byte; cdecl;
    function getApidFLag: Byte; cdecl;
    function getApn: TJavaArray<Byte>; cdecl;
    function getAppLabel: TJavaArray<Byte>; cdecl;
    function getIssCTIndex: Byte; cdecl;
    function getIssCTIndexFlag: Byte; cdecl;
    function getKernelID: TJavaArray<Byte>; cdecl;
    function getLangPref: TJavaArray<Byte>; cdecl;
    procedure setApidFLag(b: Byte); cdecl;
    function toBytes: TJavaArray<Byte>; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJCandidateApp = class(TJavaGenericImport<JCandidateAppClass, JCandidateApp>) end;

  JCandidateApp_1Class = interface(JParcelable_CreatorClass)
    ['{98FE13B5-0229-4463-9E4B-E6EF3AE8E061}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/CandidateApp$1')]
  JCandidateApp_1 = interface(JParcelable_Creator)
    ['{814D4D68-2639-4006-B3F4-B566164BD351}']
    function createFromParcel(parcel: JParcel): JCandidateApp; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JCandidateApp>; cdecl;
  end;
  TJCandidateApp_1 = class(TJavaGenericImport<JCandidateApp_1Class, JCandidateApp_1>) end;

  Jemv_CardInfoClass = interface(JParcelableClass)
    ['{BDD75095-0433-44DA-A1CB-A8ED89D0AB0B}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getCreator: JParcelable_Creator; cdecl;
    {class} function init(parcel: JParcel): Jemv_CardInfo; cdecl; overload;
    {class} function init(string_: JString): Jemv_CardInfo; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/CardInfo')]
  Jemv_CardInfo = interface(JParcelable)
    ['{0B3789B6-007A-499E-8E85-CE784FD6BD79}']
    function describeContents: Integer; cdecl;
    function getCardno: JString; cdecl;
    procedure setCardno(string_: JString); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJemv_CardInfo = class(TJavaGenericImport<Jemv_CardInfoClass, Jemv_CardInfo>) end;

  JCardInfo_1Class = interface(JParcelable_CreatorClass)
    ['{3C72D031-CDEC-4DF3-8340-EDE63D2868BC}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/CardInfo$1')]
  JCardInfo_1 = interface(JParcelable_Creator)
    ['{AAFAACA4-7D79-4A5A-A73A-75CC029929B3}']
    function createFromParcel(parcel: JParcel): Jemv_CardInfo; cdecl;
    function newArray(i: Integer): TJavaObjectArray<Jemv_CardInfo>; cdecl;
  end;
  TJCardInfo_1 = class(TJavaGenericImport<JCardInfo_1Class, JCardInfo_1>) end;

  JEmvTransDataClass = interface(JParcelableClass)
    ['{F32A1F75-214F-4C61-9736-03F5756701E2}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getCreator: JParcelable_Creator; cdecl;
    {class} function init: JEmvTransData; cdecl; overload;
    {class} function init(parcel: JParcel): JEmvTransData; cdecl; overload;
    {class} function init(b: Byte; b1: Byte; b2: Boolean; b3: Boolean; b4: Boolean; b5: Byte; b6: Byte; b7: TJavaArray<Byte>): JEmvTransData; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/EmvTransData')]
  JEmvTransData = interface(JParcelable)
    ['{C8FB8DBD-BBA1-4F18-B738-60A353521241}']
    function describeContents: Integer; cdecl;
    function getEmvFlow: Byte; cdecl;
    function getRequestAmtPosition: Byte; cdecl;
    function getReserv: TJavaArray<Byte>; cdecl;
    function getSlotType: Byte; cdecl;
    function getTranstype: Byte; cdecl;
    function isEcashEnable: Boolean; cdecl;
    function isForceOnline: Boolean; cdecl;
    function isSmEnable: Boolean; cdecl;
    procedure setEcashEnable(b: Boolean); cdecl;
    procedure setEmvFlow(b: Byte); cdecl;
    procedure setForceOnline(b: Boolean); cdecl;
    procedure setRequestAmtPosition(b: Byte); cdecl;
    procedure setReserv(b: TJavaArray<Byte>); cdecl;
    procedure setSlotType(b: Byte); cdecl;
    procedure setSmEnable(b: Boolean); cdecl;
    procedure setTranstype(b: Byte); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvTransData = class(TJavaGenericImport<JEmvTransDataClass, JEmvTransData>) end;

  JEmvTransData_1Class = interface(JParcelable_CreatorClass)
    ['{D1C901CA-93C1-474B-9685-1BC3607869C6}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/EmvTransData$1')]
  JEmvTransData_1 = interface(JParcelable_Creator)
    ['{B19410A8-5467-4925-A710-5125121322ED}']
    function createFromParcel(parcel: JParcel): JEmvTransData; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvTransData>; cdecl;
  end;
  TJEmvTransData_1 = class(TJavaGenericImport<JEmvTransData_1Class, JEmvTransData_1>) end;

  JPCardLoadLogClass = interface(JParcelableClass)
    ['{8B809880-4E92-40BB-9B47-F19487A89FC1}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JPCardLoadLog; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; b: TJavaArray<Byte>): JPCardLoadLog; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/PCardLoadLog')]
  JPCardLoadLog = interface(JParcelable)
    ['{E3511C1B-171E-4EC2-AECE-3A0EC1AA84AD}']
    function describeContents: Integer; cdecl;
    function getAfter_putdata: JString; cdecl;
    function getAppTransCount: TJavaArray<Byte>; cdecl;
    function getBefore_putdata: JString; cdecl;
    function getPutdata_p1: JString; cdecl;
    function getPutdata_p2: JString; cdecl;
    function getTransDate: JString; cdecl;
    function getTransTime: JString; cdecl;
    procedure setAfter_putdata(string_: JString); cdecl;
    procedure setAppTransCount(b: TJavaArray<Byte>); cdecl;
    procedure setBefore_putdata(string_: JString); cdecl;
    procedure setPutdata_p1(string_: JString); cdecl;
    procedure setPutdata_p2(string_: JString); cdecl;
    procedure setTransDate(string_: JString); cdecl;
    procedure setTransTime(string_: JString); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJPCardLoadLog = class(TJavaGenericImport<JPCardLoadLogClass, JPCardLoadLog>) end;

  JPCardLoadLog_1Class = interface(JParcelable_CreatorClass)
    ['{7A3B1CAA-069B-434B-A47D-F8AE7263B34D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/PCardLoadLog$1')]
  JPCardLoadLog_1 = interface(JParcelable_Creator)
    ['{B5940805-CA66-4349-82AD-9E29EC5807BB}']
    function createFromParcel(parcel: JParcel): JPCardLoadLog; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPCardLoadLog>; cdecl;
  end;
  TJPCardLoadLog_1 = class(TJavaGenericImport<JPCardLoadLog_1Class, JPCardLoadLog_1>) end;

  JPCardTransLogClass = interface(JParcelableClass)
    ['{028A6132-3511-40E8-9F08-C960DA091A43}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JPCardTransLog; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; i: Integer; b: TJavaArray<Byte>): JPCardTransLog; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/PCardTransLog')]
  JPCardTransLog = interface(JParcelable)
    ['{66C3CE6C-1F80-492D-9C09-94643AC31AD1}']
    function describeContents: Integer; cdecl;
    function getAmt: JString; cdecl;
    function getAppTransCount: TJavaArray<Byte>; cdecl;
    function getCountryCode: JString; cdecl;
    function getMerchantName: JString; cdecl;
    function getMoneyCode: JString; cdecl;
    function getOtheramt: JString; cdecl;
    function getTransDate: JString; cdecl;
    function getTransTime: JString; cdecl;
    function getTranstype: Integer; cdecl;
    procedure setAmt(string_: JString); cdecl;
    procedure setAppTransCount(b: TJavaArray<Byte>); cdecl;
    procedure setCountryCode(string_: JString); cdecl;
    procedure setMerchantName(string_: JString); cdecl;
    procedure setMoneyCode(string_: JString); cdecl;
    procedure setOtheramt(string_: JString); cdecl;
    procedure setTransDate(string_: JString); cdecl;
    procedure setTransTime(string_: JString); cdecl;
    procedure setTranstype(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJPCardTransLog = class(TJavaGenericImport<JPCardTransLogClass, JPCardTransLog>) end;

  JPCardTransLog_1Class = interface(JParcelable_CreatorClass)
    ['{EFF16834-5E19-4768-89A0-92D718FCBA1E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/PCardTransLog$1')]
  JPCardTransLog_1 = interface(JParcelable_Creator)
    ['{99645391-B4BA-4416-A44F-DDF00E200F98}']
    function createFromParcel(parcel: JParcel): JPCardTransLog; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPCardTransLog>; cdecl;
  end;
  TJPCardTransLog_1 = class(TJavaGenericImport<JPCardTransLog_1Class, JPCardTransLog_1>) end;

  JTerminalParamClass = interface(JParcelableClass)
    ['{224391CC-95A8-45A9-A503-FDBE01596FF4}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JTerminalParam; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>; b5: TJavaArray<Byte>): JTerminalParam; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/TerminalParam')]
  JTerminalParam = interface(JParcelable)
    ['{1FEB9CAE-8A26-4D64-B61B-F18092C3D7C8}']
    function describeContents: Integer; cdecl;
    procedure fromTlvList(tlvList: JTlvList); cdecl;
    function getAddCapability: TJavaArray<Byte>; cdecl;
    function getCapability: TJavaArray<Byte>; cdecl;
    function getCountryCode: TJavaArray<Byte>; cdecl;
    function getCurrencyCode: TJavaArray<Byte>; cdecl;
    function getIFDSn: TJavaArray<Byte>; cdecl;
    function getTerminalType: Byte; cdecl;
    procedure setAddCapability(b: TJavaArray<Byte>); cdecl;
    procedure setCapability(b: TJavaArray<Byte>); cdecl;
    procedure setCountryCode(b: TJavaArray<Byte>); cdecl;
    procedure setCurrencyCode(b: TJavaArray<Byte>); cdecl;
    procedure setIFDSn(b: TJavaArray<Byte>); cdecl;
    procedure setTerminalType(b: Byte); cdecl;
    function toString: JString; cdecl;
    function toTlvList: JTlvList; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJTerminalParam = class(TJavaGenericImport<JTerminalParamClass, JTerminalParam>) end;

  JTerminalParam_1Class = interface(JParcelable_CreatorClass)
    ['{60CC5411-E68A-4A73-A1CB-D0524C5B0873}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/TerminalParam$1')]
  JTerminalParam_1 = interface(JParcelable_Creator)
    ['{E4756C31-3EBD-4494-BC4B-28C234BAFCD4}']
    function createFromParcel(parcel: JParcel): JTerminalParam; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JTerminalParam>; cdecl;
  end;
  TJTerminalParam_1 = class(TJavaGenericImport<JTerminalParam_1Class, JTerminalParam_1>) end;

  JAidlAmexClass = interface(JIInterfaceClass)
    ['{64FFB6F3-5AF6-43B6-90CD-AF4E000AA6B3}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlAmex')]
  JAidlAmex = interface(JIInterface)
    ['{369D96B8-AD09-4CE9-8E49-4325DF3BA91A}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function readData: Integer; cdecl;
    function setDRLParam(programID: JProgramID): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTransData(transParam: JTransParam; preProcResult: JPreProcResult): Integer; cdecl;
    function startTrans(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlAmex = class(TJavaGenericImport<JAidlAmexClass, JAidlAmex>) end;

  JAidlAmex_StubClass = interface(JBinderClass)
    ['{D80C6405-7E50-4B7E-864D-E5491979886C}']
    {class} function _GetTRANSACTION_cardAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_setTransData: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlAmex; cdecl;
    {class} function init: JAidlAmex_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cardAuth: Integer read _GetTRANSACTION_cardAuth;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_setTransData: Integer read _GetTRANSACTION_setTransData;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlAmex$Stub')]
  JAidlAmex_Stub = interface(JBinder)
    ['{5C2812E8-922D-447E-9BB4-0B1D3C5D3129}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlAmex_Stub = class(TJavaGenericImport<JAidlAmex_StubClass, JAidlAmex_Stub>) end;

  JAidlAmex_Stub_ProxyClass = interface(JAidlAmexClass)
    ['{D4C190B7-16CB-47DE-8288-1BCF278B5C3D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlAmex$Stub$Proxy')]
  JAidlAmex_Stub_Proxy = interface(JAidlAmex)
    ['{5DAFE9C3-380B-45F5-84FD-8DA439984C5A}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function initialize: Integer; cdecl;
    function readData: Integer; cdecl;
    function setDRLParam(programID: JProgramID): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTransData(transParam: JTransParam; preProcResult: JPreProcResult): Integer; cdecl;
    function startTrans(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlAmex_Stub_Proxy = class(TJavaGenericImport<JAidlAmex_Stub_ProxyClass, JAidlAmex_Stub_Proxy>) end;

  JAidlDpasClass = interface(JIInterfaceClass)
    ['{821E2978-CDC0-4F62-A381-E4235C72E227}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlDpas')]
  JAidlDpas = interface(JIInterface)
    ['{7980C595-2596-496D-BA97-B5B2DA448A68}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function issuerUpdateProc(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    procedure optFeatCheck; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function transProc(i: Integer): Integer; cdecl;
    function updateDataContProc(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function writeDataStore(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
  end;
  TJAidlDpas = class(TJavaGenericImport<JAidlDpasClass, JAidlDpas>) end;

  JAidlDpas_StubClass = interface(JBinderClass)
    ['{B0E4EFA3-CBE9-4B04-9950-3B327E4649A7}']
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_getTrackMapData: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlDpas; cdecl;
    {class} function init: JAidlDpas_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_getTrackMapData: Integer read _GetTRANSACTION_getTrackMapData;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlDpas$Stub')]
  JAidlDpas_Stub = interface(JBinder)
    ['{FF436E86-108A-4589-AE25-1FA8A4E986B7}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlDpas_Stub = class(TJavaGenericImport<JAidlDpas_StubClass, JAidlDpas_Stub>) end;

  JAidlDpas_Stub_ProxyClass = interface(JAidlDpasClass)
    ['{CAE3EA05-253F-4E6D-B202-DA4D20DAB1A8}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlDpas$Stub$Proxy')]
  JAidlDpas_Stub_Proxy = interface(JAidlDpas)
    ['{80207AC0-9B31-4AC3-9C10-8AD16364782B}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function initialize: Integer; cdecl;
    function issuerUpdateProc(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    procedure optFeatCheck; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function transProc(i: Integer): Integer; cdecl;
    function updateDataContProc(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function writeDataStore(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
  end;
  TJAidlDpas_Stub_Proxy = class(TJavaGenericImport<JAidlDpas_Stub_ProxyClass, JAidlDpas_Stub_Proxy>) end;

  JAidlEmvL2Class = interface(JIInterfaceClass)
    ['{42A60099-237C-4910-9FF7-D6CEC462F467}']
    {class} procedure checkCard(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: Jemv_AidlCheckCardListener); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEmvL2')]
  JAidlEmvL2 = interface(JIInterface)
    ['{D38B36F8-B23D-44EA-98F9-1184A3A6E6E4}']
    function EMV_AddAIDList(b: TJavaArray<Byte>; b1: Byte; b2: Byte): Integer; cdecl;
    function EMV_AddCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function EMV_AddRevoIPK(emvRevocList: JEmvRevocList): Integer; cdecl;
    function EMV_AppCandidateBuild(b: Byte): Integer; cdecl;
    function EMV_AppDelCandListItem(i: Integer): Integer; cdecl;
    function EMV_AppFinalSelect(emvCandidateItem: JEmvCandidateItem): Integer; cdecl;
    function EMV_AppGetCandList: TJavaObjectArray<JEmvCandidateItem>; cdecl;
    function EMV_AppGetCandListCount: Integer; cdecl;
    function EMV_AppGetCandListItem(i: Integer): JEmvCandidateItem; cdecl;
    function EMV_CardHolderVerify: Integer; cdecl;
    function EMV_Completion(b: Byte): Integer; cdecl;
    procedure EMV_DelAllAIDList; cdecl;
    procedure EMV_DelAllCAPK; cdecl;
    procedure EMV_DelAllRevoIPK; cdecl;
    procedure EMV_FreeCallback; cdecl;
    function EMV_GPOProc: Integer; cdecl;
    function EMV_GetDataFromICC(i: Integer): Integer; cdecl;
    function EMV_GetDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function EMV_GetExtendFunc(i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_GetKernelConfig: JEmvKernelConfig; cdecl;
    function EMV_GetKernelType: Byte; cdecl;
    function EMV_GetLastStatusWord: Integer; cdecl;
    function EMV_GetScriptResult: TJavaArray<Byte>; cdecl;
    function EMV_GetTLVData(i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_GetTerminalInfo: JEmvTerminalInfo; cdecl;
    function EMV_GetVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function EMV_Initialize: Integer; cdecl;
    function EMV_IssueToCardScript(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function EMV_OfflineDataAuth: Integer; cdecl;
    function EMV_OnlineTransEx: Integer; cdecl;
    function EMV_ProcessOnlineRespData(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function EMV_ProcessingRestrictions: Integer; cdecl;
    function EMV_ReadCardLog(b: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_ReadRecordData: Integer; cdecl;
    function EMV_SetCallback(emvCallback: JEmvCallback): Integer; cdecl;
    function EMV_SetExtendFunc(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function EMV_SetKernelConfig(emvKernelConfig: JEmvKernelConfig): Integer; cdecl;
    function EMV_SetKernelType(b: Byte): Integer; cdecl;
    function EMV_SetSupport_PBOC(b: Byte; b1: Byte; i: Integer): Integer; cdecl;
    function EMV_SetTLVData(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function EMV_SetTerminalInfo(emvTerminalInfo: JEmvTerminalInfo): Integer; cdecl;
    function EMV_TermActionAnalyze: Integer; cdecl;
    function EMV_TerminalRiskManagement: Integer; cdecl;
    function EMV_UpdateDataContProcDPAS(b: TJavaArray<Byte>): Integer; cdecl;
    procedure cancelCheckCard; cdecl;
    procedure checkCardEx(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: Jemv_AidlCheckCardListener; b3: Boolean); cdecl;
  end;
  TJAidlEmvL2 = class(TJavaGenericImport<JAidlEmvL2Class, JAidlEmvL2>) end;

  JAidlEmvL2_StubClass = interface(JBinderClass)
    ['{C6AC4377-C0EC-4867-84ED-583193D2013B}']
    {class} function _GetTRANSACTION_EMV_AddAIDList: Integer; cdecl;
    {class} function _GetTRANSACTION_EMV_CardHolderVerify: Integer; cdecl;
    {class} function _GetTRANSACTION_EMV_GetTLVData: Integer; cdecl;
    {class} function _GetTRANSACTION_EMV_GetTerminalInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_EMV_UpdateDataContProcDPAS: Integer; cdecl;
    {class} function _GetTRANSACTION_cancelCheckCard: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlEmvL2; cdecl;
    {class} function init: JAidlEmvL2_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_EMV_AddAIDList: Integer read _GetTRANSACTION_EMV_AddAIDList;
    {class} property TRANSACTION_EMV_CardHolderVerify: Integer read _GetTRANSACTION_EMV_CardHolderVerify;
    {class} property TRANSACTION_EMV_GetTLVData: Integer read _GetTRANSACTION_EMV_GetTLVData;
    {class} property TRANSACTION_EMV_GetTerminalInfo: Integer read _GetTRANSACTION_EMV_GetTerminalInfo;
    {class} property TRANSACTION_EMV_UpdateDataContProcDPAS: Integer read _GetTRANSACTION_EMV_UpdateDataContProcDPAS;
    {class} property TRANSACTION_cancelCheckCard: Integer read _GetTRANSACTION_cancelCheckCard;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEmvL2$Stub')]
  JAidlEmvL2_Stub = interface(JBinder)
    ['{DE7C45FE-991F-4501-8261-C5A5FAD85495}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlEmvL2_Stub = class(TJavaGenericImport<JAidlEmvL2_StubClass, JAidlEmvL2_Stub>) end;

  JAidlEmvL2_Stub_ProxyClass = interface(JAidlEmvL2Class)
    ['{820BCF0E-E5D8-4A49-A7AB-3878167EFCA1}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEmvL2$Stub$Proxy')]
  JAidlEmvL2_Stub_Proxy = interface(JAidlEmvL2)
    ['{6DA32F54-C5AB-4310-A18C-D189F06486F0}']
    function EMV_AddAIDList(b: TJavaArray<Byte>; b1: Byte; b2: Byte): Integer; cdecl;
    function EMV_AddCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function EMV_AddRevoIPK(emvRevocList: JEmvRevocList): Integer; cdecl;
    function EMV_AppCandidateBuild(b: Byte): Integer; cdecl;
    function EMV_AppDelCandListItem(i: Integer): Integer; cdecl;
    function EMV_AppFinalSelect(emvCandidateItem: JEmvCandidateItem): Integer; cdecl;
    function EMV_AppGetCandList: TJavaObjectArray<JEmvCandidateItem>; cdecl;
    function EMV_AppGetCandListCount: Integer; cdecl;
    function EMV_AppGetCandListItem(i: Integer): JEmvCandidateItem; cdecl;
    function EMV_CardHolderVerify: Integer; cdecl;
    function EMV_Completion(b: Byte): Integer; cdecl;
    procedure EMV_DelAllAIDList; cdecl;
    procedure EMV_DelAllCAPK; cdecl;
    procedure EMV_DelAllRevoIPK; cdecl;
    procedure EMV_FreeCallback; cdecl;
    function EMV_GPOProc: Integer; cdecl;
    function EMV_GetDataFromICC(i: Integer): Integer; cdecl;
    function EMV_GetDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function EMV_GetExtendFunc(i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_GetKernelConfig: JEmvKernelConfig; cdecl;
    function EMV_GetKernelType: Byte; cdecl;
    function EMV_GetLastStatusWord: Integer; cdecl;
    function EMV_GetScriptResult: TJavaArray<Byte>; cdecl;
    function EMV_GetTLVData(i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_GetTerminalInfo: JEmvTerminalInfo; cdecl;
    function EMV_GetVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function EMV_Initialize: Integer; cdecl;
    function EMV_IssueToCardScript(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function EMV_OfflineDataAuth: Integer; cdecl;
    function EMV_OnlineTransEx: Integer; cdecl;
    function EMV_ProcessOnlineRespData(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function EMV_ProcessingRestrictions: Integer; cdecl;
    function EMV_ReadCardLog(b: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl;
    function EMV_ReadRecordData: Integer; cdecl;
    function EMV_SetCallback(emvCallback: JEmvCallback): Integer; cdecl;
    function EMV_SetExtendFunc(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function EMV_SetKernelConfig(emvKernelConfig: JEmvKernelConfig): Integer; cdecl;
    function EMV_SetKernelType(b: Byte): Integer; cdecl;
    function EMV_SetSupport_PBOC(b: Byte; b1: Byte; i: Integer): Integer; cdecl;
    function EMV_SetTLVData(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function EMV_SetTerminalInfo(emvTerminalInfo: JEmvTerminalInfo): Integer; cdecl;
    function EMV_TermActionAnalyze: Integer; cdecl;
    function EMV_TerminalRiskManagement: Integer; cdecl;
    function EMV_UpdateDataContProcDPAS(b: TJavaArray<Byte>): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    procedure cancelCheckCard; cdecl;
    procedure checkCard(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: Jemv_AidlCheckCardListener); cdecl;
    procedure checkCardEx(b: Boolean; b1: Boolean; b2: Boolean; i: Integer; aidlCheckCardListener: Jemv_AidlCheckCardListener; b3: Boolean); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJAidlEmvL2_Stub_Proxy = class(TJavaGenericImport<JAidlEmvL2_Stub_ProxyClass, JAidlEmvL2_Stub_Proxy>) end;

  JAidlEntryClass = interface(JIInterfaceClass)
    ['{BA83B572-B067-486C-BA2D-D67255EAF659}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEntry')]
  JAidlEntry = interface(JIInterface)
    ['{2F905896-7BED-41AD-A1BB-5708A6EF8EB1}']
    function addCombination(combination: JCombination): Integer; cdecl;
    function buildCandidate(i: Integer; i1: Integer): Integer; cdecl;
    function buildCandidateByAID(i: Integer; i1: Integer): Integer; cdecl;
    procedure delAllCombination; cdecl;
    function delCandListCurApp: Integer; cdecl;
    function delCombination(string_: JString; i: Integer; string_1: JString; i1: Integer): Integer; cdecl;
    function finalSelect(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl;
    function getCandList(list: JList; i: Integer): Integer; cdecl;
    function getCandListNew(candList: TJavaObjectArray<JCandList>; i: TJavaArray<Integer>): Integer; cdecl;
    function getCombination(combination: JCombination): Integer; cdecl;
    function getErrorCode: Integer; cdecl;
    function getExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function getPreProcResult(preProcResult: JPreProcResult): Integer; cdecl;
    function getPreProcResultByAid(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; preProcResult: JPreProcResult): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function preProcessing(transParam: JTransParam): Integer; cdecl;
    function setCandList(list: JList; i: Integer): Integer; cdecl;
    function setCandListNew(candList: TJavaObjectArray<JCandList>; i: Integer): Integer; cdecl;
    function setExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
  end;
  TJAidlEntry = class(TJavaGenericImport<JAidlEntryClass, JAidlEntry>) end;

  JAidlEntry_StubClass = interface(JBinderClass)
    ['{57B960F2-02A7-454A-A06B-9EE3D1251A67}']
    {class} function _GetTRANSACTION_addCombination: Integer; cdecl;
    {class} function _GetTRANSACTION_buildCandidate: Integer; cdecl;
    {class} function _GetTRANSACTION_buildCandidateByAID: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCombination: Integer; cdecl;
    {class} function _GetTRANSACTION_delCandListCurApp: Integer; cdecl;
    {class} function _GetTRANSACTION_delCombination: Integer; cdecl;
    {class} function _GetTRANSACTION_finalSelect: Integer; cdecl;
    {class} function _GetTRANSACTION_getCandList: Integer; cdecl;
    {class} function _GetTRANSACTION_getCandListNew: Integer; cdecl;
    {class} function _GetTRANSACTION_getCombination: Integer; cdecl;
    {class} function _GetTRANSACTION_getErrorCode: Integer; cdecl;
    {class} function _GetTRANSACTION_getExtendFunction: Integer; cdecl;
    {class} function _GetTRANSACTION_getPreProcResult: Integer; cdecl;
    {class} function _GetTRANSACTION_getPreProcResultByAid: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_preProcessing: Integer; cdecl;
    {class} function _GetTRANSACTION_setCandList: Integer; cdecl;
    {class} function _GetTRANSACTION_setCandListNew: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunction: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlEntry; cdecl;
    {class} function init: JAidlEntry_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addCombination: Integer read _GetTRANSACTION_addCombination;
    {class} property TRANSACTION_buildCandidate: Integer read _GetTRANSACTION_buildCandidate;
    {class} property TRANSACTION_buildCandidateByAID: Integer read _GetTRANSACTION_buildCandidateByAID;
    {class} property TRANSACTION_delAllCombination: Integer read _GetTRANSACTION_delAllCombination;
    {class} property TRANSACTION_delCandListCurApp: Integer read _GetTRANSACTION_delCandListCurApp;
    {class} property TRANSACTION_delCombination: Integer read _GetTRANSACTION_delCombination;
    {class} property TRANSACTION_finalSelect: Integer read _GetTRANSACTION_finalSelect;
    {class} property TRANSACTION_getCandList: Integer read _GetTRANSACTION_getCandList;
    {class} property TRANSACTION_getCandListNew: Integer read _GetTRANSACTION_getCandListNew;
    {class} property TRANSACTION_getCombination: Integer read _GetTRANSACTION_getCombination;
    {class} property TRANSACTION_getErrorCode: Integer read _GetTRANSACTION_getErrorCode;
    {class} property TRANSACTION_getExtendFunction: Integer read _GetTRANSACTION_getExtendFunction;
    {class} property TRANSACTION_getPreProcResult: Integer read _GetTRANSACTION_getPreProcResult;
    {class} property TRANSACTION_getPreProcResultByAid: Integer read _GetTRANSACTION_getPreProcResultByAid;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_preProcessing: Integer read _GetTRANSACTION_preProcessing;
    {class} property TRANSACTION_setCandList: Integer read _GetTRANSACTION_setCandList;
    {class} property TRANSACTION_setCandListNew: Integer read _GetTRANSACTION_setCandListNew;
    {class} property TRANSACTION_setExtendFunction: Integer read _GetTRANSACTION_setExtendFunction;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEntry$Stub')]
  JAidlEntry_Stub = interface(JBinder)
    ['{F131F2C8-AA00-4BA3-97A1-18BD6E1E3539}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlEntry_Stub = class(TJavaGenericImport<JAidlEntry_StubClass, JAidlEntry_Stub>) end;

  JAidlEntry_Stub_ProxyClass = interface(JAidlEntryClass)
    ['{0A2C5939-F4E3-45C8-8FF2-72B2E5BA3CA7}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlEntry$Stub$Proxy')]
  JAidlEntry_Stub_Proxy = interface(JAidlEntry)
    ['{C9C76B83-EAB4-4049-B6AD-92182B805BBB}']
    function addCombination(combination: JCombination): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function buildCandidate(i: Integer; i1: Integer): Integer; cdecl;
    function buildCandidateByAID(i: Integer; i1: Integer): Integer; cdecl;
    procedure delAllCombination; cdecl;
    function delCandListCurApp: Integer; cdecl;
    function delCombination(string_: JString; i: Integer; string_1: JString; i1: Integer): Integer; cdecl;
    function finalSelect(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl;
    function getCandList(list: JList; i: Integer): Integer; cdecl;
    function getCandListNew(candList: TJavaObjectArray<JCandList>; i: TJavaArray<Integer>): Integer; cdecl;
    function getCombination(combination: JCombination): Integer; cdecl;
    function getErrorCode: Integer; cdecl;
    function getExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getPreProcResult(preProcResult: JPreProcResult): Integer; cdecl;
    function getPreProcResultByAid(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; preProcResult: JPreProcResult): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function initialize: Integer; cdecl;
    function preProcessing(transParam: JTransParam): Integer; cdecl;
    function setCandList(list: JList; i: Integer): Integer; cdecl;
    function setCandListNew(candList: TJavaObjectArray<JCandList>; i: Integer): Integer; cdecl;
    function setExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
  end;
  TJAidlEntry_Stub_Proxy = class(TJavaGenericImport<JAidlEntry_Stub_ProxyClass, JAidlEntry_Stub_Proxy>) end;

  JAidlJcbClass = interface(JIInterfaceClass)
    ['{12E3D22A-5961-42B2-8881-186C93316F72}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlJcb')]
  JAidlJcb = interface(JIInterface)
    ['{93DFC4FF-B235-40F8-8B02-700B79792FA3}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(i: Integer): Integer; cdecl;
  end;
  TJAidlJcb = class(TJavaGenericImport<JAidlJcbClass, JAidlJcb>) end;

  JAidlJcb_StubClass = interface(JBinderClass)
    ['{CBBFEBD9-037F-4351-91D2-278AB505DFE2}']
    {class} function _GetTRANSACTION_addCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_addRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_cardAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_completeTrans: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_getDebugInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_getTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function _GetTRANSACTION_readData: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunc: Integer; cdecl;
    {class} function _GetTRANSACTION_setFinalSelectData: Integer; cdecl;
    {class} function _GetTRANSACTION_setTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_startTrans: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlJcb; cdecl;
    {class} function init: JAidlJcb_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addCAPK: Integer read _GetTRANSACTION_addCAPK;
    {class} property TRANSACTION_addRevocList: Integer read _GetTRANSACTION_addRevocList;
    {class} property TRANSACTION_cardAuth: Integer read _GetTRANSACTION_cardAuth;
    {class} property TRANSACTION_completeTrans: Integer read _GetTRANSACTION_completeTrans;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_delAllRevocList: Integer read _GetTRANSACTION_delAllRevocList;
    {class} property TRANSACTION_getDebugInfo: Integer read _GetTRANSACTION_getDebugInfo;
    {class} property TRANSACTION_getTLVDataList: Integer read _GetTRANSACTION_getTLVDataList;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
    {class} property TRANSACTION_readData: Integer read _GetTRANSACTION_readData;
    {class} property TRANSACTION_setExtendFunc: Integer read _GetTRANSACTION_setExtendFunc;
    {class} property TRANSACTION_setFinalSelectData: Integer read _GetTRANSACTION_setFinalSelectData;
    {class} property TRANSACTION_setTLVDataList: Integer read _GetTRANSACTION_setTLVDataList;
    {class} property TRANSACTION_startTrans: Integer read _GetTRANSACTION_startTrans;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlJcb$Stub')]
  JAidlJcb_Stub = interface(JBinder)
    ['{F60BF42D-E1DC-4127-9D47-417A48460AD8}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlJcb_Stub = class(TJavaGenericImport<JAidlJcb_StubClass, JAidlJcb_Stub>) end;

  JAidlJcb_Stub_ProxyClass = interface(JAidlJcbClass)
    ['{A8F062AB-DDBB-4102-A0FA-327D4E02D56B}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlJcb$Stub$Proxy')]
  JAidlJcb_Stub_Proxy = interface(JAidlJcb)
    ['{6D4D42FB-EB48-4C05-8B36-ABD5204FE8C3}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function initialize: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(i: Integer): Integer; cdecl;
  end;
  TJAidlJcb_Stub_Proxy = class(TJavaGenericImport<JAidlJcb_Stub_ProxyClass, JAidlJcb_Stub_Proxy>) end;

  JAidlMirClass = interface(JIInterfaceClass)
    ['{F02C757A-D77A-4428-AFAE-50C191DDACE8}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlMir')]
  JAidlMir = interface(JIInterface)
    ['{231B171B-C8F7-4707-B3AE-614CF8A7FAB1}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function dataExchange(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(b: Byte): Integer; cdecl;
    function transComplete2: Integer; cdecl;
    function transInitiate2: Integer; cdecl;
    function transProcess2: Integer; cdecl;
  end;
  TJAidlMir = class(TJavaGenericImport<JAidlMirClass, JAidlMir>) end;

  JAidlMir_StubClass = interface(JBinderClass)
    ['{D70BD38F-06DF-4289-B331-23F665F8D98D}']
    {class} function _GetTRANSACTION_addCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_addRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_cardAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_dataExchange: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_getDebugInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_getTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function _GetTRANSACTION_readData: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunc: Integer; cdecl;
    {class} function _GetTRANSACTION_setFinalSelectData: Integer; cdecl;
    {class} function _GetTRANSACTION_setTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_startTrans: Integer; cdecl;
    {class} function _GetTRANSACTION_transComplete2: Integer; cdecl;
    {class} function _GetTRANSACTION_transInitiate2: Integer; cdecl;
    {class} function _GetTRANSACTION_transProcess2: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlMir; cdecl;
    {class} function init: JAidlMir_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addCAPK: Integer read _GetTRANSACTION_addCAPK;
    {class} property TRANSACTION_addRevocList: Integer read _GetTRANSACTION_addRevocList;
    {class} property TRANSACTION_cardAuth: Integer read _GetTRANSACTION_cardAuth;
    {class} property TRANSACTION_dataExchange: Integer read _GetTRANSACTION_dataExchange;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_delAllRevocList: Integer read _GetTRANSACTION_delAllRevocList;
    {class} property TRANSACTION_getDebugInfo: Integer read _GetTRANSACTION_getDebugInfo;
    {class} property TRANSACTION_getTLVDataList: Integer read _GetTRANSACTION_getTLVDataList;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
    {class} property TRANSACTION_readData: Integer read _GetTRANSACTION_readData;
    {class} property TRANSACTION_setExtendFunc: Integer read _GetTRANSACTION_setExtendFunc;
    {class} property TRANSACTION_setFinalSelectData: Integer read _GetTRANSACTION_setFinalSelectData;
    {class} property TRANSACTION_setTLVDataList: Integer read _GetTRANSACTION_setTLVDataList;
    {class} property TRANSACTION_startTrans: Integer read _GetTRANSACTION_startTrans;
    {class} property TRANSACTION_transComplete2: Integer read _GetTRANSACTION_transComplete2;
    {class} property TRANSACTION_transInitiate2: Integer read _GetTRANSACTION_transInitiate2;
    {class} property TRANSACTION_transProcess2: Integer read _GetTRANSACTION_transProcess2;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlMir$Stub')]
  JAidlMir_Stub = interface(JBinder)
    ['{2A42EBBA-48D3-41B9-84C0-2282FC9A7F54}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlMir_Stub = class(TJavaGenericImport<JAidlMir_StubClass, JAidlMir_Stub>) end;

  JAidlMir_Stub_ProxyClass = interface(JAidlMirClass)
    ['{D179F308-6529-4B14-BEAD-BC28D26142D2}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlMir$Stub$Proxy')]
  JAidlMir_Stub_Proxy = interface(JAidlMir)
    ['{1218DCAC-7E56-4489-9063-4D2CED21F7BD}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    function dataExchange(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function initialize: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(b: Byte): Integer; cdecl;
    function transComplete2: Integer; cdecl;
    function transInitiate2: Integer; cdecl;
    function transProcess2: Integer; cdecl;
  end;
  TJAidlMir_Stub_Proxy = class(TJavaGenericImport<JAidlMir_Stub_ProxyClass, JAidlMir_Stub_Proxy>) end;

  JAidlPaypassClass = interface(JIInterfaceClass)
    ['{8E49062A-5598-406E-901A-B2993D6769EA}']
    {class} function initialize(i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaypass')]
  JAidlPaypass = interface(JIInterface)
    ['{78CF35B5-16C7-41FE-99E4-49FC72938373}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cleanTornLogMChip(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTornLogMChip(clssTornLogRecord: TJavaObjectArray<JClssTornLogRecord>; i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function readData: Integer; cdecl;
    function setCallback(paypassCallback: JPaypassCallback): Integer; cdecl;
    function setExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTagPresent(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTornLogMChip(clssTornLogRecord: TJavaObjectArray<JClssTornLogRecord>; i: Integer): Integer; cdecl;
    function transProcMChip(b: TJavaArray<Byte>): Integer; cdecl;
    function transProcMag(b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlPaypass = class(TJavaGenericImport<JAidlPaypassClass, JAidlPaypass>) end;

  JAidlPaypass_StubClass = interface(JBinderClass)
    ['{8D2FF8DF-F051-4742-9FCD-1A1CF3CA1E2C}']
    {class} function _GetTRANSACTION_addRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_readData: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunction: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPaypass; cdecl;
    {class} function init: JAidlPaypass_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addRevocList: Integer read _GetTRANSACTION_addRevocList;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_readData: Integer read _GetTRANSACTION_readData;
    {class} property TRANSACTION_setExtendFunction: Integer read _GetTRANSACTION_setExtendFunction;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaypass$Stub')]
  JAidlPaypass_Stub = interface(JBinder)
    ['{6D24A013-10EE-4C2A-B499-3648163C36F5}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPaypass_Stub = class(TJavaGenericImport<JAidlPaypass_StubClass, JAidlPaypass_Stub>) end;

  JAidlPaypass_Stub_ProxyClass = interface(JAidlPaypassClass)
    ['{A9A8D8CF-BFCD-48DE-AB30-BD15A0E1C25D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaypass$Stub$Proxy')]
  JAidlPaypass_Stub_Proxy = interface(JAidlPaypass)
    ['{F3A2EED1-A931-4874-9DAB-5C10026DE661}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cleanTornLogMChip(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTornLogMChip(clssTornLogRecord: TJavaObjectArray<JClssTornLogRecord>; i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function initialize(i: Integer): Integer; cdecl;
    function readData: Integer; cdecl;
    function setCallback(paypassCallback: JPaypassCallback): Integer; cdecl;
    function setExtendFunction(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTagPresent(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTornLogMChip(clssTornLogRecord: TJavaObjectArray<JClssTornLogRecord>; i: Integer): Integer; cdecl;
    function transProcMChip(b: TJavaArray<Byte>): Integer; cdecl;
    function transProcMag(b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlPaypass_Stub_Proxy = class(TJavaGenericImport<JAidlPaypass_Stub_ProxyClass, JAidlPaypass_Stub_Proxy>) end;

  JAidlPaywaveClass = interface(JIInterfaceClass)
    ['{C3760186-4F70-4F82-B72F-75104D0C2C40}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaywave')]
  JAidlPaywave = interface(JIInterface)
    ['{9FEF18BD-DB1C-4E22-8DD3-89C227060383}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getMSDType(b: TJavaArray<Byte>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(b: Byte; b1: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function issScriptProc(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function issuerAuth(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function procRestric(b: Byte): Integer; cdecl;
    function readData(b: TJavaArray<Byte>): Integer; cdecl;
    function setDRLParam(programID: JProgramID): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTransData(transParam: JTransParam; preProcResult: JPreProcResult): Integer; cdecl;
  end;
  TJAidlPaywave = class(TJavaGenericImport<JAidlPaywaveClass, JAidlPaywave>) end;

  JAidlPaywave_StubClass = interface(JBinderClass)
    ['{E3382B29-D477-4FAE-BE60-9FBAE8F67DB6}']
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_procRestric: Integer; cdecl;
    {class} function _GetTRANSACTION_setTransData: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPaywave; cdecl;
    {class} function init: JAidlPaywave_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_procRestric: Integer read _GetTRANSACTION_procRestric;
    {class} property TRANSACTION_setTransData: Integer read _GetTRANSACTION_setTransData;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaywave$Stub')]
  JAidlPaywave_Stub = interface(JBinder)
    ['{F85739F5-51BB-49F0-AC50-51340490F1E8}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPaywave_Stub = class(TJavaGenericImport<JAidlPaywave_StubClass, JAidlPaywave_Stub>) end;

  JAidlPaywave_Stub_ProxyClass = interface(JAidlPaywaveClass)
    ['{7D974202-C5B1-42E8-8310-A8328E9F0925}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPaywave$Stub$Proxy')]
  JAidlPaywave_Stub_Proxy = interface(JAidlPaywave)
    ['{7F04C8A8-183A-4D2D-B2D3-102DBA7E2F27}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getMSDType(b: TJavaArray<Byte>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getTrackMapData(b: Byte; b1: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function initialize: Integer; cdecl;
    function issScriptProc(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function issuerAuth(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function procRestric(b: Byte): Integer; cdecl;
    function readData(b: TJavaArray<Byte>): Integer; cdecl;
    function setDRLParam(programID: JProgramID): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTransData(transParam: JTransParam; preProcResult: JPreProcResult): Integer; cdecl;
  end;
  TJAidlPaywave_Stub_Proxy = class(TJavaGenericImport<JAidlPaywave_Stub_ProxyClass, JAidlPaywave_Stub_Proxy>) end;

  JAidlPureClass = interface(JIInterfaceClass)
    ['{A1FC73A2-F838-44B6-A0B1-9979C16221DF}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPure')]
  JAidlPure = interface(JIInterface)
    ['{D45AA097-49A7-4297-B61C-5A137B505B1C}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(b: Byte): Integer; cdecl;
  end;
  TJAidlPure = class(TJavaGenericImport<JAidlPureClass, JAidlPure>) end;

  JAidlPure_StubClass = interface(JBinderClass)
    ['{43FFD629-BE52-4605-A219-0B779F6A6C3B}']
    {class} function _GetTRANSACTION_completeTrans: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPure; cdecl;
    {class} function init: JAidlPure_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_completeTrans: Integer read _GetTRANSACTION_completeTrans;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPure$Stub')]
  JAidlPure_Stub = interface(JBinder)
    ['{420770A8-CBD6-45E0-A9C9-ABF270612A33}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPure_Stub = class(TJavaGenericImport<JAidlPure_StubClass, JAidlPure_Stub>) end;

  JAidlPure_Stub_ProxyClass = interface(JAidlPureClass)
    ['{2E23FDA7-081A-4DC9-BD21-64ADA76518A8}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlPure$Stub$Proxy')]
  JAidlPure_Stub_Proxy = interface(JAidlPure)
    ['{E8472184-CBC4-418C-AA65-C0F65E3D90B5}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function initialize: Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans(b: Byte): Integer; cdecl;
  end;
  TJAidlPure_Stub_Proxy = class(TJavaGenericImport<JAidlPure_Stub_ProxyClass, JAidlPure_Stub_Proxy>) end;

  JAidlQpbocClass = interface(JIInterfaceClass)
    ['{340F1072-A2EE-45B6-9F5F-81E858642CFA}']
    {class} function initialize(b: Byte; b1: Byte): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlQpboc')]
  JAidlQpboc = interface(JIInterface)
    ['{72310240-B78A-4637-ACAE-7E357B46C832}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevoIPK(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevoIPK; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVData(i: Integer): TJavaArray<Byte>; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function readData: Integer; cdecl;
    function setCallback(qpbocCallback: JQpbocCallback): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVData(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlQpboc = class(TJavaGenericImport<JAidlQpbocClass, JAidlQpboc>) end;

  JAidlQpboc_StubClass = interface(JBinderClass)
    ['{F29D139B-BFE7-4A50-89DE-C22D509928E1}']
    {class} function _GetTRANSACTION_addCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_addRevoIPK: Integer; cdecl;
    {class} function _GetTRANSACTION_cardAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllRevoIPK: Integer; cdecl;
    {class} function _GetTRANSACTION_getDebugInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_getTLVData: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function _GetTRANSACTION_readData: Integer; cdecl;
    {class} function _GetTRANSACTION_setCallback: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunc: Integer; cdecl;
    {class} function _GetTRANSACTION_setFinalSelectData: Integer; cdecl;
    {class} function _GetTRANSACTION_setTLVData: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlQpboc; cdecl;
    {class} function init: JAidlQpboc_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addCAPK: Integer read _GetTRANSACTION_addCAPK;
    {class} property TRANSACTION_addRevoIPK: Integer read _GetTRANSACTION_addRevoIPK;
    {class} property TRANSACTION_cardAuth: Integer read _GetTRANSACTION_cardAuth;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_delAllRevoIPK: Integer read _GetTRANSACTION_delAllRevoIPK;
    {class} property TRANSACTION_getDebugInfo: Integer read _GetTRANSACTION_getDebugInfo;
    {class} property TRANSACTION_getTLVData: Integer read _GetTRANSACTION_getTLVData;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
    {class} property TRANSACTION_readData: Integer read _GetTRANSACTION_readData;
    {class} property TRANSACTION_setCallback: Integer read _GetTRANSACTION_setCallback;
    {class} property TRANSACTION_setExtendFunc: Integer read _GetTRANSACTION_setExtendFunc;
    {class} property TRANSACTION_setFinalSelectData: Integer read _GetTRANSACTION_setFinalSelectData;
    {class} property TRANSACTION_setTLVData: Integer read _GetTRANSACTION_setTLVData;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlQpboc$Stub')]
  JAidlQpboc_Stub = interface(JBinder)
    ['{01D97ADF-0A15-4A18-9BD2-1C1AD04E0991}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlQpboc_Stub = class(TJavaGenericImport<JAidlQpboc_StubClass, JAidlQpboc_Stub>) end;

  JAidlQpboc_Stub_ProxyClass = interface(JAidlQpbocClass)
    ['{1EC3A6F1-8841-4CB5-AC1B-B0DDD1D3F335}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlQpboc$Stub$Proxy')]
  JAidlQpboc_Stub_Proxy = interface(JAidlQpboc)
    ['{19294A77-5EAB-4D28-858B-10517C414238}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevoIPK(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevoIPK; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVData(i: Integer): TJavaArray<Byte>; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc(b: TJavaArray<Byte>): Integer; cdecl;
    function initialize(b: Byte; b1: Byte): Integer; cdecl;
    function readData: Integer; cdecl;
    function setCallback(qpbocCallback: JQpbocCallback): Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVData(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlQpboc_Stub_Proxy = class(TJavaGenericImport<JAidlQpboc_Stub_ProxyClass, JAidlQpboc_Stub_Proxy>) end;

  JAidlRupayClass = interface(JIInterfaceClass)
    ['{172D809D-A5E9-489F-872B-8728FF5F63DC}']
    {class} function initialize: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlRupay')]
  JAidlRupay = interface(JIInterface)
    ['{6C2FCFCC-8AD1-42CC-A3F6-22A062F15581}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function issuerScriptProc(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTagPresent(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans: Integer; cdecl;
    function transProc(b: Byte): Integer; cdecl;
  end;
  TJAidlRupay = class(TJavaGenericImport<JAidlRupayClass, JAidlRupay>) end;

  JAidlRupay_StubClass = interface(JBinderClass)
    ['{FEE3CB7B-9613-41E0-BA5A-B7E975CDE507}']
    {class} function _GetTRANSACTION_addCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_addRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_cardAuth: Integer; cdecl;
    {class} function _GetTRANSACTION_completeTrans: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllCAPK: Integer; cdecl;
    {class} function _GetTRANSACTION_delAllRevocList: Integer; cdecl;
    {class} function _GetTRANSACTION_getDebugInfo: Integer; cdecl;
    {class} function _GetTRANSACTION_getTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_getVersion: Integer; cdecl;
    {class} function _GetTRANSACTION_gpoProc: Integer; cdecl;
    {class} function _GetTRANSACTION_issuerScriptProc: Integer; cdecl;
    {class} function _GetTRANSACTION_readData: Integer; cdecl;
    {class} function _GetTRANSACTION_setExtendFunc: Integer; cdecl;
    {class} function _GetTRANSACTION_setFinalSelectData: Integer; cdecl;
    {class} function _GetTRANSACTION_setTLVDataList: Integer; cdecl;
    {class} function _GetTRANSACTION_setTagPresent: Integer; cdecl;
    {class} function _GetTRANSACTION_startTrans: Integer; cdecl;
    {class} function _GetTRANSACTION_transProc: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlRupay; cdecl;
    {class} function init: JAidlRupay_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addCAPK: Integer read _GetTRANSACTION_addCAPK;
    {class} property TRANSACTION_addRevocList: Integer read _GetTRANSACTION_addRevocList;
    {class} property TRANSACTION_cardAuth: Integer read _GetTRANSACTION_cardAuth;
    {class} property TRANSACTION_completeTrans: Integer read _GetTRANSACTION_completeTrans;
    {class} property TRANSACTION_delAllCAPK: Integer read _GetTRANSACTION_delAllCAPK;
    {class} property TRANSACTION_delAllRevocList: Integer read _GetTRANSACTION_delAllRevocList;
    {class} property TRANSACTION_getDebugInfo: Integer read _GetTRANSACTION_getDebugInfo;
    {class} property TRANSACTION_getTLVDataList: Integer read _GetTRANSACTION_getTLVDataList;
    {class} property TRANSACTION_getVersion: Integer read _GetTRANSACTION_getVersion;
    {class} property TRANSACTION_gpoProc: Integer read _GetTRANSACTION_gpoProc;
    {class} property TRANSACTION_issuerScriptProc: Integer read _GetTRANSACTION_issuerScriptProc;
    {class} property TRANSACTION_readData: Integer read _GetTRANSACTION_readData;
    {class} property TRANSACTION_setExtendFunc: Integer read _GetTRANSACTION_setExtendFunc;
    {class} property TRANSACTION_setFinalSelectData: Integer read _GetTRANSACTION_setFinalSelectData;
    {class} property TRANSACTION_setTLVDataList: Integer read _GetTRANSACTION_setTLVDataList;
    {class} property TRANSACTION_setTagPresent: Integer read _GetTRANSACTION_setTagPresent;
    {class} property TRANSACTION_startTrans: Integer read _GetTRANSACTION_startTrans;
    {class} property TRANSACTION_transProc: Integer read _GetTRANSACTION_transProc;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlRupay$Stub')]
  JAidlRupay_Stub = interface(JBinder)
    ['{E76553C6-0091-4A51-8D36-CEC6ADA5EBB9}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlRupay_Stub = class(TJavaGenericImport<JAidlRupay_StubClass, JAidlRupay_Stub>) end;

  JAidlRupay_Stub_ProxyClass = interface(JAidlRupayClass)
    ['{D34D69A4-E841-4F38-B04E-7D62DD03557C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/AidlRupay$Stub$Proxy')]
  JAidlRupay_Stub_Proxy = interface(JAidlRupay)
    ['{DBB0A50A-F54D-4135-9561-F972EB3F23AD}']
    function addCAPK(emvCapk: JEmvCapk): Integer; cdecl;
    function addRevocList(emvRevocList: JEmvRevocList): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    function completeTrans(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure delAllCAPK; cdecl;
    procedure delAllRevocList; cdecl;
    function getDebugInfo(i: Integer; b: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTLVDataList(b: TJavaArray<Byte>; i: Integer; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function getVersion(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function gpoProc: Integer; cdecl;
    function initialize: Integer; cdecl;
    function issuerScriptProc(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function readData: Integer; cdecl;
    function setExtendFunc(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function setFinalSelectData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTLVDataList(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function setTagPresent(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function startTrans: Integer; cdecl;
    function transProc(b: Byte): Integer; cdecl;
  end;
  TJAidlRupay_Stub_Proxy = class(TJavaGenericImport<JAidlRupay_Stub_ProxyClass, JAidlRupay_Stub_Proxy>) end;

  JApduL2RespClass = interface(JParcelableClass)
    ['{0AD4929F-476E-4D75-B2A9-7AED346B0736}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JApduL2Resp; cdecl; overload;
    {class} function init(i: Integer; b: TJavaArray<Byte>; i1: Integer; i2: Integer): JApduL2Resp; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ApduL2Resp')]
  JApduL2Resp = interface(JParcelable)
    ['{5ED2CE1B-E41A-4837-B462-A2F82BA08F1A}']
    function describeContents: Integer; cdecl;
    function getDataOut: TJavaArray<Byte>; cdecl;
    function getLenOut: Integer; cdecl;
    function getSwa: Integer; cdecl;
    function getSwb: Integer; cdecl;
    procedure setDataOut(b: TJavaArray<Byte>); cdecl;
    procedure setLenOut(i: Integer); cdecl;
    procedure setSwa(i: Integer); cdecl;
    procedure setSwb(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJApduL2Resp = class(TJavaGenericImport<JApduL2RespClass, JApduL2Resp>) end;

  JApduL2Resp_1Class = interface(JParcelable_CreatorClass)
    ['{6C4B76D9-6318-4E86-96FC-03923FE92FF8}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ApduL2Resp$1')]
  JApduL2Resp_1 = interface(JParcelable_Creator)
    ['{4A2C1C4C-CD0D-4324-8281-3F3C0945F721}']
    function createFromParcel(parcel: JParcel): JApduL2Resp; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JApduL2Resp>; cdecl;
  end;
  TJApduL2Resp_1 = class(TJavaGenericImport<JApduL2Resp_1Class, JApduL2Resp_1>) end;

  JApduL2SendClass = interface(JParcelableClass)
    ['{EAA86F1A-28B8-4D4B-A900-6851DFE94A13}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JApduL2Send; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): JApduL2Send; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ApduL2Send')]
  JApduL2Send = interface(JParcelable)
    ['{A41E7091-7D7B-45CC-ACA4-C324262FB2E3}']
    function describeContents: Integer; cdecl;
    function getCommand: TJavaArray<Byte>; cdecl;
    function getDataIn: TJavaArray<Byte>; cdecl;
    function getLc: Integer; cdecl;
    function getLe: Integer; cdecl;
    procedure setCommand(b: TJavaArray<Byte>); cdecl;
    procedure setDataIn(b: TJavaArray<Byte>); cdecl;
    procedure setLc(i: Integer); cdecl;
    procedure setLe(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJApduL2Send = class(TJavaGenericImport<JApduL2SendClass, JApduL2Send>) end;

  JApduL2Send_1Class = interface(JParcelable_CreatorClass)
    ['{186D6118-0F48-48C4-84ED-2BA7F66F3A37}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ApduL2Send$1')]
  JApduL2Send_1 = interface(JParcelable_Creator)
    ['{0DBE1202-D2F1-4E06-9712-997D042CBA70}']
    function createFromParcel(parcel: JParcel): JApduL2Send; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JApduL2Send>; cdecl;
  end;
  TJApduL2Send_1 = class(TJavaGenericImport<JApduL2Send_1Class, JApduL2Send_1>) end;

  JBaseStructClass = interface(JCloneableClass)
    ['{3E1FE639-0080-4160-8AE9-228C00F35EEF}']
    {class} function init: JBaseStruct; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/struct/BaseStruct')]
  JBaseStruct = interface(JCloneable)
    ['{7487F1AD-CFCD-4690-B348-F9C922B1AE2B}']
    function clone: JObject; cdecl;
    function toString: JString; cdecl;
  end;
  TJBaseStruct = class(TJavaGenericImport<JBaseStructClass, JBaseStruct>) end;

  JCandListClass = interface(JBaseStructClass)
    ['{8D78C29B-C6D1-4C76-813C-EC51EFCAB529}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JCandList; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/CandList')]
  JCandList = interface(JBaseStruct)
    ['{2FFDC26A-B4FC-4195-8A90-4E39C97BFF75}']
    function _GetaucAppLabel: TJavaArray<Byte>; cdecl;
    function _GetaucExtendedSel: TJavaArray<Byte>; cdecl;
    function _GetaucIccAID: TJavaArray<Byte>; cdecl;
    procedure _SetaucIccAID(Value: TJavaArray<Byte>); cdecl;
    function _GetaucIssCountryCode: TJavaArray<Byte>; cdecl;
    function _GetaucIssIDNum: TJavaArray<Byte>; cdecl;
    function _GetaucKernelID: TJavaArray<Byte>; cdecl;
    function _GetaucPreferName: TJavaArray<Byte>; cdecl;
    procedure _SetaucPreferName(Value: TJavaArray<Byte>); cdecl;
    function _GetaucReaderTTQ: TJavaArray<Byte>; cdecl;
    function _GetaucReqKernelID: TJavaArray<Byte>; cdecl;
    function _GetaucTmAID: TJavaArray<Byte>; cdecl;
    function _GetucAppLabelLen: Byte; cdecl;
    function _GetucExtendedSelLen: Byte; cdecl;
    function _GetucIccAidLen: Byte; cdecl;
    procedure _SetucIccAidLen(Value: Byte); cdecl;
    function _GetucKernIDLen: Byte; cdecl;
    function _GetucPreferNameLen: Byte; cdecl;
    function _GetucPriority: Byte; cdecl;
    function _GetucReqKernIDLen: Byte; cdecl;
    procedure _SetucReqKernIDLen(Value: Byte); cdecl;
    function _GetucTmAidLen: Byte; cdecl;
    procedure _SetucTmAidLen(Value: Byte); cdecl;
    function describeContents: Integer; cdecl;
    function getAucAppLabel: TJavaArray<Byte>; cdecl;
    function getAucExtendedSel: TJavaArray<Byte>; cdecl;
    function getAucIccAID: TJavaArray<Byte>; cdecl;
    function getAucIssCountryCode: TJavaArray<Byte>; cdecl;
    function getAucIssIDNum: TJavaArray<Byte>; cdecl;
    function getAucKernelID: TJavaArray<Byte>; cdecl;
    function getAucPreferName: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getAucReqKernelID: TJavaArray<Byte>; cdecl;
    function getAucTmAID: TJavaArray<Byte>; cdecl;
    function getUcAppLabelLen: Byte; cdecl;
    function getUcExtendedSelLen: Byte; cdecl;
    function getUcIccAidLen: Integer; cdecl;//Deprecated
    function getUcKernIDLen: Byte; cdecl;
    function getUcPreferNameLen: Byte; cdecl;
    function getUcPriority: Byte; cdecl;
    function getUcReqKernIDLen: Byte; cdecl;
    function getUcTmAidLen: Byte; cdecl;
    procedure setAucAppLabel(b: TJavaArray<Byte>); cdecl;
    procedure setAucExtendedSel(b: TJavaArray<Byte>); cdecl;
    procedure setAucIccAID(b: TJavaArray<Byte>); cdecl;
    procedure setAucIssCountryCode(b: TJavaArray<Byte>); cdecl;
    procedure setAucIssIDNum(b: TJavaArray<Byte>); cdecl;
    procedure setAucKernelID(b: TJavaArray<Byte>); cdecl;
    procedure setAucPreferName(b: TJavaArray<Byte>); cdecl;
    procedure setAucReaderTTQ(b: TJavaArray<Byte>); cdecl;
    procedure setAucReqKernelID(b: TJavaArray<Byte>); cdecl;
    procedure setAucTmAID(b: TJavaArray<Byte>); cdecl;
    procedure setUcAppLabelLen(b: Byte); cdecl;
    procedure setUcExtendedSelLen(b: Byte); cdecl;
    procedure setUcIccAidLen(b: Byte); cdecl;
    procedure setUcKernIDLen(b: Byte); cdecl;
    procedure setUcPreferNameLen(b: Byte); cdecl;
    procedure setUcPriority(b: Byte); cdecl;
    procedure setUcReqKernIDLen(b: Byte); cdecl;
    procedure setUcTmAidLen(b: Byte); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property aucAppLabel: TJavaArray<Byte> read _GetaucAppLabel;
    property aucExtendedSel: TJavaArray<Byte> read _GetaucExtendedSel;
    property aucIccAID: TJavaArray<Byte> read _GetaucIccAID write _SetaucIccAID;
    property aucIssCountryCode: TJavaArray<Byte> read _GetaucIssCountryCode;
    property aucIssIDNum: TJavaArray<Byte> read _GetaucIssIDNum;
    property aucKernelID: TJavaArray<Byte> read _GetaucKernelID;
    property aucPreferName: TJavaArray<Byte> read _GetaucPreferName write _SetaucPreferName;
    property aucReaderTTQ: TJavaArray<Byte> read _GetaucReaderTTQ;
    property aucReqKernelID: TJavaArray<Byte> read _GetaucReqKernelID;
    property aucTmAID: TJavaArray<Byte> read _GetaucTmAID;
    property ucAppLabelLen: Byte read _GetucAppLabelLen;
    property ucExtendedSelLen: Byte read _GetucExtendedSelLen;
    property ucIccAidLen: Byte read _GetucIccAidLen write _SetucIccAidLen;
    property ucKernIDLen: Byte read _GetucKernIDLen;
    property ucPreferNameLen: Byte read _GetucPreferNameLen;
    property ucPriority: Byte read _GetucPriority;
    property ucReqKernIDLen: Byte read _GetucReqKernIDLen write _SetucReqKernIDLen;
    property ucTmAidLen: Byte read _GetucTmAidLen write _SetucTmAidLen;
  end;
  TJCandList = class(TJavaGenericImport<JCandListClass, JCandList>) end;

  JCandList_1Class = interface(JParcelable_CreatorClass)
    ['{2BDDC8D9-652C-4624-902E-7B96153FCA81}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/CandList$1')]
  JCandList_1 = interface(JParcelable_Creator)
    ['{E76C1396-C60A-4B00-B880-3A439A19B8D0}']
    function createFromParcel(parcel: JParcel): JCandList; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JCandList>; cdecl;
  end;
  TJCandList_1 = class(TJavaGenericImport<JCandList_1Class, JCandList_1>) end;

  JClssTornLogRecordClass = interface(JParcelableClass)
    ['{3F7D9741-95CB-43C0-9CBE-5E2869225427}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JClssTornLogRecord; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; i: Integer; i1: Integer; i2: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; i3: Integer): JClssTornLogRecord; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ClssTornLogRecord')]
  JClssTornLogRecord = interface(JParcelable)
    ['{A465C2B7-2695-4570-897F-AE872A2DB6CE}']
    function describeContents: Integer; cdecl;
    function getAucPAN: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucTornData: TJavaArray<Byte>; cdecl;
    function getUcPANLen: Integer; cdecl;
    function getUcPANSeq: Integer; cdecl;
    function getUcPANSeqFlg: Integer; cdecl;
    function getUnTornDataLen: Integer; cdecl;
    procedure setAucPAN(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setAucTornData(b: TJavaArray<Byte>); cdecl;
    procedure setUcPANLen(i: Integer); cdecl;
    procedure setUcPANSeq(i: Integer); cdecl;
    procedure setUcPANSeqFlg(i: Integer); cdecl;
    procedure setUnTornDataLen(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJClssTornLogRecord = class(TJavaGenericImport<JClssTornLogRecordClass, JClssTornLogRecord>) end;

  JClssTornLogRecord_1Class = interface(JParcelable_CreatorClass)
    ['{59C0A6D6-E2BD-4E03-A84F-92C8ADAC4D77}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ClssTornLogRecord$1')]
  JClssTornLogRecord_1 = interface(JParcelable_Creator)
    ['{574E991D-0A0F-4872-99AD-A80D086A9B3A}']
    function createFromParcel(parcel: JParcel): JClssTornLogRecord; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JClssTornLogRecord>; cdecl;
  end;
  TJClssTornLogRecord_1 = class(TJavaGenericImport<JClssTornLogRecord_1Class, JClssTornLogRecord_1>) end;

  JCombinationClass = interface(JBaseStructClass)
    ['{99F642F3-F80C-4AA9-B8E6-499EE5BB36A6}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JCombination; cdecl; overload;
    {class} function init(parcel: JParcel): JCombination; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/Combination')]
  JCombination = interface(JBaseStruct)
    ['{A0DEE2F9-03FA-4884-BD0B-1AADADB4370A}']
    function describeContents: Integer; cdecl;
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucKernelID: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucRdCVMLmt: TJavaArray<Byte>; cdecl;
    function getAucRdClssFLmt: TJavaArray<Byte>; cdecl;
    function getAucRdClssTxnLmt: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getUcAidLen: Integer; cdecl;
    function getUcCrypto17Flg: Integer; cdecl;
    function getUcExSelectSuppFlg: Integer; cdecl;
    function getUcKernIDLen: Integer; cdecl;
    function getUcPartMatch: Integer; cdecl;
    function getUcRdCVMLmtFlg: Integer; cdecl;
    function getUcRdClssFLmtFlg: Integer; cdecl;
    function getUcRdClssTxnLmtFlg: Integer; cdecl;
    function getUcStatusCheckFlg: Integer; cdecl;
    function getUcTermFLmtFlg: Integer; cdecl;
    function getUcZeroAmtNoAllowed: Integer; cdecl;
    function getUlTermFLmt: Int64; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure setAucAID(b: TJavaArray<Byte>); cdecl;
    procedure setAucKernelID(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdCVMLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdClssFLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdClssTxnLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucReaderTTQ(b: TJavaArray<Byte>); cdecl;
    procedure setUcAidLen(i: Integer); cdecl;
    procedure setUcCrypto17Flg(i: Integer); cdecl;
    procedure setUcExSelectSuppFlg(i: Integer); cdecl;
    procedure setUcKernIDLen(i: Integer); cdecl;
    procedure setUcPartMatch(i: Integer); cdecl;
    procedure setUcRdCVMLmtFlg(i: Integer); cdecl;
    procedure setUcRdClssFLmtFlg(i: Integer); cdecl;
    procedure setUcRdClssTxnLmtFlg(i: Integer); cdecl;
    procedure setUcStatusCheckFlg(i: Integer); cdecl;
    procedure setUcTermFLmtFlg(i: Integer); cdecl;
    procedure setUcZeroAmtNoAllowed(i: Integer); cdecl;
    procedure setUlTermFLmt(l: Int64); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJCombination = class(TJavaGenericImport<JCombinationClass, JCombination>) end;

  JCombination_1Class = interface(JParcelable_CreatorClass)
    ['{7F09AE74-BAA3-4CDF-882A-334C7AEE0750}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/Combination$1')]
  JCombination_1 = interface(JParcelable_Creator)
    ['{ED891766-335A-4B39-A173-690E84E958F9}']
    function createFromParcel(parcel: JParcel): JCombination; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JCombination>; cdecl;
  end;
  TJCombination_1 = class(TJavaGenericImport<JCombination_1Class, JCombination_1>) end;

  JEmvCallbackClass = interface(JIInterfaceClass)
    ['{5FEFB38F-3D8D-41AD-97F9-B7FBC7AEA656}']
    {class} function cGetOnlinePin(b: Boolean; b1: TJavaArray<Byte>; i: Integer; b2: TJavaArray<Boolean>): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCallback')]
  JEmvCallback = interface(JIInterface)
    ['{83DA1252-EEDB-4D26-B7EE-FDD769AE2D85}']
    function cCheckCredentials(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Boolean>): Integer; cdecl;
    function cCheckExceptionFile(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    function cDisplayPinVerifyStatus(i: Integer): Integer; cdecl;
    function cGetPlainTextPin(b: Boolean; b1: TJavaArray<Byte>; i: Integer; b2: TJavaArray<Boolean>): Integer; cdecl;
    function cGetTransLogAmount(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    function cIssuerReferral(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
    function cRFU3: Integer; cdecl;
    function cRFU4: Integer; cdecl;
  end;
  TJEmvCallback = class(TJavaGenericImport<JEmvCallbackClass, JEmvCallback>) end;

  JEmvCallback_StubClass = interface(JBinderClass)
    ['{F630A00A-3E16-4CBC-8439-80AB59C00C0F}']
    {class} function _GetTRANSACTION_cCheckCredentials: Integer; cdecl;
    {class} function _GetTRANSACTION_cCheckExceptionFile: Integer; cdecl;
    {class} function _GetTRANSACTION_cDisplayPinVerifyStatus: Integer; cdecl;
    {class} function _GetTRANSACTION_cGetPlainTextPin: Integer; cdecl;
    {class} function _GetTRANSACTION_cGetTransLogAmount: Integer; cdecl;
    {class} function _GetTRANSACTION_cIssuerReferral: Integer; cdecl;
    {class} function _GetTRANSACTION_cRFU1: Integer; cdecl;
    {class} function _GetTRANSACTION_cRFU2: Integer; cdecl;
    {class} function _GetTRANSACTION_cRFU3: Integer; cdecl;
    {class} function _GetTRANSACTION_cRFU4: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JEmvCallback; cdecl;
    {class} function init: JEmvCallback_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cCheckCredentials: Integer read _GetTRANSACTION_cCheckCredentials;
    {class} property TRANSACTION_cCheckExceptionFile: Integer read _GetTRANSACTION_cCheckExceptionFile;
    {class} property TRANSACTION_cDisplayPinVerifyStatus: Integer read _GetTRANSACTION_cDisplayPinVerifyStatus;
    {class} property TRANSACTION_cGetPlainTextPin: Integer read _GetTRANSACTION_cGetPlainTextPin;
    {class} property TRANSACTION_cGetTransLogAmount: Integer read _GetTRANSACTION_cGetTransLogAmount;
    {class} property TRANSACTION_cIssuerReferral: Integer read _GetTRANSACTION_cIssuerReferral;
    {class} property TRANSACTION_cRFU1: Integer read _GetTRANSACTION_cRFU1;
    {class} property TRANSACTION_cRFU2: Integer read _GetTRANSACTION_cRFU2;
    {class} property TRANSACTION_cRFU3: Integer read _GetTRANSACTION_cRFU3;
    {class} property TRANSACTION_cRFU4: Integer read _GetTRANSACTION_cRFU4;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCallback$Stub')]
  JEmvCallback_Stub = interface(JBinder)
    ['{B2799FCD-B95C-4874-95A6-97C253FB125F}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJEmvCallback_Stub = class(TJavaGenericImport<JEmvCallback_StubClass, JEmvCallback_Stub>) end;

  JEmvCallback_Stub_ProxyClass = interface(JEmvCallbackClass)
    ['{97774DCA-4D2D-485D-9DA2-C4F0DCB4809C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCallback$Stub$Proxy')]
  JEmvCallback_Stub_Proxy = interface(JEmvCallback)
    ['{3370AB64-7174-45FC-9885-C477019F4242}']
    function asBinder: JIBinder; cdecl;
    function cCheckCredentials(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Boolean>): Integer; cdecl;
    function cCheckExceptionFile(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    function cDisplayPinVerifyStatus(i: Integer): Integer; cdecl;
    function cGetOnlinePin(b: Boolean; b1: TJavaArray<Byte>; i: Integer; b2: TJavaArray<Boolean>): Integer; cdecl;
    function cGetPlainTextPin(b: Boolean; b1: TJavaArray<Byte>; i: Integer; b2: TJavaArray<Boolean>): Integer; cdecl;
    function cGetTransLogAmount(b: TJavaArray<Byte>; i: Integer; i1: Integer): Integer; cdecl;
    function cIssuerReferral(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
    function cRFU3: Integer; cdecl;
    function cRFU4: Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJEmvCallback_Stub_Proxy = class(TJavaGenericImport<JEmvCallback_Stub_ProxyClass, JEmvCallback_Stub_Proxy>) end;

  JEmvCandidateItemClass = interface(JBaseStructClass)
    ['{B34FC5AE-F20D-45D1-BA50-FBF505FA0F92}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JEmvCandidateItem; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>): JEmvCandidateItem; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCandidateItem')]
  JEmvCandidateItem = interface(JBaseStruct)
    ['{2E4FDE25-D659-4CF3-A055-7C158DD406A6}']
    function describeContents: Integer; cdecl;
    procedure fromBytes(b: TJavaArray<Byte>); cdecl;
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucAppLabel: TJavaArray<Byte>; cdecl;
    function getAucDisplayName: TJavaArray<Byte>; cdecl;
    function getAucPreferAppName: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getUcNeedConfirm: Byte; cdecl;
    function getUcPriority: Byte; cdecl;
    procedure setAucAID(b: TJavaArray<Byte>); cdecl;
    procedure setAucAppLabel(b: TJavaArray<Byte>); cdecl;
    procedure setAucDisplayName(b: TJavaArray<Byte>); cdecl;
    procedure setAucPreferAppName(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setUcNeedConfirm(b: Byte); cdecl;
    procedure setUcPriority(b: Byte); cdecl;
    function toBytes: TJavaArray<Byte>; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvCandidateItem = class(TJavaGenericImport<JEmvCandidateItemClass, JEmvCandidateItem>) end;

  JEmvCandidateItem_1Class = interface(JParcelable_CreatorClass)
    ['{F47C564D-851F-488A-8021-7A8025A674C9}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCandidateItem$1')]
  JEmvCandidateItem_1 = interface(JParcelable_Creator)
    ['{ED54352A-1B88-42BC-87C3-68FB63F54ACC}']
    function createFromParcel(parcel: JParcel): JEmvCandidateItem; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvCandidateItem>; cdecl;
  end;
  TJEmvCandidateItem_1 = class(TJavaGenericImport<JEmvCandidateItem_1Class, JEmvCandidateItem_1>) end;

  JEmvCapkClass = interface(JBaseStructClass)
    ['{BF309D70-C070-4D8C-93CC-852DE37FA4C3}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JEmvCapk; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; i: Integer; i1: Integer; i2: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>): JEmvCapk; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCapk')]
  JEmvCapk = interface(JBaseStruct)
    ['{00F03DB5-4433-4D38-A684-5E690E321D9E}']
    function describeContents: Integer; cdecl;
    function getArithInd: Integer; cdecl;
    function getCheckSum: TJavaArray<Byte>; cdecl;
    function getExpDate: TJavaArray<Byte>; cdecl;
    function getExponent: TJavaArray<Byte>; cdecl;
    function getExponentLen: Integer; cdecl;
    function getHashInd: Integer; cdecl;
    function getKeyID: Integer; cdecl;
    function getModul: TJavaArray<Byte>; cdecl;
    function getModulLen: Integer; cdecl;
    function getRID: TJavaArray<Byte>; cdecl;
    procedure setArithInd(i: Integer); cdecl;
    procedure setCheckSum(b: TJavaArray<Byte>); cdecl;
    procedure setExpDate(b: TJavaArray<Byte>); cdecl;
    procedure setExponent(b: TJavaArray<Byte>); cdecl;
    procedure setHashInd(i: Integer); cdecl;
    procedure setKeyID(i: Integer); cdecl;
    procedure setModul(b: TJavaArray<Byte>); cdecl;
    procedure setRID(b: TJavaArray<Byte>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvCapk = class(TJavaGenericImport<JEmvCapkClass, JEmvCapk>) end;

  JEmvCapk_1Class = interface(JParcelable_CreatorClass)
    ['{A757AB66-1A69-4418-978D-57C0289CFE67}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvCapk$1')]
  JEmvCapk_1 = interface(JParcelable_Creator)
    ['{25E41865-D74E-4941-B5E6-60FC4F3B3C9B}']
    function createFromParcel(parcel: JParcel): JEmvCapk; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvCapk>; cdecl;
  end;
  TJEmvCapk_1 = class(TJavaGenericImport<JEmvCapk_1Class, JEmvCapk_1>) end;

  JEmvKernelConfigClass = interface(JParcelableClass)
    ['{45B696E6-874D-4DB8-87ED-24181B0F1EA3}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JEmvKernelConfig; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>): JEmvKernelConfig; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvKernelConfig')]
  JEmvKernelConfig = interface(JParcelable)
    ['{41882A7C-108E-4C54-A472-22F3212C75EA}']
    function describeContents: Integer; cdecl;
    procedure fromBytes(b: TJavaArray<Byte>); cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getBytes: TJavaArray<Byte>; cdecl;
    function getbAdvices: Byte; cdecl;
    function getbBatchDataCapture: Byte; cdecl;
    function getbBypassPINEntry: Byte; cdecl;
    function getbCDAFailureDetectedPriorTerminalActionAnalysis: Byte; cdecl;
    function getbCDAMethod: Byte; cdecl;
    function getbCardHolderConfirm: Byte; cdecl;
    function getbDefaultActionCodeMethod: Byte; cdecl;
    function getbDefaultDDOL: Byte; cdecl;
    function getbDefaultTDOL: Byte; cdecl;
    function getbExceptionFile: Byte; cdecl;
    function getbFloorLimitCheck: Byte; cdecl;
    function getbForcedAcceptance: Byte; cdecl;
    function getbForcedOnline: Byte; cdecl;
    function getbGetdataForPINTryCounter: Byte; cdecl;
    function getbIssuerReferral: Byte; cdecl;
    function getbLanguateSelect: Byte; cdecl;
    function getbOnlineDataCapture: Byte; cdecl;
    function getbPCIPINEntry: Byte; cdecl;
    function getbPSE: Byte; cdecl;
    function getbPreferredDisplayOrder: Byte; cdecl;
    function getbRandomTransSelection: Byte; cdecl;
    function getbRevocationOfIssuerPublicKey: Byte; cdecl;
    function getbSubBypassPINEntry: Byte; cdecl;
    function getbTACIACDefaultSkipedWhenUnableToGoOnline: Byte; cdecl;
    function getbTerminalActionCode: Byte; cdecl;
    function getbTerminalSupportAccountTypeSelection: Byte; cdecl;
    function getbTransactionLog: Byte; cdecl;
    function getbVelocityCheck: Byte; cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setbAdvices(b: Byte); cdecl;
    procedure setbBatchDataCapture(b: Byte); cdecl;
    procedure setbBypassPINEntry(b: Byte); cdecl;
    procedure setbCDAFailureDetectedPriorTerminalActionAnalysis(b: Byte); cdecl;
    procedure setbCDAMethod(b: Byte); cdecl;
    procedure setbCardHolderConfirm(b: Byte); cdecl;
    procedure setbDefaultActionCodeMethod(b: Byte); cdecl;
    procedure setbDefaultDDOL(b: Byte); cdecl;
    procedure setbDefaultTDOL(b: Byte); cdecl;
    procedure setbExceptionFile(b: Byte); cdecl;
    procedure setbFloorLimitCheck(b: Byte); cdecl;
    procedure setbForcedAcceptance(b: Byte); cdecl;
    procedure setbForcedOnline(b: Byte); cdecl;
    procedure setbGetdataForPINTryCounter(b: Byte); cdecl;
    procedure setbIssuerReferral(b: Byte); cdecl;
    procedure setbLanguateSelect(b: Byte); cdecl;
    procedure setbOnlineDataCapture(b: Byte); cdecl;
    procedure setbPCIPINEntry(b: Byte); cdecl;
    procedure setbPSE(b: Byte); cdecl;
    procedure setbPreferredDisplayOrder(b: Byte); cdecl;
    procedure setbRandomTransSelection(b: Byte); cdecl;
    procedure setbRevocationOfIssuerPublicKey(b: Byte); cdecl;
    procedure setbSubBypassPINEntry(b: Byte); cdecl;
    procedure setbTACIACDefaultSkipedWhenUnableToGoOnline(b: Byte); cdecl;
    procedure setbTerminalActionCode(b: Byte); cdecl;
    procedure setbTerminalSupportAccountTypeSelection(b: Byte); cdecl;
    procedure setbTransactionLog(b: Byte); cdecl;
    procedure setbVelocityCheck(b: Byte); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvKernelConfig = class(TJavaGenericImport<JEmvKernelConfigClass, JEmvKernelConfig>) end;

  JEmvKernelConfig_1Class = interface(JParcelable_CreatorClass)
    ['{31666D08-6745-44B4-93F3-D2D77E81570D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvKernelConfig$1')]
  JEmvKernelConfig_1 = interface(JParcelable_Creator)
    ['{09CAAB96-0284-4042-AC28-0A992E956E59}']
    function createFromParcel(parcel: JParcel): JEmvKernelConfig; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvKernelConfig>; cdecl;
  end;
  TJEmvKernelConfig_1 = class(TJavaGenericImport<JEmvKernelConfig_1Class, JEmvKernelConfig_1>) end;

  JEmvRevocListClass = interface(JBaseStructClass)
    ['{79948A0D-D10E-42A5-894E-E4C62D9491AC}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JEmvRevocList; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): JEmvRevocList; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvRevocList')]
  JEmvRevocList = interface(JBaseStruct)
    ['{CB182A6F-92D6-472D-BD36-BDBB6D28B293}']
    function describeContents: Integer; cdecl;
    function getUcCertSn: TJavaArray<Byte>; cdecl;
    function getUcIndex: Integer; cdecl;
    function getUcRid: TJavaArray<Byte>; cdecl;
    procedure setUcCertSn(b: TJavaArray<Byte>); cdecl;
    procedure setUcIndex(i: Integer); cdecl;
    procedure setUcRid(b: TJavaArray<Byte>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvRevocList = class(TJavaGenericImport<JEmvRevocListClass, JEmvRevocList>) end;

  JEmvRevocList_1Class = interface(JParcelable_CreatorClass)
    ['{49733AF1-ACFF-4C32-A27F-B9B7377E412E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvRevocList$1')]
  JEmvRevocList_1 = interface(JParcelable_Creator)
    ['{78F01AB7-8741-4AE2-9E56-8A427A257A2C}']
    function createFromParcel(parcel: JParcel): JEmvRevocList; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvRevocList>; cdecl;
  end;
  TJEmvRevocList_1 = class(TJavaGenericImport<JEmvRevocList_1Class, JEmvRevocList_1>) end;

  JEmvTerminalInfoClass = interface(JBaseStructClass)
    ['{33F11325-62A9-4E96-B749-446BB59F85C0}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JEmvTerminalInfo; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>): JEmvTerminalInfo; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvTerminalInfo')]
  JEmvTerminalInfo = interface(JBaseStruct)
    ['{2DCCC960-BAE3-423F-973A-AC90541E6EC2}']
    function describeContents: Integer; cdecl;
    procedure fromBytes(b: TJavaArray<Byte>); cdecl;
    function getAucAddtionalTerminalCapabilities: TJavaArray<Byte>; cdecl;
    function getAucAppVersion: TJavaArray<Byte>; cdecl;
    function getAucDefaultDDOL: TJavaArray<Byte>; cdecl;
    function getAucDefaultTDOL: TJavaArray<Byte>; cdecl;
    function getAucIFDSerialNumber: JString; cdecl;
    function getAucMerchantCategoryCode: TJavaArray<Byte>; cdecl;
    function getAucMerchantID: JString; cdecl;
    function getAucMerchantNameLocation: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucTACDefault: TJavaArray<Byte>; cdecl;
    function getAucTACDenial: TJavaArray<Byte>; cdecl;
    function getAucTACOnline: TJavaArray<Byte>; cdecl;
    function getAucTerminalAcquireID: JString; cdecl;
    function getAucTerminalCapabilities: TJavaArray<Byte>; cdecl;
    function getAucTerminalCountryCode: TJavaArray<Byte>; cdecl;
    function getAucTerminalID: JString; cdecl;
    function getAucTransCurrencyCode: TJavaArray<Byte>; cdecl;
    function getAucTransRefCurrencyCode: TJavaArray<Byte>; cdecl;
    function getBytes: TJavaArray<Byte>; cdecl;
    function getUcAccountType: Byte; cdecl;
    function getUcIssuerCodeTableIndex: Byte; cdecl;
    function getUcMaxTargetPercentage: Byte; cdecl;
    function getUcTargetPercentage: Byte; cdecl;
    function getUcTerminalEntryMode: Byte; cdecl;
    function getUcTerminalType: Byte; cdecl;
    function getUcTransCurrencyExp: Byte; cdecl;
    function getUcTransRefCurrencyExp: Byte; cdecl;
    function getUnTerminalFloorLimit: Integer; cdecl;
    function getUnThresholdValue: Integer; cdecl;
    procedure setAucAddtionalTerminalCapabilities(b: TJavaArray<Byte>); cdecl;
    procedure setAucAppVersion(b: TJavaArray<Byte>); cdecl;
    procedure setAucDefaultDDOL(b: TJavaArray<Byte>); cdecl;
    procedure setAucDefaultTDOL(b: TJavaArray<Byte>); cdecl;
    procedure setAucIFDSerialNumber(string_: JString); cdecl;
    procedure setAucMerchantCategoryCode(b: TJavaArray<Byte>); cdecl;
    procedure setAucMerchantID(string_: JString); cdecl;
    procedure setAucMerchantNameLocation(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setAucTACDefault(b: TJavaArray<Byte>); cdecl;
    procedure setAucTACDenial(b: TJavaArray<Byte>); cdecl;
    procedure setAucTACOnline(b: TJavaArray<Byte>); cdecl;
    procedure setAucTerminalAcquireID(string_: JString); cdecl;
    procedure setAucTerminalCapabilities(b: TJavaArray<Byte>); cdecl;
    procedure setAucTerminalCountryCode(b: TJavaArray<Byte>); cdecl;
    procedure setAucTerminalID(string_: JString); cdecl;
    procedure setAucTransCurrencyCode(b: TJavaArray<Byte>); cdecl;
    procedure setAucTransRefCurrencyCode(b: TJavaArray<Byte>); cdecl;
    procedure setUcAccountType(b: Byte); cdecl;
    procedure setUcIssuerCodeTableIndex(b: Byte); cdecl;
    procedure setUcMaxTargetPercentage(b: Byte); cdecl;
    procedure setUcTargetPercentage(b: Byte); cdecl;
    procedure setUcTerminalEntryMode(b: Byte); cdecl;
    procedure setUcTerminalType(b: Byte); cdecl;
    procedure setUcTransCurrencyExp(b: Byte); cdecl;
    procedure setUcTransRefCurrencyExp(b: Byte); cdecl;
    procedure setUnTerminalFloorLimit(i: Integer); cdecl;
    procedure setUnThresholdValue(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJEmvTerminalInfo = class(TJavaGenericImport<JEmvTerminalInfoClass, JEmvTerminalInfo>) end;

  JEmvTerminalInfo_1Class = interface(JParcelable_CreatorClass)
    ['{51C594DB-2FAD-4F63-AF90-A900DD97DA64}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/EmvTerminalInfo$1')]
  JEmvTerminalInfo_1 = interface(JParcelable_Creator)
    ['{78FBB121-EB4E-4DB1-803F-0C29819B39DD}']
    function createFromParcel(parcel: JParcel): JEmvTerminalInfo; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JEmvTerminalInfo>; cdecl;
  end;
  TJEmvTerminalInfo_1 = class(TJavaGenericImport<JEmvTerminalInfo_1Class, JEmvTerminalInfo_1>) end;

  JPaypassCallbackClass = interface(JIInterfaceClass)
    ['{0B1C74B8-1927-46D0-B925-4CF484EA14DF}']
    {class} function cSendDEKData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/PaypassCallback')]
  JPaypassCallback = interface(JIInterface)
    ['{00C10EDB-9EF7-4CFB-ACF5-A5ED2AAD94E1}']
    function cAddAPDUToTransLog(apduL2Send: JApduL2Send; apduL2Resp: JApduL2Resp): Integer; cdecl;
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
    function cReceiveDETData(b: TJavaArray<Byte>; i: TJavaArray<Integer>; b1: TJavaArray<Byte>): Integer; cdecl;
    function cSendTransDataOutput(i: Integer): Integer; cdecl;
  end;
  TJPaypassCallback = class(TJavaGenericImport<JPaypassCallbackClass, JPaypassCallback>) end;

  JPaypassCallback_StubClass = interface(JBinderClass)
    ['{99885C96-D017-41C5-A0E1-F4AE2E0BF604}']
    {class} function _GetTRANSACTION_cRFU2: Integer; cdecl;
    {class} function _GetTRANSACTION_cReceiveDETData: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JPaypassCallback; cdecl;
    {class} function init: JPaypassCallback_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cRFU2: Integer read _GetTRANSACTION_cRFU2;
    {class} property TRANSACTION_cReceiveDETData: Integer read _GetTRANSACTION_cReceiveDETData;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/PaypassCallback$Stub')]
  JPaypassCallback_Stub = interface(JBinder)
    ['{01009F65-EACE-4906-BB14-947BCF185199}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJPaypassCallback_Stub = class(TJavaGenericImport<JPaypassCallback_StubClass, JPaypassCallback_Stub>) end;

  JPaypassCallback_Stub_ProxyClass = interface(JPaypassCallbackClass)
    ['{76CC8CAB-F6C9-45B7-BCC9-DDBCBD3225CE}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/PaypassCallback$Stub$Proxy')]
  JPaypassCallback_Stub_Proxy = interface(JPaypassCallback)
    ['{83399B09-032A-4BEF-839A-6ECD066532C3}']
    function asBinder: JIBinder; cdecl;
    function cAddAPDUToTransLog(apduL2Send: JApduL2Send; apduL2Resp: JApduL2Resp): Integer; cdecl;
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
    function cReceiveDETData(b: TJavaArray<Byte>; i: TJavaArray<Integer>; b1: TJavaArray<Byte>): Integer; cdecl;
    function cSendDEKData(b: TJavaArray<Byte>; i: Integer): Integer; cdecl;
    function cSendTransDataOutput(i: Integer): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJPaypassCallback_Stub_Proxy = class(TJavaGenericImport<JPaypassCallback_Stub_ProxyClass, JPaypassCallback_Stub_Proxy>) end;

  JPreProcResultClass = interface(JBaseStructClass)
    ['{4A2170A5-E3E2-499B-B348-35132A2B329C}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JPreProcResult; cdecl; overload;
    {class} function init(parcel: JParcel): JPreProcResult; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/PreProcResult')]
  JPreProcResult = interface(JBaseStruct)
    ['{178DEE8B-04D2-49F0-9750-9B6CA056F749}']
    function describeContents: Integer; cdecl;
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getAucTermFLmt: TJavaArray<Byte>; cdecl;
    function getUcAidLen: Integer; cdecl;
    function getUcCLAppNotAllowed: Integer; cdecl;
    function getUcCrypto17Flg: Integer; cdecl;
    function getUcRandomSelect: Integer; cdecl;
    function getUcRdCLFLmtExceed: Integer; cdecl;
    function getUcRdCLTxnLmtExceed: Integer; cdecl;
    function getUcRdCVMLmtExceed: Integer; cdecl;
    function getUcStatusCheckFlg: Integer; cdecl;
    function getUcTermFLmtExceed: Integer; cdecl;
    function getUcTermFLmtFlg: Integer; cdecl;
    function getUcZeroAmtFlg: Integer; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure setAucAID(b: TJavaArray<Byte>); cdecl;
    procedure setAucReaderTTQ(b: TJavaArray<Byte>); cdecl;
    procedure setAucTermFLmt(b: TJavaArray<Byte>); cdecl;
    procedure setUcAidLen(i: Integer); cdecl;
    procedure setUcCLAppNotAllowed(i: Integer); cdecl;
    procedure setUcCrypto17Flg(i: Integer); cdecl;
    procedure setUcRandomSelect(i: Integer); cdecl;
    procedure setUcRdCLFLmtExceed(i: Integer); cdecl;
    procedure setUcRdCLTxnLmtExceed(i: Integer); cdecl;
    procedure setUcRdCVMLmtExceed(i: Integer); cdecl;
    procedure setUcStatusCheckFlg(i: Integer); cdecl;
    procedure setUcTermFLmtExceed(i: Integer); cdecl;
    procedure setUcTermFLmtFlg(i: Integer); cdecl;
    procedure setUcZeroAmtFlg(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJPreProcResult = class(TJavaGenericImport<JPreProcResultClass, JPreProcResult>) end;

  JPreProcResult_1Class = interface(JParcelable_CreatorClass)
    ['{ECC88174-6163-4CC1-A1C7-461381896921}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/PreProcResult$1')]
  JPreProcResult_1 = interface(JParcelable_Creator)
    ['{9046CCAD-37CB-443C-B36D-4F8E8D308A4A}']
    function createFromParcel(parcel: JParcel): JPreProcResult; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPreProcResult>; cdecl;
  end;
  TJPreProcResult_1 = class(TJavaGenericImport<JPreProcResult_1Class, JPreProcResult_1>) end;

  JProgramIDClass = interface(JBaseStructClass)
    ['{6A0C174F-305D-4E32-886B-AE41F66E5663}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JProgramID; cdecl; overload;
    {class} function init(parcel: JParcel): JProgramID; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ProgramID')]
  JProgramID = interface(JBaseStruct)
    ['{2031C000-AC0B-4B66-92CA-3275EB370FE7}']
    function describeContents: Integer; cdecl;
    function getAucProgramId: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucRdCVMLmt: TJavaArray<Byte>; cdecl;
    function getAucRdClssFLmt: TJavaArray<Byte>; cdecl;
    function getAucRdClssTxnLmt: TJavaArray<Byte>; cdecl;
    function getAucTermFLmt: TJavaArray<Byte>; cdecl;
    function getUcAmtZeroCheckFlg: Integer; cdecl;
    function getUcAmtZeroNoAllowed: Integer; cdecl;
    function getUcPrgramIdLen: Integer; cdecl;
    function getUcRdCVMLmtFlg: Integer; cdecl;
    function getUcRdClssFLmtFlg: Integer; cdecl;
    function getUcRdClssTxnLmtFlg: Integer; cdecl;
    function getUcStatusCheckFlg: Integer; cdecl;
    function getUcTermFLmtFlg: Integer; cdecl;
    procedure setAucProgramId(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdCVMLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdClssFLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucRdClssTxnLmt(b: TJavaArray<Byte>); cdecl;
    procedure setAucTermFLmt(b: TJavaArray<Byte>); cdecl;
    procedure setUcAmtZeroCheckFlg(i: Integer); cdecl;
    procedure setUcAmtZeroNoAllowed(i: Integer); cdecl;
    procedure setUcPrgramIdLen(i: Integer); cdecl;
    procedure setUcRdCVMLmtFlg(i: Integer); cdecl;
    procedure setUcRdClssFLmtFlg(i: Integer); cdecl;
    procedure setUcRdClssTxnLmtFlg(i: Integer); cdecl;
    procedure setUcStatusCheckFlg(i: Integer); cdecl;
    procedure setUcTermFLmtFlg(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJProgramID = class(TJavaGenericImport<JProgramIDClass, JProgramID>) end;

  JProgramID_1Class = interface(JParcelable_CreatorClass)
    ['{58BBCE73-4024-465C-8597-6A60D9FE0E63}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ProgramID$1')]
  JProgramID_1 = interface(JParcelable_Creator)
    ['{36307306-713A-4E9A-A816-222E1BAA22C0}']
    function createFromParcel(parcel: JParcel): JProgramID; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JProgramID>; cdecl;
  end;
  TJProgramID_1 = class(TJavaGenericImport<JProgramID_1Class, JProgramID_1>) end;

  JQpbocCallbackClass = interface(JIInterfaceClass)
    ['{4B70E01E-751E-40FF-988E-68D46B3A3749}']
    {class} function cCheckExceptionFile(b: TJavaArray<Byte>; i: Integer; b1: Byte): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/QpbocCallback')]
  JQpbocCallback = interface(JIInterface)
    ['{AD62ED66-E270-4F05-B17F-D892BFC0030C}']
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
  end;
  TJQpbocCallback = class(TJavaGenericImport<JQpbocCallbackClass, JQpbocCallback>) end;

  JQpbocCallback_StubClass = interface(JBinderClass)
    ['{E17F1754-0C33-481D-8624-929F5E937065}']
    {class} function _GetTRANSACTION_cRFU1: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JQpbocCallback; cdecl;
    {class} function init: JQpbocCallback_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cRFU1: Integer read _GetTRANSACTION_cRFU1;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/QpbocCallback$Stub')]
  JQpbocCallback_Stub = interface(JBinder)
    ['{C443488A-9045-4321-8607-8E59939F59B1}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJQpbocCallback_Stub = class(TJavaGenericImport<JQpbocCallback_StubClass, JQpbocCallback_Stub>) end;

  JQpbocCallback_Stub_ProxyClass = interface(JQpbocCallbackClass)
    ['{06B1260F-9AE6-47F2-947B-DDADDC6F048E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/QpbocCallback$Stub$Proxy')]
  JQpbocCallback_Stub_Proxy = interface(JQpbocCallback)
    ['{3046AA38-A6CE-40F8-AF67-288EFE15C606}']
    function asBinder: JIBinder; cdecl;
    function cCheckExceptionFile(b: TJavaArray<Byte>; i: Integer; b1: Byte): Integer; cdecl;
    function cRFU1: Integer; cdecl;
    function cRFU2: Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJQpbocCallback_Stub_Proxy = class(TJavaGenericImport<JQpbocCallback_Stub_ProxyClass, JQpbocCallback_Stub_Proxy>) end;

  JReturnCodeCLSSClass = interface(JObjectClass)
    ['{4B3D3EF3-72C7-43F8-881A-7A0B7D787B85}']
    {class} function _GetCLSS_API_ORDER_ERR: Integer; cdecl;
    {class} function _GetCLSS_CARD_EXPIRED: Integer; cdecl;
    {class} function _GetCLSS_CARD_EXPIRED_REQ_ONLINE: Integer; cdecl;
    {class} function _GetCLSS_CVMDECLINE: Integer; cdecl;
    {class} function _GetCLSS_DECLINE: Integer; cdecl;
    {class} function _GetCLSS_DEVICE_NOT_AUTH: Integer; cdecl;
    {class} function _GetCLSS_FAILED: Integer; cdecl;
    {class} function _GetCLSS_FILE_ERR: Integer; cdecl;
    {class} function _GetCLSS_FILE_NOT_FOUND: Integer; cdecl;
    {class} function _GetCLSS_INSERTED_ICCARD: Integer; cdecl;
    {class} function _GetCLSS_LAST_CMD_ERR: Integer; cdecl;
    {class} function _GetCLSS_MORE_CARD: Integer; cdecl;
    {class} function _GetCLSS_NO_APP: Integer; cdecl;
    {class} function _GetCLSS_NO_APP_PPSE_ERR: Integer; cdecl;
    {class} function _GetCLSS_OK: Integer; cdecl;
    {class} function _GetCLSS_PARAM_ERR: Integer; cdecl;
    {class} function _GetCLSS_PAYMENT_NOT_ACCEPT: Integer; cdecl;
    {class} function _GetCLSS_REFER_CONSUMER_DEVICE: Integer; cdecl;
    {class} function _GetCLSS_RESELECT_APP: Integer; cdecl;
    {class} function _GetCLSS_SWIPED_MAGCARD: Integer; cdecl;
    {class} function _GetCLSS_TERMINATE: Integer; cdecl;
    {class} function _GetCLSS_TORN_CARDNUM_ERR: Integer; cdecl;
    {class} function _GetCLSS_TORN_RECOVER: Integer; cdecl;
    {class} function _GetCLSS_TRON_AID_ERR: Integer; cdecl;
    {class} function _GetCLSS_TRON_AMT_ERR: Integer; cdecl;
    {class} function _GetCLSS_TRON_NULL: Integer; cdecl;
    {class} function _GetCLSS_TRY_AGAIN: Integer; cdecl;
    {class} function _GetCLSS_TRY_ANOTHER_CARD: Integer; cdecl;
    {class} function _GetCLSS_USE_CONTACT: Integer; cdecl;
    {class} function _GetCLSS_USE_VSDC: Integer; cdecl;
    {class} function _GetEMV_APP_BLOCK: Integer; cdecl;
    {class} function _GetEMV_DATA_ERR: Integer; cdecl;
    {class} function _GetEMV_DENIAL: Integer; cdecl;
    {class} function _GetEMV_FILE_ERR: Integer; cdecl;
    {class} function _GetEMV_KEY_EXP: Integer; cdecl;
    {class} function _GetEMV_NOT_ACCEPT: Integer; cdecl;
    {class} function _GetEMV_NOT_FOUND: Integer; cdecl;
    {class} function _GetEMV_NO_DATA: Integer; cdecl;
    {class} function _GetEMV_NO_PASSWORD: Integer; cdecl;
    {class} function _GetEMV_NO_PINPAD: Integer; cdecl;
    {class} function _GetEMV_OK: Integer; cdecl;
    {class} function _GetEMV_OVERFLOW: Integer; cdecl;
    {class} function _GetEMV_PARAM_ERR: Integer; cdecl;
    {class} function _GetEMV_RSP_ERR: Integer; cdecl;
    {class} function _GetEMV_SUM_ERR: Integer; cdecl;
    {class} function _GetEMV_TIME_OUT: Integer; cdecl;
    {class} function _GetEMV_USER_CANCEL: Integer; cdecl;
    {class} function _GetICC_BLOCK: Integer; cdecl;
    {class} function _GetICC_CMD_ERR: Integer; cdecl;
    {class} function _GetICC_RESET_ERR: Integer; cdecl;
    {class} function _GetICC_RSP_6985: Integer; cdecl;
    {class} function _GetLOGITEM_NOTEXIST: Integer; cdecl;
    {class} function _GetNO_TRANS_LOG: Integer; cdecl;
    {class} function _GetRECORD_NOTEXIST: Integer; cdecl;
    {class} function init: JReturnCodeCLSS; cdecl;//Deprecated
    {class} property CLSS_API_ORDER_ERR: Integer read _GetCLSS_API_ORDER_ERR;
    {class} property CLSS_CARD_EXPIRED: Integer read _GetCLSS_CARD_EXPIRED;
    {class} property CLSS_CARD_EXPIRED_REQ_ONLINE: Integer read _GetCLSS_CARD_EXPIRED_REQ_ONLINE;
    {class} property CLSS_CVMDECLINE: Integer read _GetCLSS_CVMDECLINE;
    {class} property CLSS_DECLINE: Integer read _GetCLSS_DECLINE;
    {class} property CLSS_DEVICE_NOT_AUTH: Integer read _GetCLSS_DEVICE_NOT_AUTH;
    {class} property CLSS_FAILED: Integer read _GetCLSS_FAILED;
    {class} property CLSS_FILE_ERR: Integer read _GetCLSS_FILE_ERR;
    {class} property CLSS_FILE_NOT_FOUND: Integer read _GetCLSS_FILE_NOT_FOUND;
    {class} property CLSS_INSERTED_ICCARD: Integer read _GetCLSS_INSERTED_ICCARD;
    {class} property CLSS_LAST_CMD_ERR: Integer read _GetCLSS_LAST_CMD_ERR;
    {class} property CLSS_MORE_CARD: Integer read _GetCLSS_MORE_CARD;
    {class} property CLSS_NO_APP: Integer read _GetCLSS_NO_APP;
    {class} property CLSS_NO_APP_PPSE_ERR: Integer read _GetCLSS_NO_APP_PPSE_ERR;
    {class} property CLSS_OK: Integer read _GetCLSS_OK;
    {class} property CLSS_PARAM_ERR: Integer read _GetCLSS_PARAM_ERR;
    {class} property CLSS_PAYMENT_NOT_ACCEPT: Integer read _GetCLSS_PAYMENT_NOT_ACCEPT;
    {class} property CLSS_REFER_CONSUMER_DEVICE: Integer read _GetCLSS_REFER_CONSUMER_DEVICE;
    {class} property CLSS_RESELECT_APP: Integer read _GetCLSS_RESELECT_APP;
    {class} property CLSS_SWIPED_MAGCARD: Integer read _GetCLSS_SWIPED_MAGCARD;
    {class} property CLSS_TERMINATE: Integer read _GetCLSS_TERMINATE;
    {class} property CLSS_TORN_CARDNUM_ERR: Integer read _GetCLSS_TORN_CARDNUM_ERR;
    {class} property CLSS_TORN_RECOVER: Integer read _GetCLSS_TORN_RECOVER;
    {class} property CLSS_TRON_AID_ERR: Integer read _GetCLSS_TRON_AID_ERR;
    {class} property CLSS_TRON_AMT_ERR: Integer read _GetCLSS_TRON_AMT_ERR;
    {class} property CLSS_TRON_NULL: Integer read _GetCLSS_TRON_NULL;
    {class} property CLSS_TRY_AGAIN: Integer read _GetCLSS_TRY_AGAIN;
    {class} property CLSS_TRY_ANOTHER_CARD: Integer read _GetCLSS_TRY_ANOTHER_CARD;
    {class} property CLSS_USE_CONTACT: Integer read _GetCLSS_USE_CONTACT;
    {class} property CLSS_USE_VSDC: Integer read _GetCLSS_USE_VSDC;
    {class} property EMV_APP_BLOCK: Integer read _GetEMV_APP_BLOCK;
    {class} property EMV_DATA_ERR: Integer read _GetEMV_DATA_ERR;
    {class} property EMV_DENIAL: Integer read _GetEMV_DENIAL;
    {class} property EMV_FILE_ERR: Integer read _GetEMV_FILE_ERR;
    {class} property EMV_KEY_EXP: Integer read _GetEMV_KEY_EXP;
    {class} property EMV_NOT_ACCEPT: Integer read _GetEMV_NOT_ACCEPT;
    {class} property EMV_NOT_FOUND: Integer read _GetEMV_NOT_FOUND;
    {class} property EMV_NO_DATA: Integer read _GetEMV_NO_DATA;
    {class} property EMV_NO_PASSWORD: Integer read _GetEMV_NO_PASSWORD;
    {class} property EMV_NO_PINPAD: Integer read _GetEMV_NO_PINPAD;
    {class} property EMV_OK: Integer read _GetEMV_OK;
    {class} property EMV_OVERFLOW: Integer read _GetEMV_OVERFLOW;
    {class} property EMV_PARAM_ERR: Integer read _GetEMV_PARAM_ERR;
    {class} property EMV_RSP_ERR: Integer read _GetEMV_RSP_ERR;
    {class} property EMV_SUM_ERR: Integer read _GetEMV_SUM_ERR;
    {class} property EMV_TIME_OUT: Integer read _GetEMV_TIME_OUT;
    {class} property EMV_USER_CANCEL: Integer read _GetEMV_USER_CANCEL;
    {class} property ICC_BLOCK: Integer read _GetICC_BLOCK;
    {class} property ICC_CMD_ERR: Integer read _GetICC_CMD_ERR;
    {class} property ICC_RESET_ERR: Integer read _GetICC_RESET_ERR;
    {class} property ICC_RSP_6985: Integer read _GetICC_RSP_6985;
    {class} property LOGITEM_NOTEXIST: Integer read _GetLOGITEM_NOTEXIST;
    {class} property NO_TRANS_LOG: Integer read _GetNO_TRANS_LOG;
    {class} property RECORD_NOTEXIST: Integer read _GetRECORD_NOTEXIST;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ReturnCodeCLSS')]
  JReturnCodeCLSS = interface(JObject)
    ['{813CCAB7-1B17-45E4-B928-863C0F2D80BE}']
  end;
  TJReturnCodeCLSS = class(TJavaGenericImport<JReturnCodeCLSSClass, JReturnCodeCLSS>) end;

  JReturnCodeEMVClass = interface(JObjectClass)
    ['{57232798-9FD7-4DAE-BB72-F2BEF4305102}']
    {class} function _GetEMV_AID_DUPLICATE: Integer; cdecl;
    {class} function _GetEMV_AID_NO_FOUND: Integer; cdecl;
    {class} function _GetEMV_APPROVED: Integer; cdecl;
    {class} function _GetEMV_APP_BLOCKED: Integer; cdecl;
    {class} function _GetEMV_CAPK_CHECKSUM_ERROR: Integer; cdecl;
    {class} function _GetEMV_CAPK_EXPIRED: Integer; cdecl;
    {class} function _GetEMV_CAPK_NO_FOUND: Integer; cdecl;
    {class} function _GetEMV_CARD_BLOCKED: Integer; cdecl;
    {class} function _GetEMV_CERTIFICATE_RECOVER_FAILED: Integer; cdecl;
    {class} function _GetEMV_DATA_AUTH_FAILED: Integer; cdecl;
    {class} function _GetEMV_DATA_DUPLICATE: Integer; cdecl;
    {class} function _GetEMV_DATA_LENGTH_ERROR: Integer; cdecl;
    {class} function _GetEMV_DATA_NOT_EXISTS: Integer; cdecl;
    {class} function _GetEMV_DECLINED: Integer; cdecl;
    {class} function _GetEMV_FALLBACK: Integer; cdecl;
    {class} function _GetEMV_FORCE_APPROVED: Integer; cdecl;
    {class} function _GetEMV_FORMAT_ERROR: Integer; cdecl;
    {class} function _GetEMV_ICC_ERROR: Integer; cdecl;
    {class} function _GetEMV_ICC_ERR_LAST_RECORD: Integer; cdecl;
    {class} function _GetEMV_INVALID_RESPONSE: Integer; cdecl;
    {class} function _GetEMV_INVALID_TLV: Integer; cdecl;
    {class} function _GetEMV_MEMORY_NOT_ENOUGH: Integer; cdecl;
    {class} function _GetEMV_MEMORY_OVERFLOW: Integer; cdecl;
    {class} function _GetEMV_NOT_ALLOWED: Integer; cdecl;
    {class} function _GetEMV_NO_ACCEPTED: Integer; cdecl;
    {class} function _GetEMV_NO_APP: Integer; cdecl;
    {class} function _GetEMV_NO_MORE_DATA: Integer; cdecl;
    {class} function _GetEMV_OK: Integer; cdecl;
    {class} function _GetEMV_ONLINE_REQUEST: Integer; cdecl;
    {class} function _GetEMV_OTHER_ERROR: Integer; cdecl;
    {class} function _GetEMV_PARAMETER_ERROR: Integer; cdecl;
    {class} function _GetEMV_SEE_PHONE: Integer; cdecl;
    {class} function _GetEMV_SELECT_NEXT_AID: Integer; cdecl;
    {class} function _GetEMV_TERMINATED: Integer; cdecl;
    {class} function _GetEMV_TRY_AGAIN: Integer; cdecl;
    {class} function _GetEMV_TRY_OTHER_INTERFACE: Integer; cdecl;
    {class} function _GetEMV_UN_RECOGNIZED_TAG: Integer; cdecl;
    {class} function _GetQPBOC_AMOUNT_BIG_THAN_CL_LIMIT: Integer; cdecl;
    {class} function _GetQPBOC_APP_EXPIRED: Integer; cdecl;
    {class} function _GetQPBOC_APP_EXPIRED_APPROVED: Integer; cdecl;
    {class} function _GetQPBOC_APP_EXPIRED_OFFLINE_DECLINED: Integer; cdecl;
    {class} function _GetQPBOC_APP_EXPIRED_ONLINE: Integer; cdecl;
    {class} function _GetQPBOC_APP_EXPIRED_ONLINE_DECLINED: Integer; cdecl;
    {class} function _GetQPBOC_CANT_GO_ONLINE_DECLINE: Integer; cdecl;
    {class} function _GetQPBOC_FCI_MISSING_9F38: Integer; cdecl;
    {class} function _GetQPBOC_FDDA_FAIL_ONLINE: Integer; cdecl;
    {class} function _GetQPBOC_GPO_SW_6986: Integer; cdecl;
    {class} function _GetQPBOC_IN_EXCEPTION_FILE: Integer; cdecl;
    {class} function _GetQPBOC_NEED_RETRY: Integer; cdecl;
    {class} function _GetQPBOC_OFFLINE_APPROVED: Integer; cdecl;
    {class} function _GetQPBOC_OFFLINE_DECLINED: Integer; cdecl;
    {class} function _GetQPBOC_ONLINE_APPROVED: Integer; cdecl;
    {class} function _GetQPBOC_ONLINE_DECLINED: Integer; cdecl;
    {class} function _GetQPBOC_OTHER_INTERFACE: Integer; cdecl;
    {class} function _GetQPBOC_PDOL_MISSING_9F66: Integer; cdecl;
    {class} function _GetQPBOC_SELECT_NEXT_APP: Integer; cdecl;
    {class} function _GetQPBOC_SELECT_PPSE: Integer; cdecl;
    {class} function _GetQPBOC_TERMINATED_CONTACT: Integer; cdecl;
    {class} function _GetQPBOC_TERMINATED_SWIPE: Integer; cdecl;
    {class} function init: JReturnCodeEMV; cdecl;//Deprecated
    {class} property EMV_AID_DUPLICATE: Integer read _GetEMV_AID_DUPLICATE;
    {class} property EMV_AID_NO_FOUND: Integer read _GetEMV_AID_NO_FOUND;
    {class} property EMV_APPROVED: Integer read _GetEMV_APPROVED;
    {class} property EMV_APP_BLOCKED: Integer read _GetEMV_APP_BLOCKED;
    {class} property EMV_CAPK_CHECKSUM_ERROR: Integer read _GetEMV_CAPK_CHECKSUM_ERROR;
    {class} property EMV_CAPK_EXPIRED: Integer read _GetEMV_CAPK_EXPIRED;
    {class} property EMV_CAPK_NO_FOUND: Integer read _GetEMV_CAPK_NO_FOUND;
    {class} property EMV_CARD_BLOCKED: Integer read _GetEMV_CARD_BLOCKED;
    {class} property EMV_CERTIFICATE_RECOVER_FAILED: Integer read _GetEMV_CERTIFICATE_RECOVER_FAILED;
    {class} property EMV_DATA_AUTH_FAILED: Integer read _GetEMV_DATA_AUTH_FAILED;
    {class} property EMV_DATA_DUPLICATE: Integer read _GetEMV_DATA_DUPLICATE;
    {class} property EMV_DATA_LENGTH_ERROR: Integer read _GetEMV_DATA_LENGTH_ERROR;
    {class} property EMV_DATA_NOT_EXISTS: Integer read _GetEMV_DATA_NOT_EXISTS;
    {class} property EMV_DECLINED: Integer read _GetEMV_DECLINED;
    {class} property EMV_FALLBACK: Integer read _GetEMV_FALLBACK;
    {class} property EMV_FORCE_APPROVED: Integer read _GetEMV_FORCE_APPROVED;
    {class} property EMV_FORMAT_ERROR: Integer read _GetEMV_FORMAT_ERROR;
    {class} property EMV_ICC_ERROR: Integer read _GetEMV_ICC_ERROR;
    {class} property EMV_ICC_ERR_LAST_RECORD: Integer read _GetEMV_ICC_ERR_LAST_RECORD;
    {class} property EMV_INVALID_RESPONSE: Integer read _GetEMV_INVALID_RESPONSE;
    {class} property EMV_INVALID_TLV: Integer read _GetEMV_INVALID_TLV;
    {class} property EMV_MEMORY_NOT_ENOUGH: Integer read _GetEMV_MEMORY_NOT_ENOUGH;
    {class} property EMV_MEMORY_OVERFLOW: Integer read _GetEMV_MEMORY_OVERFLOW;
    {class} property EMV_NOT_ALLOWED: Integer read _GetEMV_NOT_ALLOWED;
    {class} property EMV_NO_ACCEPTED: Integer read _GetEMV_NO_ACCEPTED;
    {class} property EMV_NO_APP: Integer read _GetEMV_NO_APP;
    {class} property EMV_NO_MORE_DATA: Integer read _GetEMV_NO_MORE_DATA;
    {class} property EMV_OK: Integer read _GetEMV_OK;
    {class} property EMV_ONLINE_REQUEST: Integer read _GetEMV_ONLINE_REQUEST;
    {class} property EMV_OTHER_ERROR: Integer read _GetEMV_OTHER_ERROR;
    {class} property EMV_PARAMETER_ERROR: Integer read _GetEMV_PARAMETER_ERROR;
    {class} property EMV_SEE_PHONE: Integer read _GetEMV_SEE_PHONE;
    {class} property EMV_SELECT_NEXT_AID: Integer read _GetEMV_SELECT_NEXT_AID;
    {class} property EMV_TERMINATED: Integer read _GetEMV_TERMINATED;
    {class} property EMV_TRY_AGAIN: Integer read _GetEMV_TRY_AGAIN;
    {class} property EMV_TRY_OTHER_INTERFACE: Integer read _GetEMV_TRY_OTHER_INTERFACE;
    {class} property EMV_UN_RECOGNIZED_TAG: Integer read _GetEMV_UN_RECOGNIZED_TAG;
    {class} property QPBOC_AMOUNT_BIG_THAN_CL_LIMIT: Integer read _GetQPBOC_AMOUNT_BIG_THAN_CL_LIMIT;
    {class} property QPBOC_APP_EXPIRED: Integer read _GetQPBOC_APP_EXPIRED;
    {class} property QPBOC_APP_EXPIRED_APPROVED: Integer read _GetQPBOC_APP_EXPIRED_APPROVED;
    {class} property QPBOC_APP_EXPIRED_OFFLINE_DECLINED: Integer read _GetQPBOC_APP_EXPIRED_OFFLINE_DECLINED;
    {class} property QPBOC_APP_EXPIRED_ONLINE: Integer read _GetQPBOC_APP_EXPIRED_ONLINE;
    {class} property QPBOC_APP_EXPIRED_ONLINE_DECLINED: Integer read _GetQPBOC_APP_EXPIRED_ONLINE_DECLINED;
    {class} property QPBOC_CANT_GO_ONLINE_DECLINE: Integer read _GetQPBOC_CANT_GO_ONLINE_DECLINE;
    {class} property QPBOC_FCI_MISSING_9F38: Integer read _GetQPBOC_FCI_MISSING_9F38;
    {class} property QPBOC_FDDA_FAIL_ONLINE: Integer read _GetQPBOC_FDDA_FAIL_ONLINE;
    {class} property QPBOC_GPO_SW_6986: Integer read _GetQPBOC_GPO_SW_6986;
    {class} property QPBOC_IN_EXCEPTION_FILE: Integer read _GetQPBOC_IN_EXCEPTION_FILE;
    {class} property QPBOC_NEED_RETRY: Integer read _GetQPBOC_NEED_RETRY;
    {class} property QPBOC_OFFLINE_APPROVED: Integer read _GetQPBOC_OFFLINE_APPROVED;
    {class} property QPBOC_OFFLINE_DECLINED: Integer read _GetQPBOC_OFFLINE_DECLINED;
    {class} property QPBOC_ONLINE_APPROVED: Integer read _GetQPBOC_ONLINE_APPROVED;
    {class} property QPBOC_ONLINE_DECLINED: Integer read _GetQPBOC_ONLINE_DECLINED;
    {class} property QPBOC_OTHER_INTERFACE: Integer read _GetQPBOC_OTHER_INTERFACE;
    {class} property QPBOC_PDOL_MISSING_9F66: Integer read _GetQPBOC_PDOL_MISSING_9F66;
    {class} property QPBOC_SELECT_NEXT_APP: Integer read _GetQPBOC_SELECT_NEXT_APP;
    {class} property QPBOC_SELECT_PPSE: Integer read _GetQPBOC_SELECT_PPSE;
    {class} property QPBOC_TERMINATED_CONTACT: Integer read _GetQPBOC_TERMINATED_CONTACT;
    {class} property QPBOC_TERMINATED_SWIPE: Integer read _GetQPBOC_TERMINATED_SWIPE;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/ReturnCodeEMV')]
  JReturnCodeEMV = interface(JObject)
    ['{1099F2FB-E745-4B1B-B2B4-1E085DF84863}']
  end;
  TJReturnCodeEMV = class(TJavaGenericImport<JReturnCodeEMVClass, JReturnCodeEMV>) end;

  JTransParamClass = interface(JBaseStructClass)
    ['{E50E50CF-43F3-4ADF-B7EA-73335E7FCFC8}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JTransParam; cdecl; overload;
    {class} function init(parcel: JParcel): JTransParam; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/TransParam')]
  JTransParam = interface(JBaseStruct)
    ['{FFC2BB07-240C-4160-95BB-D25A2063B8A2}']
    function describeContents: Integer; cdecl;
    function getAucAmount: TJavaArray<Byte>; cdecl;
    function getAucAmountOther: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucTransCurCode: TJavaArray<Byte>; cdecl;
    function getAucTransDate: TJavaArray<Byte>; cdecl;
    function getAucTransTime: TJavaArray<Byte>; cdecl;
    function getAucUnNumber: TJavaArray<Byte>; cdecl;
    function getUcTransType: Integer; cdecl;
    function getUlTransNo: Int64; cdecl;
    procedure setAucAmount(b: TJavaArray<Byte>); cdecl;
    procedure setAucAmountOther(b: TJavaArray<Byte>); cdecl;
    procedure setAucRFU(b: TJavaArray<Byte>); cdecl;
    procedure setAucTransCurCode(b: TJavaArray<Byte>); cdecl;
    procedure setAucTransDate(b: TJavaArray<Byte>); cdecl;
    procedure setAucTransTime(b: TJavaArray<Byte>); cdecl;
    procedure setAucUnNumber(b: TJavaArray<Byte>); cdecl;
    procedure setUcTransType(i: Integer); cdecl;
    procedure setUlTransNo(l: Int64); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJTransParam = class(TJavaGenericImport<JTransParamClass, JTransParam>) end;

  JTransParam_1Class = interface(JParcelable_CreatorClass)
    ['{43999C55-91B3-4EBD-8E26-35212BFCC5DD}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/emv/level2/TransParam$1')]
  JTransParam_1 = interface(JParcelable_Creator)
    ['{F9D929A3-216F-402F-AB9A-E176FF236977}']
    function createFromParcel(parcel: JParcel): JTransParam; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JTransParam>; cdecl;
  end;
  TJTransParam_1 = class(TJavaGenericImport<JTransParam_1Class, JTransParam_1>) end;

  JAidlFingerprintClass = interface(JIInterfaceClass)
    ['{9AE11F4B-4E51-4AEF-A616-48081114FFA4}']
    {class} function open: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/AidlFingerprint')]
  JAidlFingerprint = interface(JIInterface)
    ['{AF1F4E06-7C73-4360-93E9-F78C62234635}']
    function close: Boolean; cdecl;
    procedure start(fingerprintParam: JFingerprintParam; fingerprintListener: JFingerprintListener); cdecl;
    procedure stop; cdecl;
    function verify(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): JFingerprintVerifyResult; cdecl;
  end;
  TJAidlFingerprint = class(TJavaGenericImport<JAidlFingerprintClass, JAidlFingerprint>) end;

  JAidlFingerprint_StubClass = interface(JBinderClass)
    ['{E5CD54DE-1D70-482E-B510-62F0CF722A4A}']
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_start: Integer; cdecl;
    {class} function _GetTRANSACTION_stop: Integer; cdecl;
    {class} function _GetTRANSACTION_verify: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlFingerprint; cdecl;
    {class} function init: JAidlFingerprint_Stub; cdecl;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_start: Integer read _GetTRANSACTION_start;
    {class} property TRANSACTION_stop: Integer read _GetTRANSACTION_stop;
    {class} property TRANSACTION_verify: Integer read _GetTRANSACTION_verify;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/AidlFingerprint$Stub')]
  JAidlFingerprint_Stub = interface(JBinder)
    ['{039E3256-74D9-4E71-9E39-E320C0B00893}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlFingerprint_Stub = class(TJavaGenericImport<JAidlFingerprint_StubClass, JAidlFingerprint_Stub>) end;

  JAidlFingerprint_Stub_ProxyClass = interface(JAidlFingerprintClass)
    ['{6234F749-1494-4D08-BCDE-E3A3724BFA14}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/AidlFingerprint$Stub$Proxy')]
  JAidlFingerprint_Stub_Proxy = interface(JAidlFingerprint)
    ['{C88E7969-EBA0-43E4-B3FF-4D2A6EC70101}']
    function asBinder: JIBinder; cdecl;
    function close: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function open: Boolean; cdecl;
    procedure start(fingerprintParam: JFingerprintParam; fingerprintListener: JFingerprintListener); cdecl;
    procedure stop; cdecl;
    function verify(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): JFingerprintVerifyResult; cdecl;
  end;
  TJAidlFingerprint_Stub_Proxy = class(TJavaGenericImport<JAidlFingerprint_Stub_ProxyClass, JAidlFingerprint_Stub_Proxy>) end;

  JFingerprintConstantClass = interface(JObjectClass)
    ['{99D05417-4EFB-49CD-809C-623BE83EBD57}']
    {class} function init: JFingerprintConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant')]
  JFingerprintConstant = interface(JObject)
    ['{816710ED-504A-4CF8-AC7C-49E7C1CE2BB9}']
  end;
  TJFingerprintConstant = class(TJavaGenericImport<JFingerprintConstantClass, JFingerprintConstant>) end;

  JFingerprintConstant_FingerPositionClass = interface(JObjectClass)
    ['{10C9615A-574A-436B-B445-6FC47DA4C853}']
    {class} function _GetLeftIndexFinger: Integer; cdecl;
    {class} function _GetLeftLittleFinger: Integer; cdecl;
    {class} function _GetLeftMiddleFinger: Integer; cdecl;
    {class} function _GetLeftRingFinger: Integer; cdecl;
    {class} function _GetLeftThumb: Integer; cdecl;
    {class} function _GetRightIndexFinger: Integer; cdecl;
    {class} function _GetRightLittleFinger: Integer; cdecl;
    {class} function _GetRightMiddleFinger: Integer; cdecl;
    {class} function _GetRightRingFinger: Integer; cdecl;
    {class} function _GetRightThumb: Integer; cdecl;
    {class} function _GetUnknown: Integer; cdecl;
    {class} function init: JFingerprintConstant_FingerPosition; cdecl;//Deprecated
    {class} property LeftIndexFinger: Integer read _GetLeftIndexFinger;
    {class} property LeftLittleFinger: Integer read _GetLeftLittleFinger;
    {class} property LeftMiddleFinger: Integer read _GetLeftMiddleFinger;
    {class} property LeftRingFinger: Integer read _GetLeftRingFinger;
    {class} property LeftThumb: Integer read _GetLeftThumb;
    {class} property RightIndexFinger: Integer read _GetRightIndexFinger;
    {class} property RightLittleFinger: Integer read _GetRightLittleFinger;
    {class} property RightMiddleFinger: Integer read _GetRightMiddleFinger;
    {class} property RightRingFinger: Integer read _GetRightRingFinger;
    {class} property RightThumb: Integer read _GetRightThumb;
    {class} property Unknown: Integer read _GetUnknown;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$FingerPosition')]
  JFingerprintConstant_FingerPosition = interface(JObject)
    ['{FE0699B5-5870-46E5-9F8D-0DDCA3CC7CAC}']
  end;
  TJFingerprintConstant_FingerPosition = class(TJavaGenericImport<JFingerprintConstant_FingerPositionClass, JFingerprintConstant_FingerPosition>) end;

  JFingerprintConstant_ImgCompressAlgClass = interface(JObjectClass)
    ['{E356CC6A-BD3D-449F-A873-5549D6ECAA79}']
    {class} function _GetCOMPRESSED_JPEG: Integer; cdecl;
    {class} function _GetCOMPRESSED_JPEG2000: Integer; cdecl;
    {class} function _GetCOMPRESSED_WSQ: Integer; cdecl;
    {class} function _GetPNG: Integer; cdecl;
    {class} function _GetUNCOMPRESSED_BIT_PACKED: Integer; cdecl;
    {class} function _GetUNCOMPRESSED_NO_BIT_PACKING: Integer; cdecl;
    {class} function init: JFingerprintConstant_ImgCompressAlg; cdecl;//Deprecated
    {class} property COMPRESSED_JPEG: Integer read _GetCOMPRESSED_JPEG;
    {class} property COMPRESSED_JPEG2000: Integer read _GetCOMPRESSED_JPEG2000;
    {class} property COMPRESSED_WSQ: Integer read _GetCOMPRESSED_WSQ;
    {class} property PNG: Integer read _GetPNG;
    {class} property UNCOMPRESSED_BIT_PACKED: Integer read _GetUNCOMPRESSED_BIT_PACKED;
    {class} property UNCOMPRESSED_NO_BIT_PACKING: Integer read _GetUNCOMPRESSED_NO_BIT_PACKING;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$ImgCompressAlg')]
  JFingerprintConstant_ImgCompressAlg = interface(JObject)
    ['{38F307A2-538B-4BEA-AD52-B30F571E63B9}']
  end;
  TJFingerprintConstant_ImgCompressAlg = class(TJavaGenericImport<JFingerprintConstant_ImgCompressAlgClass, JFingerprintConstant_ImgCompressAlg>) end;

  JFingerprintConstant_ImgFormatClass = interface(JObjectClass)
    ['{7DB0FAFC-30BE-417B-BAFE-F94BB8933A8C}']
    {class} function _GetFORMAT_ANSI: Integer; cdecl;
    {class} function _GetFORMAT_BMP: Integer; cdecl;
    {class} function _GetFORMAT_ISO: Integer; cdecl;
    {class} function _GetFORMAT_RAW: Integer; cdecl;
    {class} function _GetFORMAT_WSQ: Integer; cdecl;
    {class} function init: JFingerprintConstant_ImgFormat; cdecl;
    {class} property FORMAT_ANSI: Integer read _GetFORMAT_ANSI;
    {class} property FORMAT_BMP: Integer read _GetFORMAT_BMP;
    {class} property FORMAT_ISO: Integer read _GetFORMAT_ISO;
    {class} property FORMAT_RAW: Integer read _GetFORMAT_RAW;
    {class} property FORMAT_WSQ: Integer read _GetFORMAT_WSQ;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$ImgFormat')]
  JFingerprintConstant_ImgFormat = interface(JObject)
    ['{87007F2F-5DAA-4E98-A5AA-80502C9C91BD}']
  end;
  TJFingerprintConstant_ImgFormat = class(TJavaGenericImport<JFingerprintConstant_ImgFormatClass, JFingerprintConstant_ImgFormat>) end;

  JFingerprintConstant_LfdLevelClass = interface(JObjectClass)
    ['{02CAEBAA-D331-4DE0-AE01-203705FFDF70}']
    {class} function _GetEXTRA_LOW: Integer; cdecl;
    {class} function _GetHIGH: Integer; cdecl;
    {class} function _GetLOW: Integer; cdecl;
    {class} function _GetMEDIUM: Integer; cdecl;
    {class} function _GetOFF: Integer; cdecl;
    {class} function _GetULTRA_HIGH: Integer; cdecl;
    {class} function init: JFingerprintConstant_LfdLevel; cdecl;//Deprecated
    {class} property EXTRA_LOW: Integer read _GetEXTRA_LOW;
    {class} property HIGH: Integer read _GetHIGH;
    {class} property LOW: Integer read _GetLOW;
    {class} property MEDIUM: Integer read _GetMEDIUM;
    {class} property OFF: Integer read _GetOFF;
    {class} property ULTRA_HIGH: Integer read _GetULTRA_HIGH;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$LfdLevel')]
  JFingerprintConstant_LfdLevel = interface(JObject)
    ['{64540B32-D26F-4141-88B6-0E1CF481B6F3}']
  end;
  TJFingerprintConstant_LfdLevel = class(TJavaGenericImport<JFingerprintConstant_LfdLevelClass, JFingerprintConstant_LfdLevel>) end;

  JFingerprintConstant_SecurityLevelClass = interface(JObjectClass)
    ['{7EFD3745-2941-405A-AEC3-F0990FD90BB0}']
    {class} function _GetLEVEL1: Integer; cdecl;
    {class} function _GetLEVEL2: Integer; cdecl;
    {class} function _GetLEVEL3: Integer; cdecl;
    {class} function _GetLEVEL4: Integer; cdecl;
    {class} function _GetLEVEL5: Integer; cdecl;
    {class} function init: JFingerprintConstant_SecurityLevel; cdecl;
    {class} property LEVEL1: Integer read _GetLEVEL1;
    {class} property LEVEL2: Integer read _GetLEVEL2;
    {class} property LEVEL3: Integer read _GetLEVEL3;
    {class} property LEVEL4: Integer read _GetLEVEL4;
    {class} property LEVEL5: Integer read _GetLEVEL5;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$SecurityLevel')]
  JFingerprintConstant_SecurityLevel = interface(JObject)
    ['{ECA40A50-C838-4BC7-9435-F488029177E9}']
  end;
  TJFingerprintConstant_SecurityLevel = class(TJavaGenericImport<JFingerprintConstant_SecurityLevelClass, JFingerprintConstant_SecurityLevel>) end;

  JFingerprintConstant_TrustFingerExceptionClass = interface(JObjectClass)
    ['{694D3BE0-D236-4E9C-81CD-1769780884FC}']
    {class} function _GetAPI_NOT_SUPPORTED: Integer; cdecl;
    {class} function _GetCAPTURE_ERROR: Integer; cdecl;
    {class} function _GetCAPTURE_FAIL: Integer; cdecl;
    {class} function _GetDEVICE_ALREADY_CLOSED: Integer; cdecl;
    {class} function _GetDEVICE_ALREADY_OPENED: Integer; cdecl;
    {class} function _GetDEVICE_GET_CONNECTION_FAIL: Integer; cdecl;
    {class} function _GetDEVICE_GET_ENDPOINT_FAIL: Integer; cdecl;
    {class} function _GetDEVICE_GET_INTERFACE_FAIL: Integer; cdecl;
    {class} function _GetDEVICE_NOT_ACCESSIBLE: Integer; cdecl;
    {class} function _GetDEVICE_NOT_AUTHORILIZED: Integer; cdecl;
    {class} function _GetDEVICE_NOT_CONNECTED: Integer; cdecl;
    {class} function _GetDEVICE_NOT_FOUND: Integer; cdecl;
    {class} function _GetDEVICE_NOT_INITIALIZED: Integer; cdecl;
    {class} function _GetDEVICE_NOT_OPENED: Integer; cdecl;
    {class} function _GetDEVICE_NO_USB_HOST_FEATURE: Integer; cdecl;
    {class} function _GetFAIL: Integer; cdecl;
    {class} function _GetFAKE_FINGER: Integer; cdecl;
    {class} function _GetFP_BAD_IMAGE: Integer; cdecl;
    {class} function _GetFP_FEATURE_CONVERT_ERROR: Integer; cdecl;
    {class} function _GetFP_INVALID_DATA: Integer; cdecl;
    {class} function _GetGENERALIZE_TEMPLATE_FAIL_NOT_SAME_FINGER: Integer; cdecl;
    {class} function _GetINIT_ALGORITHM_ERROR: Integer; cdecl;
    {class} function _GetINVALID_DEVICE_INDEX: Integer; cdecl;
    {class} function _GetINVALID_PARAM_VALUE: Integer; cdecl;
    {class} function _GetNOT_ENOUGH_MEMORY: Integer; cdecl;
    {class} function _GetNO_FINGER: Integer; cdecl;
    {class} function _GetSUCCESS: Integer; cdecl;
    {class} function _GetTIME_OUT: Integer; cdecl;
    {class} function _GetTRANSFER_CONTROL_ERROR: Integer; cdecl;
    {class} function _GetTRANSFER_PACKET_ERROR: Integer; cdecl;
    {class} function _GetTRANSFER_READ_ERROR: Integer; cdecl;
    {class} function _GetTRANSFER_WRITE_ERROR: Integer; cdecl;
    {class} function _GetUNKNOW_ERROR: Integer; cdecl;
    {class} function _GetUNKNOW_TYPE: Integer; cdecl;
    {class} function init: JFingerprintConstant_TrustFingerException; cdecl;//Deprecated
    {class} property API_NOT_SUPPORTED: Integer read _GetAPI_NOT_SUPPORTED;
    {class} property CAPTURE_ERROR: Integer read _GetCAPTURE_ERROR;
    {class} property CAPTURE_FAIL: Integer read _GetCAPTURE_FAIL;
    {class} property DEVICE_ALREADY_CLOSED: Integer read _GetDEVICE_ALREADY_CLOSED;
    {class} property DEVICE_ALREADY_OPENED: Integer read _GetDEVICE_ALREADY_OPENED;
    {class} property DEVICE_GET_CONNECTION_FAIL: Integer read _GetDEVICE_GET_CONNECTION_FAIL;
    {class} property DEVICE_GET_ENDPOINT_FAIL: Integer read _GetDEVICE_GET_ENDPOINT_FAIL;
    {class} property DEVICE_GET_INTERFACE_FAIL: Integer read _GetDEVICE_GET_INTERFACE_FAIL;
    {class} property DEVICE_NOT_ACCESSIBLE: Integer read _GetDEVICE_NOT_ACCESSIBLE;
    {class} property DEVICE_NOT_AUTHORILIZED: Integer read _GetDEVICE_NOT_AUTHORILIZED;
    {class} property DEVICE_NOT_CONNECTED: Integer read _GetDEVICE_NOT_CONNECTED;
    {class} property DEVICE_NOT_FOUND: Integer read _GetDEVICE_NOT_FOUND;
    {class} property DEVICE_NOT_INITIALIZED: Integer read _GetDEVICE_NOT_INITIALIZED;
    {class} property DEVICE_NOT_OPENED: Integer read _GetDEVICE_NOT_OPENED;
    {class} property DEVICE_NO_USB_HOST_FEATURE: Integer read _GetDEVICE_NO_USB_HOST_FEATURE;
    {class} property FAIL: Integer read _GetFAIL;
    {class} property FAKE_FINGER: Integer read _GetFAKE_FINGER;
    {class} property FP_BAD_IMAGE: Integer read _GetFP_BAD_IMAGE;
    {class} property FP_FEATURE_CONVERT_ERROR: Integer read _GetFP_FEATURE_CONVERT_ERROR;
    {class} property FP_INVALID_DATA: Integer read _GetFP_INVALID_DATA;
    {class} property GENERALIZE_TEMPLATE_FAIL_NOT_SAME_FINGER: Integer read _GetGENERALIZE_TEMPLATE_FAIL_NOT_SAME_FINGER;
    {class} property INIT_ALGORITHM_ERROR: Integer read _GetINIT_ALGORITHM_ERROR;
    {class} property INVALID_DEVICE_INDEX: Integer read _GetINVALID_DEVICE_INDEX;
    {class} property INVALID_PARAM_VALUE: Integer read _GetINVALID_PARAM_VALUE;
    {class} property NOT_ENOUGH_MEMORY: Integer read _GetNOT_ENOUGH_MEMORY;
    {class} property NO_FINGER: Integer read _GetNO_FINGER;
    {class} property SUCCESS: Integer read _GetSUCCESS;
    {class} property TIME_OUT: Integer read _GetTIME_OUT;
    {class} property TRANSFER_CONTROL_ERROR: Integer read _GetTRANSFER_CONTROL_ERROR;
    {class} property TRANSFER_PACKET_ERROR: Integer read _GetTRANSFER_PACKET_ERROR;
    {class} property TRANSFER_READ_ERROR: Integer read _GetTRANSFER_READ_ERROR;
    {class} property TRANSFER_WRITE_ERROR: Integer read _GetTRANSFER_WRITE_ERROR;
    {class} property UNKNOW_ERROR: Integer read _GetUNKNOW_ERROR;
    {class} property UNKNOW_TYPE: Integer read _GetUNKNOW_TYPE;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintConstant$TrustFingerException')]
  JFingerprintConstant_TrustFingerException = interface(JObject)
    ['{5B8743CE-F544-42A7-BAC5-02FEE5DDDD3C}']
  end;
  TJFingerprintConstant_TrustFingerException = class(TJavaGenericImport<JFingerprintConstant_TrustFingerExceptionClass, JFingerprintConstant_TrustFingerException>) end;

  JFingerprintListenerClass = interface(JIInterfaceClass)
    ['{76F15EB6-8EBA-48D6-8070-A24CB04A3243}']
    {class} procedure onSuccess(fingerprintResult: JFingerprintResult); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintListener')]
  JFingerprintListener = interface(JIInterface)
    ['{94B7C86C-507B-4DC3-9A17-62BA7240563A}']
    procedure onFail(i: Integer); cdecl;
    procedure onProcess(fingerprintResult: JFingerprintResult); cdecl;
  end;
  TJFingerprintListener = class(TJavaGenericImport<JFingerprintListenerClass, JFingerprintListener>) end;

  JFingerprintListener_StubClass = interface(JBinderClass)
    ['{5C76B19A-16D0-49F6-B4E9-5BBEB497F456}']
    {class} function _GetTRANSACTION_onFail: Integer; cdecl;
    {class} function _GetTRANSACTION_onProcess: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JFingerprintListener; cdecl;
    {class} function init: JFingerprintListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onFail: Integer read _GetTRANSACTION_onFail;
    {class} property TRANSACTION_onProcess: Integer read _GetTRANSACTION_onProcess;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintListener$Stub')]
  JFingerprintListener_Stub = interface(JBinder)
    ['{E34B1C59-0558-4AF0-A16A-ACF0FE820288}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJFingerprintListener_Stub = class(TJavaGenericImport<JFingerprintListener_StubClass, JFingerprintListener_Stub>) end;

  JFingerprintListener_Stub_ProxyClass = interface(JFingerprintListenerClass)
    ['{BC2C4424-1E7E-4899-B655-DB16DE00C364}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintListener$Stub$Proxy')]
  JFingerprintListener_Stub_Proxy = interface(JFingerprintListener)
    ['{ED2686DB-7167-4CF5-99B1-71D1DC8385A6}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onFail(i: Integer); cdecl;
    procedure onProcess(fingerprintResult: JFingerprintResult); cdecl;
    procedure onSuccess(fingerprintResult: JFingerprintResult); cdecl;
  end;
  TJFingerprintListener_Stub_Proxy = class(TJavaGenericImport<JFingerprintListener_Stub_ProxyClass, JFingerprintListener_Stub_Proxy>) end;

  JFingerprintParamClass = interface(JParcelableClass)
    ['{12CDDC89-7EB8-4D20-8464-92EA8B17F5AC}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JFingerprintParam; cdecl; overload;
    {class} function init(parcel: JParcel): JFingerprintParam; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintParam')]
  JFingerprintParam = interface(JParcelable)
    ['{D6278169-E7FD-4558-A8D2-85DC3DB8CC01}']
    function describeContents: Integer; cdecl;
    function getCompress: Integer; cdecl;
    function getFingerPosition: Integer; cdecl;
    function getFormat: Integer; cdecl;
    function getHeight: Integer; cdecl;
    function getLfdLevel: Integer; cdecl;
    function getSecurityLevel: Integer; cdecl;
    function getThreshold: Integer; cdecl;
    function getTimeOut: Int64; cdecl;
    function getWidth: Integer; cdecl;
    procedure setCompress(i: Integer); cdecl;
    procedure setFingerPosition(i: Integer); cdecl;
    procedure setFormat(i: Integer); cdecl;
    procedure setHeight(i: Integer); cdecl;
    procedure setLfdLevel(i: Integer); cdecl;
    procedure setSecurityLevel(i: Integer); cdecl;
    procedure setThreshold(i: Integer); cdecl;
    procedure setTimeOut(l: Int64); cdecl;
    procedure setWidth(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJFingerprintParam = class(TJavaGenericImport<JFingerprintParamClass, JFingerprintParam>) end;

  JFingerprintParam_1Class = interface(JParcelable_CreatorClass)
    ['{03103DE6-611A-4F07-8D13-1C492BCAA73D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintParam$1')]
  JFingerprintParam_1 = interface(JParcelable_Creator)
    ['{50C959C9-7F41-4168-993C-A7EBA02A4180}']
    function createFromParcel(parcel: JParcel): JFingerprintParam; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JFingerprintParam>; cdecl;
  end;
  TJFingerprintParam_1 = class(TJavaGenericImport<JFingerprintParam_1Class, JFingerprintParam_1>) end;

  JFingerprintResultClass = interface(JParcelableClass)
    ['{C3707DFF-1533-4177-A773-5A12FF675C5C}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JFingerprintResult; cdecl; overload;
    {class} function init(parcel: JParcel): JFingerprintResult; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintResult')]
  JFingerprintResult = interface(JParcelable)
    ['{B4E4735E-DBA4-47A1-8190-E3D390CB8D37}']
    function describeContents: Integer; cdecl;
    function getFpData: TJavaArray<Byte>; cdecl;
    function getFpFeatureData: TJavaArray<Byte>; cdecl;
    function getFpImgData: TJavaArray<Byte>; cdecl;
    function getImageQuality: Integer; cdecl;
    procedure setFpData(b: TJavaArray<Byte>); cdecl;
    procedure setFpFeatureData(b: TJavaArray<Byte>); cdecl;
    procedure setFpImgData(b: TJavaArray<Byte>); cdecl;
    procedure setImageQuality(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJFingerprintResult = class(TJavaGenericImport<JFingerprintResultClass, JFingerprintResult>) end;

  JFingerprintResult_1Class = interface(JParcelable_CreatorClass)
    ['{13FB60E9-FB98-4A5B-A3C3-95321BF9D472}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintResult$1')]
  JFingerprintResult_1 = interface(JParcelable_Creator)
    ['{7086253F-46B6-4C71-814D-5FA6BFD82760}']
    function createFromParcel(parcel: JParcel): JFingerprintResult; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JFingerprintResult>; cdecl;
  end;
  TJFingerprintResult_1 = class(TJavaGenericImport<JFingerprintResult_1Class, JFingerprintResult_1>) end;

  JFingerprintVerifyResultClass = interface(JParcelableClass)
    ['{736B0487-9D3A-4434-93EE-FD96B6AA26C0}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(parcel: JParcel): JFingerprintVerifyResult; cdecl; overload;
    {class} function init(i: Integer; i1: Integer; b: Boolean): JFingerprintVerifyResult; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintVerifyResult')]
  JFingerprintVerifyResult = interface(JParcelable)
    ['{757C2CF6-577B-429F-8B14-F7FC3711C6F0}']
    function _Geterror: Integer; cdecl;
    procedure _Seterror(Value: Integer); cdecl;
    function _GetisMatched: Boolean; cdecl;
    function _Getsimilarity: Integer; cdecl;
    procedure _Setsimilarity(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getError: Integer; cdecl;//Deprecated
    function getSimilarity: Integer; cdecl;
    function isMatched: Boolean; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property error: Integer read _Geterror write _Seterror;
    property isMatched: Boolean read _GetisMatched;
    property similarity: Integer read _Getsimilarity write _Setsimilarity;
  end;
  TJFingerprintVerifyResult = class(TJavaGenericImport<JFingerprintVerifyResultClass, JFingerprintVerifyResult>) end;

  JFingerprintVerifyResult_1Class = interface(JParcelable_CreatorClass)
    ['{B5E25663-4A5A-45AB-90D6-40333129C5E5}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/fingerprint/FingerprintVerifyResult$1')]
  JFingerprintVerifyResult_1 = interface(JParcelable_Creator)
    ['{014A2258-876F-4DD8-8544-DF9A34A5D9BB}']
    function createFromParcel(parcel: JParcel): JFingerprintVerifyResult; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JFingerprintVerifyResult>; cdecl;
  end;
  TJFingerprintVerifyResult_1 = class(TJavaGenericImport<JFingerprintVerifyResult_1Class, JFingerprintVerifyResult_1>) end;

  JAidlICCardClass = interface(JIInterfaceClass)
    ['{E4E33861-B96F-4299-94AA-7FB5D8C52D24}']
    {class} function open: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/iccard/AidlICCard')]
  JAidlICCard = interface(JIInterface)
    ['{B411E503-CB4C-4207-9DF1-F06A81463588}']
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function close: Boolean; cdecl;
    function halt: Integer; cdecl;
    function isExist: Boolean; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
  end;
  TJAidlICCard = class(TJavaGenericImport<JAidlICCardClass, JAidlICCard>) end;

  JAidlICCard_StubClass = interface(JBinderClass)
    ['{78C02DBF-78C5-45E0-8530-AD159B857BC8}']
    {class} function _GetTRANSACTION_apduComm: Integer; cdecl;
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_halt: Integer; cdecl;
    {class} function _GetTRANSACTION_isExist: Integer; cdecl;
    {class} function _GetTRANSACTION_reset: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlICCard; cdecl;
    {class} function init: JAidlICCard_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_apduComm: Integer read _GetTRANSACTION_apduComm;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_halt: Integer read _GetTRANSACTION_halt;
    {class} property TRANSACTION_isExist: Integer read _GetTRANSACTION_isExist;
    {class} property TRANSACTION_reset: Integer read _GetTRANSACTION_reset;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/iccard/AidlICCard$Stub')]
  JAidlICCard_Stub = interface(JBinder)
    ['{7FE2D14A-1DBD-4318-A90B-630EF362518C}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlICCard_Stub = class(TJavaGenericImport<JAidlICCard_StubClass, JAidlICCard_Stub>) end;

  JAidlICCard_Stub_ProxyClass = interface(JAidlICCardClass)
    ['{8547F433-86FB-4D13-978C-AFEA92DC647D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/iccard/AidlICCard$Stub$Proxy')]
  JAidlICCard_Stub_Proxy = interface(JAidlICCard)
    ['{286E8BD4-97C5-40D8-8CAD-F53E316DB8A2}']
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function asBinder: JIBinder; cdecl;
    function close: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function halt: Integer; cdecl;
    function isExist: Boolean; cdecl;
    function open: Boolean; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
  end;
  TJAidlICCard_Stub_Proxy = class(TJavaGenericImport<JAidlICCard_Stub_ProxyClass, JAidlICCard_Stub_Proxy>) end;

  JAidlKeyManagerClass = interface(JIInterfaceClass)
    ['{0305517C-3B90-49A3-B9CB-B78835ADF7E8}']
    {class} function loadSymKey(keyType: JKeyType; i: Integer; symAlgType: JSymAlgType; b: TJavaArray<Byte>; i1: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AidlKeyManager')]
  JAidlKeyManager = interface(JIInterface)
    ['{A936AF7D-7AFF-4CA2-A22C-5ACF790E72AC}']
    function asyCalculateByIndex(asyKeyType: JAsyKeyType; asyCalType: JAsyCalType; i: Integer; b: TJavaArray<Byte>; i1: Integer; asyPaddingMode: JAsyPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function deleteAllKey: Integer; cdecl;
    function deleteKeyByIndex(keyType: JKeyType; i: Integer): Integer; cdecl;
    function dukptCalculateByIndex(keyType: JKeyType; i: Integer; keyUsage: JKeyUsage; symAlgMode: JSymAlgMode; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: Integer; symPaddingMode: JSymPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function genAsyKeyPair(asyKeyType: JAsyKeyType; i: Integer; i1: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function getDukptKSN(dukptKeyType: JDukptKeyType; i: Integer; increaseMode: JIncreaseMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function getKeyKCV(keyType: JKeyType; i: Integer; kCVVerifyMode: JKCVVerifyMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function getKeyStatus(keyType: JKeyType; i: Integer): Integer; cdecl;
    function getRandom(i: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadAsyKey(asymmetricKey: JAsymmetricKey): Integer; cdecl;
    function loadDukptKey(keyType: JKeyType; i: Integer; symAlgType: JSymAlgType; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadDukptProtectKey(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; keyType1: JKeyType; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadSymProtectKey(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; keyType1: JKeyType; i1: Integer; b: TJavaArray<Byte>; i2: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function macCalculateByIndex(keyType: JKeyType; i: Integer; macAlgMode: JMacAlgMode; b: TJavaArray<Byte>; i1: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function readAsyKey(asyKeyType: JAsyKeyType; i: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function symCalculateByIndex(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: Integer; symPaddingMode: JSymPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
  end;
  TJAidlKeyManager = class(TJavaGenericImport<JAidlKeyManagerClass, JAidlKeyManager>) end;

  JAidlKeyManager_StubClass = interface(JBinderClass)
    ['{CE5ACC35-396B-4FFD-8A1E-669D41F00707}']
    {class} function _GetTRANSACTION_deleteKeyByIndex: Integer; cdecl;
    {class} function _GetTRANSACTION_getDukptKSN: Integer; cdecl;
    {class} function _GetTRANSACTION_loadSymProtectKey: Integer; cdecl;
    {class} function _GetTRANSACTION_symCalculateByIndex: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlKeyManager; cdecl;
    {class} function init: JAidlKeyManager_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_deleteKeyByIndex: Integer read _GetTRANSACTION_deleteKeyByIndex;
    {class} property TRANSACTION_getDukptKSN: Integer read _GetTRANSACTION_getDukptKSN;
    {class} property TRANSACTION_loadSymProtectKey: Integer read _GetTRANSACTION_loadSymProtectKey;
    {class} property TRANSACTION_symCalculateByIndex: Integer read _GetTRANSACTION_symCalculateByIndex;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AidlKeyManager$Stub')]
  JAidlKeyManager_Stub = interface(JBinder)
    ['{EB6037E9-DC1F-4A97-90DC-A7743D56298C}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlKeyManager_Stub = class(TJavaGenericImport<JAidlKeyManager_StubClass, JAidlKeyManager_Stub>) end;

  JAidlKeyManager_Stub_ProxyClass = interface(JAidlKeyManagerClass)
    ['{86A02399-B3F5-46CE-AF2C-9B21BCDFD849}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AidlKeyManager$Stub$Proxy')]
  JAidlKeyManager_Stub_Proxy = interface(JAidlKeyManager)
    ['{14AC8194-9B10-4595-B531-57B4E43A6B84}']
    function asBinder: JIBinder; cdecl;
    function asyCalculateByIndex(asyKeyType: JAsyKeyType; asyCalType: JAsyCalType; i: Integer; b: TJavaArray<Byte>; i1: Integer; asyPaddingMode: JAsyPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function deleteAllKey: Integer; cdecl;
    function deleteKeyByIndex(keyType: JKeyType; i: Integer): Integer; cdecl;
    function dukptCalculateByIndex(keyType: JKeyType; i: Integer; keyUsage: JKeyUsage; symAlgMode: JSymAlgMode; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: Integer; symPaddingMode: JSymPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function genAsyKeyPair(asyKeyType: JAsyKeyType; i: Integer; i1: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function getDukptKSN(dukptKeyType: JDukptKeyType; i: Integer; increaseMode: JIncreaseMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getKeyKCV(keyType: JKeyType; i: Integer; kCVVerifyMode: JKCVVerifyMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function getKeyStatus(keyType: JKeyType; i: Integer): Integer; cdecl;
    function getRandom(i: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadAsyKey(asymmetricKey: JAsymmetricKey): Integer; cdecl;
    function loadDukptKey(keyType: JKeyType; i: Integer; symAlgType: JSymAlgType; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadDukptProtectKey(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; keyType1: JKeyType; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadSymKey(keyType: JKeyType; i: Integer; symAlgType: JSymAlgType; b: TJavaArray<Byte>; i1: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadSymProtectKey(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; keyType1: JKeyType; i1: Integer; b: TJavaArray<Byte>; i2: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function macCalculateByIndex(keyType: JKeyType; i: Integer; macAlgMode: JMacAlgMode; b: TJavaArray<Byte>; i1: Integer; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function readAsyKey(asyKeyType: JAsyKeyType; i: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function symCalculateByIndex(keyType: JKeyType; i: Integer; symAlgMode: JSymAlgMode; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: Integer; symPaddingMode: JSymPaddingMode; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
  end;
  TJAidlKeyManager_Stub_Proxy = class(TJavaGenericImport<JAidlKeyManager_Stub_ProxyClass, JAidlKeyManager_Stub_Proxy>) end;

  JAlgTypeClass = interface(JEnumClass)
    ['{F57A41A0-F641-4844-B0B7-1E355A432D6F}']
    {class} function _GetALG_TYPE_ECC: JAlgType; cdecl;
    {class} function _GetALG_TYPE_RSA: JAlgType; cdecl;
    {class} function _GetALG_TYPE_SYM: JAlgType; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function valueOf(string_: JString): JAlgType; cdecl;
    {class} function values: TJavaObjectArray<JAlgType>; cdecl;
    {class} property ALG_TYPE_ECC: JAlgType read _GetALG_TYPE_ECC;
    {class} property ALG_TYPE_RSA: JAlgType read _GetALG_TYPE_RSA;
    {class} property ALG_TYPE_SYM: JAlgType read _GetALG_TYPE_SYM;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AlgType')]
  JAlgType = interface(JEnum)
    ['{AA159C53-84BB-43D2-9C67-329CF0661BD5}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAlgType = class(TJavaGenericImport<JAlgTypeClass, JAlgType>) end;

  JAlgType_1Class = interface(JParcelable_CreatorClass)
    ['{C3148457-309B-4298-93C1-67B3DACFF804}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AlgType$1')]
  JAlgType_1 = interface(JParcelable_Creator)
    ['{6C2B8D44-B0D1-405E-8CE7-6ED095090FF0}']
    function createFromParcel(parcel: JParcel): JAlgType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAlgType>; cdecl;
  end;
  TJAlgType_1 = class(TJavaGenericImport<JAlgType_1Class, JAlgType_1>) end;

  JAsyCalTypeClass = interface(JEnumClass)
    ['{0BBFCE69-22E9-4F6D-891E-1EF7E1214F94}']
    {class} function _GetASY_CAL_PRI: JAsyCalType; cdecl;
    {class} function _GetASY_CAL_PUB: JAsyCalType; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function valueOf(string_: JString): JAsyCalType; cdecl;
    {class} function values: TJavaObjectArray<JAsyCalType>; cdecl;//Deprecated
    {class} property ASY_CAL_PRI: JAsyCalType read _GetASY_CAL_PRI;
    {class} property ASY_CAL_PUB: JAsyCalType read _GetASY_CAL_PUB;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyCalType')]
  JAsyCalType = interface(JEnum)
    ['{851622B2-234E-476D-88F5-B4BB8EAF702C}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAsyCalType = class(TJavaGenericImport<JAsyCalTypeClass, JAsyCalType>) end;

  JAsyCalType_1Class = interface(JParcelable_CreatorClass)
    ['{B538771A-712F-4F35-B1E2-82A75AF25146}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyCalType$1')]
  JAsyCalType_1 = interface(JParcelable_Creator)
    ['{A450931B-86E6-44E9-87C4-F7172350383C}']
    function createFromParcel(parcel: JParcel): JAsyCalType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAsyCalType>; cdecl;
  end;
  TJAsyCalType_1 = class(TJavaGenericImport<JAsyCalType_1Class, JAsyCalType_1>) end;

  JAsyKeyPairTypeClass = interface(JParcelableClass)
    ['{CFAE863D-392D-47FF-8532-DA1C77761F22}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JAsyKeyPairType; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>): JAsyKeyPairType; cdecl; overload;
//    {class} function init(parcel: JParcel; 1: JAsyKeyPairType_1): JAsyKeyPairType; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyKeyPairType')]
  JAsyKeyPairType = interface(JParcelable)
    ['{005FB120-9BA3-4286-B19B-5CE361789B5F}']
    function analyseData(b: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl;
    function describeContents: Integer; cdecl;
    function getData: TJavaArray<Byte>; cdecl;
    function getECCKeyPubX: TJavaArray<Byte>; cdecl;
    function getECCKeyPubY: TJavaArray<Byte>; cdecl;
    function getRsaKeyBits: Integer; cdecl;
    function getRsaKeyModulus: TJavaArray<Byte>; cdecl;
    function getRsaKeyPubExp: TJavaArray<Byte>; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure setData(b: TJavaArray<Byte>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAsyKeyPairType = class(TJavaGenericImport<JAsyKeyPairTypeClass, JAsyKeyPairType>) end;

  JAsyKeyPairType_1Class = interface(JParcelable_CreatorClass)
    ['{AA50642E-049C-4967-BE91-6315A84DF698}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyKeyPairType$1')]
  JAsyKeyPairType_1 = interface(JParcelable_Creator)
    ['{396BDD3A-636D-47E6-90B8-9DFFEB3298EB}']
    function createFromParcel(parcel: JParcel): JAsyKeyPairType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAsyKeyPairType>; cdecl;
  end;
  TJAsyKeyPairType_1 = class(TJavaGenericImport<JAsyKeyPairType_1Class, JAsyKeyPairType_1>) end;

  JAsyKeyTypeClass = interface(JEnumClass)
    ['{3EB63F14-F42C-44F2-B550-78EE91F91A4E}']
    {class} function _GetASY_KEY_TYPE_ECC: JAsyKeyType; cdecl;
    {class} function _GetASY_KEY_TYPE_RSA: JAsyKeyType; cdecl;
    {class} function _GetASY_KEY_TYPE_SM2: JAsyKeyType; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function valueOf(string_: JString): JAsyKeyType; cdecl;
    {class} function values: TJavaObjectArray<JAsyKeyType>; cdecl;
    {class} property ASY_KEY_TYPE_ECC: JAsyKeyType read _GetASY_KEY_TYPE_ECC;
    {class} property ASY_KEY_TYPE_RSA: JAsyKeyType read _GetASY_KEY_TYPE_RSA;
    {class} property ASY_KEY_TYPE_SM2: JAsyKeyType read _GetASY_KEY_TYPE_SM2;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyKeyType')]
  JAsyKeyType = interface(JEnum)
    ['{0F9F698D-DE83-4828-9821-D6D3CFBF859C}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAsyKeyType = class(TJavaGenericImport<JAsyKeyTypeClass, JAsyKeyType>) end;

  JAsyKeyType_1Class = interface(JParcelable_CreatorClass)
    ['{A767B77E-3B63-4D09-AD45-C1828437B125}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyKeyType$1')]
  JAsyKeyType_1 = interface(JParcelable_Creator)
    ['{DA79F4DC-DA69-4F06-A73D-1E4A72FEB305}']
    function createFromParcel(parcel: JParcel): JAsyKeyType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAsyKeyType>; cdecl;
  end;
  TJAsyKeyType_1 = class(TJavaGenericImport<JAsyKeyType_1Class, JAsyKeyType_1>) end;

  JAsyPaddingModeClass = interface(JEnumClass)
    ['{2A003EBC-F9F4-4377-A24A-59E8C5F398E5}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetNO_PADDING: JAsyPaddingMode; cdecl;
    {class} function _GetPKCS1_PADDING_FF: JAsyPaddingMode; cdecl;
    {class} function _GetPKCS1_PADDING_RANDOM: JAsyPaddingMode; cdecl;
    {class} function _GetPKCS1_PADDING_ZERO: JAsyPaddingMode; cdecl;
    {class} function valueOf(string_: JString): JAsyPaddingMode; cdecl;
    {class} function values: TJavaObjectArray<JAsyPaddingMode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property NO_PADDING: JAsyPaddingMode read _GetNO_PADDING;
    {class} property PKCS1_PADDING_FF: JAsyPaddingMode read _GetPKCS1_PADDING_FF;
    {class} property PKCS1_PADDING_RANDOM: JAsyPaddingMode read _GetPKCS1_PADDING_RANDOM;
    {class} property PKCS1_PADDING_ZERO: JAsyPaddingMode read _GetPKCS1_PADDING_ZERO;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyPaddingMode')]
  JAsyPaddingMode = interface(JEnum)
    ['{0C2B60C1-DB15-4CF0-A86F-65BB61F616CB}']
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAsyPaddingMode = class(TJavaGenericImport<JAsyPaddingModeClass, JAsyPaddingMode>) end;

  JAsyPaddingMode_1Class = interface(JParcelable_CreatorClass)
    ['{6F7571EC-7061-4F75-A1B8-0807E93CD815}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsyPaddingMode$1')]
  JAsyPaddingMode_1 = interface(JParcelable_Creator)
    ['{A54F7C3D-2D5A-44B8-B27E-7E134A11A745}']
    function createFromParcel(parcel: JParcel): JAsyPaddingMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAsyPaddingMode>; cdecl;
  end;
  TJAsyPaddingMode_1 = class(TJavaGenericImport<JAsyPaddingMode_1Class, JAsyPaddingMode_1>) end;

  JAsymmetricKeyClass = interface(JParcelableClass)
    ['{268B9D7C-3970-4DCD-9884-49F4885ACCA3}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(parcel: JParcel): JAsymmetricKey; cdecl; overload;
    {class} function init(asyKeyType: JAsyKeyType; i: Integer): JAsymmetricKey; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsymmetricKey')]
  JAsymmetricKey = interface(JParcelable)
    ['{6F4C76A5-6002-4C8B-8B3B-5CAFBBFD37FF}']
    function describeContents: Integer; cdecl;
    function getAsyKeyECCPri: TJavaArray<Byte>; cdecl;
    function getAsyKeyECCPubX: TJavaArray<Byte>; cdecl;
    function getAsyKeyECCPubY: TJavaArray<Byte>; cdecl;
    function getAsyKeyRsaD: TJavaArray<Byte>; cdecl;
    function getAsyKeyRsaE: TJavaArray<Byte>; cdecl;
    function getAsyKeyRsaN: TJavaArray<Byte>; cdecl;
    function getAsyKeyRsaP: TJavaArray<Byte>; cdecl;
    function getAsyKeyRsaQ: TJavaArray<Byte>; cdecl;
    function getKeyData: TJavaArray<Byte>; cdecl;
    procedure setAsyKeyECCKey(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyECCPri(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyECCPubX(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyECCPubY(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaD(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaE(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaKey(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaN(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaP(b: TJavaArray<Byte>); cdecl;
    procedure setAsyKeyRsaQ(b: TJavaArray<Byte>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJAsymmetricKey = class(TJavaGenericImport<JAsymmetricKeyClass, JAsymmetricKey>) end;

  JAsymmetricKey_1Class = interface(JParcelable_CreatorClass)
    ['{9B2F15F6-09D4-4B40-A82A-CBC6F1602F0B}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/AsymmetricKey$1')]
  JAsymmetricKey_1 = interface(JParcelable_Creator)
    ['{F84E8CFB-DA98-46AA-ADCE-04031131A605}']
    function createFromParcel(parcel: JParcel): JAsymmetricKey; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JAsymmetricKey>; cdecl;
  end;
  TJAsymmetricKey_1 = class(TJavaGenericImport<JAsymmetricKey_1Class, JAsymmetricKey_1>) end;

  JBytesTypeValueClass = interface(JParcelableClass)
    ['{60853932-DBAF-49A6-9133-D8F2D50261A6}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JBytesTypeValue; cdecl; overload;
    {class} function init(b: TJavaArray<Byte>): JBytesTypeValue; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/BytesTypeValue')]
  JBytesTypeValue = interface(JParcelable)
    ['{9D395BC3-786B-4754-8493-357751F8861A}']
    function describeContents: Integer; cdecl;
    function getData: TJavaArray<Byte>; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure setData(b: TJavaArray<Byte>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJBytesTypeValue = class(TJavaGenericImport<JBytesTypeValueClass, JBytesTypeValue>) end;

  JBytesTypeValue_1Class = interface(JParcelable_CreatorClass)
    ['{8857B1C1-FF8D-4DD1-BD3C-893E96C93CCE}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/BytesTypeValue$1')]
  JBytesTypeValue_1 = interface(JParcelable_Creator)
    ['{1CC8ACBD-44E7-470B-9855-2EFE43BEF20C}']
    function createFromParcel(parcel: JParcel): JBytesTypeValue; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JBytesTypeValue>; cdecl;
  end;
  TJBytesTypeValue_1 = class(TJavaGenericImport<JBytesTypeValue_1Class, JBytesTypeValue_1>) end;

  JDukptKeyTypeClass = interface(JEnumClass)
    ['{80BC83F7-49D6-467E-93FB-9FB3C5613F43}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetDUKPT_KEY_AES: JDukptKeyType; cdecl;
    {class} function _GetDUKPT_KEY_DES: JDukptKeyType; cdecl;
    {class} function valueOf(string_: JString): JDukptKeyType; cdecl;
    {class} function values: TJavaObjectArray<JDukptKeyType>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property DUKPT_KEY_AES: JDukptKeyType read _GetDUKPT_KEY_AES;
    {class} property DUKPT_KEY_DES: JDukptKeyType read _GetDUKPT_KEY_DES;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/DukptKeyType')]
  JDukptKeyType = interface(JEnum)
    ['{A985C5F5-8973-4D28-99D4-E4354586A4F3}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJDukptKeyType = class(TJavaGenericImport<JDukptKeyTypeClass, JDukptKeyType>) end;

  JDukptKeyType_1Class = interface(JParcelable_CreatorClass)
    ['{92E25FC4-C3C1-4AD6-AAD6-BB4E969957C8}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/DukptKeyType$1')]
  JDukptKeyType_1 = interface(JParcelable_Creator)
    ['{517C7A57-A0AB-4705-A48B-FEB93AF8841B}']
    function createFromParcel(parcel: JParcel): JDukptKeyType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JDukptKeyType>; cdecl;
  end;
  TJDukptKeyType_1 = class(TJavaGenericImport<JDukptKeyType_1Class, JDukptKeyType_1>) end;

  JIncreaseModeClass = interface(JEnumClass)
    ['{3A6933F1-AAAA-4043-A302-156C1A1BC8E9}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetINCREASE_MODE_AFTER: JIncreaseMode; cdecl;
    {class} function _GetINCREASE_MODE_BEFORE: JIncreaseMode; cdecl;
    {class} function _GetINCREASE_MODE_NULL: JIncreaseMode; cdecl;
    {class} function valueOf(string_: JString): JIncreaseMode; cdecl;
    {class} function values: TJavaObjectArray<JIncreaseMode>; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property INCREASE_MODE_AFTER: JIncreaseMode read _GetINCREASE_MODE_AFTER;
    {class} property INCREASE_MODE_BEFORE: JIncreaseMode read _GetINCREASE_MODE_BEFORE;
    {class} property INCREASE_MODE_NULL: JIncreaseMode read _GetINCREASE_MODE_NULL;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/IncreaseMode')]
  JIncreaseMode = interface(JEnum)
    ['{4A473975-B559-49C8-AE28-4116F77DA149}']
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJIncreaseMode = class(TJavaGenericImport<JIncreaseModeClass, JIncreaseMode>) end;

  JIncreaseMode_1Class = interface(JParcelable_CreatorClass)
    ['{88DCD68E-53E4-4076-BAC3-E04420E27334}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/IncreaseMode$1')]
  JIncreaseMode_1 = interface(JParcelable_Creator)
    ['{44D607B0-212B-42F4-A593-DE9678A766D5}']
    function createFromParcel(parcel: JParcel): JIncreaseMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JIncreaseMode>; cdecl;
  end;
  TJIncreaseMode_1 = class(TJavaGenericImport<JIncreaseMode_1Class, JIncreaseMode_1>) end;

  JIntArrayTypeValueClass = interface(JParcelableClass)
    ['{1A7E9AD7-9883-4BB3-A3AB-87D168B65A95}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JIntArrayTypeValue; cdecl; overload;
    {class} function init(i: TJavaArray<Integer>): JIntArrayTypeValue; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/IntArrayTypeValue')]
  JIntArrayTypeValue = interface(JParcelable)
    ['{2DE46302-74C3-4B67-ACBA-1702A0AE34CB}']
    function describeContents: Integer; cdecl;
    function getData: TJavaArray<Integer>; cdecl;
    procedure readFromParcel(parcel: JParcel); cdecl;
    procedure setData(i: TJavaArray<Integer>); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJIntArrayTypeValue = class(TJavaGenericImport<JIntArrayTypeValueClass, JIntArrayTypeValue>) end;

  JIntArrayTypeValue_1Class = interface(JParcelable_CreatorClass)
    ['{1CEFB5DE-9159-4E56-8ADD-FA83735F032C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/IntArrayTypeValue$1')]
  JIntArrayTypeValue_1 = interface(JParcelable_Creator)
    ['{775D5F27-05F9-4392-925D-B112050E5D2C}']
    function createFromParcel(parcel: JParcel): JIntArrayTypeValue; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JIntArrayTypeValue>; cdecl;
  end;
  TJIntArrayTypeValue_1 = class(TJavaGenericImport<JIntArrayTypeValue_1Class, JIntArrayTypeValue_1>) end;

  JKCVVerifyModeClass = interface(JEnumClass)
    ['{8F557063-92BA-46AE-B7F2-EFE3FAB6C391}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetKCV_ENCRYPT_CMAC: JKCVVerifyMode; cdecl;
    {class} function _GetKCV_ENCRYPT_SN: JKCVVerifyMode; cdecl;
    {class} function _GetKCV_ENCRYPT_ZERO: JKCVVerifyMode; cdecl;
    {class} function valueOf(string_: JString): JKCVVerifyMode; cdecl;
    {class} function values: TJavaObjectArray<JKCVVerifyMode>; cdecl;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property KCV_ENCRYPT_CMAC: JKCVVerifyMode read _GetKCV_ENCRYPT_CMAC;
    {class} property KCV_ENCRYPT_SN: JKCVVerifyMode read _GetKCV_ENCRYPT_SN;
    {class} property KCV_ENCRYPT_ZERO: JKCVVerifyMode read _GetKCV_ENCRYPT_ZERO;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KCVVerifyMode')]
  JKCVVerifyMode = interface(JEnum)
    ['{896792A9-14C2-47E2-9778-F3DBC2511D54}']
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJKCVVerifyMode = class(TJavaGenericImport<JKCVVerifyModeClass, JKCVVerifyMode>) end;

  JKCVVerifyMode_1Class = interface(JParcelable_CreatorClass)
    ['{32C1B2FE-05A7-46C7-A99C-FE058C265B55}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KCVVerifyMode$1')]
  JKCVVerifyMode_1 = interface(JParcelable_Creator)
    ['{758C1DE7-077F-49C9-A502-479D88CD203A}']
    function createFromParcel(parcel: JParcel): JKCVVerifyMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JKCVVerifyMode>; cdecl;
  end;
  TJKCVVerifyMode_1 = class(TJavaGenericImport<JKCVVerifyMode_1Class, JKCVVerifyMode_1>) end;

  JKeyManagerErrorCodeClass = interface(JObjectClass)
    ['{763A46B6-0F7F-4E49-A0D6-88EB5D7A4AA7}']
    {class} function _GetERROR_ALG_MODE: Integer; cdecl;
    {class} function _GetERROR_ALG_TYPE: Integer; cdecl;
    {class} function _GetERROR_CAL_DATA: Integer; cdecl;
    {class} function _GetERROR_DATA_LENGTH: Integer; cdecl;
    {class} function _GetERROR_DATA_NULL: Integer; cdecl;
    {class} function _GetERROR_KEY_INDEX: Integer; cdecl;
    {class} function _GetERROR_KEY_TYPE: Integer; cdecl;
    {class} function _GetERROR_KEY_TYPE_NO_SUPPORT: Integer; cdecl;
    {class} function _GetERROR_MODE_NO_SUPPORT: Integer; cdecl;
    {class} function _GetERROR_PADDING_MODE: Integer; cdecl;
    {class} function _GetERROR_PARAMETER: Integer; cdecl;
    {class} function _GetSUCCESS: Integer; cdecl;
    {class} function init: JKeyManagerErrorCode; cdecl;//Deprecated
    {class} property ERROR_ALG_MODE: Integer read _GetERROR_ALG_MODE;
    {class} property ERROR_ALG_TYPE: Integer read _GetERROR_ALG_TYPE;
    {class} property ERROR_CAL_DATA: Integer read _GetERROR_CAL_DATA;
    {class} property ERROR_DATA_LENGTH: Integer read _GetERROR_DATA_LENGTH;
    {class} property ERROR_DATA_NULL: Integer read _GetERROR_DATA_NULL;
    {class} property ERROR_KEY_INDEX: Integer read _GetERROR_KEY_INDEX;
    {class} property ERROR_KEY_TYPE: Integer read _GetERROR_KEY_TYPE;
    {class} property ERROR_KEY_TYPE_NO_SUPPORT: Integer read _GetERROR_KEY_TYPE_NO_SUPPORT;
    {class} property ERROR_MODE_NO_SUPPORT: Integer read _GetERROR_MODE_NO_SUPPORT;
    {class} property ERROR_PADDING_MODE: Integer read _GetERROR_PADDING_MODE;
    {class} property ERROR_PARAMETER: Integer read _GetERROR_PARAMETER;
    {class} property SUCCESS: Integer read _GetSUCCESS;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KeyManagerErrorCode')]
  JKeyManagerErrorCode = interface(JObject)
    ['{8651D13B-59CD-4884-9240-A519FBBD9D2B}']
  end;
  TJKeyManagerErrorCode = class(TJavaGenericImport<JKeyManagerErrorCodeClass, JKeyManagerErrorCode>) end;

  JKeyTypeClass = interface(JEnumClass)
    ['{DAB679F1-89B0-42AD-9D49-A2CB79EC2F48}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetKEY_TYPE_DAM_KEY: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DKEY: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_2TDES: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_3TDES: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_AES128: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_AES192: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_AES256: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_BDK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_AES_IPEK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_DES_BDK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_DES_IPEK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_DUKPT_DES_KSN: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_FIXED_MAK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_FIXED_PEK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_FIXED_TDK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_MAK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_NULL: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_PEK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_PROCESS_KEY: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_ROOT: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_TDK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_TEK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_TLK: JKeyType; cdecl;
    {class} function _GetKEY_TYPE_TMK: JKeyType; cdecl;
    {class} function valueOf(string_: JString): JKeyType; cdecl;
    {class} function values: TJavaObjectArray<JKeyType>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property KEY_TYPE_DAM_KEY: JKeyType read _GetKEY_TYPE_DAM_KEY;
    {class} property KEY_TYPE_DKEY: JKeyType read _GetKEY_TYPE_DKEY;
    {class} property KEY_TYPE_DUKPT_AES_2TDES: JKeyType read _GetKEY_TYPE_DUKPT_AES_2TDES;
    {class} property KEY_TYPE_DUKPT_AES_3TDES: JKeyType read _GetKEY_TYPE_DUKPT_AES_3TDES;
    {class} property KEY_TYPE_DUKPT_AES_AES128: JKeyType read _GetKEY_TYPE_DUKPT_AES_AES128;
    {class} property KEY_TYPE_DUKPT_AES_AES192: JKeyType read _GetKEY_TYPE_DUKPT_AES_AES192;
    {class} property KEY_TYPE_DUKPT_AES_AES256: JKeyType read _GetKEY_TYPE_DUKPT_AES_AES256;
    {class} property KEY_TYPE_DUKPT_AES_BDK: JKeyType read _GetKEY_TYPE_DUKPT_AES_BDK;
    {class} property KEY_TYPE_DUKPT_AES_IPEK: JKeyType read _GetKEY_TYPE_DUKPT_AES_IPEK;
    {class} property KEY_TYPE_DUKPT_DES_BDK: JKeyType read _GetKEY_TYPE_DUKPT_DES_BDK;
    {class} property KEY_TYPE_DUKPT_DES_IPEK: JKeyType read _GetKEY_TYPE_DUKPT_DES_IPEK;
    {class} property KEY_TYPE_DUKPT_DES_KSN: JKeyType read _GetKEY_TYPE_DUKPT_DES_KSN;
    {class} property KEY_TYPE_FIXED_MAK: JKeyType read _GetKEY_TYPE_FIXED_MAK;
    {class} property KEY_TYPE_FIXED_PEK: JKeyType read _GetKEY_TYPE_FIXED_PEK;
    {class} property KEY_TYPE_FIXED_TDK: JKeyType read _GetKEY_TYPE_FIXED_TDK;
    {class} property KEY_TYPE_MAK: JKeyType read _GetKEY_TYPE_MAK;
    {class} property KEY_TYPE_NULL: JKeyType read _GetKEY_TYPE_NULL;
    {class} property KEY_TYPE_PEK: JKeyType read _GetKEY_TYPE_PEK;
    {class} property KEY_TYPE_PROCESS_KEY: JKeyType read _GetKEY_TYPE_PROCESS_KEY;
    {class} property KEY_TYPE_ROOT: JKeyType read _GetKEY_TYPE_ROOT;
    {class} property KEY_TYPE_TDK: JKeyType read _GetKEY_TYPE_TDK;
    {class} property KEY_TYPE_TEK: JKeyType read _GetKEY_TYPE_TEK;
    {class} property KEY_TYPE_TLK: JKeyType read _GetKEY_TYPE_TLK;
    {class} property KEY_TYPE_TMK: JKeyType read _GetKEY_TYPE_TMK;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KeyType')]
  JKeyType = interface(JEnum)
    ['{19A21AFB-5AD1-4A35-8B5D-DC03AB4379F7}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJKeyType = class(TJavaGenericImport<JKeyTypeClass, JKeyType>) end;

  JKeyType_1Class = interface(JParcelable_CreatorClass)
    ['{55E974B7-6F0C-4C89-988E-27424E8B0277}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KeyType$1')]
  JKeyType_1 = interface(JParcelable_Creator)
    ['{B655F644-EAD3-4E09-B6D8-0AD9F08B8C6B}']
    function createFromParcel(parcel: JParcel): JKeyType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JKeyType>; cdecl;
  end;
  TJKeyType_1 = class(TJavaGenericImport<JKeyType_1Class, JKeyType_1>) end;

  JKeyUsageClass = interface(JEnumClass)
    ['{AC82B1D9-582A-4895-812C-EDE45BAA1CC4}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetDUKPT_AES_USE_DATA_BOTH: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_DATA_DEC: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_DATA_ENC: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_DERIVED_KEY: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_KEY_ENC_KEY: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_MSG_BOTH: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_MSG_GEN: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_MSG_VERIFY: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_PEK: JKeyUsage; cdecl;
    {class} function _GetDUKPT_AES_USE_PIN_KEY: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_DATA_REQ: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_DATA_RESPON: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_DERIVED_KEY: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_MAC_REQ: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_MAC_RESPON: JKeyUsage; cdecl;
    {class} function _GetDUKPT_DES_USE_PIN_KEY: JKeyUsage; cdecl;
    {class} function valueOf(string_: JString): JKeyUsage; cdecl;
    {class} function values: TJavaObjectArray<JKeyUsage>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property DUKPT_AES_USE_DATA_BOTH: JKeyUsage read _GetDUKPT_AES_USE_DATA_BOTH;
    {class} property DUKPT_AES_USE_DATA_DEC: JKeyUsage read _GetDUKPT_AES_USE_DATA_DEC;
    {class} property DUKPT_AES_USE_DATA_ENC: JKeyUsage read _GetDUKPT_AES_USE_DATA_ENC;
    {class} property DUKPT_AES_USE_DERIVED_KEY: JKeyUsage read _GetDUKPT_AES_USE_DERIVED_KEY;
    {class} property DUKPT_AES_USE_KEY_ENC_KEY: JKeyUsage read _GetDUKPT_AES_USE_KEY_ENC_KEY;
    {class} property DUKPT_AES_USE_MSG_BOTH: JKeyUsage read _GetDUKPT_AES_USE_MSG_BOTH;
    {class} property DUKPT_AES_USE_MSG_GEN: JKeyUsage read _GetDUKPT_AES_USE_MSG_GEN;
    {class} property DUKPT_AES_USE_MSG_VERIFY: JKeyUsage read _GetDUKPT_AES_USE_MSG_VERIFY;
    {class} property DUKPT_AES_USE_PEK: JKeyUsage read _GetDUKPT_AES_USE_PEK;
    {class} property DUKPT_AES_USE_PIN_KEY: JKeyUsage read _GetDUKPT_AES_USE_PIN_KEY;
    {class} property DUKPT_DES_USE_DATA_REQ: JKeyUsage read _GetDUKPT_DES_USE_DATA_REQ;
    {class} property DUKPT_DES_USE_DATA_RESPON: JKeyUsage read _GetDUKPT_DES_USE_DATA_RESPON;
    {class} property DUKPT_DES_USE_DERIVED_KEY: JKeyUsage read _GetDUKPT_DES_USE_DERIVED_KEY;
    {class} property DUKPT_DES_USE_MAC_REQ: JKeyUsage read _GetDUKPT_DES_USE_MAC_REQ;
    {class} property DUKPT_DES_USE_MAC_RESPON: JKeyUsage read _GetDUKPT_DES_USE_MAC_RESPON;
    {class} property DUKPT_DES_USE_PIN_KEY: JKeyUsage read _GetDUKPT_DES_USE_PIN_KEY;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KeyUsage')]
  JKeyUsage = interface(JEnum)
    ['{E762DA52-77BB-43F9-8154-919FDB854F4D}']
    function _GetkeyUsage: Integer; cdecl;
    procedure _SetkeyUsage(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getUsage: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property keyUsage: Integer read _GetkeyUsage write _SetkeyUsage;
  end;
  TJKeyUsage = class(TJavaGenericImport<JKeyUsageClass, JKeyUsage>) end;

  JKeyUsage_1Class = interface(JParcelable_CreatorClass)
    ['{9F7836FD-EAB7-44FF-894A-F6327FA7D6DA}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/KeyUsage$1')]
  JKeyUsage_1 = interface(JParcelable_Creator)
    ['{F85CD6D6-4E37-4630-ABB0-0B95E67A88F0}']
    function createFromParcel(parcel: JParcel): JKeyUsage; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JKeyUsage>; cdecl;
  end;
  TJKeyUsage_1 = class(TJavaGenericImport<JKeyUsage_1Class, JKeyUsage_1>) end;

  JMacAlgModeClass = interface(JEnumClass)
    ['{B8407595-A381-4B93-AD75-F11B30CF78BB}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetMAC_ALG_ANSI_X919: JMacAlgMode; cdecl;
    {class} function _GetMAC_ALG_ANSI_X99CBC_MODE: JMacAlgMode; cdecl;
    {class} function _GetMAC_ALG_ANSI_X99ECB_MODE: JMacAlgMode; cdecl;
    {class} function _GetMAC_ALG_CUP: JMacAlgMode; cdecl;
    {class} function _GetMAC_ALG_EMV2000: JMacAlgMode; cdecl;
    {class} function valueOf(string_: JString): JMacAlgMode; cdecl;
    {class} function values: TJavaObjectArray<JMacAlgMode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property MAC_ALG_ANSI_X919: JMacAlgMode read _GetMAC_ALG_ANSI_X919;
    {class} property MAC_ALG_ANSI_X99CBC_MODE: JMacAlgMode read _GetMAC_ALG_ANSI_X99CBC_MODE;
    {class} property MAC_ALG_ANSI_X99ECB_MODE: JMacAlgMode read _GetMAC_ALG_ANSI_X99ECB_MODE;
    {class} property MAC_ALG_CUP: JMacAlgMode read _GetMAC_ALG_CUP;
    {class} property MAC_ALG_EMV2000: JMacAlgMode read _GetMAC_ALG_EMV2000;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/MacAlgMode')]
  JMacAlgMode = interface(JEnum)
    ['{54F0E2C8-3CD6-4109-B340-6ED8870CF4B6}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJMacAlgMode = class(TJavaGenericImport<JMacAlgModeClass, JMacAlgMode>) end;

  JMacAlgMode_1Class = interface(JParcelable_CreatorClass)
    ['{7A7C55A2-C4C0-4D95-B004-5119AA6F2F2D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/MacAlgMode$1')]
  JMacAlgMode_1 = interface(JParcelable_Creator)
    ['{7BA526BA-E97A-4EF6-9EB1-1BEDE3EEEAC9}']
    function createFromParcel(parcel: JParcel): JMacAlgMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JMacAlgMode>; cdecl;
  end;
  TJMacAlgMode_1 = class(TJavaGenericImport<JMacAlgMode_1Class, JMacAlgMode_1>) end;

  JSymAlgModeClass = interface(JEnumClass)
    ['{E1565A30-256B-4E43-8CA6-2C5D4A8309E9}']
    {class} function _GetALG_DECRYPT_AES_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_DECRYPT_AES_ECB: JSymAlgMode; cdecl;
    {class} function _GetALG_DECRYPT_DES_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_DECRYPT_DES_ECB: JSymAlgMode; cdecl;
    {class} function _GetALG_DECRYPT_SM4_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_DECRYPT_SM4_ECB: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_AES_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_AES_ECB: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_DES_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_DES_ECB: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_SM4_CBC: JSymAlgMode; cdecl;
    {class} function _GetALG_ENCRYPT_SM4_ECB: JSymAlgMode; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function valueOf(string_: JString): JSymAlgMode; cdecl;
    {class} function values: TJavaObjectArray<JSymAlgMode>; cdecl;//Deprecated
    {class} property ALG_DECRYPT_AES_CBC: JSymAlgMode read _GetALG_DECRYPT_AES_CBC;
    {class} property ALG_DECRYPT_AES_ECB: JSymAlgMode read _GetALG_DECRYPT_AES_ECB;
    {class} property ALG_DECRYPT_DES_CBC: JSymAlgMode read _GetALG_DECRYPT_DES_CBC;
    {class} property ALG_DECRYPT_DES_ECB: JSymAlgMode read _GetALG_DECRYPT_DES_ECB;
    {class} property ALG_DECRYPT_SM4_CBC: JSymAlgMode read _GetALG_DECRYPT_SM4_CBC;
    {class} property ALG_DECRYPT_SM4_ECB: JSymAlgMode read _GetALG_DECRYPT_SM4_ECB;
    {class} property ALG_ENCRYPT_AES_CBC: JSymAlgMode read _GetALG_ENCRYPT_AES_CBC;
    {class} property ALG_ENCRYPT_AES_ECB: JSymAlgMode read _GetALG_ENCRYPT_AES_ECB;
    {class} property ALG_ENCRYPT_DES_CBC: JSymAlgMode read _GetALG_ENCRYPT_DES_CBC;
    {class} property ALG_ENCRYPT_DES_ECB: JSymAlgMode read _GetALG_ENCRYPT_DES_ECB;
    {class} property ALG_ENCRYPT_SM4_CBC: JSymAlgMode read _GetALG_ENCRYPT_SM4_CBC;
    {class} property ALG_ENCRYPT_SM4_ECB: JSymAlgMode read _GetALG_ENCRYPT_SM4_ECB;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymAlgMode')]
  JSymAlgMode = interface(JEnum)
    ['{0CFED667-0692-4F5E-B40A-99488A3D5BC9}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJSymAlgMode = class(TJavaGenericImport<JSymAlgModeClass, JSymAlgMode>) end;

  JSymAlgMode_1Class = interface(JParcelable_CreatorClass)
    ['{D096C5DC-6081-4C59-9251-41B122A0BE12}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymAlgMode$1')]
  JSymAlgMode_1 = interface(JParcelable_Creator)
    ['{EB117F87-EC81-44E4-B8A5-1B9DA82C0720}']
    function createFromParcel(parcel: JParcel): JSymAlgMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JSymAlgMode>; cdecl;
  end;
  TJSymAlgMode_1 = class(TJavaGenericImport<JSymAlgMode_1Class, JSymAlgMode_1>) end;

  JSymAlgTypeClass = interface(JEnumClass)
    ['{34E74296-EA5D-40CD-9B48-2AA531549398}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetSYM_ALG_TYPE_AES: JSymAlgType; cdecl;
    {class} function _GetSYM_ALG_TYPE_DEFAULT: JSymAlgType; cdecl;
    {class} function _GetSYM_ALG_TYPE_DES: JSymAlgType; cdecl;
    {class} function _GetSYM_ALG_TYPE_SM4: JSymAlgType; cdecl;
    {class} function valueOf(string_: JString): JSymAlgType; cdecl;
    {class} function values: TJavaObjectArray<JSymAlgType>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property SYM_ALG_TYPE_AES: JSymAlgType read _GetSYM_ALG_TYPE_AES;
    {class} property SYM_ALG_TYPE_DEFAULT: JSymAlgType read _GetSYM_ALG_TYPE_DEFAULT;
    {class} property SYM_ALG_TYPE_DES: JSymAlgType read _GetSYM_ALG_TYPE_DES;
    {class} property SYM_ALG_TYPE_SM4: JSymAlgType read _GetSYM_ALG_TYPE_SM4;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymAlgType')]
  JSymAlgType = interface(JEnum)
    ['{D9EF0DD6-AB3D-4FDA-9BCC-2EA4DEF291E3}']
    function _Gettype: Integer; cdecl;
    procedure _Settype(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property &type: Integer read _Gettype write _Settype;
  end;
  TJSymAlgType = class(TJavaGenericImport<JSymAlgTypeClass, JSymAlgType>) end;

  JSymAlgType_1Class = interface(JParcelable_CreatorClass)
    ['{37821AFE-826E-4FB8-8D20-51B879F269AD}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymAlgType$1')]
  JSymAlgType_1 = interface(JParcelable_Creator)
    ['{994D2218-5673-452F-868C-EC05427B47CC}']
    function createFromParcel(parcel: JParcel): JSymAlgType; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JSymAlgType>; cdecl;
  end;
  TJSymAlgType_1 = class(TJavaGenericImport<JSymAlgType_1Class, JSymAlgType_1>) end;

  JSymPaddingModeClass = interface(JEnumClass)
    ['{72D47C14-8E2C-40A1-8F91-EFA6465888C6}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetNO_PADDING: JSymPaddingMode; cdecl;
    {class} function _GetPKCS7_PADDING: JSymPaddingMode; cdecl;
    {class} function valueOf(string_: JString): JSymPaddingMode; cdecl;
    {class} function values: TJavaObjectArray<JSymPaddingMode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property NO_PADDING: JSymPaddingMode read _GetNO_PADDING;
    {class} property PKCS7_PADDING: JSymPaddingMode read _GetPKCS7_PADDING;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymPaddingMode')]
  JSymPaddingMode = interface(JEnum)
    ['{9268EBA2-F81B-492A-B003-8E14BB7DCC68}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJSymPaddingMode = class(TJavaGenericImport<JSymPaddingModeClass, JSymPaddingMode>) end;

  JSymPaddingMode_1Class = interface(JParcelable_CreatorClass)
    ['{3711D2C1-40F2-42C7-B572-1901D821F083}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/SymPaddingMode$1')]
  JSymPaddingMode_1 = interface(JParcelable_Creator)
    ['{92B80C7D-D4EE-488D-AA46-E9247568186C}']
    function createFromParcel(parcel: JParcel): JSymPaddingMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JSymPaddingMode>; cdecl;
  end;
  TJSymPaddingMode_1 = class(TJavaGenericImport<JSymPaddingMode_1Class, JSymPaddingMode_1>) end;

  JTr31ModeClass = interface(JEnumClass)
    ['{45522B88-EA19-41CB-9C61-9A06A781F6C8}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetMODE_A: JTr31Mode; cdecl;
    {class} function _GetMODE_B: JTr31Mode; cdecl;
    {class} function _GetMODE_C: JTr31Mode; cdecl;
    {class} function _GetMODE_D: JTr31Mode; cdecl;
    {class} function _GetMODE_E: JTr31Mode; cdecl;
    {class} function _GetMODE_NULL: JTr31Mode; cdecl;
    {class} function valueOf(string_: JString): JTr31Mode; cdecl;
    {class} function values: TJavaObjectArray<JTr31Mode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property MODE_A: JTr31Mode read _GetMODE_A;
    {class} property MODE_B: JTr31Mode read _GetMODE_B;
    {class} property MODE_C: JTr31Mode read _GetMODE_C;
    {class} property MODE_D: JTr31Mode read _GetMODE_D;
    {class} property MODE_E: JTr31Mode read _GetMODE_E;
    {class} property MODE_NULL: JTr31Mode read _GetMODE_NULL;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/Tr31Mode')]
  JTr31Mode = interface(JEnum)
    ['{26DCDDDC-A405-40D7-AB65-1B8D002A61DB}']
    function describeContents: Integer; cdecl;
    function getType: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJTr31Mode = class(TJavaGenericImport<JTr31ModeClass, JTr31Mode>) end;

  JTr31Mode_1Class = interface(JParcelable_CreatorClass)
    ['{92232DF2-DBD8-4B3E-90DF-386DC9E0048E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/keymanager/Tr31Mode$1')]
  JTr31Mode_1 = interface(JParcelable_Creator)
    ['{1562FBE3-A0D7-42E8-BE3A-98D77629D167}']
    function createFromParcel(parcel: JParcel): JTr31Mode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JTr31Mode>; cdecl;
  end;
  TJTr31Mode_1 = class(TJavaGenericImport<JTr31Mode_1Class, JTr31Mode_1>) end;

  JAidlKLDLogExportListenerClass = interface(JIInterfaceClass)
    ['{6E4E43C7-BF4A-44B2-9184-770C95AEE21B}']
    {class} procedure onProgress(i: Integer); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKLDLogExportListener')]
  JAidlKLDLogExportListener = interface(JIInterface)
    ['{4BBC0B01-41C7-4BEE-9702-46E4737747E4}']
    procedure onError(string_: JString); cdecl;
  end;
  TJAidlKLDLogExportListener = class(TJavaGenericImport<JAidlKLDLogExportListenerClass, JAidlKLDLogExportListener>) end;

  JAidlKLDLogExportListener_StubClass = interface(JBinderClass)
    ['{A303B48A-DB0E-4C42-A29B-685E084CC4FD}']
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlKLDLogExportListener; cdecl;
    {class} function init: JAidlKLDLogExportListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKLDLogExportListener$Stub')]
  JAidlKLDLogExportListener_Stub = interface(JBinder)
    ['{53866131-4450-4993-8664-D247FA55962F}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlKLDLogExportListener_Stub = class(TJavaGenericImport<JAidlKLDLogExportListener_StubClass, JAidlKLDLogExportListener_Stub>) end;

  JAidlKLDLogExportListener_Stub_ProxyClass = interface(JAidlKLDLogExportListenerClass)
    ['{C305A4D3-F64B-4A22-9893-CE4105275778}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKLDLogExportListener$Stub$Proxy')]
  JAidlKLDLogExportListener_Stub_Proxy = interface(JAidlKLDLogExportListener)
    ['{031CFFA0-1335-4F5D-A030-5135D0FFCAC3}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(string_: JString); cdecl;
    procedure onProgress(i: Integer); cdecl;
  end;
  TJAidlKLDLogExportListener_Stub_Proxy = class(TJavaGenericImport<JAidlKLDLogExportListener_Stub_ProxyClass, JAidlKLDLogExportListener_Stub_Proxy>) end;

  JAidlKeyLoadDownClass = interface(JIInterfaceClass)
    ['{C9E7A032-409E-425E-9519-7F852AD60C3A}']
    {class} function testRandom: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKeyLoadDown')]
  JAidlKeyLoadDown = interface(JIInterface)
    ['{8DD5EB43-174B-46E6-B96E-D98CB0FD55E2}']
    function bindTr34Service(string_: JString; string_1: JString): Boolean; cdecl;
    function communicateByHSM(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function decryptAndSaveRsaPrivateKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function decryptByTr31DMode(b: Byte; b1: Byte; b2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function decryptECCCipherText(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function dukptBdkToIPEK(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl;
    function encryptByTr31DMode(b: Byte; b1: Byte; b2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function encryptRsaPrivateKey(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    procedure exportLog(aidlKLDLogExportListener: JAidlKLDLogExportListener); cdecl;
    function genSignApAsyKeyPair(i: Integer; i1: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function getTr34CipherText(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getTr34Data(string_: JString): JString; cdecl;
    function openSerial: Boolean; cdecl;
    procedure saveLog(string_: JString; string_1: JString; b: Boolean); cdecl;
    procedure setTr34Service(string_: JString; i: Integer); cdecl;
    function testAlgorithm(i: Integer): Boolean; cdecl;
    function unBindTr34Service: Boolean; cdecl;
    function verifyTr34DataPack(string_: JString; string_1: JString; string_2: JString): JTr34Data; cdecl;
  end;
  TJAidlKeyLoadDown = class(TJavaGenericImport<JAidlKeyLoadDownClass, JAidlKeyLoadDown>) end;

  JAidlKeyLoadDown_StubClass = interface(JBinderClass)
    ['{5684BBDC-C915-4D86-888C-EEB2F490FDF2}']
    {class} function _GetTRANSACTION_bindTr34Service: Integer; cdecl;
    {class} function _GetTRANSACTION_decryptECCCipherText: Integer; cdecl;
    {class} function _GetTRANSACTION_encryptByTr31DMode: Integer; cdecl;
    {class} function _GetTRANSACTION_testAlgorithm: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlKeyLoadDown; cdecl;
    {class} function init: JAidlKeyLoadDown_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_bindTr34Service: Integer read _GetTRANSACTION_bindTr34Service;
    {class} property TRANSACTION_decryptECCCipherText: Integer read _GetTRANSACTION_decryptECCCipherText;
    {class} property TRANSACTION_encryptByTr31DMode: Integer read _GetTRANSACTION_encryptByTr31DMode;
    {class} property TRANSACTION_testAlgorithm: Integer read _GetTRANSACTION_testAlgorithm;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKeyLoadDown$Stub')]
  JAidlKeyLoadDown_Stub = interface(JBinder)
    ['{3C7CF821-5E3F-4E66-839A-7EC37B3E502A}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlKeyLoadDown_Stub = class(TJavaGenericImport<JAidlKeyLoadDown_StubClass, JAidlKeyLoadDown_Stub>) end;

  JAidlKeyLoadDown_Stub_ProxyClass = interface(JAidlKeyLoadDownClass)
    ['{01AA3212-B3E3-45FF-ACE7-31E9DF85B765}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/AidlKeyLoadDown$Stub$Proxy')]
  JAidlKeyLoadDown_Stub_Proxy = interface(JAidlKeyLoadDown)
    ['{BE5B4CDE-D447-4474-B7CE-74693653942A}']
    function asBinder: JIBinder; cdecl;
    function bindTr34Service(string_: JString; string_1: JString): Boolean; cdecl;
    function communicateByHSM(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function decryptAndSaveRsaPrivateKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function decryptByTr31DMode(b: Byte; b1: Byte; b2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function decryptECCCipherText(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function dukptBdkToIPEK(b: TJavaArray<Byte>; b1: TJavaArray<Byte>; i: Integer): TJavaArray<Byte>; cdecl;
    function encryptByTr31DMode(b: Byte; b1: Byte; b2: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function encryptRsaPrivateKey(i: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    procedure exportLog(aidlKLDLogExportListener: JAidlKLDLogExportListener); cdecl;
    function genSignApAsyKeyPair(i: Integer; i1: Integer; asyKeyPairType: JAsyKeyPairType): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTr34CipherText(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getTr34Data(string_: JString): JString; cdecl;
    function openSerial: Boolean; cdecl;
    procedure saveLog(string_: JString; string_1: JString; b: Boolean); cdecl;
    procedure setTr34Service(string_: JString; i: Integer); cdecl;
    function testAlgorithm(i: Integer): Boolean; cdecl;
    function testRandom: Boolean; cdecl;
    function unBindTr34Service: Boolean; cdecl;
    function verifyTr34DataPack(string_: JString; string_1: JString; string_2: JString): JTr34Data; cdecl;
  end;
  TJAidlKeyLoadDown_Stub_Proxy = class(TJavaGenericImport<JAidlKeyLoadDown_Stub_ProxyClass, JAidlKeyLoadDown_Stub_Proxy>) end;

  JKeyLoadManagerConstantClass = interface(JObjectClass)
    ['{14E14DC4-B6AD-4CFA-B9E2-76424203B7B6}']
    {class} function init: JKeyLoadManagerConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/KeyLoadManagerConstant')]
  JKeyLoadManagerConstant = interface(JObject)
    ['{28A6316E-A6DD-4472-9E14-ED078D5D015C}']
  end;
  TJKeyLoadManagerConstant = class(TJavaGenericImport<JKeyLoadManagerConstantClass, JKeyLoadManagerConstant>) end;

  JKeyLoadManagerConstant_AlgModeClass = interface(JObjectClass)
    ['{741C8DB9-821D-49A6-A2DE-CEDFE5BEF346}']
    {class} function _GetALG_MODE_3DES: Integer; cdecl;
    {class} function _GetALG_MODE_AES128: Integer; cdecl;
    {class} function _GetALG_MODE_AES192: Integer; cdecl;
    {class} function _GetALG_MODE_AES256: Integer; cdecl;
    {class} function init: JKeyLoadManagerConstant_AlgMode; cdecl;//Deprecated
    {class} property ALG_MODE_3DES: Integer read _GetALG_MODE_3DES;
    {class} property ALG_MODE_AES128: Integer read _GetALG_MODE_AES128;
    {class} property ALG_MODE_AES192: Integer read _GetALG_MODE_AES192;
    {class} property ALG_MODE_AES256: Integer read _GetALG_MODE_AES256;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/KeyLoadManagerConstant$AlgMode')]
  JKeyLoadManagerConstant_AlgMode = interface(JObject)
    ['{0A65A8C8-F246-4336-8CFE-E53975EF7620}']
  end;
  TJKeyLoadManagerConstant_AlgMode = class(TJavaGenericImport<JKeyLoadManagerConstant_AlgModeClass, JKeyLoadManagerConstant_AlgMode>) end;

  JTr34DataClass = interface(JParcelableClass)
    ['{4622A00D-48B1-4DEB-829C-FD6794724E18}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JTr34Data; cdecl; overload;
    {class} function init(parcel: JParcel): JTr34Data; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/Tr34Data')]
  JTr34Data = interface(JParcelable)
    ['{8E9337EF-9D82-4DBE-BA55-B58B19863AEC}']
    function describeContents: Integer; cdecl;
    function getTr34Data: JString; cdecl;
    function getTr34PackCBCEncryptData: JString; cdecl;
    function getTr34PackCBCIV: JString; cdecl;
    function getTr34PackKBH: JString; cdecl;
    function getTr34PackPubEncryptData: JString; cdecl;
    function getTr34PackRandom: JString; cdecl;
    function getTr34PackSignData: JString; cdecl;
    procedure setTr34Data(string_: JString); cdecl;
    procedure setTr34PackCBCEncryptData(string_: JString); cdecl;
    procedure setTr34PackCBCIV(string_: JString); cdecl;
    procedure setTr34PackKBH(string_: JString); cdecl;
    procedure setTr34PackPubEncryptData(string_: JString); cdecl;
    procedure setTr34PackRandom(string_: JString); cdecl;
    procedure setTr34PackSignData(string_: JString); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJTr34Data = class(TJavaGenericImport<JTr34DataClass, JTr34Data>) end;

  JTr34Data_1Class = interface(JParcelable_CreatorClass)
    ['{1B4374B2-F74F-42AB-BF05-CFB4F3C3D3CA}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/kld/Tr34Data$1')]
  JTr34Data_1 = interface(JParcelable_Creator)
    ['{A01879E1-FE01-4CCD-A0E5-525FA7603703}']
    function createFromParcel(parcel: JParcel): JTr34Data; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JTr34Data>; cdecl;
  end;
  TJTr34Data_1 = class(TJavaGenericImport<JTr34Data_1Class, JTr34Data_1>) end;

  JAidlLedClass = interface(JIInterfaceClass)
    ['{E8904D87-57C3-4CA0-AFF4-704FEB186F03}']
    {class} function setLed(i: Integer; b: Boolean): Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/led/AidlLed')]
  JAidlLed = interface(JIInterface)
    ['{7B7CCBCC-AFBF-4147-BADB-A38BD691A74B}']
  end;
  TJAidlLed = class(TJavaGenericImport<JAidlLedClass, JAidlLed>) end;

  JAidlLed_StubClass = interface(JBinderClass)
    ['{8F6B3308-C29F-4B60-91B7-AE9D5A75C35D}']
    {class} function asInterface(iBinder: JIBinder): JAidlLed; cdecl;
    {class} function init: JAidlLed_Stub; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/led/AidlLed$Stub')]
  JAidlLed_Stub = interface(JBinder)
    ['{5386B76E-8685-4EEA-990E-1D0EF020F5A8}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlLed_Stub = class(TJavaGenericImport<JAidlLed_StubClass, JAidlLed_Stub>) end;

  JAidlLed_Stub_ProxyClass = interface(JAidlLedClass)
    ['{1887A226-32DD-4DA0-8B5A-8C900850D7B2}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/led/AidlLed$Stub$Proxy')]
  JAidlLed_Stub_Proxy = interface(JAidlLed)
    ['{3A7E59F6-4A53-4677-8A15-6F4FAFF7E540}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function setLed(i: Integer; b: Boolean): Boolean; cdecl;
  end;
  TJAidlLed_Stub_Proxy = class(TJavaGenericImport<JAidlLed_Stub_ProxyClass, JAidlLed_Stub_Proxy>) end;

  JAidlMagCardClass = interface(JIInterfaceClass)
    ['{D0FD41C0-46AD-41A3-B98F-E4B1E9EC3F9D}']
    {class} procedure searchCard(i: Integer; magCardListener: JMagCardListener); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/AidlMagCard')]
  JAidlMagCard = interface(JIInterface)
    ['{D1F6F19C-5415-4012-A13D-C1CE07532166}']
    function close: Boolean; cdecl;
    function open: Boolean; cdecl;
    procedure searchEncryptCard(i: Integer; b: Byte; b1: Byte; b2: TJavaArray<Byte>; b3: Byte; encryptMagCardListener: JEncryptMagCardListener); cdecl;
    procedure searchEncryptCardEx(i: Integer; b: Byte; b1: Byte; b2: TJavaArray<Byte>; b3: Byte; encryptMagCardListener: JEncryptMagCardListener; b4: Boolean); cdecl;
    procedure stopSearch; cdecl;
  end;
  TJAidlMagCard = class(TJavaGenericImport<JAidlMagCardClass, JAidlMagCard>) end;

  JAidlMagCard_StubClass = interface(JBinderClass)
    ['{70C98BF2-C153-4C7F-B72B-42DA62BDA3E4}']
    {class} function _GetTRANSACTION_searchEncryptCard: Integer; cdecl;
    {class} function _GetTRANSACTION_searchEncryptCardEx: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlMagCard; cdecl;
    {class} function init: JAidlMagCard_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_searchEncryptCard: Integer read _GetTRANSACTION_searchEncryptCard;
    {class} property TRANSACTION_searchEncryptCardEx: Integer read _GetTRANSACTION_searchEncryptCardEx;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/AidlMagCard$Stub')]
  JAidlMagCard_Stub = interface(JBinder)
    ['{B196319B-54BB-4776-BCA2-C310849674D2}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlMagCard_Stub = class(TJavaGenericImport<JAidlMagCard_StubClass, JAidlMagCard_Stub>) end;

  JAidlMagCard_Stub_ProxyClass = interface(JAidlMagCardClass)
    ['{8A9D4E62-1652-4B9A-833C-476D6C2756D7}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/AidlMagCard$Stub$Proxy')]
  JAidlMagCard_Stub_Proxy = interface(JAidlMagCard)
    ['{1746CF0E-E442-4E65-94C2-A773272748D8}']
    function asBinder: JIBinder; cdecl;
    function close: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function open: Boolean; cdecl;
    procedure searchCard(i: Integer; magCardListener: JMagCardListener); cdecl;
    procedure searchEncryptCard(i: Integer; b: Byte; b1: Byte; b2: TJavaArray<Byte>; b3: Byte; encryptMagCardListener: JEncryptMagCardListener); cdecl;
    procedure searchEncryptCardEx(i: Integer; b: Byte; b1: Byte; b2: TJavaArray<Byte>; b3: Byte; encryptMagCardListener: JEncryptMagCardListener; b4: Boolean); cdecl;
    procedure stopSearch; cdecl;
  end;
  TJAidlMagCard_Stub_Proxy = class(TJavaGenericImport<JAidlMagCard_Stub_ProxyClass, JAidlMagCard_Stub_Proxy>) end;

  JEncryptMagCardListenerClass = interface(JIInterfaceClass)
    ['{633BE6D6-3D2C-436D-A6B0-3E0667BBDA65}']
    {class} procedure onTimeout; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/EncryptMagCardListener')]
  JEncryptMagCardListener = interface(JIInterface)
    ['{4D5E6C83-AB06-4FA3-909C-E0796AC6150D}']
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onGetTrackFail; cdecl;
    procedure onSuccess(string_: TJavaObjectArray<JString>); cdecl;
  end;
  TJEncryptMagCardListener = class(TJavaGenericImport<JEncryptMagCardListenerClass, JEncryptMagCardListener>) end;

  JEncryptMagCardListener_StubClass = interface(JBinderClass)
    ['{B8A601EF-B7B9-4CE0-ABED-C16332FE53B5}']
    {class} function _GetTRANSACTION_onCanceled: Integer; cdecl;
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onGetTrackFail: Integer; cdecl;
    {class} function _GetTRANSACTION_onSuccess: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JEncryptMagCardListener; cdecl;
    {class} function init: JEncryptMagCardListener_Stub; cdecl;
    {class} property TRANSACTION_onCanceled: Integer read _GetTRANSACTION_onCanceled;
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onGetTrackFail: Integer read _GetTRANSACTION_onGetTrackFail;
    {class} property TRANSACTION_onSuccess: Integer read _GetTRANSACTION_onSuccess;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/EncryptMagCardListener$Stub')]
  JEncryptMagCardListener_Stub = interface(JBinder)
    ['{1A963B94-9984-4705-80FF-6B4ABB06E551}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJEncryptMagCardListener_Stub = class(TJavaGenericImport<JEncryptMagCardListener_StubClass, JEncryptMagCardListener_Stub>) end;

  JEncryptMagCardListener_Stub_ProxyClass = interface(JEncryptMagCardListenerClass)
    ['{E209F3B6-263E-454F-BE29-979133F8AD9E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/EncryptMagCardListener$Stub$Proxy')]
  JEncryptMagCardListener_Stub_Proxy = interface(JEncryptMagCardListener)
    ['{833A644B-9F6C-4B30-B122-3C2DC52FD852}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onGetTrackFail; cdecl;
    procedure onSuccess(string_: TJavaObjectArray<JString>); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJEncryptMagCardListener_Stub_Proxy = class(TJavaGenericImport<JEncryptMagCardListener_Stub_ProxyClass, JEncryptMagCardListener_Stub_Proxy>) end;

  JMagCardListenerClass = interface(JIInterfaceClass)
    ['{CE48EFAF-A62E-4FCB-9F5F-87DDA1345287}']
    {class} procedure onTimeout; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/MagCardListener')]
  JMagCardListener = interface(JIInterface)
    ['{6F6B9D8D-2D87-4288-BC61-2BAD1E7A654A}']
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onGetTrackFail; cdecl;
    procedure onSuccess(trackData: JTrackData); cdecl;
  end;
  TJMagCardListener = class(TJavaGenericImport<JMagCardListenerClass, JMagCardListener>) end;

  JMagCardListener_StubClass = interface(JBinderClass)
    ['{69095B67-54F4-4C6A-B59B-F00932707DD3}']
    {class} function _GetTRANSACTION_onCanceled: Integer; cdecl;
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onGetTrackFail: Integer; cdecl;
    {class} function _GetTRANSACTION_onSuccess: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JMagCardListener; cdecl;
    {class} function init: JMagCardListener_Stub; cdecl;
    {class} property TRANSACTION_onCanceled: Integer read _GetTRANSACTION_onCanceled;
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onGetTrackFail: Integer read _GetTRANSACTION_onGetTrackFail;
    {class} property TRANSACTION_onSuccess: Integer read _GetTRANSACTION_onSuccess;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/MagCardListener$Stub')]
  JMagCardListener_Stub = interface(JBinder)
    ['{953A5E9A-1785-47FB-97AE-F4AAB1B7DD18}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJMagCardListener_Stub = class(TJavaGenericImport<JMagCardListener_StubClass, JMagCardListener_Stub>) end;

  JMagCardListener_Stub_ProxyClass = interface(JMagCardListenerClass)
    ['{59872593-E709-40D8-A3CD-3647ADDA0AD1}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/MagCardListener$Stub$Proxy')]
  JMagCardListener_Stub_Proxy = interface(JMagCardListener)
    ['{CDA43F3A-4F1D-4444-B2E8-8F81DA6E2573}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCanceled; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onGetTrackFail; cdecl;
    procedure onSuccess(trackData: JTrackData); cdecl;
    procedure onTimeout; cdecl;
  end;
  TJMagCardListener_Stub_Proxy = class(TJavaGenericImport<JMagCardListener_Stub_ProxyClass, JMagCardListener_Stub_Proxy>) end;

  JTrackDataClass = interface(JParcelableClass)
    ['{38A6A3AA-C273-4137-A6A1-501927DD0711}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JTrackData; cdecl; overload;
    {class} function init(parcel: JParcel): JTrackData; cdecl; overload;
    {class} function init(string_: JString; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString): JTrackData; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/TrackData')]
  JTrackData = interface(JParcelable)
    ['{F4AA2D7B-07C8-46A1-B8A9-F9AD9DA10ADE}']
    function describeContents: Integer; cdecl;
    function getCardno: JString; cdecl;
    function getExpiryDate: JString; cdecl;
    function getFirstTrackData: JString; cdecl;
    function getFormatTrackData: JString; cdecl;
    function getSecondTrackData: JString; cdecl;
    function getServiceCode: JString; cdecl;
    function getThirdTrackData: JString; cdecl;
    procedure setCardno(string_: JString); cdecl;
    procedure setExpiryDate(string_: JString); cdecl;
    procedure setFirstTrackData(string_: JString); cdecl;
    procedure setFormatTrackData(string_: JString); cdecl;
    procedure setSecondTrackData(string_: JString); cdecl;
    procedure setServiceCode(string_: JString); cdecl;
    procedure setThirdTrackData(string_: JString); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJTrackData = class(TJavaGenericImport<JTrackDataClass, JTrackData>) end;

  JTrackData_1Class = interface(JParcelable_CreatorClass)
    ['{0A4E59D3-9146-4847-BEE2-0464FF12342C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/magcard/TrackData$1')]
  JTrackData_1 = interface(JParcelable_Creator)
    ['{52049080-180D-438F-BE2A-FF2BEE7B3092}']
    function createFromParcel(parcel: JParcel): JTrackData; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JTrackData>; cdecl;
  end;
  TJTrackData_1 = class(TJavaGenericImport<JTrackData_1Class, JTrackData_1>) end;

  JAidlPedestalClass = interface(JIInterfaceClass)
    ['{0AA0127E-1E0E-406F-8694-8050E66FFD91}']
    {class} function isCoupled: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestal')]
  JAidlPedestal = interface(JIInterface)
    ['{356EE14D-2877-436C-822C-4E372998202B}']
    function getSerialManager: JIBinder; cdecl;
  end;
  TJAidlPedestal = class(TJavaGenericImport<JAidlPedestalClass, JAidlPedestal>) end;

  JAidlPedestal_StubClass = interface(JBinderClass)
    ['{9C26AA7F-E18E-4237-98C1-D0CCFEF5FB5C}']
    {class} function _GetTRANSACTION_getSerialManager: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPedestal; cdecl;
    {class} function init: JAidlPedestal_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_getSerialManager: Integer read _GetTRANSACTION_getSerialManager;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestal$Stub')]
  JAidlPedestal_Stub = interface(JBinder)
    ['{70A313FF-2702-4D52-941C-07B6BFC4F7DE}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPedestal_Stub = class(TJavaGenericImport<JAidlPedestal_StubClass, JAidlPedestal_Stub>) end;

  JAidlPedestal_Stub_ProxyClass = interface(JAidlPedestalClass)
    ['{01134528-CE8C-40BB-A4AA-6352BC984E82}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestal$Stub$Proxy')]
  JAidlPedestal_Stub_Proxy = interface(JAidlPedestal)
    ['{51C80BD9-1DF7-4EE9-A281-5D169304322E}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getSerialManager: JIBinder; cdecl;
    function isCoupled: Boolean; cdecl;
  end;
  TJAidlPedestal_Stub_Proxy = class(TJavaGenericImport<JAidlPedestal_Stub_ProxyClass, JAidlPedestal_Stub_Proxy>) end;

  JAidlPedestalSerialManagerClass = interface(JIInterfaceClass)
    ['{B91811A7-8A20-43DD-876A-74E833326294}']
    {class} function getCount: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestalSerialManager')]
  JAidlPedestalSerialManager = interface(JIInterface)
    ['{3EE70BD6-AD11-4CFD-B4CF-0EC15B272966}']
    function enumSerialports: JList; cdecl;
    function getSerialport(string_: JString): JIBinder; cdecl;
  end;
  TJAidlPedestalSerialManager = class(TJavaGenericImport<JAidlPedestalSerialManagerClass, JAidlPedestalSerialManager>) end;

  JAidlPedestalSerialManager_StubClass = interface(JBinderClass)
    ['{A0D15C13-9F7E-48A1-B0CD-C2D0AFBC2445}']
    {class} function _GetTRANSACTION_enumSerialports: Integer; cdecl;
    {class} function _GetTRANSACTION_getSerialport: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPedestalSerialManager; cdecl;
    {class} function init: JAidlPedestalSerialManager_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_enumSerialports: Integer read _GetTRANSACTION_enumSerialports;
    {class} property TRANSACTION_getSerialport: Integer read _GetTRANSACTION_getSerialport;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestalSerialManager$Stub')]
  JAidlPedestalSerialManager_Stub = interface(JBinder)
    ['{90F9C67A-A1EB-48C0-AC69-E5066852524F}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPedestalSerialManager_Stub = class(TJavaGenericImport<JAidlPedestalSerialManager_StubClass, JAidlPedestalSerialManager_Stub>) end;

  JAidlPedestalSerialManager_Stub_ProxyClass = interface(JAidlPedestalSerialManagerClass)
    ['{703D0DB9-9F6C-4D2A-9DE9-9523697339DC}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pedestal/AidlPedestalSerialManager$Stub$Proxy')]
  JAidlPedestalSerialManager_Stub_Proxy = interface(JAidlPedestalSerialManager)
    ['{120D7709-D4C4-4F19-B503-A0B864E58729}']
    function asBinder: JIBinder; cdecl;
    function enumSerialports: JList; cdecl;
    function getCount: Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getSerialport(string_: JString): JIBinder; cdecl;
  end;
  TJAidlPedestalSerialManager_Stub_Proxy = class(TJavaGenericImport<JAidlPedestalSerialManager_Stub_ProxyClass, JAidlPedestalSerialManager_Stub_Proxy>) end;

  JAidlPinpadClass = interface(JIInterfaceClass)
    ['{7F6466A8-BB17-4C66-A090-185406B02050}']
    {class} procedure getPin(bundle: JBundle; getPinListener: JGetPinListener); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/AidlPinpad')]
  JAidlPinpad = interface(JIInterface)
    ['{775D5D27-4AE7-4BC4-8186-45CE2CDAC69A}']
    function algCalculate(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function algorithDecrypt(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function algorithmCal(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function checkkey(i: Integer; i1: Integer; b: Boolean): TJavaArray<Byte>; cdecl;
    procedure confirmGetPin; cdecl;
    function cryptByDukptDataKey(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function cryptByFixedTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function cryptByTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function deletePedKey(i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function display(string_: JString; string_1: JString): Boolean; cdecl;
    function dukptKeyBdkToIpek(i: Integer): Integer; cdecl;
    function encryptByRandomWk(i: Integer; b: Boolean; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>): Boolean; cdecl;
    function encryptByTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function encryptByTdkEx(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: Byte; b4: TJavaArray<Byte>): Integer; cdecl;
    function genKBPKKey(tr31Mode: JTr31Mode; keyType: JKeyType; i: Integer; asymmetricKey: JAsymmetricKey; b: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function genRandomTekEncryptByTek(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getButtonNum: TJavaArray<Byte>; cdecl;
    function getDUKPTKsn(i: Integer; b: Boolean): TJavaArray<Byte>; cdecl;
    function getDUKPTKsnExt(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getInstalledKey(keyType: JKeyType; i: Integer; intArrayTypeValue: JIntArrayTypeValue): Integer; cdecl;
    function getKeyCheckValue(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function getKeyCheckValueExt(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getKeyKin(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function getKeyState(i: Integer; i1: Integer): Boolean; cdecl;
    function getMac(bundle: JBundle; b: TJavaArray<Byte>): Integer; cdecl;
    function getRandom: TJavaArray<Byte>; cdecl;
    function getTr31SaveKeyType(string_: JString): JKeyType; cdecl;
    function loadDuKPTkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadDukptBDK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadDukptIPEK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadEncryptMainkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadEncryptMainkeyEx(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadKeyByTr31Mode(keyType: JKeyType; i: Integer; i1: Integer; string_: JString; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadKeyCommonMethod(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadMainkey(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadMainkeyEx(i: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTEK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadTEKEx(i: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTWK(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadTWKEx(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTr31EncryptMainkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadWorkKey(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadWorkKeyEx(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function setPinKeyboardMode(i: Integer): Boolean; cdecl;
    procedure setPinPadLayout(b: TJavaArray<Byte>); cdecl;
    procedure stopGetPin; cdecl;
    function storedRecord(i: Integer; i1: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
  end;
  TJAidlPinpad = class(TJavaGenericImport<JAidlPinpadClass, JAidlPinpad>) end;

  JAidlPinpad_StubClass = interface(JBinderClass)
    ['{F74C5470-6388-451B-B191-599ADB26992F}']
    {class} function _GetTRANSACTION_algCalculate: Integer; cdecl;
    {class} function _GetTRANSACTION_algorithDecrypt: Integer; cdecl;
    {class} function _GetTRANSACTION_algorithmCal: Integer; cdecl;
    {class} function _GetTRANSACTION_checkkey: Integer; cdecl;
    {class} function _GetTRANSACTION_confirmGetPin: Integer; cdecl;
    {class} function _GetTRANSACTION_cryptByDukptDataKey: Integer; cdecl;
    {class} function _GetTRANSACTION_cryptByFixedTdk: Integer; cdecl;
    {class} function _GetTRANSACTION_cryptByTdk: Integer; cdecl;
    {class} function _GetTRANSACTION_deletePedKey: Integer; cdecl;
    {class} function _GetTRANSACTION_display: Integer; cdecl;
    {class} function _GetTRANSACTION_dukptKeyBdkToIpek: Integer; cdecl;
    {class} function _GetTRANSACTION_encryptByRandomWk: Integer; cdecl;
    {class} function _GetTRANSACTION_encryptByTdk: Integer; cdecl;
    {class} function _GetTRANSACTION_encryptByTdkEx: Integer; cdecl;
    {class} function _GetTRANSACTION_genKBPKKey: Integer; cdecl;
    {class} function _GetTRANSACTION_genRandomTekEncryptByTek: Integer; cdecl;
    {class} function _GetTRANSACTION_getButtonNum: Integer; cdecl;
    {class} function _GetTRANSACTION_getDUKPTKsn: Integer; cdecl;
    {class} function _GetTRANSACTION_getDUKPTKsnExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getInstalledKey: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyCheckValue: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyCheckValueExt: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyKin: Integer; cdecl;
    {class} function _GetTRANSACTION_getKeyState: Integer; cdecl;
    {class} function _GetTRANSACTION_getMac: Integer; cdecl;
    {class} function _GetTRANSACTION_getRandom: Integer; cdecl;
    {class} function _GetTRANSACTION_getTr31SaveKeyType: Integer; cdecl;
    {class} function _GetTRANSACTION_loadDuKPTkey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadDukptBDK: Integer; cdecl;
    {class} function _GetTRANSACTION_loadDukptIPEK: Integer; cdecl;
    {class} function _GetTRANSACTION_loadEncryptMainkey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadEncryptMainkeyEx: Integer; cdecl;
    {class} function _GetTRANSACTION_loadKey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadKeyByTr31Mode: Integer; cdecl;
    {class} function _GetTRANSACTION_loadKeyCommonMethod: Integer; cdecl;
    {class} function _GetTRANSACTION_loadMainkey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadMainkeyEx: Integer; cdecl;
    {class} function _GetTRANSACTION_loadTEK: Integer; cdecl;
    {class} function _GetTRANSACTION_loadTEKEx: Integer; cdecl;
    {class} function _GetTRANSACTION_loadTWK: Integer; cdecl;
    {class} function _GetTRANSACTION_loadTWKEx: Integer; cdecl;
    {class} function _GetTRANSACTION_loadTr31EncryptMainkey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadWorkKey: Integer; cdecl;
    {class} function _GetTRANSACTION_loadWorkKeyEx: Integer; cdecl;
    {class} function _GetTRANSACTION_setPinKeyboardMode: Integer; cdecl;
    {class} function _GetTRANSACTION_setPinPadLayout: Integer; cdecl;
    {class} function _GetTRANSACTION_stopGetPin: Integer; cdecl;
    {class} function _GetTRANSACTION_storedRecord: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPinpad; cdecl;
    {class} function init: JAidlPinpad_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_algCalculate: Integer read _GetTRANSACTION_algCalculate;
    {class} property TRANSACTION_algorithDecrypt: Integer read _GetTRANSACTION_algorithDecrypt;
    {class} property TRANSACTION_algorithmCal: Integer read _GetTRANSACTION_algorithmCal;
    {class} property TRANSACTION_checkkey: Integer read _GetTRANSACTION_checkkey;
    {class} property TRANSACTION_confirmGetPin: Integer read _GetTRANSACTION_confirmGetPin;
    {class} property TRANSACTION_cryptByDukptDataKey: Integer read _GetTRANSACTION_cryptByDukptDataKey;
    {class} property TRANSACTION_cryptByFixedTdk: Integer read _GetTRANSACTION_cryptByFixedTdk;
    {class} property TRANSACTION_cryptByTdk: Integer read _GetTRANSACTION_cryptByTdk;
    {class} property TRANSACTION_deletePedKey: Integer read _GetTRANSACTION_deletePedKey;
    {class} property TRANSACTION_display: Integer read _GetTRANSACTION_display;
    {class} property TRANSACTION_dukptKeyBdkToIpek: Integer read _GetTRANSACTION_dukptKeyBdkToIpek;
    {class} property TRANSACTION_encryptByRandomWk: Integer read _GetTRANSACTION_encryptByRandomWk;
    {class} property TRANSACTION_encryptByTdk: Integer read _GetTRANSACTION_encryptByTdk;
    {class} property TRANSACTION_encryptByTdkEx: Integer read _GetTRANSACTION_encryptByTdkEx;
    {class} property TRANSACTION_genKBPKKey: Integer read _GetTRANSACTION_genKBPKKey;
    {class} property TRANSACTION_genRandomTekEncryptByTek: Integer read _GetTRANSACTION_genRandomTekEncryptByTek;
    {class} property TRANSACTION_getButtonNum: Integer read _GetTRANSACTION_getButtonNum;
    {class} property TRANSACTION_getDUKPTKsn: Integer read _GetTRANSACTION_getDUKPTKsn;
    {class} property TRANSACTION_getDUKPTKsnExt: Integer read _GetTRANSACTION_getDUKPTKsnExt;
    {class} property TRANSACTION_getInstalledKey: Integer read _GetTRANSACTION_getInstalledKey;
    {class} property TRANSACTION_getKeyCheckValue: Integer read _GetTRANSACTION_getKeyCheckValue;
    {class} property TRANSACTION_getKeyCheckValueExt: Integer read _GetTRANSACTION_getKeyCheckValueExt;
    {class} property TRANSACTION_getKeyKin: Integer read _GetTRANSACTION_getKeyKin;
    {class} property TRANSACTION_getKeyState: Integer read _GetTRANSACTION_getKeyState;
    {class} property TRANSACTION_getMac: Integer read _GetTRANSACTION_getMac;
    {class} property TRANSACTION_getRandom: Integer read _GetTRANSACTION_getRandom;
    {class} property TRANSACTION_getTr31SaveKeyType: Integer read _GetTRANSACTION_getTr31SaveKeyType;
    {class} property TRANSACTION_loadDuKPTkey: Integer read _GetTRANSACTION_loadDuKPTkey;
    {class} property TRANSACTION_loadDukptBDK: Integer read _GetTRANSACTION_loadDukptBDK;
    {class} property TRANSACTION_loadDukptIPEK: Integer read _GetTRANSACTION_loadDukptIPEK;
    {class} property TRANSACTION_loadEncryptMainkey: Integer read _GetTRANSACTION_loadEncryptMainkey;
    {class} property TRANSACTION_loadEncryptMainkeyEx: Integer read _GetTRANSACTION_loadEncryptMainkeyEx;
    {class} property TRANSACTION_loadKey: Integer read _GetTRANSACTION_loadKey;
    {class} property TRANSACTION_loadKeyByTr31Mode: Integer read _GetTRANSACTION_loadKeyByTr31Mode;
    {class} property TRANSACTION_loadKeyCommonMethod: Integer read _GetTRANSACTION_loadKeyCommonMethod;
    {class} property TRANSACTION_loadMainkey: Integer read _GetTRANSACTION_loadMainkey;
    {class} property TRANSACTION_loadMainkeyEx: Integer read _GetTRANSACTION_loadMainkeyEx;
    {class} property TRANSACTION_loadTEK: Integer read _GetTRANSACTION_loadTEK;
    {class} property TRANSACTION_loadTEKEx: Integer read _GetTRANSACTION_loadTEKEx;
    {class} property TRANSACTION_loadTWK: Integer read _GetTRANSACTION_loadTWK;
    {class} property TRANSACTION_loadTWKEx: Integer read _GetTRANSACTION_loadTWKEx;
    {class} property TRANSACTION_loadTr31EncryptMainkey: Integer read _GetTRANSACTION_loadTr31EncryptMainkey;
    {class} property TRANSACTION_loadWorkKey: Integer read _GetTRANSACTION_loadWorkKey;
    {class} property TRANSACTION_loadWorkKeyEx: Integer read _GetTRANSACTION_loadWorkKeyEx;
    {class} property TRANSACTION_setPinKeyboardMode: Integer read _GetTRANSACTION_setPinKeyboardMode;
    {class} property TRANSACTION_setPinPadLayout: Integer read _GetTRANSACTION_setPinPadLayout;
    {class} property TRANSACTION_stopGetPin: Integer read _GetTRANSACTION_stopGetPin;
    {class} property TRANSACTION_storedRecord: Integer read _GetTRANSACTION_storedRecord;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/AidlPinpad$Stub')]
  JAidlPinpad_Stub = interface(JBinder)
    ['{0E5D9083-2C17-4C60-BA95-E1A4A6F4C03E}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPinpad_Stub = class(TJavaGenericImport<JAidlPinpad_StubClass, JAidlPinpad_Stub>) end;

  JAidlPinpad_Stub_ProxyClass = interface(JAidlPinpadClass)
    ['{9918FB0B-2A38-428F-BCF6-204C53A4DD09}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/AidlPinpad$Stub$Proxy')]
  JAidlPinpad_Stub_Proxy = interface(JAidlPinpad)
    ['{6DE7E155-945F-45F6-AC28-B32F162841B0}']
    function algCalculate(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function algorithDecrypt(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function algorithmCal(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function asBinder: JIBinder; cdecl;
    function checkkey(i: Integer; i1: Integer; b: Boolean): TJavaArray<Byte>; cdecl;
    procedure confirmGetPin; cdecl;
    function cryptByDukptDataKey(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function cryptByFixedTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function cryptByTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function deletePedKey(i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function display(string_: JString; string_1: JString): Boolean; cdecl;
    function dukptKeyBdkToIpek(i: Integer): Integer; cdecl;
    function encryptByRandomWk(i: Integer; b: Boolean; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>): Boolean; cdecl;
    function encryptByTdk(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function encryptByTdkEx(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: Byte; b4: TJavaArray<Byte>): Integer; cdecl;
    function genKBPKKey(tr31Mode: JTr31Mode; keyType: JKeyType; i: Integer; asymmetricKey: JAsymmetricKey; b: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function genRandomTekEncryptByTek(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getButtonNum: TJavaArray<Byte>; cdecl;
    function getDUKPTKsn(i: Integer; b: Boolean): TJavaArray<Byte>; cdecl;
    function getDUKPTKsnExt(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getInstalledKey(keyType: JKeyType; i: Integer; intArrayTypeValue: JIntArrayTypeValue): Integer; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getKeyCheckValue(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function getKeyCheckValueExt(i: Integer; i1: Integer; i2: Integer): TJavaArray<Byte>; cdecl;
    function getKeyKin(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function getKeyState(i: Integer; i1: Integer): Boolean; cdecl;
    function getMac(bundle: JBundle; b: TJavaArray<Byte>): Integer; cdecl;
    procedure getPin(bundle: JBundle; getPinListener: JGetPinListener); cdecl;
    function getRandom: TJavaArray<Byte>; cdecl;
    function getTr31SaveKeyType(string_: JString): JKeyType; cdecl;
    function loadDuKPTkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadDukptBDK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadDukptIPEK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadEncryptMainkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadEncryptMainkeyEx(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadKeyByTr31Mode(keyType: JKeyType; i: Integer; i1: Integer; string_: JString; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; bytesTypeValue: JBytesTypeValue): Integer; cdecl;
    function loadKeyCommonMethod(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadMainkey(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadMainkeyEx(i: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTEK(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadTEKEx(i: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTWK(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadTWKEx(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function loadTr31EncryptMainkey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadWorkKey(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Boolean; cdecl;
    function loadWorkKeyEx(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: Byte; b2: TJavaArray<Byte>): Boolean; cdecl;
    function setPinKeyboardMode(i: Integer): Boolean; cdecl;
    procedure setPinPadLayout(b: TJavaArray<Byte>); cdecl;
    procedure stopGetPin; cdecl;
    function storedRecord(i: Integer; i1: Integer; b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
  end;
  TJAidlPinpad_Stub_Proxy = class(TJavaGenericImport<JAidlPinpad_Stub_ProxyClass, JAidlPinpad_Stub_Proxy>) end;

  JGetPinListenerClass = interface(JIInterfaceClass)
    ['{7B63C4C3-980C-4510-96E5-5C0627EF58FA}']
    {class} procedure onInputKey(i: Integer; string_: JString); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/GetPinListener')]
  JGetPinListener = interface(JIInterface)
    ['{A4C94807-7135-49C7-B54F-BA64CDCBC0B9}']
    procedure onCancelKeyPress; cdecl;
    procedure onConfirmInput(b: TJavaArray<Byte>); cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onStopGetPin; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJGetPinListener = class(TJavaGenericImport<JGetPinListenerClass, JGetPinListener>) end;

  JGetPinListener_StubClass = interface(JBinderClass)
    ['{0B22F7DE-E6EA-45AA-BF61-DE213EF2FD24}']
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function _GetTRANSACTION_onTimeout: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JGetPinListener; cdecl;
    {class} function init: JGetPinListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
    {class} property TRANSACTION_onTimeout: Integer read _GetTRANSACTION_onTimeout;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/GetPinListener$Stub')]
  JGetPinListener_Stub = interface(JBinder)
    ['{C4081ADF-B4CA-4588-9442-8D3B7A364B01}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJGetPinListener_Stub = class(TJavaGenericImport<JGetPinListener_StubClass, JGetPinListener_Stub>) end;

  JGetPinListener_Stub_ProxyClass = interface(JGetPinListenerClass)
    ['{E8C8DAF0-C25E-4F36-9F47-E257D47DD199}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/GetPinListener$Stub$Proxy')]
  JGetPinListener_Stub_Proxy = interface(JGetPinListener)
    ['{67FC51EE-31DE-4039-AA5A-9A4786DCF406}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onCancelKeyPress; cdecl;
    procedure onConfirmInput(b: TJavaArray<Byte>); cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onInputKey(i: Integer; string_: JString); cdecl;
    procedure onStopGetPin; cdecl;
    procedure onTimeout; cdecl;
  end;
  TJGetPinListener_Stub_Proxy = class(TJavaGenericImport<JGetPinListener_Stub_ProxyClass, JGetPinListener_Stub_Proxy>) end;

  JMacParamClass = interface(JObjectClass)
    ['{C1BD1001-F14C-4F57-B57F-F818DD5F9ECB}']
    {class} function init(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): JMacParam; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/MacParam')]
  JMacParam = interface(JObject)
    ['{82DA64F0-A4C3-480C-87B9-8CA418C3C7F1}']
    function getParam: JBundle; cdecl;
    procedure setAlgType(i: Integer); cdecl;
    procedure setKeyIndex(i: Integer); cdecl;
    procedure setKeyType(i: Integer); cdecl;
    procedure setMacData(b: TJavaArray<Byte>); cdecl;
    procedure setUseSm4(b: Boolean); cdecl;
  end;
  TJMacParam = class(TJavaGenericImport<JMacParamClass, JMacParam>) end;

  JPinPadAlgParamClass = interface(JObjectClass)
    ['{AF00B4C4-A5EF-4FEE-934C-49FE39463D3C}']
    {class} function init(i: Integer; i1: Integer; i2: Integer; i3: Integer): JPinPadAlgParam; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/PinPadAlgParam')]
  JPinPadAlgParam = interface(JObject)
    ['{ADC5438F-B69F-4408-B888-3F6EAE2C4743}']
    function getPinPadAlgParamData: TJavaArray<Byte>; cdecl;
    procedure setAlgBaseType(i: Integer); cdecl;
    procedure setAlgExtendType(i: Integer); cdecl;
    procedure setData(string_: JString); cdecl; overload;
    procedure setData(b: TJavaArray<Byte>); cdecl; overload;
    procedure setExtendData(b: TJavaArray<Byte>); cdecl;
    procedure setExtendDataForTr31B(b: Byte; b1: Byte; b2: Byte; b3: Byte); cdecl;
    procedure setKeyIndex(i: Integer); cdecl;
    procedure setKeyType(i: Integer); cdecl;
  end;
  TJPinPadAlgParam = class(TJavaGenericImport<JPinPadAlgParamClass, JPinPadAlgParam>) end;

  JPinParamClass = interface(JObjectClass)
    ['{2273F6C1-9D35-4770-821B-C08966083680}']
    {class} function init(i: Integer; i1: Integer; string_: JString; i2: Integer; string_1: JString): JPinParam; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pinpad/PinParam')]
  JPinParam = interface(JObject)
    ['{F55667BB-FF7D-43D5-B3ED-4CB86C4FB028}']
    function getParam: JBundle; cdecl;
    function setAlgType(i: Integer): JPinParam; cdecl;
    function setButtonNum(b: TJavaArray<Byte>): JPinParam; cdecl;
    function setInputPinMode(string_: JString): JPinParam; cdecl;
    function setKeyIndex(i: Integer): JPinParam; cdecl;
    function setKeyLayout(b: TJavaArray<Byte>): JPinParam; cdecl;
    function setKeyMaxLength(i: Integer): JPinParam; cdecl;
    function setKeyMinLength(i: Integer): JPinParam; cdecl;
    function setKeyType(i: Integer): JPinParam; cdecl;
    function setPanBlock(string_: JString): JPinParam; cdecl;
    function setPinType(i: Integer): JPinParam; cdecl;
    function setRandom(b: TJavaArray<Byte>): JPinParam; cdecl;
    function setRefresh(b: Boolean): JPinParam; cdecl;
    function setTimeOut(i: Integer): JPinParam; cdecl;
    function setUseSm4(b: Boolean): JPinParam; cdecl;
  end;
  TJPinParam = class(TJavaGenericImport<JPinParamClass, JPinParam>) end;

  JAidlPMClass = interface(JIInterfaceClass)
    ['{E61E72B4-BA2F-41A2-B78D-48A8C728F75E}']
    {class} function silentInstallKeepUserdata(string_: JString): Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pm/AidlPM')]
  JAidlPM = interface(JIInterface)
    ['{2DD11377-8650-4E75-8759-E190FACA035D}']
    function checkUseFunctionPermission(string_: JString; string_1: JString): Boolean; cdecl;
    procedure enableUninstallApp(b: Boolean); cdecl;
    function getAppSignature(string_: JString): Integer; cdecl;
    function getCustomerKey: JCertificateInfo; cdecl;
    function getEnhancedKey: JCertificateInfo; cdecl;
    function getFactoryKey: JCertificateInfo; cdecl;
    procedure installCACertificate(string_: JString); cdecl;
    function setCustomerKey(string_: JString; string_1: JString): Integer; cdecl;
    function setDefaultLauncher(string_: JString; string_1: JString): Boolean; cdecl;
    function setEnhancedKey(string_: JString; string_1: JString): Integer; cdecl;
    function setFactoryKey(string_: JString; string_1: JString): Integer; cdecl;
    function silentUninstall(string_: JString): Integer; cdecl;
    function systemUpdate(string_: JString): Boolean; cdecl;
  end;
  TJAidlPM = class(TJavaGenericImport<JAidlPMClass, JAidlPM>) end;

  JAidlPM_StubClass = interface(JBinderClass)
    ['{95369AF0-E2DF-46D3-9B9B-420D2CF0EA2F}']
    {class} function _GetTRANSACTION_getAppSignature: Integer; cdecl;
    {class} function _GetTRANSACTION_getEnhancedKey: Integer; cdecl;
    {class} function _GetTRANSACTION_setFactoryKey: Integer; cdecl;
    {class} function _GetTRANSACTION_systemUpdate: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPM; cdecl;
    {class} function init: JAidlPM_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_getAppSignature: Integer read _GetTRANSACTION_getAppSignature;
    {class} property TRANSACTION_getEnhancedKey: Integer read _GetTRANSACTION_getEnhancedKey;
    {class} property TRANSACTION_setFactoryKey: Integer read _GetTRANSACTION_setFactoryKey;
    {class} property TRANSACTION_systemUpdate: Integer read _GetTRANSACTION_systemUpdate;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pm/AidlPM$Stub')]
  JAidlPM_Stub = interface(JBinder)
    ['{F0989D09-89F3-439C-9379-3C949B2BA78E}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPM_Stub = class(TJavaGenericImport<JAidlPM_StubClass, JAidlPM_Stub>) end;

  JAidlPM_Stub_ProxyClass = interface(JAidlPMClass)
    ['{3A515AD3-82E9-4A8A-9DA3-BC7A947EDDCD}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pm/AidlPM$Stub$Proxy')]
  JAidlPM_Stub_Proxy = interface(JAidlPM)
    ['{ADF51B60-1B79-4BF4-B461-735BD9D665D1}']
    function asBinder: JIBinder; cdecl;
    function checkUseFunctionPermission(string_: JString; string_1: JString): Boolean; cdecl;
    procedure enableUninstallApp(b: Boolean); cdecl;
    function getAppSignature(string_: JString): Integer; cdecl;
    function getCustomerKey: JCertificateInfo; cdecl;
    function getEnhancedKey: JCertificateInfo; cdecl;
    function getFactoryKey: JCertificateInfo; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure installCACertificate(string_: JString); cdecl;
    function setCustomerKey(string_: JString; string_1: JString): Integer; cdecl;
    function setDefaultLauncher(string_: JString; string_1: JString): Boolean; cdecl;
    function setEnhancedKey(string_: JString; string_1: JString): Integer; cdecl;
    function setFactoryKey(string_: JString; string_1: JString): Integer; cdecl;
    function silentInstallKeepUserdata(string_: JString): Integer; cdecl;
    function silentUninstall(string_: JString): Integer; cdecl;
    function systemUpdate(string_: JString): Boolean; cdecl;
  end;
  TJAidlPM_Stub_Proxy = class(TJavaGenericImport<JAidlPM_Stub_ProxyClass, JAidlPM_Stub_Proxy>) end;

  JCertificateInfoClass = interface(JParcelableClass)
    ['{6401726E-9C2A-40FD-BE9B-22D1503F3B8F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(x509Certificate: JX509Certificate): JCertificateInfo; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pm/CertificateInfo')]
  JCertificateInfo = interface(JParcelable)
    ['{F91A5248-C0D3-4339-90F1-935CBDCF8DD3}']
    function describeContents: Integer; cdecl;
    function getX509Certificate: JX509Certificate; cdecl;
    procedure setX509Certificate(x509Certificate: JX509Certificate); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJCertificateInfo = class(TJavaGenericImport<JCertificateInfoClass, JCertificateInfo>) end;

  JCertificateInfo_1Class = interface(JParcelable_CreatorClass)
    ['{C14C0FFA-C1B1-4AAD-AE03-0F9415DEBC20}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/pm/CertificateInfo$1')]
  JCertificateInfo_1 = interface(JParcelable_Creator)
    ['{D00EEA41-F4CC-4266-B012-6D9802F19D3D}']
    function createFromParcel(parcel: JParcel): JCertificateInfo; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JCertificateInfo>; cdecl;
  end;
  TJCertificateInfo_1 = class(TJavaGenericImport<JCertificateInfo_1Class, JCertificateInfo_1>) end;

  JAidlPrinterClass = interface(JIInterfaceClass)
    ['{4187F356-BBC5-4B18-B25F-5905C9F8BB44}']
    {class} function getPrinterState: Integer; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinter')]
  JAidlPrinter = interface(JIInterface)
    ['{46679103-C9C7-4C46-834C-0CA9FA1A8365}']
    procedure addBarcode(i: Integer; i1: Integer; string_: JString; i2: Integer; i3: Integer); cdecl;
    function addHuifuImage(bitmap: JBitmap; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    procedure addImage(i: Integer; bitmap: JBitmap); cdecl;
    procedure addImageFile(i: Integer; string_: JString); cdecl;
    procedure addLineFeed(i: Integer); cdecl;
    procedure addQRCode(i: Integer; i1: Integer; string_: JString); cdecl;
    function addRuiBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function addRuiImage(bitmap: JBitmap; i: Integer): Boolean; cdecl;
    function addRuiQRCode(string_: JString; i: Integer; i1: Integer): Boolean; cdecl;
    function addRuiText(list: JList): Boolean; cdecl;
    procedure addText(i: Integer; i1: Integer; i2: Integer; string_: JString); cdecl;
    procedure close; cdecl;
    function cuttingPaper(printCuttingMode: JPrintCuttingMode): Integer; cdecl;
    function getClearPrinterMileage(i: Integer): Int64; cdecl;
    function getPosPrintPaperState: Integer; cdecl;
    function getPrinterGray: Integer; cdecl;
    function getPrinterMessage: JPrinterMessage; cdecl;
    procedure goPaper(i: Integer); cdecl;
    function isPosPrinterCoverOpen: Boolean; cdecl;
    function open: Integer; cdecl;
    procedure printBarCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printBmp(i: Integer; i1: Integer; i2: Integer; bitmap: JBitmap; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printBuf(b: TJavaArray<Byte>): Integer; cdecl;
    procedure printEnhancedText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printQrCode(i: Integer; i1: Integer; i2: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printRollback(i: Integer): Integer; cdecl;
    procedure printRuiQueue(aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function resetQueue: Boolean; cdecl;
    function setPrintLedState(b: Boolean; i: Integer): Integer; cdecl;
    procedure setPrinterGray(i: Integer); cdecl;
    procedure start(aidlPrinterListener: JAidlPrinterListener); cdecl;
  end;
  TJAidlPrinter = class(TJavaGenericImport<JAidlPrinterClass, JAidlPrinter>) end;

  JAidlPrinter_StubClass = interface(JBinderClass)
    ['{D032BF0A-E62B-47B3-B1E4-19B3D4D4008D}']
    {class} function _GetTRANSACTION_addBarcode: Integer; cdecl;
    {class} function _GetTRANSACTION_addHuifuImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addImageFile: Integer; cdecl;
    {class} function _GetTRANSACTION_addLineFeed: Integer; cdecl;
    {class} function _GetTRANSACTION_addQRCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiBarCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiImage: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiQRCode: Integer; cdecl;
    {class} function _GetTRANSACTION_addRuiText: Integer; cdecl;
    {class} function _GetTRANSACTION_addText: Integer; cdecl;
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_cuttingPaper: Integer; cdecl;
    {class} function _GetTRANSACTION_getClearPrinterMileage: Integer; cdecl;
    {class} function _GetTRANSACTION_getPosPrintPaperState: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinterGray: Integer; cdecl;
    {class} function _GetTRANSACTION_getPrinterMessage: Integer; cdecl;
    {class} function _GetTRANSACTION_goPaper: Integer; cdecl;
    {class} function _GetTRANSACTION_isPosPrinterCoverOpen: Integer; cdecl;
    {class} function _GetTRANSACTION_open: Integer; cdecl;
    {class} function _GetTRANSACTION_printBarCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printBmp: Integer; cdecl;
    {class} function _GetTRANSACTION_printBuf: Integer; cdecl;
    {class} function _GetTRANSACTION_printEnhancedText: Integer; cdecl;
    {class} function _GetTRANSACTION_printQrCode: Integer; cdecl;
    {class} function _GetTRANSACTION_printRollback: Integer; cdecl;
    {class} function _GetTRANSACTION_printRuiQueue: Integer; cdecl;
    {class} function _GetTRANSACTION_printText: Integer; cdecl;
    {class} function _GetTRANSACTION_resetQueue: Integer; cdecl;
    {class} function _GetTRANSACTION_setPrintLedState: Integer; cdecl;
    {class} function _GetTRANSACTION_setPrinterGray: Integer; cdecl;
    {class} function _GetTRANSACTION_start: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPrinter; cdecl;
    {class} function init: JAidlPrinter_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_addBarcode: Integer read _GetTRANSACTION_addBarcode;
    {class} property TRANSACTION_addHuifuImage: Integer read _GetTRANSACTION_addHuifuImage;
    {class} property TRANSACTION_addImage: Integer read _GetTRANSACTION_addImage;
    {class} property TRANSACTION_addImageFile: Integer read _GetTRANSACTION_addImageFile;
    {class} property TRANSACTION_addLineFeed: Integer read _GetTRANSACTION_addLineFeed;
    {class} property TRANSACTION_addQRCode: Integer read _GetTRANSACTION_addQRCode;
    {class} property TRANSACTION_addRuiBarCode: Integer read _GetTRANSACTION_addRuiBarCode;
    {class} property TRANSACTION_addRuiImage: Integer read _GetTRANSACTION_addRuiImage;
    {class} property TRANSACTION_addRuiQRCode: Integer read _GetTRANSACTION_addRuiQRCode;
    {class} property TRANSACTION_addRuiText: Integer read _GetTRANSACTION_addRuiText;
    {class} property TRANSACTION_addText: Integer read _GetTRANSACTION_addText;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_cuttingPaper: Integer read _GetTRANSACTION_cuttingPaper;
    {class} property TRANSACTION_getClearPrinterMileage: Integer read _GetTRANSACTION_getClearPrinterMileage;
    {class} property TRANSACTION_getPosPrintPaperState: Integer read _GetTRANSACTION_getPosPrintPaperState;
    {class} property TRANSACTION_getPrinterGray: Integer read _GetTRANSACTION_getPrinterGray;
    {class} property TRANSACTION_getPrinterMessage: Integer read _GetTRANSACTION_getPrinterMessage;
    {class} property TRANSACTION_goPaper: Integer read _GetTRANSACTION_goPaper;
    {class} property TRANSACTION_isPosPrinterCoverOpen: Integer read _GetTRANSACTION_isPosPrinterCoverOpen;
    {class} property TRANSACTION_open: Integer read _GetTRANSACTION_open;
    {class} property TRANSACTION_printBarCode: Integer read _GetTRANSACTION_printBarCode;
    {class} property TRANSACTION_printBmp: Integer read _GetTRANSACTION_printBmp;
    {class} property TRANSACTION_printBuf: Integer read _GetTRANSACTION_printBuf;
    {class} property TRANSACTION_printEnhancedText: Integer read _GetTRANSACTION_printEnhancedText;
    {class} property TRANSACTION_printQrCode: Integer read _GetTRANSACTION_printQrCode;
    {class} property TRANSACTION_printRollback: Integer read _GetTRANSACTION_printRollback;
    {class} property TRANSACTION_printRuiQueue: Integer read _GetTRANSACTION_printRuiQueue;
    {class} property TRANSACTION_printText: Integer read _GetTRANSACTION_printText;
    {class} property TRANSACTION_resetQueue: Integer read _GetTRANSACTION_resetQueue;
    {class} property TRANSACTION_setPrintLedState: Integer read _GetTRANSACTION_setPrintLedState;
    {class} property TRANSACTION_setPrinterGray: Integer read _GetTRANSACTION_setPrinterGray;
    {class} property TRANSACTION_start: Integer read _GetTRANSACTION_start;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinter$Stub')]
  JAidlPrinter_Stub = interface(JBinder)
    ['{3AC15445-090F-4865-B0E6-3F1343267350}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPrinter_Stub = class(TJavaGenericImport<JAidlPrinter_StubClass, JAidlPrinter_Stub>) end;

  JAidlPrinter_Stub_ProxyClass = interface(JAidlPrinterClass)
    ['{97713B6B-D301-4FEB-A5BB-E7C2D515F2D3}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinter$Stub$Proxy')]
  JAidlPrinter_Stub_Proxy = interface(JAidlPrinter)
    ['{FFA7CBAF-D182-4D89-B65D-A03EDF213D54}']
    procedure addBarcode(i: Integer; i1: Integer; string_: JString; i2: Integer; i3: Integer); cdecl;
    function addHuifuImage(bitmap: JBitmap; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    procedure addImage(i: Integer; bitmap: JBitmap); cdecl;
    procedure addImageFile(i: Integer; string_: JString); cdecl;
    procedure addLineFeed(i: Integer); cdecl;
    procedure addQRCode(i: Integer; i1: Integer; string_: JString); cdecl;
    function addRuiBarCode(string_: JString; i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function addRuiImage(bitmap: JBitmap; i: Integer): Boolean; cdecl;
    function addRuiQRCode(string_: JString; i: Integer; i1: Integer): Boolean; cdecl;
    function addRuiText(list: JList): Boolean; cdecl;
    procedure addText(i: Integer; i1: Integer; i2: Integer; string_: JString); cdecl;
    function asBinder: JIBinder; cdecl;
    procedure close; cdecl;
    function cuttingPaper(printCuttingMode: JPrintCuttingMode): Integer; cdecl;
    function getClearPrinterMileage(i: Integer): Int64; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getPosPrintPaperState: Integer; cdecl;
    function getPrinterGray: Integer; cdecl;
    function getPrinterMessage: JPrinterMessage; cdecl;
    function getPrinterState: Integer; cdecl;
    procedure goPaper(i: Integer); cdecl;
    function isPosPrinterCoverOpen: Boolean; cdecl;
    function open: Integer; cdecl;
    procedure printBarCode(i: Integer; i1: Integer; i2: Integer; i3: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printBmp(i: Integer; i1: Integer; i2: Integer; bitmap: JBitmap; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printBuf(b: TJavaArray<Byte>): Integer; cdecl;
    procedure printEnhancedText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printQrCode(i: Integer; i1: Integer; i2: Integer; string_: JString; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function printRollback(i: Integer): Integer; cdecl;
    procedure printRuiQueue(aidlPrinterListener: JAidlPrinterListener); cdecl;
    procedure printText(list: JList; aidlPrinterListener: JAidlPrinterListener); cdecl;
    function resetQueue: Boolean; cdecl;
    function setPrintLedState(b: Boolean; i: Integer): Integer; cdecl;
    procedure setPrinterGray(i: Integer); cdecl;
    procedure start(aidlPrinterListener: JAidlPrinterListener); cdecl;
  end;
  TJAidlPrinter_Stub_Proxy = class(TJavaGenericImport<JAidlPrinter_Stub_ProxyClass, JAidlPrinter_Stub_Proxy>) end;

  JAidlPrinterListenerClass = interface(JIInterfaceClass)
    ['{CDD001D7-1123-4050-8D3D-3CC681863B52}']
    {class} procedure onError(i: Integer); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinterListener')]
  JAidlPrinterListener = interface(JIInterface)
    ['{422DE789-1655-49F4-ACF5-5ECBF25E1618}']
    procedure onPrintFinish; cdecl;
  end;
  TJAidlPrinterListener = class(TJavaGenericImport<JAidlPrinterListenerClass, JAidlPrinterListener>) end;

  JAidlPrinterListener_StubClass = interface(JBinderClass)
    ['{0FB5C718-84AC-417C-87A5-7A3AB9B44573}']
    {class} function _GetTRANSACTION_onPrintFinish: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPrinterListener; cdecl;
    {class} function init: JAidlPrinterListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onPrintFinish: Integer read _GetTRANSACTION_onPrintFinish;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinterListener$Stub')]
  JAidlPrinterListener_Stub = interface(JBinder)
    ['{3CD6E484-34DF-47BE-9395-A794CEE91A31}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPrinterListener_Stub = class(TJavaGenericImport<JAidlPrinterListener_StubClass, JAidlPrinterListener_Stub>) end;

  JAidlPrinterListener_Stub_ProxyClass = interface(JAidlPrinterListenerClass)
    ['{1E2603F2-0061-4935-85A2-75DBF1CD7C7D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/AidlPrinterListener$Stub$Proxy')]
  JAidlPrinterListener_Stub_Proxy = interface(JAidlPrinterListener)
    ['{73782057-3BAC-45F3-8BE7-7D7CAC7CBCA1}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(i: Integer); cdecl;
    procedure onPrintFinish; cdecl;
  end;
  TJAidlPrinterListener_Stub_Proxy = class(TJavaGenericImport<JAidlPrinterListener_Stub_ProxyClass, JAidlPrinterListener_Stub_Proxy>) end;

  JAlignClass = interface(JEnumClass)
    ['{8D01CA94-6B16-47A1-A74E-B7F79C79477A}']
    {class} function _GetCENTER: JAlign; cdecl;
    {class} function _GetLEFT: JAlign; cdecl;
    {class} function _GetRIGHT: JAlign; cdecl;
    {class} function valueOf(string_: JString): JAlign; cdecl;
    {class} function values: TJavaObjectArray<JAlign>; cdecl;//Deprecated
    {class} property CENTER: JAlign read _GetCENTER;
    {class} property LEFT: JAlign read _GetLEFT;
    {class} property RIGHT: JAlign read _GetRIGHT;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/Align')]
  JAlign = interface(JEnum)
    ['{8E0056E2-04A0-4C35-8EAB-610CBC579A38}']
    function getValue: Integer; cdecl;
  end;
  TJAlign = class(TJavaGenericImport<JAlignClass, JAlign>) end;

  JImageUnitClass = interface(JObjectClass)
    ['{02D66D91-9035-4D32-A829-F9AC933E3537}']
    {class} function init(bitmap: JBitmap; i: Integer; i1: Integer): JImageUnit; cdecl; overload;
    {class} function init(rect: JRect; bitmap: JBitmap; i: Integer; i1: Integer): JImageUnit; cdecl; overload;
    {class} function init(align: JAlign; bitmap: JBitmap; i: Integer; i1: Integer): JImageUnit; cdecl; overload;
    {class} function init(rect: JRect; align: JAlign; bitmap: JBitmap; i: Integer; i1: Integer): JImageUnit; cdecl; overload;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/ImageUnit')]
  JImageUnit = interface(JObject)
    ['{14564AE5-945A-46E1-B9B2-E64BCC765BB3}']
    procedure copyValue(imageUnit: JImageUnit); cdecl;
    function getAlign: JAlign; cdecl;
    function getHeight: Integer; cdecl;
    function getImage: JBitmap; cdecl;
    function getMargins: JRect; cdecl;
    function getWidth: Integer; cdecl;
    procedure setAlign(align: JAlign); cdecl;
    procedure setHeight(i: Integer); cdecl;
    procedure setImage(bitmap: JBitmap); cdecl;
    procedure setWidth(i: Integer); cdecl;
  end;
  TJImageUnit = class(TJavaGenericImport<JImageUnitClass, JImageUnit>) end;

  JPrintCuttingModeClass = interface(JEnumClass)
    ['{567AB231-FD3D-4A99-AF24-E13EC2087216}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetCUTTING_MODE_FULL: JPrintCuttingMode; cdecl;
    {class} function _GetCUTTING_MODE_HALT: JPrintCuttingMode; cdecl;
    {class} function valueOf(string_: JString): JPrintCuttingMode; cdecl;
    {class} function values: TJavaObjectArray<JPrintCuttingMode>; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property CUTTING_MODE_FULL: JPrintCuttingMode read _GetCUTTING_MODE_FULL;
    {class} property CUTTING_MODE_HALT: JPrintCuttingMode read _GetCUTTING_MODE_HALT;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintCuttingMode')]
  JPrintCuttingMode = interface(JEnum)
    ['{E049C477-1539-4C43-AB61-83066969044C}']
    function _Getmode: Integer; cdecl;
    procedure _Setmode(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getMode: Integer; cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property mode: Integer read _Getmode write _Setmode;
  end;
  TJPrintCuttingMode = class(TJavaGenericImport<JPrintCuttingModeClass, JPrintCuttingMode>) end;

  JPrintCuttingMode_1Class = interface(JParcelable_CreatorClass)
    ['{935DB398-F520-450D-888F-B6D38389DA62}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintCuttingMode$1')]
  JPrintCuttingMode_1 = interface(JParcelable_Creator)
    ['{18A6B205-EA45-4368-B4F1-9397A8EA5EC7}']
    function createFromParcel(parcel: JParcel): JPrintCuttingMode; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPrintCuttingMode>; cdecl;
  end;
  TJPrintCuttingMode_1 = class(TJavaGenericImport<JPrintCuttingMode_1Class, JPrintCuttingMode_1>) end;

  JPrintItemObjClass = interface(JParcelableClass)
    ['{FB9B03E2-0D34-4D35-9E07-2C943BA180F6}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(parcel: JParcel): JPrintItemObj; cdecl; overload;//Deprecated
    {class} function init(string_: JString): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer; i2: Integer): JPrintItemObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer; i2: Integer; i3: Integer): JPrintItemObj; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintItemObj')]
  JPrintItemObj = interface(JParcelable)
    ['{9F5F249A-12BE-40F0-8211-A71EC058E623}']
    function _Getalign: JPrintItemObj_ALIGN; cdecl;
    procedure _Setalign(Value: JPrintItemObj_ALIGN); cdecl;
    function describeContents: Integer; cdecl;
    function getAlign: JPrintItemObj_ALIGN; cdecl;
    function getFontSize: Integer; cdecl;
    function getLetterSpacing: Integer; cdecl;
    function getLineHeight: Integer; cdecl;
    function getMarginLeft: Integer; cdecl;
    function getText: JString; cdecl;
    function isBold: Boolean; cdecl;
    function isUnderline: Boolean; cdecl;
    function isWordWrap: Boolean; cdecl;
    procedure setAlign(aLIGN: JPrintItemObj_ALIGN); cdecl;
    procedure setBold(b: Boolean); cdecl;
    procedure setFontSize(i: Integer); cdecl;
    procedure setLetterSpacing(i: Integer); cdecl;
    procedure setLineHeight(i: Integer); cdecl;
    procedure setMarginLeft(i: Integer); cdecl;
    procedure setText(string_: JString); cdecl;
    procedure setUnderline(b: Boolean); cdecl;
    procedure setWordWrap(b: Boolean); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property align: JPrintItemObj_ALIGN read _Getalign write _Setalign;
  end;
  TJPrintItemObj = class(TJavaGenericImport<JPrintItemObjClass, JPrintItemObj>) end;

  JPrintItemEnhancedObjClass = interface(JPrintItemObjClass)
    ['{FBA7F8DD-6A68-4C00-9B9B-29009FD598DA}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(string_: JString): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(parcel: JParcel): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer; i2: Integer): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer; i2: Integer; i3: Integer): JPrintItemEnhancedObj; cdecl; overload;
    {class} function init(string_: JString; i: Integer; b: Boolean; aLIGN: JPrintItemObj_ALIGN; b1: Boolean; b2: Boolean; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): JPrintItemEnhancedObj; cdecl; overload;
    {class} //CREATOR is defined in parent interface
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintItemEnhancedObj')]
  JPrintItemEnhancedObj = interface(JPrintItemObj)
    ['{C86CAD2D-BFF1-4CCB-A043-65ABFC26D76F}']
    function describeContents: Integer; cdecl;
    function getScaleX: Integer; cdecl;
    function getScaleY: Integer; cdecl;
    procedure setScaleX(i: Integer); cdecl;
    procedure setScaleY(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJPrintItemEnhancedObj = class(TJavaGenericImport<JPrintItemEnhancedObjClass, JPrintItemEnhancedObj>) end;

  JPrintItemEnhancedObj_1Class = interface(JParcelable_CreatorClass)
    ['{65C77D5B-53D9-48E2-937F-3FF4FB88397E}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintItemEnhancedObj$1')]
  JPrintItemEnhancedObj_1 = interface(JParcelable_Creator)
    ['{852C3521-8E2C-4D52-A860-816936AB4CED}']
    function createFromParcel(parcel: JParcel): JPrintItemEnhancedObj; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPrintItemEnhancedObj>; cdecl;
  end;
  TJPrintItemEnhancedObj_1 = class(TJavaGenericImport<JPrintItemEnhancedObj_1Class, JPrintItemEnhancedObj_1>) end;

  JPrintItemObj_1Class = interface(JParcelable_CreatorClass)
    ['{17A229BF-A235-4489-BFA9-ECC4B2917F09}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintItemObj$1')]
  JPrintItemObj_1 = interface(JParcelable_Creator)
    ['{F7E02F30-4F39-4C03-9ADF-99DBD150E9B1}']
    function createFromParcel(parcel: JParcel): JPrintItemObj; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPrintItemObj>; cdecl;
  end;
  TJPrintItemObj_1 = class(TJavaGenericImport<JPrintItemObj_1Class, JPrintItemObj_1>) end;

  JPrintItemObj_ALIGNClass = interface(JEnumClass)
    ['{65619B57-7851-4356-8DE0-1A6B7A9E0AD5}']
    {class} function _GetCENTER: JPrintItemObj_ALIGN; cdecl;
    {class} function _GetLEFT: JPrintItemObj_ALIGN; cdecl;
    {class} function _GetRIGHT: JPrintItemObj_ALIGN; cdecl;
    {class} function valueOf(string_: JString): JPrintItemObj_ALIGN; cdecl;
    {class} function values: TJavaObjectArray<JPrintItemObj_ALIGN>; cdecl;//Deprecated
    {class} property CENTER: JPrintItemObj_ALIGN read _GetCENTER;
    {class} property LEFT: JPrintItemObj_ALIGN read _GetLEFT;
    {class} property RIGHT: JPrintItemObj_ALIGN read _GetRIGHT;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintItemObj$ALIGN')]
  JPrintItemObj_ALIGN = interface(JEnum)
    ['{6F450A36-D17D-41E0-B3D9-66144B978F1F}']
  end;
  TJPrintItemObj_ALIGN = class(TJavaGenericImport<JPrintItemObj_ALIGNClass, JPrintItemObj_ALIGN>) end;

  JPrintTemplateClass = interface(JObjectClass)
    ['{155656AB-D823-4FB6-B425-0630539B9F94}']
    {class} function getInstance: JPrintTemplate; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrintTemplate')]
  JPrintTemplate = interface(JObject)
    ['{67F62FFD-F9C6-4661-B750-A3FC39BBCD54}']
    procedure add(imageUnit: JImageUnit); cdecl; overload;
    procedure add(textUnit: JTextUnit); cdecl; overload;
    procedure add(list: JList; imageUnit: JImageUnit); cdecl; overload;
    procedure add(imageUnit: JImageUnit; list: JList); cdecl; overload;
    procedure add(i: Integer; textUnit: JTextUnit; i1: Integer; textUnit1: JTextUnit); cdecl; overload;
    procedure add(i: Integer; textUnit: JTextUnit; i1: Integer; textUnit1: JTextUnit; i2: Integer; textUnit2: JTextUnit); cdecl; overload;
    procedure clear; cdecl;
    function getPrintBitmap: JBitmap; cdecl;
    function getStrokeWidth: Single; cdecl;
    procedure init(context: JContext); cdecl; overload;
    procedure init(context: JContext; typeface: JTypeface); cdecl; overload;
    procedure setStrokeWidth(f: Single); cdecl;
    procedure setTypeface(typeface: JTypeface); cdecl;
  end;
  TJPrintTemplate = class(TJavaGenericImport<JPrintTemplateClass, JPrintTemplate>) end;

  JPrinterMessageClass = interface(JParcelableClass)
    ['{88399A9E-FA34-48EC-8847-53DDDF70D3AE}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JPrinterMessage; cdecl; overload;//Deprecated
    {class} function init(parcel: JParcel): JPrinterMessage; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrinterMessage')]
  JPrinterMessage = interface(JParcelable)
    ['{3C2F22B3-D90C-475D-BA34-72B2E41078C6}']
    function _GetprinterCount: Integer; cdecl;
    procedure _SetprinterCount(Value: Integer); cdecl;
    function _GetprinterTemperature: Integer; cdecl;
    procedure _SetprinterTemperature(Value: Integer); cdecl;
    function _GetprinterVoltage: Integer; cdecl;
    procedure _SetprinterVoltage(Value: Integer); cdecl;
    function describeContents: Integer; cdecl;
    function getPrinterCount: Integer; cdecl;
    function getPrinterGray: Integer; cdecl;
    function getPrinterMileage: Int64; cdecl;
    function getPrinterTemperature: Integer; cdecl;
    function getPrinterVoltage: Integer; cdecl;
    procedure setPrinterCount(i: Integer); cdecl;
    procedure setPrinterGray(i: Integer); cdecl;
    procedure setPrinterMileage(l: Int64); cdecl;
    procedure setPrinterTemperature(i: Integer); cdecl;
    procedure setPrinterVoltage(i: Integer); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
    property printerCount: Integer read _GetprinterCount write _SetprinterCount;
    property printerTemperature: Integer read _GetprinterTemperature write _SetprinterTemperature;
    property printerVoltage: Integer read _GetprinterVoltage write _SetprinterVoltage;
  end;
  TJPrinterMessage = class(TJavaGenericImport<JPrinterMessageClass, JPrinterMessage>) end;

  JPrinterMessage_1Class = interface(JParcelable_CreatorClass)
    ['{46F0BAFC-29AB-42CA-9294-80B0F14CC9D9}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrinterMessage$1')]
  JPrinterMessage_1 = interface(JParcelable_Creator)
    ['{FF174D6E-3346-4A0B-BF9E-FC2C0F709DC4}']
    function createFromParcel(parcel: JParcel): JPrinterMessage; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JPrinterMessage>; cdecl;
  end;
  TJPrinterMessage_1 = class(TJavaGenericImport<JPrinterMessage_1Class, JPrinterMessage_1>) end;

  JPrnTextViewClass = interface(JTextViewClass)
    ['{60433C8A-F8A7-4F4A-91F2-9CA66B8780DA}']
    {class} function init(context: JContext): JPrnTextView; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/PrnTextView')]
  JPrnTextView = interface(JTextView)
    ['{63A11DE7-1678-4E4E-B2AC-C1BB63D2B89F}']
    procedure onDraw(canvas: JCanvas); cdecl;
  end;
  TJPrnTextView = class(TJavaGenericImport<JPrnTextViewClass, JPrnTextView>) end;

  JTextUnitClass = interface(JObjectClass)
    ['{BCC49DBF-EB81-45F7-AF4A-8A88D22F8AC0}']
    {class} function init(string_: JString): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; i: Integer): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; align: JAlign): JTextUnit; cdecl; overload;
    {class} function init(string_: JString; i: Integer; align: JAlign): JTextUnit; cdecl; overload;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/TextUnit')]
  JTextUnit = interface(JObject)
    ['{B16C2F7F-9148-4D7B-907C-EE24F6DAD24E}']
    procedure copyValue(textUnit: JTextUnit); cdecl;
    function getAlign: JAlign; cdecl;
    function getFontSize: Integer; cdecl;
    function getFontType: JTypeface; cdecl;
    function getLetterSpacing: Integer; cdecl;
    function getLineSpacing: Integer; cdecl;
    function getScaleX: Single; cdecl;
    function getScaleY: Single; cdecl;
    function getText: JString; cdecl;
    function isBold: Boolean; cdecl;
    function isReverse: Boolean; cdecl;
    function isUnderline: Boolean; cdecl;
    function isWordWrap: Boolean; cdecl;
    procedure setAlign(align: JAlign); cdecl;
    function setBold(b: Boolean): JTextUnit; cdecl;
    procedure setFontSize(i: Integer); cdecl;
    function setFontType(typeface: JTypeface): JTextUnit; cdecl;
    function setLetterSpacing(i: Integer): JTextUnit; cdecl;
    function setLineSpacing(i: Integer): JTextUnit; cdecl;
    function setReverse(b: Boolean): JTextUnit; cdecl;
    function setScaleX(f: Single): JTextUnit; cdecl;
    function setScaleY(f: Single): JTextUnit; cdecl;
    procedure setText(string_: JString); cdecl;
    function setUnderline(b: Boolean): JTextUnit; cdecl;
    function setWordWrap(b: Boolean): JTextUnit; cdecl;
  end;
  TJTextUnit = class(TJavaGenericImport<JTextUnitClass, JTextUnit>) end;

  JTextUnit_TextSizeClass = interface(JObjectClass)
    ['{CB6D0AF5-E282-4228-8315-D69038EA4284}']
    {class} function _GetLARGE: Integer; cdecl;
    {class} function _GetNORMAL: Integer; cdecl;
    {class} function _GetSMALL: Integer; cdecl;
    {class} function _GetXLARGE: Integer; cdecl;
    {class} function init(textUnit: JTextUnit): JTextUnit_TextSize; cdecl;
    {class} property LARGE: Integer read _GetLARGE;
    {class} property NORMAL: Integer read _GetNORMAL;
    {class} property SMALL: Integer read _GetSMALL;
    {class} property XLARGE: Integer read _GetXLARGE;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/printer/TextUnit$TextSize')]
  JTextUnit_TextSize = interface(JObject)
    ['{2ECB189F-983A-479E-95A2-28B568EED16E}']
  end;
  TJTextUnit_TextSize = class(TJavaGenericImport<JTextUnit_TextSizeClass, JTextUnit_TextSize>) end;

  JAidlPsamClass = interface(JIInterfaceClass)
    ['{E18B1F85-2DCC-4248-8DF9-713F708D32C5}']
    {class} function open: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/psam/AidlPsam')]
  JAidlPsam = interface(JIInterface)
    ['{73C410AF-411D-4FEB-BEAE-06B911DBA017}']
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function close: Boolean; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
    function setETU(b: Byte): Boolean; cdecl;
  end;
  TJAidlPsam = class(TJavaGenericImport<JAidlPsamClass, JAidlPsam>) end;

  JAidlPsam_StubClass = interface(JBinderClass)
    ['{26EFF7FF-CF22-4AF0-AF31-81C47EF55304}']
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlPsam; cdecl;
    {class} function init: JAidlPsam_Stub; cdecl;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/psam/AidlPsam$Stub')]
  JAidlPsam_Stub = interface(JBinder)
    ['{D51A07E6-ACDC-496B-B14A-D8DFC208390D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPsam_Stub = class(TJavaGenericImport<JAidlPsam_StubClass, JAidlPsam_Stub>) end;

  JAidlPsam_Stub_ProxyClass = interface(JAidlPsamClass)
    ['{988D34B2-F15A-4D34-A771-8F00C326BD6C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/psam/AidlPsam$Stub$Proxy')]
  JAidlPsam_Stub_Proxy = interface(JAidlPsam)
    ['{0CB2F38D-B573-4081-97DA-22CC1FE3CFD4}']
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function asBinder: JIBinder; cdecl;
    function close: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function open: Boolean; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
    function setETU(b: Byte): Boolean; cdecl;
  end;
  TJAidlPsam_Stub_Proxy = class(TJavaGenericImport<JAidlPsam_Stub_ProxyClass, JAidlPsam_Stub_Proxy>) end;

  JAidlRFCardClass = interface(JIInterfaceClass)
    ['{4201A875-D394-4402-9BA3-EF3A7605A6D3}']
    {class} function open: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/rfcard/AidlRFCard')]
  JAidlRFCard = interface(JIInterface)
    ['{99B6D6E1-4FD9-4E1B-A453-C01EF86079CA}']
    function activateTypeAOrIDCard(i: Integer): TJavaArray<Byte>; cdecl;
    function addValue(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function auth(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function close: Boolean; cdecl;
    function felicaTransceive(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getATQA: TJavaArray<Byte>; cdecl;
    function getCardCode: TJavaArray<Byte>; cdecl;
    function getCardType: Integer; cdecl;
    function getFelicaProtocolData: TJavaArray<Byte>; cdecl;
    function getUID: TJavaArray<Byte>; cdecl;
    function halt: Integer; cdecl;
    function isExist: Boolean; cdecl;
    function isExistMT: Integer; cdecl;
    function readBlock(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function readBlockMT(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function readBlockX(b: Byte): TJavaArray<Byte>; cdecl;
    function reduceValue(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
    function writeBlock(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlRFCard = class(TJavaGenericImport<JAidlRFCardClass, JAidlRFCard>) end;

  JAidlRFCard_StubClass = interface(JBinderClass)
    ['{4009E18A-8B42-4D7C-8942-9976A34A5CEE}']
    {class} function _GetTRANSACTION_apduComm: Integer; cdecl;
    {class} function _GetTRANSACTION_close: Integer; cdecl;
    {class} function _GetTRANSACTION_readBlock: Integer; cdecl;
    {class} function _GetTRANSACTION_reduceValue: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlRFCard; cdecl;
    {class} function init: JAidlRFCard_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_apduComm: Integer read _GetTRANSACTION_apduComm;
    {class} property TRANSACTION_close: Integer read _GetTRANSACTION_close;
    {class} property TRANSACTION_readBlock: Integer read _GetTRANSACTION_readBlock;
    {class} property TRANSACTION_reduceValue: Integer read _GetTRANSACTION_reduceValue;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/rfcard/AidlRFCard$Stub')]
  JAidlRFCard_Stub = interface(JBinder)
    ['{9EC36072-5EC4-4CDC-87BD-6AF08F1FB9DB}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlRFCard_Stub = class(TJavaGenericImport<JAidlRFCard_StubClass, JAidlRFCard_Stub>) end;

  JAidlRFCard_Stub_ProxyClass = interface(JAidlRFCardClass)
    ['{7B96B0B1-C3F6-474C-A11C-C471159CA61D}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/rfcard/AidlRFCard$Stub$Proxy')]
  JAidlRFCard_Stub_Proxy = interface(JAidlRFCard)
    ['{2CA5C659-BDB8-4AFA-9021-8983EDECC839}']
    function activateTypeAOrIDCard(i: Integer): TJavaArray<Byte>; cdecl;
    function addValue(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function apduComm(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function asBinder: JIBinder; cdecl;
    function auth(i: Integer; b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function close: Boolean; cdecl;
    function felicaTransceive(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getATQA: TJavaArray<Byte>; cdecl;
    function getCardCode: TJavaArray<Byte>; cdecl;
    function getCardType: Integer; cdecl;
    function getFelicaProtocolData: TJavaArray<Byte>; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getUID: TJavaArray<Byte>; cdecl;
    function halt: Integer; cdecl;
    function isExist: Boolean; cdecl;
    function isExistMT: Integer; cdecl;
    function open: Boolean; cdecl;
    function readBlock(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function readBlockMT(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function readBlockX(b: Byte): TJavaArray<Byte>; cdecl;
    function reduceValue(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
    function reset(i: Integer): TJavaArray<Byte>; cdecl;
    function writeBlock(b: Byte; b1: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJAidlRFCard_Stub_Proxy = class(TJavaGenericImport<JAidlRFCard_Stub_ProxyClass, JAidlRFCard_Stub_Proxy>) end;

  JAidlScannerManagerClass = interface(JIInterfaceClass)
    ['{96F22D23-81E8-4EFA-ABF3-0F3149E986DB}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/scanner/AidlScannerManager')]
  JAidlScannerManager = interface(JIInterface)
    ['{11EA8FD5-030C-4F68-BB9D-35262DA2244B}']
    function decode(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    procedure exit; cdecl;
  end;
  TJAidlScannerManager = class(TJavaGenericImport<JAidlScannerManagerClass, JAidlScannerManager>) end;

  JAidlScannerManager_StubClass = interface(JBinderClass)
    ['{F45FC622-DE3E-4CF6-8890-01A6E5E86762}']
    {class} function _GetTRANSACTION_decode: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlScannerManager; cdecl;
    {class} function init: JAidlScannerManager_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_decode: Integer read _GetTRANSACTION_decode;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/scanner/AidlScannerManager$Stub')]
  JAidlScannerManager_Stub = interface(JBinder)
    ['{ECDC6690-C13C-454E-BACE-ACEDAD3F5015}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlScannerManager_Stub = class(TJavaGenericImport<JAidlScannerManager_StubClass, JAidlScannerManager_Stub>) end;

  JAidlScannerManager_Stub_ProxyClass = interface(JAidlScannerManagerClass)
    ['{11AAC9EC-007D-434B-8A1B-AF3904DD3B51}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/scanner/AidlScannerManager$Stub$Proxy')]
  JAidlScannerManager_Stub_Proxy = interface(JAidlScannerManager)
    ['{42B7894A-40C0-4A90-A272-666297B18F86}']
    function asBinder: JIBinder; cdecl;
    function decode(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    procedure exit; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function init: Integer; cdecl; overload;
  end;
  TJAidlScannerManager_Stub_Proxy = class(TJavaGenericImport<JAidlScannerManager_Stub_ProxyClass, JAidlScannerManager_Stub_Proxy>) end;

  JAidlSerialportClass = interface(JIInterfaceClass)
    ['{87BCCB49-2A8B-46B4-A86B-77B40666CCCA}']
    {class} function open: Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/serialport/AidlSerialport')]
  JAidlSerialport = interface(JIInterface)
    ['{E82CCA31-CC6A-403D-B458-4B4107FA9508}']
    function close: Boolean; cdecl;
    function init(i: Integer; b: Byte; b1: Byte; b2: Byte): Boolean; cdecl;
    function readData(i: Integer): TJavaArray<Byte>; cdecl;
    function sendData(b: TJavaArray<Byte>; i: Integer): Boolean; cdecl;
  end;
  TJAidlSerialport = class(TJavaGenericImport<JAidlSerialportClass, JAidlSerialport>) end;

  JAidlSerialport_StubClass = interface(JBinderClass)
    ['{39195AC4-723F-41DD-82DD-4075D2A24AD6}']
    {class} function _GetTRANSACTION_init: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlSerialport; cdecl;
    {class} function init: JAidlSerialport_Stub; cdecl;
    {class} property TRANSACTION_init: Integer read _GetTRANSACTION_init;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/serialport/AidlSerialport$Stub')]
  JAidlSerialport_Stub = interface(JBinder)
    ['{A7B4227F-1A82-43C5-B38D-30313CE7346B}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlSerialport_Stub = class(TJavaGenericImport<JAidlSerialport_StubClass, JAidlSerialport_Stub>) end;

  JAidlSerialport_Stub_ProxyClass = interface(JAidlSerialportClass)
    ['{978546E5-F2BD-4BD8-9B48-F112CC284F19}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/serialport/AidlSerialport$Stub$Proxy')]
  JAidlSerialport_Stub_Proxy = interface(JAidlSerialport)
    ['{4E59D53D-D36B-433D-B64C-687B6C189ED5}']
    function asBinder: JIBinder; cdecl;
    function close: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function init(i: Integer; b: Byte; b1: Byte; b2: Byte): Boolean; cdecl; overload;
    function open: Boolean; cdecl;
    function readData(i: Integer): TJavaArray<Byte>; cdecl;
    function sendData(b: TJavaArray<Byte>; i: Integer): Boolean; cdecl;
  end;
  TJAidlSerialport_Stub_Proxy = class(TJavaGenericImport<JAidlSerialport_Stub_ProxyClass, JAidlSerialport_Stub_Proxy>) end;

  JAidlShellMonitorClass = interface(JIInterfaceClass)
    ['{978A3CA3-83A0-426F-86AE-524EEF62D397}']
    {class} function executeCmd(string_: JString): Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/AidlShellMonitor')]
  JAidlShellMonitor = interface(JIInterface)
    ['{1B3DF53E-B33B-4C69-B7F1-9300346942C8}']
    function canRecovery: Boolean; cdecl;
    function executeRootCMD(string_: JString; string_1: JString; string_2: JString): Boolean; cdecl;
    function getHardwareSNCiphertext(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getHardwareSNPlaintext: JString; cdecl;
    function getRootAuth(string_: JString): TJavaArray<Byte>; cdecl;
    function getSM4Ncryption(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    procedure recovery; cdecl;
    function recoveryEnabled(b: Boolean): Boolean; cdecl;
    procedure sendIns(i: Integer; b: Byte; b1: Byte; b2: Byte; b3: TJavaArray<Byte>; instructionSendDataCallback: JInstructionSendDataCallback); cdecl;
  end;
  TJAidlShellMonitor = class(TJavaGenericImport<JAidlShellMonitorClass, JAidlShellMonitor>) end;

  JAidlShellMonitor_StubClass = interface(JBinderClass)
    ['{858FCD59-8208-48CC-9905-AEA49783ECE0}']
    {class} function _GetTRANSACTION_getHardwareSNPlaintext: Integer; cdecl;
    {class} function _GetTRANSACTION_recovery: Integer; cdecl;
    {class} function _GetTRANSACTION_recoveryEnabled: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlShellMonitor; cdecl;
    {class} function init: JAidlShellMonitor_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_getHardwareSNPlaintext: Integer read _GetTRANSACTION_getHardwareSNPlaintext;
    {class} property TRANSACTION_recovery: Integer read _GetTRANSACTION_recovery;
    {class} property TRANSACTION_recoveryEnabled: Integer read _GetTRANSACTION_recoveryEnabled;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/AidlShellMonitor$Stub')]
  JAidlShellMonitor_Stub = interface(JBinder)
    ['{B7466723-98C3-4933-8C91-46657AE93788}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlShellMonitor_Stub = class(TJavaGenericImport<JAidlShellMonitor_StubClass, JAidlShellMonitor_Stub>) end;

  JAidlShellMonitor_Stub_ProxyClass = interface(JAidlShellMonitorClass)
    ['{2598FD93-5501-420F-984C-E44BF7F0CEBF}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/AidlShellMonitor$Stub$Proxy')]
  JAidlShellMonitor_Stub_Proxy = interface(JAidlShellMonitor)
    ['{9DE61140-DA3D-482E-BC8D-034BA011CD63}']
    function asBinder: JIBinder; cdecl;
    function canRecovery: Boolean; cdecl;
    function executeCmd(string_: JString): Boolean; cdecl;
    function executeRootCMD(string_: JString; string_1: JString; string_2: JString): Boolean; cdecl;
    function getHardwareSNCiphertext(b: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function getHardwareSNPlaintext: JString; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getRootAuth(string_: JString): TJavaArray<Byte>; cdecl;
    function getSM4Ncryption(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    procedure recovery; cdecl;
    function recoveryEnabled(b: Boolean): Boolean; cdecl;
    procedure sendIns(i: Integer; b: Byte; b1: Byte; b2: Byte; b3: TJavaArray<Byte>; instructionSendDataCallback: JInstructionSendDataCallback); cdecl;
  end;
  TJAidlShellMonitor_Stub_Proxy = class(TJavaGenericImport<JAidlShellMonitor_Stub_ProxyClass, JAidlShellMonitor_Stub_Proxy>) end;

  JInstructionSendDataCallbackClass = interface(JIInterfaceClass)
    ['{E1DEF380-3745-4E2C-AD33-2152B9BED466}']
    {class} procedure onReceiveData(b: Byte; b1: TJavaArray<Byte>); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/InstructionSendDataCallback')]
  JInstructionSendDataCallback = interface(JIInterface)
    ['{1E756912-01CB-4F67-A750-CF0497933F5B}']
  end;
  TJInstructionSendDataCallback = class(TJavaGenericImport<JInstructionSendDataCallbackClass, JInstructionSendDataCallback>) end;

  JInstructionSendDataCallback_StubClass = interface(JBinderClass)
    ['{5748AD8C-8D04-4734-9DBD-635E1B4AA221}']
    {class} function asInterface(iBinder: JIBinder): JInstructionSendDataCallback; cdecl;
    {class} function init: JInstructionSendDataCallback_Stub; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/InstructionSendDataCallback$Stub')]
  JInstructionSendDataCallback_Stub = interface(JBinder)
    ['{C3FAE7E2-D891-4926-A4AE-D2D385696B8F}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJInstructionSendDataCallback_Stub = class(TJavaGenericImport<JInstructionSendDataCallback_StubClass, JInstructionSendDataCallback_Stub>) end;

  JInstructionSendDataCallback_Stub_ProxyClass = interface(JInstructionSendDataCallbackClass)
    ['{62751E9A-076B-48F2-8A5B-54AA1B98C77C}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/shellmonitor/InstructionSendDataCallback$Stub$Proxy')]
  JInstructionSendDataCallback_Stub_Proxy = interface(JInstructionSendDataCallback)
    ['{B7481412-68FB-486D-8910-B28B0B6DE304}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onReceiveData(b: Byte; b1: TJavaArray<Byte>); cdecl;
  end;
  TJInstructionSendDataCallback_Stub_Proxy = class(TJavaGenericImport<JInstructionSendDataCallback_Stub_ProxyClass, JInstructionSendDataCallback_Stub_Proxy>) end;

  JAidlPosKeyListenerClass = interface(JIInterfaceClass)
    ['{1D469898-0273-42A9-BC46-85BE0A97FD23}']
    {class} procedure dispatchKeyEvent(keyEvent: JKeyEvent); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlPosKeyListener')]
  JAidlPosKeyListener = interface(JIInterface)
    ['{75193CEF-2C27-4CE9-AA38-04C8F59A1E03}']
  end;
  TJAidlPosKeyListener = class(TJavaGenericImport<JAidlPosKeyListenerClass, JAidlPosKeyListener>) end;

  JAidlPosKeyListener_StubClass = interface(JBinderClass)
    ['{7D79A175-52C6-45B3-9BCD-9B969A982B17}']
    {class} function asInterface(iBinder: JIBinder): JAidlPosKeyListener; cdecl;
    {class} function init: JAidlPosKeyListener_Stub; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlPosKeyListener$Stub')]
  JAidlPosKeyListener_Stub = interface(JBinder)
    ['{6B073708-208F-4D0B-A30B-1C781C1A7AF9}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlPosKeyListener_Stub = class(TJavaGenericImport<JAidlPosKeyListener_StubClass, JAidlPosKeyListener_Stub>) end;

  JAidlPosKeyListener_Stub_ProxyClass = interface(JAidlPosKeyListenerClass)
    ['{646F087A-25C4-4C02-85E6-97EC9A1B56E6}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlPosKeyListener$Stub$Proxy')]
  JAidlPosKeyListener_Stub_Proxy = interface(JAidlPosKeyListener)
    ['{F23CEB0E-CFA4-4263-8338-2D3042664A9A}']
    function asBinder: JIBinder; cdecl;
    procedure dispatchKeyEvent(keyEvent: JKeyEvent); cdecl;
    function getInterfaceDescriptor: JString; cdecl;
  end;
  TJAidlPosKeyListener_Stub_Proxy = class(TJavaGenericImport<JAidlPosKeyListener_Stub_ProxyClass, JAidlPosKeyListener_Stub_Proxy>) end;

  JAidlSystemClass = interface(JIInterfaceClass)
    ['{F25BAFF7-3D36-4627-8C46-83AE70736902}']
    {class} function getSerialNo: JString; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlSystem')]
  JAidlSystem = interface(JIInterface)
    ['{89F577CC-0993-49C7-BEEE-226A2F30FB1F}']
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

  JAidlSystem_Stub_ProxyClass = interface(JAidlSystemClass)
    ['{D02F4F12-DB5E-472B-B065-82D683B96C31}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/AidlSystem$Stub$Proxy')]
  JAidlSystem_Stub_Proxy = interface(JAidlSystem)
    ['{5AD4E000-2647-46A0-9F5B-5C17AAC2FA38}']
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
    function asBinder: JIBinder; cdecl;
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
    function getInterfaceDescriptor: JString; cdecl;
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
  TJAidlSystem_Stub_Proxy = class(TJavaGenericImport<JAidlSystem_Stub_ProxyClass, JAidlSystem_Stub_Proxy>) end;

  JApnInfoClass = interface(JBaseStructClass)
    ['{C7D8A16A-D6D8-4FCC-BC29-482A931E062F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JApnInfo; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/ApnInfo')]
  JApnInfo = interface(JBaseStruct)
    ['{D7605968-5F18-49FB-88AC-91BB49A551E4}']
    function describeContents: Integer; cdecl;
    function getApn: JString; cdecl;
    function getKey: JString; cdecl;
    function getMvnoMatchData: JString; cdecl;
    function getMvnoType: JString; cdecl;
    function getName: JString; cdecl;
    function getSourcetype: Integer; cdecl;
    function getType: JString; cdecl;
    procedure setApn(string_: JString); cdecl;
    procedure setKey(string_: JString); cdecl;
    procedure setMvnoMatchData(string_: JString); cdecl;
    procedure setMvnoType(string_: JString); cdecl;
    procedure setName(string_: JString); cdecl;
    procedure setSourcetype(i: Integer); cdecl;
    procedure setType(string_: JString); cdecl;
    procedure writeToParcel(parcel: JParcel; i: Integer); cdecl;
  end;
  TJApnInfo = class(TJavaGenericImport<JApnInfoClass, JApnInfo>) end;

  JApnInfo_1Class = interface(JParcelable_CreatorClass)
    ['{916BBE71-2B60-4508-9BE3-27959BF82C53}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/ApnInfo$1')]
  JApnInfo_1 = interface(JParcelable_Creator)
    ['{D4AADA6A-CB8F-4675-9C1B-5F60BB565354}']
    function createFromParcel(parcel: JParcel): JApnInfo; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JApnInfo>; cdecl;
  end;
  TJApnInfo_1 = class(TJavaGenericImport<JApnInfo_1Class, JApnInfo_1>) end;

  JApnInfoExtClass = interface(JParcelableClass)
    ['{45AC2235-6DF2-455A-A652-822440330ED1}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JApnInfoExt; cdecl; overload;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/ApnInfoExt')]
  JApnInfoExt = interface(JParcelable)
    ['{B1DA725E-6B16-407A-90F1-17F08FCF30C7}']
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

  JApnInfoExt_1Class = interface(JParcelable_CreatorClass)
    ['{1329C6C8-6298-47E6-BBA3-1951CCE48BD7}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/ApnInfoExt$1')]
  JApnInfoExt_1 = interface(JParcelable_Creator)
    ['{CBF0E72D-4315-42A2-B50E-23EF4CDB946A}']
    function createFromParcel(parcel: JParcel): JApnInfoExt; cdecl;
    function newArray(i: Integer): TJavaObjectArray<JApnInfoExt>; cdecl;
  end;
  TJApnInfoExt_1 = class(TJavaGenericImport<JApnInfoExt_1Class, JApnInfoExt_1>) end;

  JInstallAppObserverClass = interface(JIInterfaceClass)
    ['{037BD5A4-AA26-40E8-A14A-13D8D1238A09}']
    {class} procedure onInstallFinished; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/InstallAppObserver')]
  JInstallAppObserver = interface(JIInterface)
    ['{FA154741-9470-4C5B-80E8-EFC292C7E49A}']
    procedure onInstallError(i: Integer); cdecl;
  end;
  TJInstallAppObserver = class(TJavaGenericImport<JInstallAppObserverClass, JInstallAppObserver>) end;

  JInstallAppObserver_StubClass = interface(JBinderClass)
    ['{966E6A27-AB16-4F9A-80C4-7292275EC9C1}']
    {class} function _GetTRANSACTION_onInstallError: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JInstallAppObserver; cdecl;
    {class} function init: JInstallAppObserver_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onInstallError: Integer read _GetTRANSACTION_onInstallError;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/InstallAppObserver$Stub')]
  JInstallAppObserver_Stub = interface(JBinder)
    ['{C2B8485E-50C8-407D-BA62-62D68D179FE6}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJInstallAppObserver_Stub = class(TJavaGenericImport<JInstallAppObserver_StubClass, JInstallAppObserver_Stub>) end;

  JInstallAppObserver_Stub_ProxyClass = interface(JInstallAppObserverClass)
    ['{21C027D9-4DFE-41CC-B6A7-1E61C4E7A918}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/InstallAppObserver$Stub$Proxy')]
  JInstallAppObserver_Stub_Proxy = interface(JInstallAppObserver)
    ['{6A4044A3-663F-4595-AD64-AE7A6895BFE8}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onInstallError(i: Integer); cdecl;
    procedure onInstallFinished; cdecl;
  end;
  TJInstallAppObserver_Stub_Proxy = class(TJavaGenericImport<JInstallAppObserver_Stub_ProxyClass, JInstallAppObserver_Stub_Proxy>) end;

  JUninstallAppObserverClass = interface(JIInterfaceClass)
    ['{0EA0902A-418E-4B92-8FC7-29A49490FD7B}']
    {class} procedure onUninstallFinished; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/UninstallAppObserver')]
  JUninstallAppObserver = interface(JIInterface)
    ['{9B9134C6-8C96-4E5E-970A-6B1A138FCFF0}']
    procedure onUninstallError(i: Integer); cdecl;
  end;
  TJUninstallAppObserver = class(TJavaGenericImport<JUninstallAppObserverClass, JUninstallAppObserver>) end;

  JUninstallAppObserver_StubClass = interface(JBinderClass)
    ['{2D715007-D6DA-4E2B-B2B2-F0F892C90C67}']
    {class} function _GetTRANSACTION_onUninstallError: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JUninstallAppObserver; cdecl;
    {class} function init: JUninstallAppObserver_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onUninstallError: Integer read _GetTRANSACTION_onUninstallError;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/UninstallAppObserver$Stub')]
  JUninstallAppObserver_Stub = interface(JBinder)
    ['{9F83686D-A636-4343-B21B-16348CCE6AF6}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJUninstallAppObserver_Stub = class(TJavaGenericImport<JUninstallAppObserver_StubClass, JUninstallAppObserver_Stub>) end;

  JUninstallAppObserver_Stub_ProxyClass = interface(JUninstallAppObserverClass)
    ['{F6EBD7D5-F2A6-4B61-B0C2-83F5C75A6D12}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/system/UninstallAppObserver$Stub$Proxy')]
  JUninstallAppObserver_Stub_Proxy = interface(JUninstallAppObserver)
    ['{EA0DC273-510C-46A3-A8D7-81AB4A487F1D}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onUninstallError(i: Integer); cdecl;
    procedure onUninstallFinished; cdecl;
  end;
  TJUninstallAppObserver_Stub_Proxy = class(TJavaGenericImport<JUninstallAppObserver_Stub_ProxyClass, JUninstallAppObserver_Stub_Proxy>) end;

  JAidlTMClass = interface(JIInterfaceClass)
    ['{B66C29A8-C6F4-48B5-B3ED-3A0F1723C250}']
    {class} function getTMSAppList(aidlTMListener: JAidlTMListener; i: Integer): Boolean; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTM')]
  JAidlTM = interface(JIInterface)
    ['{82241CC2-7C83-4A4C-89A7-C4EA04A26706}']
    function getTMSFileList: JList; cdecl;
    function getTMSParameter(aidlTMListener: JAidlTMListener; i: Integer): Boolean; cdecl;
  end;
  TJAidlTM = class(TJavaGenericImport<JAidlTMClass, JAidlTM>) end;

  JAidlTM_StubClass = interface(JBinderClass)
    ['{4EBED357-FA4C-451D-94B9-45D11A239960}']
    {class} function _GetTRANSACTION_getTMSParameter: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlTM; cdecl;
    {class} function init: JAidlTM_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_getTMSParameter: Integer read _GetTRANSACTION_getTMSParameter;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTM$Stub')]
  JAidlTM_Stub = interface(JBinder)
    ['{D3244F3A-446A-4C43-B769-EBDB9C1EE1AB}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlTM_Stub = class(TJavaGenericImport<JAidlTM_StubClass, JAidlTM_Stub>) end;

  JAidlTM_Stub_ProxyClass = interface(JAidlTMClass)
    ['{00C41852-CCC4-4675-B246-44587A6C1984}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTM$Stub$Proxy')]
  JAidlTM_Stub_Proxy = interface(JAidlTM)
    ['{1CEBE092-E99E-462A-9E4B-CA3815E7B391}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTMSAppList(aidlTMListener: JAidlTMListener; i: Integer): Boolean; cdecl;
    function getTMSFileList: JList; cdecl;
    function getTMSParameter(aidlTMListener: JAidlTMListener; i: Integer): Boolean; cdecl;
  end;
  TJAidlTM_Stub_Proxy = class(TJavaGenericImport<JAidlTM_Stub_ProxyClass, JAidlTM_Stub_Proxy>) end;

  JAidlTMListenerClass = interface(JIInterfaceClass)
    ['{29CB8F22-13BC-4FB4-91F4-2FA3CE40A873}']
    {class} procedure onResult(string_: JString); cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTMListener')]
  JAidlTMListener = interface(JIInterface)
    ['{29A174D8-E382-4E4E-ABA0-BC9195671D68}']
    procedure onError(string_: JString); cdecl;
    procedure onTimeOut; cdecl;
  end;
  TJAidlTMListener = class(TJavaGenericImport<JAidlTMListenerClass, JAidlTMListener>) end;

  JAidlTMListener_StubClass = interface(JBinderClass)
    ['{47660BD1-6B0C-40F7-A073-CF95A45894E7}']
    {class} function _GetTRANSACTION_onError: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlTMListener; cdecl;
    {class} function init: JAidlTMListener_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_onError: Integer read _GetTRANSACTION_onError;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTMListener$Stub')]
  JAidlTMListener_Stub = interface(JBinder)
    ['{4FBA7D8A-5138-4E6E-80DE-CF55E9ECA7C2}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlTMListener_Stub = class(TJavaGenericImport<JAidlTMListener_StubClass, JAidlTMListener_Stub>) end;

  JAidlTMListener_Stub_ProxyClass = interface(JAidlTMListenerClass)
    ['{8ED6C682-1DDB-48D7-BA5F-D1C95345F697}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/tm/AidlTMListener$Stub$Proxy')]
  JAidlTMListener_Stub_Proxy = interface(JAidlTMListener)
    ['{16A2472C-B446-4A4E-8076-B12A06E6723F}']
    function asBinder: JIBinder; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    procedure onError(string_: JString); cdecl;
    procedure onResult(string_: JString); cdecl;
    procedure onTimeOut; cdecl;
  end;
  TJAidlTMListener_Stub_Proxy = class(TJavaGenericImport<JAidlTMListener_Stub_ProxyClass, JAidlTMListener_Stub_Proxy>) end;

  JAidlTriggerStatusClass = interface(JIInterfaceClass)
    ['{FEBEEB74-C67E-4398-AD72-4364CE2C01C1}']
    {class} function getTriggerStatus: TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/trigger/AidlTriggerStatus')]
  JAidlTriggerStatus = interface(JIInterface)
    ['{D5033712-FD8A-4CE6-AE07-70A5DE88E8F5}']
    function cleanTriggerStatus: Boolean; cdecl;
    function getTamperEnableState: Integer; cdecl;
  end;
  TJAidlTriggerStatus = class(TJavaGenericImport<JAidlTriggerStatusClass, JAidlTriggerStatus>) end;

  JAidlTriggerStatus_StubClass = interface(JBinderClass)
    ['{535ECACB-6F63-4F35-A8C9-7869159474A0}']
    {class} function _GetTRANSACTION_cleanTriggerStatus: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JAidlTriggerStatus; cdecl;
    {class} function init: JAidlTriggerStatus_Stub; cdecl;//Deprecated
    {class} property TRANSACTION_cleanTriggerStatus: Integer read _GetTRANSACTION_cleanTriggerStatus;
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/trigger/AidlTriggerStatus$Stub')]
  JAidlTriggerStatus_Stub = interface(JBinder)
    ['{B0E1E995-4A66-4082-89E2-8CC831F06D35}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJAidlTriggerStatus_Stub = class(TJavaGenericImport<JAidlTriggerStatus_StubClass, JAidlTriggerStatus_Stub>) end;

  JAidlTriggerStatus_Stub_ProxyClass = interface(JAidlTriggerStatusClass)
    ['{E356B335-2F15-438F-A584-4CA4B84AB089}']
  end;

  [JavaSignature('com/topwise/cloudpos/aidl/trigger/AidlTriggerStatus$Stub$Proxy')]
  JAidlTriggerStatus_Stub_Proxy = interface(JAidlTriggerStatus)
    ['{B5021799-8A47-4893-802D-01BE034AC65F}']
    function asBinder: JIBinder; cdecl;
    function cleanTriggerStatus: Boolean; cdecl;
    function getInterfaceDescriptor: JString; cdecl;
    function getTamperEnableState: Integer; cdecl;
    function getTriggerStatus: TJavaArray<Byte>; cdecl;
  end;
  TJAidlTriggerStatus_Stub_Proxy = class(TJavaGenericImport<JAidlTriggerStatus_Stub_ProxyClass, JAidlTriggerStatus_Stub_Proxy>) end;

  JAidlErrorCodeClass = interface(JObjectClass)
    ['{A78C891A-CD3D-4B55-A65A-15873F2222E2}']
    {class} function init: JAidlErrorCode; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode')]
  JAidlErrorCode = interface(JObject)
    ['{2B1792C5-C2B6-4A65-9DAE-1ACDF547070C}']
  end;
  TJAidlErrorCode = class(TJavaGenericImport<JAidlErrorCodeClass, JAidlErrorCode>) end;

  JAidlErrorCode_CPUCardClass = interface(JObjectClass)
    ['{C2017FC5-0EA2-4A58-8C21-051E8E262FFE}']
    {class} function _GetCARD_NOT_SUPPORTED: Integer; cdecl;
    {class} function _GetOPEN_FAILED: Integer; cdecl;
    {class} function _GetOPEN_SUCCEED: Integer; cdecl;
    {class} function init: JAidlErrorCode_CPUCard; cdecl;//Deprecated
    {class} property CARD_NOT_SUPPORTED: Integer read _GetCARD_NOT_SUPPORTED;
    {class} property OPEN_FAILED: Integer read _GetOPEN_FAILED;
    {class} property OPEN_SUCCEED: Integer read _GetOPEN_SUCCEED;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$CPUCard')]
  JAidlErrorCode_CPUCard = interface(JObject)
    ['{3B721BF8-639F-41CB-B9C3-EB95A59B7896}']
  end;
  TJAidlErrorCode_CPUCard = class(TJavaGenericImport<JAidlErrorCode_CPUCardClass, JAidlErrorCode_CPUCard>) end;

  JAidlErrorCode_EMVClass = interface(JObjectClass)
    ['{B0D5F682-E10E-4C5E-A37C-C7E6DC7536A6}']
    {class} function _GetEMV_AID_NULL: Integer; cdecl;
    {class} function _GetEMV_ILLIGAL_PARAMETER_ERROR: Integer; cdecl;
    {class} function _GetEMV_KERNEL_COMMUNICATE_ERROR: Integer; cdecl;
    {class} function _GetEMV_KERNEL_EXCUTE_ERROR: Integer; cdecl;
    {class} function _GetEMV_KERNEL_UNKNOWN_EVENTID_ERROR: Integer; cdecl;
    {class} function _GetEMV_PUBLICKEY_AID_EXIST: Integer; cdecl;
    {class} function _GetEMV_PUBLICKEY_AID_NULL: Integer; cdecl;
    {class} function _GetEMV_PUBLICKEY_NULL: Integer; cdecl;
    {class} function _GetEMV_READ_KERNEL_DATA_FAIL: Integer; cdecl;
    {class} function _GetERROR_CHECK_ICCARD_ERROR: Integer; cdecl;
    {class} function _GetERROR_CHECK_ICCARD_RESET_ERROR: Integer; cdecl;
    {class} function _GetERROR_CHECK_MAGCARD_ERROR: Integer; cdecl;
    {class} function _GetERROR_CHECK_PARAMS_ERROR: Integer; cdecl;
    {class} function _GetERROR_CHECK_REFUSE_MAGCARD_FOR_ICCARD: Integer; cdecl;
    {class} function _GetERROR_CHECK_RFCARD_ERROR: Integer; cdecl;
    {class} function _GetERROR_CHECK_TDK_NOT_EXIST: Integer; cdecl;
    {class} function _GetSPEC_CODE_APDU_EXCHANGE_FAIL: Integer; cdecl;
    {class} function _GetSPEC_CODE_APDU_SW_FAIL: Integer; cdecl;
    {class} function _GetSPEC_CODE_APP_LOCK: Integer; cdecl;
    {class} function _GetSPEC_CODE_CANCEL: Integer; cdecl;
    {class} function _GetSPEC_CODE_CARD_LOCK: Integer; cdecl;
    {class} function _GetSPEC_CODE_NO_APP: Integer; cdecl;
    {class} function _GetSPEC_CODE_OTHER: Integer; cdecl;
    {class} function _GetSPEC_CODE_SERVICE_NOT_ALLOWED: Integer; cdecl;
    {class} function init: JAidlErrorCode_EMV; cdecl;//Deprecated
    {class} property EMV_AID_NULL: Integer read _GetEMV_AID_NULL;
    {class} property EMV_ILLIGAL_PARAMETER_ERROR: Integer read _GetEMV_ILLIGAL_PARAMETER_ERROR;
    {class} property EMV_KERNEL_COMMUNICATE_ERROR: Integer read _GetEMV_KERNEL_COMMUNICATE_ERROR;
    {class} property EMV_KERNEL_EXCUTE_ERROR: Integer read _GetEMV_KERNEL_EXCUTE_ERROR;
    {class} property EMV_KERNEL_UNKNOWN_EVENTID_ERROR: Integer read _GetEMV_KERNEL_UNKNOWN_EVENTID_ERROR;
    {class} property EMV_PUBLICKEY_AID_EXIST: Integer read _GetEMV_PUBLICKEY_AID_EXIST;
    {class} property EMV_PUBLICKEY_AID_NULL: Integer read _GetEMV_PUBLICKEY_AID_NULL;
    {class} property EMV_PUBLICKEY_NULL: Integer read _GetEMV_PUBLICKEY_NULL;
    {class} property EMV_READ_KERNEL_DATA_FAIL: Integer read _GetEMV_READ_KERNEL_DATA_FAIL;
    {class} property ERROR_CHECK_ICCARD_ERROR: Integer read _GetERROR_CHECK_ICCARD_ERROR;
    {class} property ERROR_CHECK_ICCARD_RESET_ERROR: Integer read _GetERROR_CHECK_ICCARD_RESET_ERROR;
    {class} property ERROR_CHECK_MAGCARD_ERROR: Integer read _GetERROR_CHECK_MAGCARD_ERROR;
    {class} property ERROR_CHECK_PARAMS_ERROR: Integer read _GetERROR_CHECK_PARAMS_ERROR;
    {class} property ERROR_CHECK_REFUSE_MAGCARD_FOR_ICCARD: Integer read _GetERROR_CHECK_REFUSE_MAGCARD_FOR_ICCARD;
    {class} property ERROR_CHECK_RFCARD_ERROR: Integer read _GetERROR_CHECK_RFCARD_ERROR;
    {class} property ERROR_CHECK_TDK_NOT_EXIST: Integer read _GetERROR_CHECK_TDK_NOT_EXIST;
    {class} property SPEC_CODE_APDU_EXCHANGE_FAIL: Integer read _GetSPEC_CODE_APDU_EXCHANGE_FAIL;
    {class} property SPEC_CODE_APDU_SW_FAIL: Integer read _GetSPEC_CODE_APDU_SW_FAIL;
    {class} property SPEC_CODE_APP_LOCK: Integer read _GetSPEC_CODE_APP_LOCK;
    {class} property SPEC_CODE_CANCEL: Integer read _GetSPEC_CODE_CANCEL;
    {class} property SPEC_CODE_CARD_LOCK: Integer read _GetSPEC_CODE_CARD_LOCK;
    {class} property SPEC_CODE_NO_APP: Integer read _GetSPEC_CODE_NO_APP;
    {class} property SPEC_CODE_OTHER: Integer read _GetSPEC_CODE_OTHER;
    {class} property SPEC_CODE_SERVICE_NOT_ALLOWED: Integer read _GetSPEC_CODE_SERVICE_NOT_ALLOWED;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$EMV')]
  JAidlErrorCode_EMV = interface(JObject)
    ['{BAAE846A-C603-46A4-9D7D-97368EABCC20}']
  end;
  TJAidlErrorCode_EMV = class(TJavaGenericImport<JAidlErrorCode_EMVClass, JAidlErrorCode_EMV>) end;

  JAidlErrorCode_MagCardClass = interface(JObjectClass)
    ['{E488B692-A6B1-4135-8808-6FA2BD5CF269}']
    {class} function _GetDEVICE_IS_BUSY: Integer; cdecl;
    {class} function _GetOTHER_ERROR: Integer; cdecl;
    {class} function _GetTRACK_DATA_ERR: Integer; cdecl;
    {class} function init: JAidlErrorCode_MagCard; cdecl;//Deprecated
    {class} property DEVICE_IS_BUSY: Integer read _GetDEVICE_IS_BUSY;
    {class} property OTHER_ERROR: Integer read _GetOTHER_ERROR;
    {class} property TRACK_DATA_ERR: Integer read _GetTRACK_DATA_ERR;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$MagCard')]
  JAidlErrorCode_MagCard = interface(JObject)
    ['{60FA3CEA-8B0D-4CBB-953E-0370C6D291C7}']
  end;
  TJAidlErrorCode_MagCard = class(TJavaGenericImport<JAidlErrorCode_MagCardClass, JAidlErrorCode_MagCard>) end;

  JAidlErrorCode_PinpadClass = interface(JObjectClass)
    ['{1A9DEC34-0731-4285-838D-18AAE00551D5}']
    {class} function _GetERROR_ENCRYPT: Integer; cdecl;
    {class} function _GetERROR_INPUTTIMES: Integer; cdecl;
    {class} function _GetERROR_INPUT_LEN: Integer; cdecl;
    {class} function _GetERROR_INPUT_PARAM: Integer; cdecl;
    {class} function _GetERROR_KEYTYPE: Integer; cdecl;
    {class} function _GetERROR_MAC: Integer; cdecl;
    {class} function _GetERROR_NODEV: Integer; cdecl;
    {class} function _GetERROR_PINPAD_NO_SUPPORT: Integer; cdecl;
    {class} function _GetERROR_TIMEOUT: Integer; cdecl;
    {class} function _GetERROR_UNKNOWN: Integer; cdecl;
    {class} function init: JAidlErrorCode_Pinpad; cdecl;//Deprecated
    {class} property ERROR_ENCRYPT: Integer read _GetERROR_ENCRYPT;
    {class} property ERROR_INPUTTIMES: Integer read _GetERROR_INPUTTIMES;
    {class} property ERROR_INPUT_LEN: Integer read _GetERROR_INPUT_LEN;
    {class} property ERROR_INPUT_PARAM: Integer read _GetERROR_INPUT_PARAM;
    {class} property ERROR_KEYTYPE: Integer read _GetERROR_KEYTYPE;
    {class} property ERROR_MAC: Integer read _GetERROR_MAC;
    {class} property ERROR_NODEV: Integer read _GetERROR_NODEV;
    {class} property ERROR_PINPAD_NO_SUPPORT: Integer read _GetERROR_PINPAD_NO_SUPPORT;
    {class} property ERROR_TIMEOUT: Integer read _GetERROR_TIMEOUT;
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$Pinpad')]
  JAidlErrorCode_Pinpad = interface(JObject)
    ['{7A47251F-0A00-4692-A57E-185755C5289B}']
  end;
  TJAidlErrorCode_Pinpad = class(TJavaGenericImport<JAidlErrorCode_PinpadClass, JAidlErrorCode_Pinpad>) end;

  JAidlErrorCode_PrinterClass = interface(JObjectClass)
    ['{3295525D-E54F-48EB-9C2D-F3B4C1215CFC}']
    {class} function _GetERROR_DEV_IS_BUSY: Integer; cdecl;
    {class} function _GetERROR_DEV_NOT_OPEN: Integer; cdecl;
    {class} function _GetERROR_PRINT_BARCODE_OTHER: Integer; cdecl;
    {class} function _GetERROR_PRINT_BITMAP_OTHER: Integer; cdecl;
    {class} function _GetERROR_PRINT_BITMAP_WIDTH_OVERFLOW: Integer; cdecl;
    {class} function _GetERROR_PRINT_DATA_MAC: Integer; cdecl;
    {class} function _GetERROR_PRINT_HOT: Integer; cdecl;
    {class} function _GetERROR_PRINT_ILLIGALARGUMENT: Integer; cdecl;
    {class} function _GetERROR_PRINT_NOPAPER: Integer; cdecl;
    {class} function _GetERROR_PRINT_TEXT_OTHER: Integer; cdecl;
    {class} function _GetERROR_PRINT_UNKNOWN: Integer; cdecl;
    {class} function init: JAidlErrorCode_Printer; cdecl;//Deprecated
    {class} property ERROR_DEV_IS_BUSY: Integer read _GetERROR_DEV_IS_BUSY;
    {class} property ERROR_DEV_NOT_OPEN: Integer read _GetERROR_DEV_NOT_OPEN;
    {class} property ERROR_PRINT_BARCODE_OTHER: Integer read _GetERROR_PRINT_BARCODE_OTHER;
    {class} property ERROR_PRINT_BITMAP_OTHER: Integer read _GetERROR_PRINT_BITMAP_OTHER;
    {class} property ERROR_PRINT_BITMAP_WIDTH_OVERFLOW: Integer read _GetERROR_PRINT_BITMAP_WIDTH_OVERFLOW;
    {class} property ERROR_PRINT_DATA_MAC: Integer read _GetERROR_PRINT_DATA_MAC;
    {class} property ERROR_PRINT_HOT: Integer read _GetERROR_PRINT_HOT;
    {class} property ERROR_PRINT_ILLIGALARGUMENT: Integer read _GetERROR_PRINT_ILLIGALARGUMENT;
    {class} property ERROR_PRINT_NOPAPER: Integer read _GetERROR_PRINT_NOPAPER;
    {class} property ERROR_PRINT_TEXT_OTHER: Integer read _GetERROR_PRINT_TEXT_OTHER;
    {class} property ERROR_PRINT_UNKNOWN: Integer read _GetERROR_PRINT_UNKNOWN;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$Printer')]
  JAidlErrorCode_Printer = interface(JObject)
    ['{CEABF679-03DD-4D69-A6D1-C655974CB4CF}']
  end;
  TJAidlErrorCode_Printer = class(TJavaGenericImport<JAidlErrorCode_PrinterClass, JAidlErrorCode_Printer>) end;

  JAidlErrorCode_RFCardClass = interface(JObjectClass)
    ['{A9905324-0636-4AEF-964D-D378AFC08790}']
    {class} function _GetERROR_ADD_FAIL: Integer; cdecl;
    {class} function _GetERROR_AUTH_FAIL: Integer; cdecl;
    {class} function _GetERROR_DELIVERY_FAIL: Integer; cdecl;
    {class} function _GetERROR_IS_BUSY: Integer; cdecl;
    {class} function _GetERROR_KEY_LENTH: Integer; cdecl;
    {class} function _GetERROR_KEY_TYPE: Integer; cdecl;
    {class} function _GetERROR_NOT_OPEN: Integer; cdecl;
    {class} function _GetERROR_READ_FAIL: Integer; cdecl;
    {class} function _GetERROR_REDUCE_FAIL: Integer; cdecl;
    {class} function _GetERROR_RESET_DATA: Integer; cdecl;
    {class} function _GetERROR_SELECT_FAIL: Integer; cdecl;
    {class} function _GetERROR_UNKNOWN: Integer; cdecl;
    {class} function _GetERROR_WRITE_FAIL: Integer; cdecl;
    {class} function init: JAidlErrorCode_RFCard; cdecl;
    {class} property ERROR_ADD_FAIL: Integer read _GetERROR_ADD_FAIL;
    {class} property ERROR_AUTH_FAIL: Integer read _GetERROR_AUTH_FAIL;
    {class} property ERROR_DELIVERY_FAIL: Integer read _GetERROR_DELIVERY_FAIL;
    {class} property ERROR_IS_BUSY: Integer read _GetERROR_IS_BUSY;
    {class} property ERROR_KEY_LENTH: Integer read _GetERROR_KEY_LENTH;
    {class} property ERROR_KEY_TYPE: Integer read _GetERROR_KEY_TYPE;
    {class} property ERROR_NOT_OPEN: Integer read _GetERROR_NOT_OPEN;
    {class} property ERROR_READ_FAIL: Integer read _GetERROR_READ_FAIL;
    {class} property ERROR_REDUCE_FAIL: Integer read _GetERROR_REDUCE_FAIL;
    {class} property ERROR_RESET_DATA: Integer read _GetERROR_RESET_DATA;
    {class} property ERROR_SELECT_FAIL: Integer read _GetERROR_SELECT_FAIL;
    {class} property ERROR_UNKNOWN: Integer read _GetERROR_UNKNOWN;
    {class} property ERROR_WRITE_FAIL: Integer read _GetERROR_WRITE_FAIL;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$RFCard')]
  JAidlErrorCode_RFCard = interface(JObject)
    ['{A862E27D-5559-425B-89D9-655A69C0BEF7}']
  end;
  TJAidlErrorCode_RFCard = class(TJavaGenericImport<JAidlErrorCode_RFCardClass, JAidlErrorCode_RFCard>) end;

  JAidlErrorCode_ScannerErrorClass = interface(JObjectClass)
    ['{C986B20C-0BE6-4C02-B533-C014FE5D5302}']
    {class} function _GetERROR_ALREADY_INIT: Integer; cdecl;
    {class} function _GetERROR_AUTH_LICENSE: Integer; cdecl;
    {class} function _GetERROR_DECODE_FAILED: Integer; cdecl;
    {class} function _GetERROR_INIT_DECODER: Integer; cdecl;
    {class} function _GetERROR_INIT_SCANNER_ENGINE: Integer; cdecl;
    {class} function _GetERROR_INPUT_PARAMS: Integer; cdecl;
    {class} function _GetERROR_OPEN_CAMERA: Integer; cdecl;
    {class} function init: JAidlErrorCode_ScannerError; cdecl;//Deprecated
    {class} property ERROR_ALREADY_INIT: Integer read _GetERROR_ALREADY_INIT;
    {class} property ERROR_AUTH_LICENSE: Integer read _GetERROR_AUTH_LICENSE;
    {class} property ERROR_DECODE_FAILED: Integer read _GetERROR_DECODE_FAILED;
    {class} property ERROR_INIT_DECODER: Integer read _GetERROR_INIT_DECODER;
    {class} property ERROR_INIT_SCANNER_ENGINE: Integer read _GetERROR_INIT_SCANNER_ENGINE;
    {class} property ERROR_INPUT_PARAMS: Integer read _GetERROR_INPUT_PARAMS;
    {class} property ERROR_OPEN_CAMERA: Integer read _GetERROR_OPEN_CAMERA;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$ScannerError')]
  JAidlErrorCode_ScannerError = interface(JObject)
    ['{3D01337A-15BF-4AA4-916E-F508A50D8C19}']
  end;
  TJAidlErrorCode_ScannerError = class(TJavaGenericImport<JAidlErrorCode_ScannerErrorClass, JAidlErrorCode_ScannerError>) end;

  JAidlErrorCode_SerialPortClass = interface(JObjectClass)
    ['{168F2FAD-F824-4B50-A734-85DE54B47BED}']
    {class} function _GetDEVICE_IS_BUSY: Integer; cdecl;
    {class} function _GetDEVICE_NOT_OPEN: Integer; cdecl;
    {class} function _GetERROR_NODEV: Integer; cdecl;
    {class} function _GetREAD_ERROR: Integer; cdecl;
    {class} function init: JAidlErrorCode_SerialPort; cdecl;//Deprecated
    {class} property DEVICE_IS_BUSY: Integer read _GetDEVICE_IS_BUSY;
    {class} property DEVICE_NOT_OPEN: Integer read _GetDEVICE_NOT_OPEN;
    {class} property ERROR_NODEV: Integer read _GetERROR_NODEV;
    {class} property READ_ERROR: Integer read _GetREAD_ERROR;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$SerialPort')]
  JAidlErrorCode_SerialPort = interface(JObject)
    ['{E160D9AB-63BF-40DB-A146-0A2F0FE2F2CA}']
  end;
  TJAidlErrorCode_SerialPort = class(TJavaGenericImport<JAidlErrorCode_SerialPortClass, JAidlErrorCode_SerialPort>) end;

  JAidlErrorCode_SystemClass = interface(JObjectClass)
    ['{5BC6E3D0-3C70-4F51-9218-025263DFB08E}']
    {class} function _GetINSTALL_FAILED_ALREADY_EXISTS: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_CONFLICTING_PROVIDER: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_CONTAINER_ERROR: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_CPU_ABI_INCOMPATIBLE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_DEXOPT: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_DUPLICATE_PACKAGE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_INSUFFICIENT_STORAGE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_INTERNAL_ERROR: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_INVALID_APK: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_INVALID_INSTALL_LOCATION: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_INVALID_URI: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_MEDIA_UNAVAILABLE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_MISSING_FEATURE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_MISSING_SHARED_LIBRARY: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_NEWER_SDK: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_NO_SHARED_USER: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_OLDER_SDK: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_PACKAGE_CHANGED: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_REPLACE_COULDNT_DELETE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_SHARED_USER_INCOMPATIBLE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_TEST_ONLY: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_UID_CHANGED: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_UPDATE_INCOMPATIBLE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_VERIFICATION_FAILURE: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_VERIFICATION_TIMEOUT: Integer; cdecl;
    {class} function _GetINSTALL_FAILED_VERSION_DOWNGRADE: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_BAD_MANIFEST: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_BAD_PACKAGE_NAME: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_BAD_SHARED_USER_ID: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_CERTIFICATE_ENCODING: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_MANIFEST_EMPTY: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_MANIFEST_MALFORMED: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_NOT_APK: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_NO_CERTIFICATES: Integer; cdecl;
    {class} function _GetINSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION: Integer; cdecl;
    {class} function _GetINSTALL_SUCCESS: Integer; cdecl;
    {class} function init: JAidlErrorCode_System; cdecl;//Deprecated
    {class} property INSTALL_FAILED_ALREADY_EXISTS: Integer read _GetINSTALL_FAILED_ALREADY_EXISTS;
    {class} property INSTALL_FAILED_CONFLICTING_PROVIDER: Integer read _GetINSTALL_FAILED_CONFLICTING_PROVIDER;
    {class} property INSTALL_FAILED_CONTAINER_ERROR: Integer read _GetINSTALL_FAILED_CONTAINER_ERROR;
    {class} property INSTALL_FAILED_CPU_ABI_INCOMPATIBLE: Integer read _GetINSTALL_FAILED_CPU_ABI_INCOMPATIBLE;
    {class} property INSTALL_FAILED_DEXOPT: Integer read _GetINSTALL_FAILED_DEXOPT;
    {class} property INSTALL_FAILED_DUPLICATE_PACKAGE: Integer read _GetINSTALL_FAILED_DUPLICATE_PACKAGE;
    {class} property INSTALL_FAILED_INSUFFICIENT_STORAGE: Integer read _GetINSTALL_FAILED_INSUFFICIENT_STORAGE;
    {class} property INSTALL_FAILED_INTERNAL_ERROR: Integer read _GetINSTALL_FAILED_INTERNAL_ERROR;
    {class} property INSTALL_FAILED_INVALID_APK: Integer read _GetINSTALL_FAILED_INVALID_APK;
    {class} property INSTALL_FAILED_INVALID_INSTALL_LOCATION: Integer read _GetINSTALL_FAILED_INVALID_INSTALL_LOCATION;
    {class} property INSTALL_FAILED_INVALID_URI: Integer read _GetINSTALL_FAILED_INVALID_URI;
    {class} property INSTALL_FAILED_MEDIA_UNAVAILABLE: Integer read _GetINSTALL_FAILED_MEDIA_UNAVAILABLE;
    {class} property INSTALL_FAILED_MISSING_FEATURE: Integer read _GetINSTALL_FAILED_MISSING_FEATURE;
    {class} property INSTALL_FAILED_MISSING_SHARED_LIBRARY: Integer read _GetINSTALL_FAILED_MISSING_SHARED_LIBRARY;
    {class} property INSTALL_FAILED_NEWER_SDK: Integer read _GetINSTALL_FAILED_NEWER_SDK;
    {class} property INSTALL_FAILED_NO_SHARED_USER: Integer read _GetINSTALL_FAILED_NO_SHARED_USER;
    {class} property INSTALL_FAILED_OLDER_SDK: Integer read _GetINSTALL_FAILED_OLDER_SDK;
    {class} property INSTALL_FAILED_PACKAGE_CHANGED: Integer read _GetINSTALL_FAILED_PACKAGE_CHANGED;
    {class} property INSTALL_FAILED_REPLACE_COULDNT_DELETE: Integer read _GetINSTALL_FAILED_REPLACE_COULDNT_DELETE;
    {class} property INSTALL_FAILED_SHARED_USER_INCOMPATIBLE: Integer read _GetINSTALL_FAILED_SHARED_USER_INCOMPATIBLE;
    {class} property INSTALL_FAILED_TEST_ONLY: Integer read _GetINSTALL_FAILED_TEST_ONLY;
    {class} property INSTALL_FAILED_UID_CHANGED: Integer read _GetINSTALL_FAILED_UID_CHANGED;
    {class} property INSTALL_FAILED_UPDATE_INCOMPATIBLE: Integer read _GetINSTALL_FAILED_UPDATE_INCOMPATIBLE;
    {class} property INSTALL_FAILED_VERIFICATION_FAILURE: Integer read _GetINSTALL_FAILED_VERIFICATION_FAILURE;
    {class} property INSTALL_FAILED_VERIFICATION_TIMEOUT: Integer read _GetINSTALL_FAILED_VERIFICATION_TIMEOUT;
    {class} property INSTALL_FAILED_VERSION_DOWNGRADE: Integer read _GetINSTALL_FAILED_VERSION_DOWNGRADE;
    {class} property INSTALL_PARSE_FAILED_BAD_MANIFEST: Integer read _GetINSTALL_PARSE_FAILED_BAD_MANIFEST;
    {class} property INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME: Integer read _GetINSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
    {class} property INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID: Integer read _GetINSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
    {class} property INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING: Integer read _GetINSTALL_PARSE_FAILED_CERTIFICATE_ENCODING;
    {class} property INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES: Integer read _GetINSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES;
    {class} property INSTALL_PARSE_FAILED_MANIFEST_EMPTY: Integer read _GetINSTALL_PARSE_FAILED_MANIFEST_EMPTY;
    {class} property INSTALL_PARSE_FAILED_MANIFEST_MALFORMED: Integer read _GetINSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
    {class} property INSTALL_PARSE_FAILED_NOT_APK: Integer read _GetINSTALL_PARSE_FAILED_NOT_APK;
    {class} property INSTALL_PARSE_FAILED_NO_CERTIFICATES: Integer read _GetINSTALL_PARSE_FAILED_NO_CERTIFICATES;
    {class} property INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION: Integer read _GetINSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION;
    {class} property INSTALL_SUCCESS: Integer read _GetINSTALL_SUCCESS;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlErrorCode$System')]
  JAidlErrorCode_System = interface(JObject)
    ['{C698724E-B578-4B9D-B0EB-443838C7D1C2}']
  end;
  TJAidlErrorCode_System = class(TJavaGenericImport<JAidlErrorCode_SystemClass, JAidlErrorCode_System>) end;

  JAidlScanParamClass = interface(JSerializableClass)
    ['{6FC40138-724E-49BE-AD39-2E39D386607C}']
    {class} function _GetBACK_CAMERA: Integer; cdecl;
    {class} function _GetCAMERA_ID: JString; cdecl;
    {class} function _GetFRONT_CAMERA: Integer; cdecl;
    {class} function _GetSCAN_AMOUNT: JString; cdecl;
    {class} function _GetSCAN_CODE: JString; cdecl;
    {class} function _GetSCAN_REMINDER: JString; cdecl;
    {class} function _GetSCAN_TITLE: JString; cdecl;
    {class} function _GetTIME_OUT: JString; cdecl;
    {class} function init(i: Integer; i1: Integer): JAidlScanParam; cdecl; overload;//Deprecated
    {class} function init(i: Integer; i1: Integer; string_: JString; string_1: JString; string_2: JString): JAidlScanParam; cdecl; overload;
    {class} property BACK_CAMERA: Integer read _GetBACK_CAMERA;
    {class} property CAMERA_ID: JString read _GetCAMERA_ID;
    {class} property FRONT_CAMERA: Integer read _GetFRONT_CAMERA;
    {class} property SCAN_AMOUNT: JString read _GetSCAN_AMOUNT;
    {class} property SCAN_CODE: JString read _GetSCAN_CODE;
    {class} property SCAN_REMINDER: JString read _GetSCAN_REMINDER;
    {class} property SCAN_TITLE: JString read _GetSCAN_TITLE;
    {class} property TIME_OUT: JString read _GetTIME_OUT;
  end;

  [JavaSignature('com/topwise/cloudpos/data/AidlScanParam')]
  JAidlScanParam = interface(JSerializable)
    ['{C16B2FC9-2E87-4B11-AFEA-08D6A7CACCC6}']
    function getAmount: JString; cdecl;
    function getCameraId: Integer; cdecl;
    function getReminder: JString; cdecl;
    function getTimeOut: Integer; cdecl;
    function getTitle: JString; cdecl;
  end;
  TJAidlScanParam = class(TJavaGenericImport<JAidlScanParamClass, JAidlScanParam>) end;

  JBuzzerCodeClass = interface(JObjectClass)
    ['{B4F43089-5D4D-4A51-89FC-609FC8E8C01B}']
    {class} function _GetBUZZER_MODE_ERROR: Integer; cdecl;
    {class} function _GetBUZZER_MODE_FAIL: Integer; cdecl;
    {class} function _GetBUZZER_MODE_INTERVAL: Integer; cdecl;
    {class} function _GetBUZZER_MODE_NORAML: Integer; cdecl;
    {class} function _GetBUZZER_MODE_SUCCESS: Integer; cdecl;
    {class} function init: JBuzzerCode; cdecl;
    {class} property BUZZER_MODE_ERROR: Integer read _GetBUZZER_MODE_ERROR;
    {class} property BUZZER_MODE_FAIL: Integer read _GetBUZZER_MODE_FAIL;
    {class} property BUZZER_MODE_INTERVAL: Integer read _GetBUZZER_MODE_INTERVAL;
    {class} property BUZZER_MODE_NORAML: Integer read _GetBUZZER_MODE_NORAML;
    {class} property BUZZER_MODE_SUCCESS: Integer read _GetBUZZER_MODE_SUCCESS;
  end;

  [JavaSignature('com/topwise/cloudpos/data/BuzzerCode')]
  JBuzzerCode = interface(JObject)
    ['{6EA48A54-CA9E-45B3-834E-DBEFD21A3DF5}']
  end;
  TJBuzzerCode = class(TJavaGenericImport<JBuzzerCodeClass, JBuzzerCode>) end;

  JCPUCardClass = interface(JObjectClass)
    ['{F0300B88-681E-4D73-B3C0-BB555537F1F2}']
    {class} function init: JCPUCard; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/CPUCard')]
  JCPUCard = interface(JObject)
    ['{6087D6E8-ED41-4078-8632-31B582B02F7F}']
  end;
  TJCPUCard = class(TJavaGenericImport<JCPUCardClass, JCPUCard>) end;

  JCPUCard_AT24CCardTypeClass = interface(JObjectClass)
    ['{8B679822-A8D5-4FEE-B724-63F9B3656686}']
    {class} function _GetAT24C01: Integer; cdecl;
    {class} function _GetAT24C02: Integer; cdecl;
    {class} function _GetAT24C04: Integer; cdecl;
    {class} function _GetAT24C08: Integer; cdecl;
    {class} function _GetAT24C1024: Integer; cdecl;
    {class} function _GetAT24C128: Integer; cdecl;
    {class} function _GetAT24C16: Integer; cdecl;
    {class} function _GetAT24C256: Integer; cdecl;
    {class} function _GetAT24C32: Integer; cdecl;
    {class} function _GetAT24C512: Integer; cdecl;
    {class} function _GetAT24C64: Integer; cdecl;
    {class} function init: JCPUCard_AT24CCardType; cdecl;//Deprecated
    {class} property AT24C01: Integer read _GetAT24C01;
    {class} property AT24C02: Integer read _GetAT24C02;
    {class} property AT24C04: Integer read _GetAT24C04;
    {class} property AT24C08: Integer read _GetAT24C08;
    {class} property AT24C1024: Integer read _GetAT24C1024;
    {class} property AT24C128: Integer read _GetAT24C128;
    {class} property AT24C16: Integer read _GetAT24C16;
    {class} property AT24C256: Integer read _GetAT24C256;
    {class} property AT24C32: Integer read _GetAT24C32;
    {class} property AT24C512: Integer read _GetAT24C512;
    {class} property AT24C64: Integer read _GetAT24C64;
  end;

  [JavaSignature('com/topwise/cloudpos/data/CPUCard$AT24CCardType')]
  JCPUCard_AT24CCardType = interface(JObject)
    ['{3232D84D-660D-4453-82AA-04E7C0731EAA}']
  end;
  TJCPUCard_AT24CCardType = class(TJavaGenericImport<JCPUCard_AT24CCardTypeClass, JCPUCard_AT24CCardType>) end;

  JCPUCard_AT88SCCardTypeClass = interface(JObjectClass)
    ['{45CD43D3-A7F6-4A0B-AD14-2DD3C5AA22FD}']
    {class} function _GetAT88SC102: Integer; cdecl;
    {class} function _GetAT88SC153: Integer; cdecl;
    {class} function _GetAT88SC1604: Integer; cdecl;
    {class} function _GetAT88SC1608: Integer; cdecl;
    {class} function init: JCPUCard_AT88SCCardType; cdecl;//Deprecated
    {class} property AT88SC102: Integer read _GetAT88SC102;
    {class} property AT88SC153: Integer read _GetAT88SC153;
    {class} property AT88SC1604: Integer read _GetAT88SC1604;
    {class} property AT88SC1608: Integer read _GetAT88SC1608;
  end;

  [JavaSignature('com/topwise/cloudpos/data/CPUCard$AT88SCCardType')]
  JCPUCard_AT88SCCardType = interface(JObject)
    ['{27482431-34FF-448D-93F0-6237FFC16F7F}']
  end;
  TJCPUCard_AT88SCCardType = class(TJavaGenericImport<JCPUCard_AT88SCCardTypeClass, JCPUCard_AT88SCCardType>) end;

  JCPUCard_AT88SCZoneNumberClass = interface(JObjectClass)
    ['{7A04284D-CFCA-44FE-94C9-EAD2796FDE8F}']
    {class} function _GetZONE_NUM_CONFIG: Byte; cdecl;
    {class} function _GetZONE_NUM_USER0: Byte; cdecl;
    {class} function _GetZONE_NUM_USER1: Byte; cdecl;
    {class} function _GetZONE_NUM_USER2: Byte; cdecl;
    {class} function _GetZONE_NUM_USER3: Byte; cdecl;
    {class} function _GetZONE_NUM_USER4: Byte; cdecl;
    {class} function _GetZONE_NUM_USER5: Byte; cdecl;
    {class} function _GetZONE_NUM_USER6: Byte; cdecl;
    {class} function _GetZONE_NUM_USER7: Byte; cdecl;
    {class} function init: JCPUCard_AT88SCZoneNumber; cdecl;
    {class} property ZONE_NUM_CONFIG: Byte read _GetZONE_NUM_CONFIG;
    {class} property ZONE_NUM_USER0: Byte read _GetZONE_NUM_USER0;
    {class} property ZONE_NUM_USER1: Byte read _GetZONE_NUM_USER1;
    {class} property ZONE_NUM_USER2: Byte read _GetZONE_NUM_USER2;
    {class} property ZONE_NUM_USER3: Byte read _GetZONE_NUM_USER3;
    {class} property ZONE_NUM_USER4: Byte read _GetZONE_NUM_USER4;
    {class} property ZONE_NUM_USER5: Byte read _GetZONE_NUM_USER5;
    {class} property ZONE_NUM_USER6: Byte read _GetZONE_NUM_USER6;
    {class} property ZONE_NUM_USER7: Byte read _GetZONE_NUM_USER7;
  end;

  [JavaSignature('com/topwise/cloudpos/data/CPUCard$AT88SCZoneNumber')]
  JCPUCard_AT88SCZoneNumber = interface(JObject)
    ['{DAF2A759-F30E-4CED-A4A5-7573D59808FD}']
  end;
  TJCPUCard_AT88SCZoneNumber = class(TJavaGenericImport<JCPUCard_AT88SCZoneNumberClass, JCPUCard_AT88SCZoneNumber>) end;

  JCPUCard_CPUCardTypeClass = interface(JObjectClass)
    ['{29652969-6738-4D2E-881C-D99F099A42AE}']
    {class} function _GetAT24CXX: Integer; cdecl;
    {class} function _GetAT45D041: Integer; cdecl;
    {class} function _GetAT93C46: Integer; cdecl;
    {class} function _GetAT93C46A: Integer; cdecl;
    {class} function _GetSLE4404: Integer; cdecl;
    {class} function _GetSLE4406: Integer; cdecl;
    {class} function _GetSLE4418: Integer; cdecl;
    {class} function _GetSLE4428: Integer; cdecl;
    {class} function _GetSLE4432: Integer; cdecl;
    {class} function _GetSLE4442: Integer; cdecl;
    {class} function _GetSLE44X8: Integer; cdecl;
    {class} function _GetSSF1101: Integer; cdecl;
    {class} function init: JCPUCard_CPUCardType; cdecl;//Deprecated
    {class} property AT24CXX: Integer read _GetAT24CXX;
    {class} property AT45D041: Integer read _GetAT45D041;
    {class} property AT93C46: Integer read _GetAT93C46;
    {class} property AT93C46A: Integer read _GetAT93C46A;
    {class} property SLE4404: Integer read _GetSLE4404;
    {class} property SLE4406: Integer read _GetSLE4406;
    {class} property SLE4418: Integer read _GetSLE4418;
    {class} property SLE4428: Integer read _GetSLE4428;
    {class} property SLE4432: Integer read _GetSLE4432;
    {class} property SLE4442: Integer read _GetSLE4442;
    {class} property SLE44X8: Integer read _GetSLE44X8;
    {class} property SSF1101: Integer read _GetSSF1101;
  end;

  [JavaSignature('com/topwise/cloudpos/data/CPUCard$CPUCardType')]
  JCPUCard_CPUCardType = interface(JObject)
    ['{8260517E-B0BB-435D-A64A-BBDDD4F328D6}']
  end;
  TJCPUCard_CPUCardType = class(TJavaGenericImport<JCPUCard_CPUCardTypeClass, JCPUCard_CPUCardType>) end;

  JEmvConstantClass = interface(JObjectClass)
    ['{6FC64242-8825-4153-A2AD-127144EE1FA4}']
    {class} function init: JEmvConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant')]
  JEmvConstant = interface(JObject)
    ['{C3657A48-1436-47B8-8620-CFEFB43ACD5F}']
  end;
  TJEmvConstant = class(TJavaGenericImport<JEmvConstantClass, JEmvConstant>) end;

  JEmvConstant_AccountTypeClass = interface(JObjectClass)
    ['{5E57BDF9-34E7-4849-8767-37DBC2ACFCCF}']
    {class} function _GetACCOUNT_TYPE_CHEQUEORDEBIT: Integer; cdecl;
    {class} function _GetACCOUNT_TYPE_CREDIT: Integer; cdecl;
    {class} function _GetACCOUNT_TYPE_DEFAULT: Integer; cdecl;
    {class} function _GetACCOUNT_TYPE_SAVING: Integer; cdecl;
    {class} function init: JEmvConstant_AccountType; cdecl;//Deprecated
    {class} property ACCOUNT_TYPE_CHEQUEORDEBIT: Integer read _GetACCOUNT_TYPE_CHEQUEORDEBIT;
    {class} property ACCOUNT_TYPE_CREDIT: Integer read _GetACCOUNT_TYPE_CREDIT;
    {class} property ACCOUNT_TYPE_DEFAULT: Integer read _GetACCOUNT_TYPE_DEFAULT;
    {class} property ACCOUNT_TYPE_SAVING: Integer read _GetACCOUNT_TYPE_SAVING;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$AccountType')]
  JEmvConstant_AccountType = interface(JObject)
    ['{58A68D7A-6CF3-4475-863C-524C80267453}']
  end;
  TJEmvConstant_AccountType = class(TJavaGenericImport<JEmvConstant_AccountTypeClass, JEmvConstant_AccountType>) end;

  JEmvConstant_AidCapkOptFlagClass = interface(JObjectClass)
    ['{B5F22779-5204-4380-A996-99D9682486F4}']
    {class} function _GetAID_CAPK_OPT_ADDORUPDATE_FLAG: Integer; cdecl;
    {class} function _GetAID_CAPK_OPT_REMOVEALL_FLAG: Integer; cdecl;
    {class} function _GetAID_CAPK_OPT_REMOVE_FLAG: Integer; cdecl;
    {class} function init: JEmvConstant_AidCapkOptFlag; cdecl;//Deprecated
    {class} property AID_CAPK_OPT_ADDORUPDATE_FLAG: Integer read _GetAID_CAPK_OPT_ADDORUPDATE_FLAG;
    {class} property AID_CAPK_OPT_REMOVEALL_FLAG: Integer read _GetAID_CAPK_OPT_REMOVEALL_FLAG;
    {class} property AID_CAPK_OPT_REMOVE_FLAG: Integer read _GetAID_CAPK_OPT_REMOVE_FLAG;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$AidCapkOptFlag')]
  JEmvConstant_AidCapkOptFlag = interface(JObject)
    ['{F03BF62F-2C1F-4968-9824-8BD11F78D509}']
  end;
  TJEmvConstant_AidCapkOptFlag = class(TJavaGenericImport<JEmvConstant_AidCapkOptFlagClass, JEmvConstant_AidCapkOptFlag>) end;

  JEmvConstant_AppTypeClass = interface(JObjectClass)
    ['{2DA66C3E-BC67-45F1-8C45-D824D10062F9}']
    {class} function _GetAPPTYPE_BANK_STAND: Integer; cdecl;
    {class} function _GetAPPTYPE_LAKALA_BANKDIRECT: Integer; cdecl;
    {class} function _GetAPPTYPE_LAKALA_BIANMIN: Integer; cdecl;
    {class} function _GetAPPTYPE_LAKALA_FUNONGTONG: Integer; cdecl;
    {class} function _GetAPPTYPE_LAKALA_LARGECOUNT: Integer; cdecl;
    {class} function _GetAPPTYPE_LAKALA_PAYMENT: Integer; cdecl;
    {class} function init: JEmvConstant_AppType; cdecl;//Deprecated
    {class} property APPTYPE_BANK_STAND: Integer read _GetAPPTYPE_BANK_STAND;
    {class} property APPTYPE_LAKALA_BANKDIRECT: Integer read _GetAPPTYPE_LAKALA_BANKDIRECT;
    {class} property APPTYPE_LAKALA_BIANMIN: Integer read _GetAPPTYPE_LAKALA_BIANMIN;
    {class} property APPTYPE_LAKALA_FUNONGTONG: Integer read _GetAPPTYPE_LAKALA_FUNONGTONG;
    {class} property APPTYPE_LAKALA_LARGECOUNT: Integer read _GetAPPTYPE_LAKALA_LARGECOUNT;
    {class} property APPTYPE_LAKALA_PAYMENT: Integer read _GetAPPTYPE_LAKALA_PAYMENT;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$AppType')]
  JEmvConstant_AppType = interface(JObject)
    ['{F2DA336E-7C9E-4095-B3CC-7EB454FF2924}']
  end;
  TJEmvConstant_AppType = class(TJavaGenericImport<JEmvConstant_AppTypeClass, JEmvConstant_AppType>) end;

  JEmvConstant_CertTypeClass = interface(JObjectClass)
    ['{8418F97F-7F8A-4F69-996A-0B6488364EA4}']
    {class} function _GetCERT_TYPE_ENTER_COUNTRY: Integer; cdecl;
    {class} function _GetCERT_TYPE_ID: Integer; cdecl;
    {class} function _GetCERT_TYPE_OFFICER: Integer; cdecl;
    {class} function _GetCERT_TYPE_OTHER: Integer; cdecl;
    {class} function _GetCERT_TYPE_PASSPORT: Integer; cdecl;
    {class} function _GetCERT_TYPE_TEMP_ID: Integer; cdecl;
    {class} function init: JEmvConstant_CertType; cdecl;//Deprecated
    {class} property CERT_TYPE_ENTER_COUNTRY: Integer read _GetCERT_TYPE_ENTER_COUNTRY;
    {class} property CERT_TYPE_ID: Integer read _GetCERT_TYPE_ID;
    {class} property CERT_TYPE_OFFICER: Integer read _GetCERT_TYPE_OFFICER;
    {class} property CERT_TYPE_OTHER: Integer read _GetCERT_TYPE_OTHER;
    {class} property CERT_TYPE_PASSPORT: Integer read _GetCERT_TYPE_PASSPORT;
    {class} property CERT_TYPE_TEMP_ID: Integer read _GetCERT_TYPE_TEMP_ID;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$CertType')]
  JEmvConstant_CertType = interface(JObject)
    ['{A5B063CD-B682-40B9-8AD9-2347CAEB4217}']
  end;
  TJEmvConstant_CertType = class(TJavaGenericImport<JEmvConstant_CertTypeClass, JEmvConstant_CertType>) end;

  JEmvConstant_PinTypeClass = interface(JObjectClass)
    ['{7D7B279E-DE11-42BD-A80F-2ACB357E43A6}']
    {class} function _GetPINTYPE_OFFLINE: Integer; cdecl;
    {class} function _GetPINTYPE_OFFLINE_LASTTIME: Integer; cdecl;
    {class} function _GetPINTYPE_ONLINE: Integer; cdecl;
    {class} function init: JEmvConstant_PinType; cdecl;//Deprecated
    {class} property PINTYPE_OFFLINE: Integer read _GetPINTYPE_OFFLINE;
    {class} property PINTYPE_OFFLINE_LASTTIME: Integer read _GetPINTYPE_OFFLINE_LASTTIME;
    {class} property PINTYPE_ONLINE: Integer read _GetPINTYPE_ONLINE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$PinType')]
  JEmvConstant_PinType = interface(JObject)
    ['{2C21F956-0E8D-4A3F-A0B2-0B7D7AB3C7EB}']
  end;
  TJEmvConstant_PinType = class(TJavaGenericImport<JEmvConstant_PinTypeClass, JEmvConstant_PinType>) end;

  JEmvConstant_ReadCardLoadLogTypeClass = interface(JObjectClass)
    ['{63F4A6B3-284E-496F-911B-8FE99E76B8E6}']
    {class} function _GetONE_BY_ONE_TYPE: Integer; cdecl;
    {class} function _GetONE_OFF_TYPE: Integer; cdecl;
    {class} function init: JEmvConstant_ReadCardLoadLogType; cdecl;//Deprecated
    {class} property ONE_BY_ONE_TYPE: Integer read _GetONE_BY_ONE_TYPE;
    {class} property ONE_OFF_TYPE: Integer read _GetONE_OFF_TYPE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$ReadCardLoadLogType')]
  JEmvConstant_ReadCardLoadLogType = interface(JObject)
    ['{2349373A-EBA6-4291-BDE3-7B3D0F257674}']
  end;
  TJEmvConstant_ReadCardLoadLogType = class(TJavaGenericImport<JEmvConstant_ReadCardLoadLogTypeClass, JEmvConstant_ReadCardLoadLogType>) end;

  JEmvConstant_SlotTypeClass = interface(JObjectClass)
    ['{2E9A758A-367B-474F-9CFD-83F6DB7C0847}']
    {class} function _GetSLOT_TYPE_IC: Integer; cdecl;
    {class} function _GetSLOT_TYPE_RF: Integer; cdecl;
    {class} function init: JEmvConstant_SlotType; cdecl;//Deprecated
    {class} property SLOT_TYPE_IC: Integer read _GetSLOT_TYPE_IC;
    {class} property SLOT_TYPE_RF: Integer read _GetSLOT_TYPE_RF;
  end;

  [JavaSignature('com/topwise/cloudpos/data/EmvConstant$SlotType')]
  JEmvConstant_SlotType = interface(JObject)
    ['{05A6E598-8F27-41F6-AC64-245961678B27}']
  end;
  TJEmvConstant_SlotType = class(TJavaGenericImport<JEmvConstant_SlotTypeClass, JEmvConstant_SlotType>) end;

  JLedCodeClass = interface(JObjectClass)
    ['{DA3973AF-C0C1-458C-9258-BF0C379C94B8}']
    {class} function _GetOPER_LED_ALL: Integer; cdecl;
    {class} function _GetOPER_LED_BLUE: Integer; cdecl;
    {class} function _GetOPER_LED_GREEN: Integer; cdecl;
    {class} function _GetOPER_LED_RED: Integer; cdecl;
    {class} function _GetOPER_LED_YELLOW: Integer; cdecl;
    {class} function init: JLedCode; cdecl;
    {class} property OPER_LED_ALL: Integer read _GetOPER_LED_ALL;
    {class} property OPER_LED_BLUE: Integer read _GetOPER_LED_BLUE;
    {class} property OPER_LED_GREEN: Integer read _GetOPER_LED_GREEN;
    {class} property OPER_LED_RED: Integer read _GetOPER_LED_RED;
    {class} property OPER_LED_YELLOW: Integer read _GetOPER_LED_YELLOW;
  end;

  [JavaSignature('com/topwise/cloudpos/data/LedCode')]
  JLedCode = interface(JObject)
    ['{4FD348D7-3CA6-4A38-ACB2-BA3F979A2293}']
  end;
  TJLedCode = class(TJavaGenericImport<JLedCodeClass, JLedCode>) end;

  JPinpadConstantClass = interface(JObjectClass)
    ['{F5C15ADF-A760-4F27-A62B-7B88A6D5D9EB}']
    {class} function init: JPinpadConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant')]
  JPinpadConstant = interface(JObject)
    ['{35C39240-7305-4010-B79D-23D264531863}']
  end;
  TJPinpadConstant = class(TJavaGenericImport<JPinpadConstantClass, JPinpadConstant>) end;

  JPinpadConstant_BasicAlgClass = interface(JObjectClass)
    ['{72B63507-62B7-40E5-B24E-5F7B7688B630}']
    {class} function _GetALG_DECRYPT_AES_CBC: Integer; cdecl;
    {class} function _GetALG_DECRYPT_AES_ECB: Integer; cdecl;
    {class} function _GetALG_DECRYPT_DES_CBC: Integer; cdecl;
    {class} function _GetALG_DECRYPT_DES_ECB: Integer; cdecl;
    {class} function _GetALG_DECRYPT_SM4_CBC: Integer; cdecl;
    {class} function _GetALG_DECRYPT_SM4_ECB: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_AES_CBC: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_AES_ECB: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_DES_CBC: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_DES_ECB: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_SM4_CBC: Integer; cdecl;
    {class} function _GetALG_ENCRYPT_SM4_ECB: Integer; cdecl;
    {class} function _GetALG_NULL: Integer; cdecl;
    {class} function init: JPinpadConstant_BasicAlg; cdecl;
    {class} property ALG_DECRYPT_AES_CBC: Integer read _GetALG_DECRYPT_AES_CBC;
    {class} property ALG_DECRYPT_AES_ECB: Integer read _GetALG_DECRYPT_AES_ECB;
    {class} property ALG_DECRYPT_DES_CBC: Integer read _GetALG_DECRYPT_DES_CBC;
    {class} property ALG_DECRYPT_DES_ECB: Integer read _GetALG_DECRYPT_DES_ECB;
    {class} property ALG_DECRYPT_SM4_CBC: Integer read _GetALG_DECRYPT_SM4_CBC;
    {class} property ALG_DECRYPT_SM4_ECB: Integer read _GetALG_DECRYPT_SM4_ECB;
    {class} property ALG_ENCRYPT_AES_CBC: Integer read _GetALG_ENCRYPT_AES_CBC;
    {class} property ALG_ENCRYPT_AES_ECB: Integer read _GetALG_ENCRYPT_AES_ECB;
    {class} property ALG_ENCRYPT_DES_CBC: Integer read _GetALG_ENCRYPT_DES_CBC;
    {class} property ALG_ENCRYPT_DES_ECB: Integer read _GetALG_ENCRYPT_DES_ECB;
    {class} property ALG_ENCRYPT_SM4_CBC: Integer read _GetALG_ENCRYPT_SM4_CBC;
    {class} property ALG_ENCRYPT_SM4_ECB: Integer read _GetALG_ENCRYPT_SM4_ECB;
    {class} property ALG_NULL: Integer read _GetALG_NULL;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$BasicAlg')]
  JPinpadConstant_BasicAlg = interface(JObject)
    ['{234A8162-D9B7-409E-8A7B-585BCF41173B}']
  end;
  TJPinpadConstant_BasicAlg = class(TJavaGenericImport<JPinpadConstant_BasicAlgClass, JPinpadConstant_BasicAlg>) end;

  JPinpadConstant_DelPedModeClass = interface(JObjectClass)
    ['{3D8C7794-53A9-4808-BA62-07F2028986A4}']
    {class} function _GetMODE_SINGLE: Integer; cdecl;
    {class} function _GetMODE_TYPE: Integer; cdecl;
    {class} function _GetMODE_WHOLE: Integer; cdecl;
    {class} function init: JPinpadConstant_DelPedMode; cdecl;//Deprecated
    {class} property MODE_SINGLE: Integer read _GetMODE_SINGLE;
    {class} property MODE_TYPE: Integer read _GetMODE_TYPE;
    {class} property MODE_WHOLE: Integer read _GetMODE_WHOLE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$DelPedMode')]
  JPinpadConstant_DelPedMode = interface(JObject)
    ['{849ADC63-9362-43CA-89A4-0A47A1BA869E}']
  end;
  TJPinpadConstant_DelPedMode = class(TJavaGenericImport<JPinpadConstant_DelPedModeClass, JPinpadConstant_DelPedMode>) end;

  JPinpadConstant_KCVVerifyModeClass = interface(JObjectClass)
    ['{38FCD5CC-773B-49AA-AD31-B47DC90D82E1}']
    {class} function _GetKCV_ENCRYPT_CMAC: Integer; cdecl;
    {class} function _GetKCV_ENCRYPT_SN: Integer; cdecl;
    {class} function _GetKCV_ENCRYPT_ZERO: Integer; cdecl;
    {class} function init: JPinpadConstant_KCVVerifyMode; cdecl;//Deprecated
    {class} property KCV_ENCRYPT_CMAC: Integer read _GetKCV_ENCRYPT_CMAC;
    {class} property KCV_ENCRYPT_SN: Integer read _GetKCV_ENCRYPT_SN;
    {class} property KCV_ENCRYPT_ZERO: Integer read _GetKCV_ENCRYPT_ZERO;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$KCVVerifyMode')]
  JPinpadConstant_KCVVerifyMode = interface(JObject)
    ['{38E69E34-86AE-4D2A-A052-154E7D0EEB8B}']
  end;
  TJPinpadConstant_KCVVerifyMode = class(TJavaGenericImport<JPinpadConstant_KCVVerifyModeClass, JPinpadConstant_KCVVerifyMode>) end;

  JPinpadConstant_KeyTypeClass = interface(JObjectClass)
    ['{51663F23-D33D-4076-8FD3-6311EB029CF0}']
    {class} function _GetKEYTYPE_DKEY: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_128: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_192: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_256: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_2TDES: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_3TDES: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_BDK: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_IPEK: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_KEY: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_AES_KSN: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_DES: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_DES_BDK: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_DES_IPEK: Integer; cdecl;
    {class} function _GetKEYTYPE_DUKPT_DES_KSN: Integer; cdecl;
    {class} function _GetKEYTYPE_FIXED_AESPEK: Integer; cdecl;
    {class} function _GetKEYTYPE_FIXED_MAK: Integer; cdecl;
    {class} function _GetKEYTYPE_FIXED_PEK: Integer; cdecl;
    {class} function _GetKEYTYPE_FIXED_TDK: Integer; cdecl;
    {class} function _GetKEYTYPE_MAK: Integer; cdecl;
    {class} function _GetKEYTYPE_PEK: Integer; cdecl;
    {class} function _GetKEYTYPE_ROOT: Integer; cdecl;
    {class} function _GetKEYTYPE_TDK: Integer; cdecl;
    {class} function _GetKEYTYPE_TEK: Integer; cdecl;
    {class} function _GetKEYTYPE_TMK: Integer; cdecl;
    {class} function init: JPinpadConstant_KeyType; cdecl;//Deprecated
    {class} property KEYTYPE_DKEY: Integer read _GetKEYTYPE_DKEY;
    {class} property KEYTYPE_DUKPT_AES_128: Integer read _GetKEYTYPE_DUKPT_AES_128;
    {class} property KEYTYPE_DUKPT_AES_192: Integer read _GetKEYTYPE_DUKPT_AES_192;
    {class} property KEYTYPE_DUKPT_AES_256: Integer read _GetKEYTYPE_DUKPT_AES_256;
    {class} property KEYTYPE_DUKPT_AES_2TDES: Integer read _GetKEYTYPE_DUKPT_AES_2TDES;
    {class} property KEYTYPE_DUKPT_AES_3TDES: Integer read _GetKEYTYPE_DUKPT_AES_3TDES;
    {class} property KEYTYPE_DUKPT_AES_BDK: Integer read _GetKEYTYPE_DUKPT_AES_BDK;
    {class} property KEYTYPE_DUKPT_AES_IPEK: Integer read _GetKEYTYPE_DUKPT_AES_IPEK;
    {class} property KEYTYPE_DUKPT_AES_KEY: Integer read _GetKEYTYPE_DUKPT_AES_KEY;
    {class} property KEYTYPE_DUKPT_AES_KSN: Integer read _GetKEYTYPE_DUKPT_AES_KSN;
    {class} property KEYTYPE_DUKPT_DES: Integer read _GetKEYTYPE_DUKPT_DES;
    {class} property KEYTYPE_DUKPT_DES_BDK: Integer read _GetKEYTYPE_DUKPT_DES_BDK;
    {class} property KEYTYPE_DUKPT_DES_IPEK: Integer read _GetKEYTYPE_DUKPT_DES_IPEK;
    {class} property KEYTYPE_DUKPT_DES_KSN: Integer read _GetKEYTYPE_DUKPT_DES_KSN;
    {class} property KEYTYPE_FIXED_AESPEK: Integer read _GetKEYTYPE_FIXED_AESPEK;
    {class} property KEYTYPE_FIXED_MAK: Integer read _GetKEYTYPE_FIXED_MAK;
    {class} property KEYTYPE_FIXED_PEK: Integer read _GetKEYTYPE_FIXED_PEK;
    {class} property KEYTYPE_FIXED_TDK: Integer read _GetKEYTYPE_FIXED_TDK;
    {class} property KEYTYPE_MAK: Integer read _GetKEYTYPE_MAK;
    {class} property KEYTYPE_PEK: Integer read _GetKEYTYPE_PEK;
    {class} property KEYTYPE_ROOT: Integer read _GetKEYTYPE_ROOT;
    {class} property KEYTYPE_TDK: Integer read _GetKEYTYPE_TDK;
    {class} property KEYTYPE_TEK: Integer read _GetKEYTYPE_TEK;
    {class} property KEYTYPE_TMK: Integer read _GetKEYTYPE_TMK;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$KeyType')]
  JPinpadConstant_KeyType = interface(JObject)
    ['{CE4B8FC9-309A-4D11-AF13-FFD7127C2905}']
  end;
  TJPinpadConstant_KeyType = class(TJavaGenericImport<JPinpadConstant_KeyTypeClass, JPinpadConstant_KeyType>) end;

  JPinpadConstant_MacAlgClass = interface(JObjectClass)
    ['{CB81BBB2-FD1A-4CFC-93B6-0159C6799A46}']
    {class} function _GetANSIX919: Integer; cdecl;
    {class} function _GetANSIX99CBC: Integer; cdecl;
    {class} function _GetANSIX99ECB: Integer; cdecl;
    {class} function _GetCUP: Integer; cdecl;
    {class} function _GetEMV2000: Integer; cdecl;
    {class} function _GetPIN_BLOCK_0: Integer; cdecl;
    {class} function _GetPIN_BLOCK_1: Integer; cdecl;
    {class} function _GetPIN_BLOCK_3: Integer; cdecl;
    {class} function _GetPIN_BLOCK_4: Integer; cdecl;
    {class} function init: JPinpadConstant_MacAlg; cdecl;
    {class} property ANSIX919: Integer read _GetANSIX919;
    {class} property ANSIX99CBC: Integer read _GetANSIX99CBC;
    {class} property ANSIX99ECB: Integer read _GetANSIX99ECB;
    {class} property CUP: Integer read _GetCUP;
    {class} property EMV2000: Integer read _GetEMV2000;
    {class} property PIN_BLOCK_0: Integer read _GetPIN_BLOCK_0;
    {class} property PIN_BLOCK_1: Integer read _GetPIN_BLOCK_1;
    {class} property PIN_BLOCK_3: Integer read _GetPIN_BLOCK_3;
    {class} property PIN_BLOCK_4: Integer read _GetPIN_BLOCK_4;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$MacAlg')]
  JPinpadConstant_MacAlg = interface(JObject)
    ['{0CE011FC-D9E2-4EEF-BB27-FB26A8FD4A68}']
  end;
  TJPinpadConstant_MacAlg = class(TJavaGenericImport<JPinpadConstant_MacAlgClass, JPinpadConstant_MacAlg>) end;

  JPinpadConstant_PinTypeClass = interface(JObjectClass)
    ['{2095D932-3889-4A1B-823B-5346466D3520}']
    {class} function _GetINLINE_TYPE: Integer; cdecl;
    {class} function _GetOUTLINE_TYPE: Integer; cdecl;
    {class} function _GetREAL_OUTLINE_TYPE: Integer; cdecl;
    {class} function init: JPinpadConstant_PinType; cdecl;//Deprecated
    {class} property INLINE_TYPE: Integer read _GetINLINE_TYPE;
    {class} property OUTLINE_TYPE: Integer read _GetOUTLINE_TYPE;
    {class} property REAL_OUTLINE_TYPE: Integer read _GetREAL_OUTLINE_TYPE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$PinType')]
  JPinpadConstant_PinType = interface(JObject)
    ['{5803D4C2-CA4C-4BA6-9692-CC138625661A}']
  end;
  TJPinpadConstant_PinType = class(TJavaGenericImport<JPinpadConstant_PinTypeClass, JPinpadConstant_PinType>) end;

  JPinpadConstant_PinpadIdClass = interface(JObjectClass)
    ['{157B9BD0-0E67-42A8-92D7-9C4B22A988A0}']
    {class} function _GetBUILTIN: Integer; cdecl;
    {class} function _GetEXTERNAL: Integer; cdecl;
    {class} function init: JPinpadConstant_PinpadId; cdecl;//Deprecated
    {class} property BUILTIN: Integer read _GetBUILTIN;
    {class} property EXTERNAL: Integer read _GetEXTERNAL;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$PinpadId')]
  JPinpadConstant_PinpadId = interface(JObject)
    ['{73C4C71D-5DD0-487E-876C-66FEC39DE3B7}']
  end;
  TJPinpadConstant_PinpadId = class(TJavaGenericImport<JPinpadConstant_PinpadIdClass, JPinpadConstant_PinpadId>) end;

  JPinpadConstant_StoredRecordClass = interface(JObjectClass)
    ['{7F089796-3EAE-46EF-8530-4E3F423C4954}']
    {class} function _GetACTION_READ: Integer; cdecl;
    {class} function _GetACTION_WRITE: Integer; cdecl;
    {class} function init: JPinpadConstant_StoredRecord; cdecl;//Deprecated
    {class} property ACTION_READ: Integer read _GetACTION_READ;
    {class} property ACTION_WRITE: Integer read _GetACTION_WRITE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$StoredRecord')]
  JPinpadConstant_StoredRecord = interface(JObject)
    ['{096B6E1F-FB93-41D6-BFC1-9D68424C9292}']
  end;
  TJPinpadConstant_StoredRecord = class(TJavaGenericImport<JPinpadConstant_StoredRecordClass, JPinpadConstant_StoredRecord>) end;

  JPinpadConstant_WKeyTypeClass = interface(JObjectClass)
    ['{762E2694-A018-4D01-AFD5-78B27BE07A04}']
    {class} function _GetWKEY_TYPE_MAK: Integer; cdecl;
    {class} function _GetWKEY_TYPE_PIK: Integer; cdecl;
    {class} function _GetWKEY_TYPE_TDK: Integer; cdecl;
    {class} function init: JPinpadConstant_WKeyType; cdecl;//Deprecated
    {class} property WKEY_TYPE_MAK: Integer read _GetWKEY_TYPE_MAK;
    {class} property WKEY_TYPE_PIK: Integer read _GetWKEY_TYPE_PIK;
    {class} property WKEY_TYPE_TDK: Integer read _GetWKEY_TYPE_TDK;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PinpadConstant$WKeyType')]
  JPinpadConstant_WKeyType = interface(JObject)
    ['{1C53F5E7-6513-4B50-BA35-88F9A5FF8E02}']
  end;
  TJPinpadConstant_WKeyType = class(TJavaGenericImport<JPinpadConstant_WKeyTypeClass, JPinpadConstant_WKeyType>) end;

  JPrinterConstantClass = interface(JObjectClass)
    ['{4494B6DE-60A5-4595-A3DF-93D79921DF21}']
    {class} function init: JPrinterConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant')]
  JPrinterConstant = interface(JObject)
    ['{36A1C064-5BF6-481E-923B-FFABFA953FB7}']
  end;
  TJPrinterConstant = class(TJavaGenericImport<JPrinterConstantClass, JPrinterConstant>) end;

  JPrinterConstant_BarCodeTypeClass = interface(JObjectClass)
    ['{EF1868B5-34CF-4250-99EF-80DD5E135024}']
    {class} function _GetBARCODE_TYPE_CODE128: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_CODE39: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_CODE93: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_CODEBAR: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_ITF: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_JAN13: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_JAN8: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_UPCA: Integer; cdecl;
    {class} function _GetBARCODE_TYPE_UPCE: Integer; cdecl;
    {class} function init: JPrinterConstant_BarCodeType; cdecl;
    {class} property BARCODE_TYPE_CODE128: Integer read _GetBARCODE_TYPE_CODE128;
    {class} property BARCODE_TYPE_CODE39: Integer read _GetBARCODE_TYPE_CODE39;
    {class} property BARCODE_TYPE_CODE93: Integer read _GetBARCODE_TYPE_CODE93;
    {class} property BARCODE_TYPE_CODEBAR: Integer read _GetBARCODE_TYPE_CODEBAR;
    {class} property BARCODE_TYPE_ITF: Integer read _GetBARCODE_TYPE_ITF;
    {class} property BARCODE_TYPE_JAN13: Integer read _GetBARCODE_TYPE_JAN13;
    {class} property BARCODE_TYPE_JAN8: Integer read _GetBARCODE_TYPE_JAN8;
    {class} property BARCODE_TYPE_UPCA: Integer read _GetBARCODE_TYPE_UPCA;
    {class} property BARCODE_TYPE_UPCE: Integer read _GetBARCODE_TYPE_UPCE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$BarCodeType')]
  JPrinterConstant_BarCodeType = interface(JObject)
    ['{D25179F9-033E-4EBD-A165-AA3CE41C5E3D}']
  end;
  TJPrinterConstant_BarCodeType = class(TJavaGenericImport<JPrinterConstant_BarCodeTypeClass, JPrinterConstant_BarCodeType>) end;

  JPrinterConstant_FontSizeClass = interface(JObjectClass)
    ['{FFD9472F-8AFB-4F7A-BB95-92B80F33E0DD}']
    {class} function _GetLARGE: Integer; cdecl;
    {class} procedure _SetLARGE(Value: Integer); cdecl;
    {class} function _GetNORMAL: Integer; cdecl;
    {class} procedure _SetNORMAL(Value: Integer); cdecl;
    {class} function _GetSMALL: Integer; cdecl;
    {class} procedure _SetSMALL(Value: Integer); cdecl;
    {class} function _GetXLARGE: Integer; cdecl;
    {class} procedure _SetXLARGE(Value: Integer); cdecl;
    {class} function init: JPrinterConstant_FontSize; cdecl;//Deprecated
    {class} property LARGE: Integer read _GetLARGE write _SetLARGE;
    {class} property NORMAL: Integer read _GetNORMAL write _SetNORMAL;
    {class} property SMALL: Integer read _GetSMALL write _SetSMALL;
    {class} property XLARGE: Integer read _GetXLARGE write _SetXLARGE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$FontSize')]
  JPrinterConstant_FontSize = interface(JObject)
    ['{C508C1C5-ECEC-4BE7-86D3-182546254538}']
  end;
  TJPrinterConstant_FontSize = class(TJavaGenericImport<JPrinterConstant_FontSizeClass, JPrinterConstant_FontSize>) end;

  JPrinterConstant_HRIPositionClass = interface(JObjectClass)
    ['{03151021-18AF-4FB5-9702-693975810E24}']
    {class} function _GetPOSITION_ABOVE: Integer; cdecl;
    {class} function _GetPOSITION_BELOW: Integer; cdecl;
    {class} function _GetPOSITION_BOTH: Integer; cdecl;
    {class} function _GetPOSITION_NONE: Integer; cdecl;
    {class} function init: JPrinterConstant_HRIPosition; cdecl;//Deprecated
    {class} property POSITION_ABOVE: Integer read _GetPOSITION_ABOVE;
    {class} property POSITION_BELOW: Integer read _GetPOSITION_BELOW;
    {class} property POSITION_BOTH: Integer read _GetPOSITION_BOTH;
    {class} property POSITION_NONE: Integer read _GetPOSITION_NONE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$HRIPosition')]
  JPrinterConstant_HRIPosition = interface(JObject)
    ['{66F4F79F-DA89-43C3-B341-E0B7568F3097}']
  end;
  TJPrinterConstant_HRIPosition = class(TJavaGenericImport<JPrinterConstant_HRIPositionClass, JPrinterConstant_HRIPosition>) end;

  JPrinterConstant_PrintLenClass = interface(JObjectClass)
    ['{971D8CB8-DC89-45E2-B1B1-0F99FC365AFB}']
    {class} function _GetRESET_PRINT_PIXELS_LEN: Integer; cdecl;
    {class} function _GetRETURN_PRINT_PIXELS_LEN: Integer; cdecl;
    {class} function init: JPrinterConstant_PrintLen; cdecl;//Deprecated
    {class} property RESET_PRINT_PIXELS_LEN: Integer read _GetRESET_PRINT_PIXELS_LEN;
    {class} property RETURN_PRINT_PIXELS_LEN: Integer read _GetRETURN_PRINT_PIXELS_LEN;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$PrintLen')]
  JPrinterConstant_PrintLen = interface(JObject)
    ['{15138B66-7782-4497-9B44-1DF9832809F3}']
  end;
  TJPrinterConstant_PrintLen = class(TJavaGenericImport<JPrinterConstant_PrintLenClass, JPrinterConstant_PrintLen>) end;

  JPrinterConstant_PrinterLedClass = interface(JObjectClass)
    ['{0F036B14-E865-493B-84A3-CA989685BE02}']
    {class} function _GetPRINTER_LED_FLICKER_DEFAULT: Integer; cdecl;
    {class} function _GetPRINTER_LED_FLICKER_FAST: Integer; cdecl;
    {class} function _GetPRINTER_LED_FLICKER_SLOW: Integer; cdecl;
    {class} function _GetPRINTER_LED_LIGHT: Integer; cdecl;
    {class} function init: JPrinterConstant_PrinterLed; cdecl;//Deprecated
    {class} property PRINTER_LED_FLICKER_DEFAULT: Integer read _GetPRINTER_LED_FLICKER_DEFAULT;
    {class} property PRINTER_LED_FLICKER_FAST: Integer read _GetPRINTER_LED_FLICKER_FAST;
    {class} property PRINTER_LED_FLICKER_SLOW: Integer read _GetPRINTER_LED_FLICKER_SLOW;
    {class} property PRINTER_LED_LIGHT: Integer read _GetPRINTER_LED_LIGHT;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$PrinterLed')]
  JPrinterConstant_PrinterLed = interface(JObject)
    ['{80287645-4F65-45C5-8650-608B101B6A15}']
  end;
  TJPrinterConstant_PrinterLed = class(TJavaGenericImport<JPrinterConstant_PrinterLedClass, JPrinterConstant_PrinterLed>) end;

  JPrinterConstant_PrinterStateClass = interface(JObjectClass)
    ['{F169FFAC-D151-4D6B-AFF8-0EF0B5D50488}']
    {class} function _GetPRINTER_COVER_OPEN: Integer; cdecl;
    {class} function _GetPRINTER_PAPER_RUN_OUT: Integer; cdecl;
    {class} function _GetPRINTER_STATE_BUSY: Integer; cdecl;
    {class} function _GetPRINTER_STATE_CUT: Integer; cdecl;
    {class} function _GetPRINTER_STATE_DEV_ERROR: Integer; cdecl;
    {class} function _GetPRINTER_STATE_HIGHTEMP: Integer; cdecl;
    {class} function _GetPRINTER_STATE_LOWVOL_ERROR: Integer; cdecl;
    {class} function _GetPRINTER_STATE_NOPAPER: Integer; cdecl;
    {class} function _GetPRINTER_STATE_NORMAL: Integer; cdecl;
    {class} function _GetPRINTER_STATE_NOT_OPEN: Integer; cdecl;
    {class} function _GetPRINTER_STATE_OUT: Integer; cdecl;
    {class} function _GetPRINTER_STATE_UNKNOWN: Integer; cdecl;
    {class} function _GetPRINT_ERROR_PARAMETER: Integer; cdecl;
    {class} function init: JPrinterConstant_PrinterState; cdecl;
    {class} property PRINTER_COVER_OPEN: Integer read _GetPRINTER_COVER_OPEN;
    {class} property PRINTER_PAPER_RUN_OUT: Integer read _GetPRINTER_PAPER_RUN_OUT;
    {class} property PRINTER_STATE_BUSY: Integer read _GetPRINTER_STATE_BUSY;
    {class} property PRINTER_STATE_CUT: Integer read _GetPRINTER_STATE_CUT;
    {class} property PRINTER_STATE_DEV_ERROR: Integer read _GetPRINTER_STATE_DEV_ERROR;
    {class} property PRINTER_STATE_HIGHTEMP: Integer read _GetPRINTER_STATE_HIGHTEMP;
    {class} property PRINTER_STATE_LOWVOL_ERROR: Integer read _GetPRINTER_STATE_LOWVOL_ERROR;
    {class} property PRINTER_STATE_NOPAPER: Integer read _GetPRINTER_STATE_NOPAPER;
    {class} property PRINTER_STATE_NORMAL: Integer read _GetPRINTER_STATE_NORMAL;
    {class} property PRINTER_STATE_NOT_OPEN: Integer read _GetPRINTER_STATE_NOT_OPEN;
    {class} property PRINTER_STATE_OUT: Integer read _GetPRINTER_STATE_OUT;
    {class} property PRINTER_STATE_UNKNOWN: Integer read _GetPRINTER_STATE_UNKNOWN;
    {class} property PRINT_ERROR_PARAMETER: Integer read _GetPRINT_ERROR_PARAMETER;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PrinterConstant$PrinterState')]
  JPrinterConstant_PrinterState = interface(JObject)
    ['{5B1C5AA2-A10D-440B-9A48-75C260940881}']
  end;
  TJPrinterConstant_PrinterState = class(TJavaGenericImport<JPrinterConstant_PrinterStateClass, JPrinterConstant_PrinterState>) end;

  JPsamConstantClass = interface(JObjectClass)
    ['{24B99C3C-B82A-45BF-BA45-22B8ADA385C6}']
    {class} function _GetPSAM_DEV_ID_1: Integer; cdecl;
    {class} function _GetPSAM_DEV_ID_2: Integer; cdecl;
    {class} function _GetPSAM_DEV_ID_3: Integer; cdecl;
    {class} function init: JPsamConstant; cdecl;//Deprecated
    {class} property PSAM_DEV_ID_1: Integer read _GetPSAM_DEV_ID_1;
    {class} property PSAM_DEV_ID_2: Integer read _GetPSAM_DEV_ID_2;
    {class} property PSAM_DEV_ID_3: Integer read _GetPSAM_DEV_ID_3;
  end;

  [JavaSignature('com/topwise/cloudpos/data/PsamConstant')]
  JPsamConstant = interface(JObject)
    ['{6E398692-86E8-4FBD-8E2B-6879B0B409D4}']
  end;
  TJPsamConstant = class(TJavaGenericImport<JPsamConstantClass, JPsamConstant>) end;

  JRFCardClass = interface(JObjectClass)
    ['{059BAD37-2FD1-4770-B928-9FF7923E99A2}']
    {class} function init: JRFCard; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/RFCard')]
  JRFCard = interface(JObject)
    ['{33D1EA7A-61A3-443C-9905-4D4CA905C464}']
  end;
  TJRFCard = class(TJavaGenericImport<JRFCardClass, JRFCard>) end;

  JRFCard_RFCardTypeClass = interface(JObjectClass)
    ['{82369578-1B06-4072-990D-A402BA7E21F9}']
    {class} function _GetMIFARE_CPU: Integer; cdecl;
    {class} function _GetMIFARE_DESFIRE: Integer; cdecl;
    {class} function _GetMIFARE_ONE: Integer; cdecl;
    {class} function _GetMIFARE_ONE_S70: Integer; cdecl;
    {class} function _GetMIFARE_PLUS: Integer; cdecl;
    {class} function _GetMIFARE_PRO: Integer; cdecl;
    {class} function _GetMIFARE_S50: Integer; cdecl;
    {class} function _GetMIFARE_S50_PRO: Integer; cdecl;
    {class} function _GetMIFARE_S70_PRO: Integer; cdecl;
    {class} function _GetMIFARE_ULTRALIGHT: Integer; cdecl;
    {class} function _GetMIFARE_ULTRALIGHT_C: Integer; cdecl;
    {class} function _GetRF_MULTI_CARD: Integer; cdecl;
    {class} function _GetTYPEA: Integer; cdecl;
    {class} function _GetTYPEB: Integer; cdecl;
    {class} function _GetTYPEC: Integer; cdecl;
    {class} function _GetUNSUPPORTED: Integer; cdecl;
    {class} function init: JRFCard_RFCardType; cdecl;//Deprecated
    {class} property MIFARE_CPU: Integer read _GetMIFARE_CPU;
    {class} property MIFARE_DESFIRE: Integer read _GetMIFARE_DESFIRE;
    {class} property MIFARE_ONE: Integer read _GetMIFARE_ONE;
    {class} property MIFARE_ONE_S70: Integer read _GetMIFARE_ONE_S70;
    {class} property MIFARE_PLUS: Integer read _GetMIFARE_PLUS;
    {class} property MIFARE_PRO: Integer read _GetMIFARE_PRO;
    {class} property MIFARE_S50: Integer read _GetMIFARE_S50;
    {class} property MIFARE_S50_PRO: Integer read _GetMIFARE_S50_PRO;
    {class} property MIFARE_S70_PRO: Integer read _GetMIFARE_S70_PRO;
    {class} property MIFARE_ULTRALIGHT: Integer read _GetMIFARE_ULTRALIGHT;
    {class} property MIFARE_ULTRALIGHT_C: Integer read _GetMIFARE_ULTRALIGHT_C;
    {class} property RF_MULTI_CARD: Integer read _GetRF_MULTI_CARD;
    {class} property TYPEA: Integer read _GetTYPEA;
    {class} property TYPEB: Integer read _GetTYPEB;
    {class} property TYPEC: Integer read _GetTYPEC;
    {class} property UNSUPPORTED: Integer read _GetUNSUPPORTED;
  end;

  [JavaSignature('com/topwise/cloudpos/data/RFCard$RFCardType')]
  JRFCard_RFCardType = interface(JObject)
    ['{A813169A-9F85-4A8A-AFBB-ADEA555AB4DB}']
  end;
  TJRFCard_RFCardType = class(TJavaGenericImport<JRFCard_RFCardTypeClass, JRFCard_RFCardType>) end;

  JSerialportConstantClass = interface(JObjectClass)
    ['{BB2C566E-94AF-48BA-97F1-E3E9311BAD9B}']
    {class} function _GetPORT_ONE: Integer; cdecl;
    {class} function _GetPORT_THREE: Integer; cdecl;
    {class} function _GetPORT_TWO: Integer; cdecl;
    {class} function init: JSerialportConstant; cdecl;//Deprecated
    {class} property PORT_ONE: Integer read _GetPORT_ONE;
    {class} property PORT_THREE: Integer read _GetPORT_THREE;
    {class} property PORT_TWO: Integer read _GetPORT_TWO;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SerialportConstant')]
  JSerialportConstant = interface(JObject)
    ['{CAD15FF8-6901-4041-A683-AB26EC5DA290}']
  end;
  TJSerialportConstant = class(TJavaGenericImport<JSerialportConstantClass, JSerialportConstant>) end;

  JSystemConstantClass = interface(JObjectClass)
    ['{801A5018-7879-456F-89EC-04A5D8CD1A46}']
    {class} function init: JSystemConstant; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant')]
  JSystemConstant = interface(JObject)
    ['{9E1C6F64-EA00-45AB-A67C-4EB14F5F741F}']
  end;
  TJSystemConstant = class(TJavaGenericImport<JSystemConstantClass, JSystemConstant>) end;

  JSystemConstant_DayDreamModeClass = interface(JObjectClass)
    ['{9C1E63DB-A4BE-4DF7-86AD-A251FB970D29}']
    {class} function _GetALWAYS: Integer; cdecl;
    {class} function _GetDOCK: Integer; cdecl;
    {class} function _GetNEVER: Integer; cdecl;
    {class} function _GetSLEEP: Integer; cdecl;
    {class} function _GetWHILE_CHARGING: Integer; cdecl;
    {class} function init: JSystemConstant_DayDreamMode; cdecl;
    {class} property ALWAYS: Integer read _GetALWAYS;
    {class} property DOCK: Integer read _GetDOCK;
    {class} property NEVER: Integer read _GetNEVER;
    {class} property SLEEP: Integer read _GetSLEEP;
    {class} property WHILE_CHARGING: Integer read _GetWHILE_CHARGING;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant$DayDreamMode')]
  JSystemConstant_DayDreamMode = interface(JObject)
    ['{C3F246DF-3A9A-4FB4-AC94-27A2464996BC}']
  end;
  TJSystemConstant_DayDreamMode = class(TJavaGenericImport<JSystemConstant_DayDreamModeClass, JSystemConstant_DayDreamMode>) end;

  JSystemConstant_NavigationButtonClass = interface(JObjectClass)
    ['{C645AE57-CCDD-4518-BCC2-D7F5CEE3FF59}']
    {class} function _GetBACK_BUTTON: Integer; cdecl;
    {class} function _GetHOME_BUTTON: Integer; cdecl;
    {class} function _GetMENU_BUTTON: Integer; cdecl;
    {class} function init: JSystemConstant_NavigationButton; cdecl;//Deprecated
    {class} property BACK_BUTTON: Integer read _GetBACK_BUTTON;
    {class} property HOME_BUTTON: Integer read _GetHOME_BUTTON;
    {class} property MENU_BUTTON: Integer read _GetMENU_BUTTON;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant$NavigationButton')]
  JSystemConstant_NavigationButton = interface(JObject)
    ['{560EE6CC-4995-42C4-89D1-3C7464EDAB5E}']
  end;
  TJSystemConstant_NavigationButton = class(TJavaGenericImport<JSystemConstant_NavigationButtonClass, JSystemConstant_NavigationButton>) end;

  JSystemConstant_ScreenLockTypeClass = interface(JObjectClass)
    ['{8A38FD2F-4BB4-425C-ACF7-467DC45300BD}']
    {class} function _GetNONE: Integer; cdecl;
    {class} function _GetPASSWORD: Integer; cdecl;
    {class} function _GetPATTERN: Integer; cdecl;
    {class} function _GetPIN: Integer; cdecl;
    {class} function _GetSWIPE: Integer; cdecl;
    {class} function init: JSystemConstant_ScreenLockType; cdecl;
    {class} property NONE: Integer read _GetNONE;
    {class} property PASSWORD: Integer read _GetPASSWORD;
    {class} property PATTERN: Integer read _GetPATTERN;
    {class} property PIN: Integer read _GetPIN;
    {class} property SWIPE: Integer read _GetSWIPE;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant$ScreenLockType')]
  JSystemConstant_ScreenLockType = interface(JObject)
    ['{1009DE89-43C1-43B2-8AA6-7DC70A1CAE1F}']
  end;
  TJSystemConstant_ScreenLockType = class(TJavaGenericImport<JSystemConstant_ScreenLockTypeClass, JSystemConstant_ScreenLockType>) end;

  JSystemConstant_SystemConfigurationMenuClass = interface(JObjectClass)
    ['{89886F08-D573-47FA-AB89-5337F5F1A8D6}']
    {class} function _GetAIRPORT: Integer; cdecl;
    {class} function _GetBLUETOOTH: Integer; cdecl;
    {class} function _GetLOCATION: Integer; cdecl;
    {class} function _GetLOCATION_AND_AIRPORT: Integer; cdecl;
    {class} function _GetSETTINGS: Integer; cdecl;
    {class} function _GetWIFI: Integer; cdecl;
    {class} function init: JSystemConstant_SystemConfigurationMenu; cdecl;//Deprecated
    {class} property AIRPORT: Integer read _GetAIRPORT;
    {class} property BLUETOOTH: Integer read _GetBLUETOOTH;
    {class} property LOCATION: Integer read _GetLOCATION;
    {class} property LOCATION_AND_AIRPORT: Integer read _GetLOCATION_AND_AIRPORT;
    {class} property SETTINGS: Integer read _GetSETTINGS;
    {class} property WIFI: Integer read _GetWIFI;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant$SystemConfigurationMenu')]
  JSystemConstant_SystemConfigurationMenu = interface(JObject)
    ['{A8B62BB4-E546-4EF6-8007-71B3606C4154}']
  end;
  TJSystemConstant_SystemConfigurationMenu = class(TJavaGenericImport<JSystemConstant_SystemConfigurationMenuClass, JSystemConstant_SystemConfigurationMenu>) end;

  JSystemConstant_TetheringOptionClass = interface(JObjectClass)
    ['{17B52945-AD2D-4287-AED8-3BE586C48499}']
    {class} function _GetBLUETOOTH: Byte; cdecl;
    {class} function _GetSET_WIFI: Byte; cdecl;
    {class} function _GetTETHER: Byte; cdecl;
    {class} function _GetUSB: Byte; cdecl;
    {class} function _GetWIFI: Byte; cdecl;
    {class} function init: JSystemConstant_TetheringOption; cdecl;
    {class} property BLUETOOTH: Byte read _GetBLUETOOTH;
    {class} property SET_WIFI: Byte read _GetSET_WIFI;
    {class} property TETHER: Byte read _GetTETHER;
    {class} property USB: Byte read _GetUSB;
    {class} property WIFI: Byte read _GetWIFI;
  end;

  [JavaSignature('com/topwise/cloudpos/data/SystemConstant$TetheringOption')]
  JSystemConstant_TetheringOption = interface(JObject)
    ['{89DA40D5-FBF1-4774-B06C-BF0928EC14AE}']
  end;
  TJSystemConstant_TetheringOption = class(TJavaGenericImport<JSystemConstant_TetheringOptionClass, JSystemConstant_TetheringOption>) end;

  JBytesUtilClass = interface(JObjectClass)
    ['{4ACC5010-5F30-4687-9EDB-09E5B8506930}']
    {class} function add(b: TJavaArray<Byte>; b1: Byte): TJavaArray<Byte>; cdecl;
    {class} function byte2HexString(b: Byte): JString; cdecl;
    {class} function bytes2HexString(b: TJavaArray<Byte>): JString; cdecl;
    {class} function bytes2Int(b: TJavaArray<Byte>; b1: Boolean): Integer; cdecl;
    {class} function hex2byte(c: Char): Byte; cdecl;
    {class} function hexString2Bytes(string_: JString): TJavaArray<Byte>; cdecl;
    {class} function init: JBytesUtil; cdecl;
    {class} function int2Bytes(i: Integer; b: Boolean): TJavaArray<Byte>; cdecl;
    {class} function mergeBytes(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    {class} function subBytes(b: TJavaArray<Byte>; i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('com/topwise/cloudpos/struct/BytesUtil')]
  JBytesUtil = interface(JObject)
    ['{9F7CFFC8-CB0F-402A-84FD-BC733078365E}']
  end;
  TJBytesUtil = class(TJavaGenericImport<JBytesUtilClass, JBytesUtil>) end;

  JTlvClass = interface(JObjectClass)
    ['{E38FBDCF-5ADE-4945-957E-B07418BF2060}']
    {class} function init: JTlv; cdecl; overload;
    {class} function init(string_: JString; b: TJavaArray<Byte>): JTlv; cdecl; overload;
    {class} function init(string_: JString; string_1: JString): JTlv; cdecl; overload;
  end;

  [JavaSignature('com/topwise/cloudpos/struct/Tlv')]
  JTlv = interface(JObject)
    ['{FD5CEC4A-FD15-4783-AED6-D659243047DF}']
    function getBytes: TJavaArray<Byte>; cdecl;
    function getHexValue: JString; cdecl;
    function getLength: Integer; cdecl;
    function getTag: JString; cdecl;
    function getValue: TJavaArray<Byte>; cdecl;
    procedure setHexValue(string_: JString); cdecl;
    procedure setTag(string_: JString); cdecl; overload;
    procedure setTag(b: TJavaArray<Byte>); cdecl; overload;
    procedure setValue(b: TJavaArray<Byte>); cdecl;
    function toHex: JString; cdecl;
    function toString: JString; cdecl;
  end;
  TJTlv = class(TJavaGenericImport<JTlvClass, JTlv>) end;

  JTlvListClass = interface(JSerializableClass)
    ['{6E602E64-5E2B-4C79-A7AB-9B60C958A92D}']
    {class} function init: JTlvList; cdecl; overload;
    {class} function init(b: Boolean): JTlvList; cdecl; overload;
  end;

  [JavaSignature('com/topwise/cloudpos/struct/TlvList')]
  JTlvList = interface(JSerializable)
    ['{C8643629-4753-436C-8283-B4734F0011E6}']
    procedure addTlv(tlv: JTlv); cdecl; overload;
    procedure addTlv(string_: JString; string_1: JString); cdecl; overload;
    procedure addTlv(string_: JString; b: TJavaArray<Byte>); cdecl; overload;
    procedure clear; cdecl;
    procedure fromBytes(b: TJavaArray<Byte>); cdecl;
    procedure fromHex(string_: JString); cdecl;
    function getBytes: TJavaArray<Byte>; cdecl;
    function getList: JMap; cdecl;
    function getTlv(string_: JString): JTlv; cdecl;
    procedure print; cdecl;
    procedure setList(map: JMap); cdecl;
    function toHex: JString; cdecl;
    function toString: JString; cdecl;
  end;
  TJTlvList = class(TJavaGenericImport<JTlvListClass, JTlvList>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAnimator', TypeInfo(sk210.bridge.topwise.cloudpos.JAnimator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAnimator_AnimatorListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAnimator_AnimatorPauseListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyframe', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyframe));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JLayoutTransition', TypeInfo(sk210.bridge.topwise.cloudpos.JLayoutTransition));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JLayoutTransition_TransitionListener', TypeInfo(sk210.bridge.topwise.cloudpos.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPropertyValuesHolder', TypeInfo(sk210.bridge.topwise.cloudpos.JPropertyValuesHolder));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JStateListAnimator', TypeInfo(sk210.bridge.topwise.cloudpos.JStateListAnimator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTimeInterpolator', TypeInfo(sk210.bridge.topwise.cloudpos.JTimeInterpolator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTypeConverter', TypeInfo(sk210.bridge.topwise.cloudpos.JTypeConverter));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTypeEvaluator', TypeInfo(sk210.bridge.topwise.cloudpos.JTypeEvaluator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JValueAnimator', TypeInfo(sk210.bridge.topwise.cloudpos.JValueAnimator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JValueAnimator_AnimatorUpdateListener', TypeInfo(sk210.bridge.topwise.cloudpos.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInterpolator', TypeInfo(sk210.bridge.topwise.cloudpos.JInterpolator));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.Jtoplibrary_BuildConfig', TypeInfo(sk210.bridge.topwise.cloudpos.Jtoplibrary_BuildConfig));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JExpandFunctionConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JExpandFunctionConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JExpandFunctionConstant_Error', TypeInfo(sk210.bridge.topwise.cloudpos.JExpandFunctionConstant_Error));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JExpandFunctionConstant_Key', TypeInfo(sk210.bridge.topwise.cloudpos.JExpandFunctionConstant_Key));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDeviceService', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDeviceService));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDeviceService_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDeviceService_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDeviceService_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDeviceService_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlBuzzer', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlBuzzer));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlBuzzer_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlBuzzer_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlBuzzer_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlBuzzer_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCode', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCode_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCode_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCode_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCode_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCameraScanCodeListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecodeCallBack_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDecodeMode', TypeInfo(sk210.bridge.topwise.cloudpos.JDecodeMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDecodeMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JDecodeMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDecodeParameter', TypeInfo(sk210.bridge.topwise.cloudpos.JDecodeParameter));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDecodeParameter_1', TypeInfo(sk210.bridge.topwise.cloudpos.JDecodeParameter_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCard_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCard_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCard_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCard_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCardListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCardListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCardListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCardListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCheckCardListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCheckCardListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCPUCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCPUCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCPUCard_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCPUCard_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlCPUCard_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlCPUCard_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecoderManager', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecoderManager));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecoderManager_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecoderManager_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDecoderManager_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDecoderManager_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener', TypeInfo(sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.Jemv_AidlCheckCardListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCandidateApp', TypeInfo(sk210.bridge.topwise.cloudpos.JCandidateApp));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCandidateApp_1', TypeInfo(sk210.bridge.topwise.cloudpos.JCandidateApp_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.Jemv_CardInfo', TypeInfo(sk210.bridge.topwise.cloudpos.Jemv_CardInfo));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCardInfo_1', TypeInfo(sk210.bridge.topwise.cloudpos.JCardInfo_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvTransData', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvTransData));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvTransData_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvTransData_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPCardLoadLog', TypeInfo(sk210.bridge.topwise.cloudpos.JPCardLoadLog));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPCardLoadLog_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPCardLoadLog_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPCardTransLog', TypeInfo(sk210.bridge.topwise.cloudpos.JPCardTransLog));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPCardTransLog_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPCardTransLog_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTerminalParam', TypeInfo(sk210.bridge.topwise.cloudpos.JTerminalParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTerminalParam_1', TypeInfo(sk210.bridge.topwise.cloudpos.JTerminalParam_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlAmex', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlAmex));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlAmex_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlAmex_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlAmex_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlAmex_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDpas', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDpas));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDpas_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDpas_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlDpas_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlDpas_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEmvL2', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEmvL2));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEmvL2_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEmvL2_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEmvL2_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEmvL2_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEntry', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEntry));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEntry_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEntry_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlEntry_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlEntry_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlJcb', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlJcb));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlJcb_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlJcb_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlJcb_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlJcb_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMir', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMir));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMir_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMir_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMir_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMir_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaypass', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaypass));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaypass_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaypass_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaypass_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaypass_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaywave', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaywave));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaywave_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaywave_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPaywave_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPaywave_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPure', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPure));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPure_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPure_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPure_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPure_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlQpboc', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlQpboc));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlQpboc_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlQpboc_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlQpboc_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlQpboc_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRupay', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRupay));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRupay_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRupay_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRupay_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRupay_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApduL2Resp', TypeInfo(sk210.bridge.topwise.cloudpos.JApduL2Resp));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApduL2Resp_1', TypeInfo(sk210.bridge.topwise.cloudpos.JApduL2Resp_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApduL2Send', TypeInfo(sk210.bridge.topwise.cloudpos.JApduL2Send));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApduL2Send_1', TypeInfo(sk210.bridge.topwise.cloudpos.JApduL2Send_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JBaseStruct', TypeInfo(sk210.bridge.topwise.cloudpos.JBaseStruct));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCandList', TypeInfo(sk210.bridge.topwise.cloudpos.JCandList));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCandList_1', TypeInfo(sk210.bridge.topwise.cloudpos.JCandList_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JClssTornLogRecord', TypeInfo(sk210.bridge.topwise.cloudpos.JClssTornLogRecord));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JClssTornLogRecord_1', TypeInfo(sk210.bridge.topwise.cloudpos.JClssTornLogRecord_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCombination', TypeInfo(sk210.bridge.topwise.cloudpos.JCombination));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCombination_1', TypeInfo(sk210.bridge.topwise.cloudpos.JCombination_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCallback', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCallback));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCallback_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCallback_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCallback_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCallback_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCandidateItem', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCandidateItem));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCandidateItem_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCandidateItem_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCapk', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCapk));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvCapk_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvCapk_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvKernelConfig', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvKernelConfig));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvKernelConfig_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvKernelConfig_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvRevocList', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvRevocList));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvRevocList_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvRevocList_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvTerminalInfo', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvTerminalInfo));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvTerminalInfo_1', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvTerminalInfo_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPaypassCallback', TypeInfo(sk210.bridge.topwise.cloudpos.JPaypassCallback));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPaypassCallback_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JPaypassCallback_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPaypassCallback_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JPaypassCallback_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPreProcResult', TypeInfo(sk210.bridge.topwise.cloudpos.JPreProcResult));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPreProcResult_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPreProcResult_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JProgramID', TypeInfo(sk210.bridge.topwise.cloudpos.JProgramID));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JProgramID_1', TypeInfo(sk210.bridge.topwise.cloudpos.JProgramID_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JQpbocCallback', TypeInfo(sk210.bridge.topwise.cloudpos.JQpbocCallback));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JQpbocCallback_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JQpbocCallback_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JQpbocCallback_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JQpbocCallback_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JReturnCodeCLSS', TypeInfo(sk210.bridge.topwise.cloudpos.JReturnCodeCLSS));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JReturnCodeEMV', TypeInfo(sk210.bridge.topwise.cloudpos.JReturnCodeEMV));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTransParam', TypeInfo(sk210.bridge.topwise.cloudpos.JTransParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTransParam_1', TypeInfo(sk210.bridge.topwise.cloudpos.JTransParam_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlFingerprint', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlFingerprint));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlFingerprint_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlFingerprint_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlFingerprint_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlFingerprint_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_FingerPosition', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_FingerPosition));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_ImgCompressAlg', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_ImgCompressAlg));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_ImgFormat', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_ImgFormat));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_LfdLevel', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_LfdLevel));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_SecurityLevel', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_SecurityLevel));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintConstant_TrustFingerException', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintConstant_TrustFingerException));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintListener', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintParam', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintParam_1', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintParam_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintResult', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintResult));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintResult_1', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintResult_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintVerifyResult', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintVerifyResult));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JFingerprintVerifyResult_1', TypeInfo(sk210.bridge.topwise.cloudpos.JFingerprintVerifyResult_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlICCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlICCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlICCard_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlICCard_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlICCard_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlICCard_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyManager', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyManager));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyManager_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyManager_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyManager_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyManager_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAlgType', TypeInfo(sk210.bridge.topwise.cloudpos.JAlgType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAlgType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAlgType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyCalType', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyCalType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyCalType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyCalType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyKeyPairType', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyKeyPairType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyKeyPairType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyKeyPairType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyKeyType', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyKeyType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyKeyType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyKeyType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyPaddingMode', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyPaddingMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsyPaddingMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAsyPaddingMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsymmetricKey', TypeInfo(sk210.bridge.topwise.cloudpos.JAsymmetricKey));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAsymmetricKey_1', TypeInfo(sk210.bridge.topwise.cloudpos.JAsymmetricKey_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JBytesTypeValue', TypeInfo(sk210.bridge.topwise.cloudpos.JBytesTypeValue));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JBytesTypeValue_1', TypeInfo(sk210.bridge.topwise.cloudpos.JBytesTypeValue_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDukptKeyType', TypeInfo(sk210.bridge.topwise.cloudpos.JDukptKeyType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JDukptKeyType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JDukptKeyType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JIncreaseMode', TypeInfo(sk210.bridge.topwise.cloudpos.JIncreaseMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JIncreaseMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JIncreaseMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JIntArrayTypeValue', TypeInfo(sk210.bridge.topwise.cloudpos.JIntArrayTypeValue));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JIntArrayTypeValue_1', TypeInfo(sk210.bridge.topwise.cloudpos.JIntArrayTypeValue_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKCVVerifyMode', TypeInfo(sk210.bridge.topwise.cloudpos.JKCVVerifyMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKCVVerifyMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JKCVVerifyMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyManagerErrorCode', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyManagerErrorCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyType', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyUsage', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyUsage));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyUsage_1', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyUsage_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMacAlgMode', TypeInfo(sk210.bridge.topwise.cloudpos.JMacAlgMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMacAlgMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JMacAlgMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymAlgMode', TypeInfo(sk210.bridge.topwise.cloudpos.JSymAlgMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymAlgMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JSymAlgMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymAlgType', TypeInfo(sk210.bridge.topwise.cloudpos.JSymAlgType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymAlgType_1', TypeInfo(sk210.bridge.topwise.cloudpos.JSymAlgType_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymPaddingMode', TypeInfo(sk210.bridge.topwise.cloudpos.JSymPaddingMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSymPaddingMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JSymPaddingMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTr31Mode', TypeInfo(sk210.bridge.topwise.cloudpos.JTr31Mode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTr31Mode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JTr31Mode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKLDLogExportListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlKeyLoadDown_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyLoadManagerConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyLoadManagerConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JKeyLoadManagerConstant_AlgMode', TypeInfo(sk210.bridge.topwise.cloudpos.JKeyLoadManagerConstant_AlgMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTr34Data', TypeInfo(sk210.bridge.topwise.cloudpos.JTr34Data));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTr34Data_1', TypeInfo(sk210.bridge.topwise.cloudpos.JTr34Data_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlLed', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlLed));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlLed_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlLed_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlLed_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlLed_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMagCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMagCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMagCard_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMagCard_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlMagCard_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlMagCard_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEncryptMagCardListener', TypeInfo(sk210.bridge.topwise.cloudpos.JEncryptMagCardListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEncryptMagCardListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JEncryptMagCardListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEncryptMagCardListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JEncryptMagCardListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMagCardListener', TypeInfo(sk210.bridge.topwise.cloudpos.JMagCardListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMagCardListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JMagCardListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMagCardListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JMagCardListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTrackData', TypeInfo(sk210.bridge.topwise.cloudpos.JTrackData));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTrackData_1', TypeInfo(sk210.bridge.topwise.cloudpos.JTrackData_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestal', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestal));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestal_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestal_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestal_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestal_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPedestalSerialManager_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPinpad', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPinpad));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPinpad_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPinpad_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPinpad_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPinpad_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JGetPinListener', TypeInfo(sk210.bridge.topwise.cloudpos.JGetPinListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JGetPinListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JGetPinListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JGetPinListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JGetPinListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JMacParam', TypeInfo(sk210.bridge.topwise.cloudpos.JMacParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinPadAlgParam', TypeInfo(sk210.bridge.topwise.cloudpos.JPinPadAlgParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinParam', TypeInfo(sk210.bridge.topwise.cloudpos.JPinParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPM', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPM));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPM_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPM_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPM_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPM_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCertificateInfo', TypeInfo(sk210.bridge.topwise.cloudpos.JCertificateInfo));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCertificateInfo_1', TypeInfo(sk210.bridge.topwise.cloudpos.JCertificateInfo_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinter', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinter));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinter_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinter_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinter_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinter_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinterListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinterListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinterListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinterListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPrinterListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPrinterListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAlign', TypeInfo(sk210.bridge.topwise.cloudpos.JAlign));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JImageUnit', TypeInfo(sk210.bridge.topwise.cloudpos.JImageUnit));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintCuttingMode', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintCuttingMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintCuttingMode_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintCuttingMode_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintItemObj', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintItemObj));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintItemEnhancedObj', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintItemEnhancedObj));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintItemEnhancedObj_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintItemEnhancedObj_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintItemObj_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintItemObj_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintItemObj_ALIGN', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintItemObj_ALIGN));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrintTemplate', TypeInfo(sk210.bridge.topwise.cloudpos.JPrintTemplate));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterMessage', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterMessage));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterMessage_1', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterMessage_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrnTextView', TypeInfo(sk210.bridge.topwise.cloudpos.JPrnTextView));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTextUnit', TypeInfo(sk210.bridge.topwise.cloudpos.JTextUnit));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTextUnit_TextSize', TypeInfo(sk210.bridge.topwise.cloudpos.JTextUnit_TextSize));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPsam', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPsam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPsam_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPsam_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPsam_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPsam_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRFCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRFCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRFCard_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRFCard_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlRFCard_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlRFCard_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlScannerManager', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlScannerManager));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlScannerManager_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlScannerManager_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlScannerManager_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlScannerManager_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSerialport', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSerialport));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSerialport_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSerialport_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSerialport_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSerialport_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlShellMonitor', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlShellMonitor));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlShellMonitor_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlShellMonitor_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlShellMonitor_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlShellMonitor_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback', TypeInfo(sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JInstructionSendDataCallback_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPosKeyListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPosKeyListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPosKeyListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPosKeyListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlPosKeyListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlPosKeyListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSystem', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSystem));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSystem_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSystem_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlSystem_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlSystem_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApnInfo', TypeInfo(sk210.bridge.topwise.cloudpos.JApnInfo));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApnInfo_1', TypeInfo(sk210.bridge.topwise.cloudpos.JApnInfo_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApnInfoExt', TypeInfo(sk210.bridge.topwise.cloudpos.JApnInfoExt));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JApnInfoExt_1', TypeInfo(sk210.bridge.topwise.cloudpos.JApnInfoExt_1));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstallAppObserver', TypeInfo(sk210.bridge.topwise.cloudpos.JInstallAppObserver));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstallAppObserver_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JInstallAppObserver_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JInstallAppObserver_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JInstallAppObserver_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JUninstallAppObserver', TypeInfo(sk210.bridge.topwise.cloudpos.JUninstallAppObserver));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JUninstallAppObserver_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JUninstallAppObserver_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JUninstallAppObserver_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JUninstallAppObserver_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTM', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTM));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTM_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTM_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTM_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTM_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTMListener', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTMListener));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTMListener_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTMListener_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTMListener_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTMListener_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTriggerStatus', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTriggerStatus));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTriggerStatus_Stub', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTriggerStatus_Stub));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlTriggerStatus_Stub_Proxy', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlTriggerStatus_Stub_Proxy));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_CPUCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_CPUCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_EMV', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_EMV));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_MagCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_MagCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_Pinpad', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_Pinpad));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_Printer', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_Printer));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_RFCard', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_RFCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_ScannerError', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_ScannerError));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_SerialPort', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_SerialPort));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlErrorCode_System', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlErrorCode_System));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JAidlScanParam', TypeInfo(sk210.bridge.topwise.cloudpos.JAidlScanParam));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JBuzzerCode', TypeInfo(sk210.bridge.topwise.cloudpos.JBuzzerCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCPUCard', TypeInfo(sk210.bridge.topwise.cloudpos.JCPUCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCPUCard_AT24CCardType', TypeInfo(sk210.bridge.topwise.cloudpos.JCPUCard_AT24CCardType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCPUCard_AT88SCCardType', TypeInfo(sk210.bridge.topwise.cloudpos.JCPUCard_AT88SCCardType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCPUCard_AT88SCZoneNumber', TypeInfo(sk210.bridge.topwise.cloudpos.JCPUCard_AT88SCZoneNumber));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JCPUCard_CPUCardType', TypeInfo(sk210.bridge.topwise.cloudpos.JCPUCard_CPUCardType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_AccountType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_AccountType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_AidCapkOptFlag', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_AidCapkOptFlag));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_AppType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_AppType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_CertType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_CertType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_PinType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_PinType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_ReadCardLoadLogType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_ReadCardLoadLogType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JEmvConstant_SlotType', TypeInfo(sk210.bridge.topwise.cloudpos.JEmvConstant_SlotType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JLedCode', TypeInfo(sk210.bridge.topwise.cloudpos.JLedCode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_BasicAlg', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_BasicAlg));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_DelPedMode', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_DelPedMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_KCVVerifyMode', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_KCVVerifyMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_KeyType', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_KeyType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_MacAlg', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_MacAlg));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_PinType', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_PinType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_PinpadId', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_PinpadId));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_StoredRecord', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_StoredRecord));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPinpadConstant_WKeyType', TypeInfo(sk210.bridge.topwise.cloudpos.JPinpadConstant_WKeyType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_BarCodeType', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_BarCodeType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_FontSize', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_FontSize));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_HRIPosition', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_HRIPosition));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_PrintLen', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_PrintLen));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_PrinterLed', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_PrinterLed));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPrinterConstant_PrinterState', TypeInfo(sk210.bridge.topwise.cloudpos.JPrinterConstant_PrinterState));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JPsamConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JPsamConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JRFCard', TypeInfo(sk210.bridge.topwise.cloudpos.JRFCard));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JRFCard_RFCardType', TypeInfo(sk210.bridge.topwise.cloudpos.JRFCard_RFCardType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSerialportConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JSerialportConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant_DayDreamMode', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant_DayDreamMode));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant_NavigationButton', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant_NavigationButton));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant_ScreenLockType', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant_ScreenLockType));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant_SystemConfigurationMenu', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant_SystemConfigurationMenu));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JSystemConstant_TetheringOption', TypeInfo(sk210.bridge.topwise.cloudpos.JSystemConstant_TetheringOption));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JBytesUtil', TypeInfo(sk210.bridge.topwise.cloudpos.JBytesUtil));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTlv', TypeInfo(sk210.bridge.topwise.cloudpos.JTlv));
  TRegTypes.RegisterType('sk210.bridge.topwise.cloudpos.JTlvList', TypeInfo(sk210.bridge.topwise.cloudpos.JTlvList));
end;

initialization
  RegisterTypes;
end.

