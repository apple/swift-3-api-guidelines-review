
var kDVDErrorUnknown: Int { get }
var kDVDErrorInitializingLib: Int { get }
var kDVDErrorUninitializedLib: Int { get }
var kDVDErrorNotAllowedDuringPlayback: Int { get }
var kDVDErrorUnassignedGrafPort: Int { get }
var kDVDErrorAlreadyPlaying: Int { get }
var kDVDErrorNoFatalErrCallBack: Int { get }
var kDVDErrorIsAlreadySleeping: Int { get }
var kDVDErrorDontNeedWakeup: Int { get }
var kDVDErrorTimeOutOfRange: Int { get }
var kDVDErrorUserActionNoOp: Int { get }
var kDVDErrorMissingDrive: Int { get }
var kDVDErrorNotSupportedConfiguration: Int { get }
var kDVDErrorNotSupportedFunction: Int { get }
var kDVDErrorNoValidMedia: Int { get }
var kDVDErrorWrongParam: Int { get }
var kDVDErrorMissingGraphicsDevice: Int { get }
var kDVDErrorGraphicsDevice: Int { get }
var kDVDErrorPlaybackOpen: Int { get }
var kDVDErrorInvalidRegionCode: Int { get }
var kDVDErrorRgnMgrInstall: Int { get }
var kDVDErrorMismatchedRegionCode: Int { get }
var kDVDErrorNoMoreRegionSets: Int { get }
var kDVDErrordRegionCodeUninitialized: Int { get }
var kDVDErrorAuthentification: Int { get }
var kDVDErrorOutOfVideoMemory: Int { get }
var kDVDErrorNoAudioOutputDevice: Int { get }
var kDVDErrorSystem: Int { get }
var kDVDErrorNavigation: Int { get }
var kDVDErrorInvalidBookmarkVersion: Int { get }
var kDVDErrorInvalidBookmarkSize: Int { get }
var kDVDErrorInvalidBookmarkForMedia: Int { get }
var kDVDErrorNoValidBookmarkForLastPlay: Int { get }
var kDVDErrorDisplayAuthentification: Int { get }
typealias DVDErrorCode = OSStatus
enum DVDState : OSStatus {
  init?(rawValue: OSStatus)
  var rawValue: OSStatus { get }
  case Unknown
  case Playing
  case PlayingStill
  case Paused
  case Stopped
  case Scanning
  case Idle
  case PlayingSlow
}
enum DVDMenu : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Title
  case Root
  case SubPicture
  case Audio
  case Angle
  case PTT
  case None
}
var kDVDButtonIndexNone: Int { get }
typealias DVDButtonIndex = Int32
enum DVDUserNavigation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MoveUp
  case MoveDown
  case MoveLeft
  case MoveRight
  case Enter
}
typealias DVDTimePosition = UInt32
var kDVDTimeCodeUninitialized: Int { get }
var kDVDTimeCodeElapsedSeconds: Int { get }
var kDVDTimeCodeRemainingSeconds: Int { get }
var kDVDTimeCodeTitleDurationSeconds: Int { get }
var kDVDTimeCodeChapterElapsedSeconds: Int { get }
var kDVDTimeCodeChapterRemainingSeconds: Int { get }
var kDVDTimeCodeChapterDurationSeconds: Int { get }
typealias DVDTimeCode = Int16
enum DVDScanDirection : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case Forward
  case Backward
}
enum DVDScanRate : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case RateOneEigth
  case RateOneFourth
  case RateOneHalf
  case Rate1x
  case Rate2x
  case Rate4x
  case Rate8x
  case Rate16x
  case Rate32x
}
enum DVDAspectRatio : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case RatioUninitialized
  case Ratio4x3
  case Ratio4x3PanAndScan
  case Ratio16x9
  case RatioLetterBox
}
enum DVDFormat : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case Uninitialized
  case NTSC
  case PAL
  case NTSC_HDTV
  case PAL_HDTV
}
var kDVDAudioModeUninitialized: Int { get }
var kDVDAudioModeProLogic: Int { get }
var kDVDAudioModeSPDIF: Int { get }
typealias DVDAudioMode = Int32
enum DVDAudioFormat : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case UnknownFormat
  case AC3Format
  case MPEG1Format
  case MPEG2Format
  case PCMFormat
  case DTSFormat
  case SDDSFormat
  case MLPFormat
  case DDPlusFormat
  case DTSHDFormat
}
var kDVDLanguageCodeUninitialized: Int { get }
var kDVDLanguageNoPreference: Int { get }
var kDVDLanguageCodeNone: Int { get }
var kDVDLanguageCodeAfar: Int { get }
var kDVDLanguageCodeAbkhazian: Int { get }
var kDVDLanguageCodeAfrikaans: Int { get }
var kDVDLanguageCodeAmharic: Int { get }
var kDVDLanguageCodeArabic: Int { get }
var kDVDLanguageCodeAssamese: Int { get }
var kDVDLanguageCodeAymara: Int { get }
var kDVDLanguageCodeAzerbaijani: Int { get }
var kDVDLanguageCodeBashkir: Int { get }
var kDVDLanguageCodeByelorussian: Int { get }
var kDVDLanguageCodeBulgarian: Int { get }
var kDVDLanguageCodeBihari: Int { get }
var kDVDLanguageCodeBislama: Int { get }
var kDVDLanguageCodeBengali: Int { get }
var kDVDLanguageCodeTibetan: Int { get }
var kDVDLanguageCodeBreton: Int { get }
var kDVDLanguageCodeCatalan: Int { get }
var kDVDLanguageCodeCorsican: Int { get }
var kDVDLanguageCodeCzech: Int { get }
var kDVDLanguageCodeWelsh: Int { get }
var kDVDLanguageCodeDanish: Int { get }
var kDVDLanguageCodeGerman: Int { get }
var kDVDLanguageCodeBhutani: Int { get }
var kDVDLanguageCodeGreek: Int { get }
var kDVDLanguageCodeEnglish: Int { get }
var kDVDLanguageCodeEsperanto: Int { get }
var kDVDLanguageCodeSpanish: Int { get }
var kDVDLanguageCodeEstonian: Int { get }
var kDVDLanguageCodeBasque: Int { get }
var kDVDLanguageCodePersian: Int { get }
var kDVDLanguageCodeFinnish: Int { get }
var kDVDLanguageCodeFiji: Int { get }
var kDVDLanguageCodeFaeroese: Int { get }
var kDVDLanguageCodeFrench: Int { get }
var kDVDLanguageCodeFrisian: Int { get }
var kDVDLanguageCodeIrish: Int { get }
var kDVDLanguageCodeScotsGaelic: Int { get }
var kDVDLanguageCodeGalician: Int { get }
var kDVDLanguageCodeGuarani: Int { get }
var kDVDLanguageCodeGujarati: Int { get }
var kDVDLanguageCodeHausa: Int { get }
var kDVDLanguageCodeHindi: Int { get }
var kDVDLanguageCodeCroatian: Int { get }
var kDVDLanguageCodeHungarian: Int { get }
var kDVDLanguageCodeArmenian: Int { get }
var kDVDLanguageCodeInterlingua: Int { get }
var kDVDLanguageCodeInterlingue: Int { get }
var kDVDLanguageCodeInupiak: Int { get }
var kDVDLanguageCodeIndonesian: Int { get }
var kDVDLanguageCodeIcelandic: Int { get }
var kDVDLanguageCodeItalian: Int { get }
var kDVDLanguageCodeHebrew: Int { get }
var kDVDLanguageCodeJapanese: Int { get }
var kDVDLanguageCodeYiddish: Int { get }
var kDVDLanguageCodeJavanese: Int { get }
var kDVDLanguageCodeGeorgian: Int { get }
var kDVDLanguageCodeKazakh: Int { get }
var kDVDLanguageCodeGreenlandic: Int { get }
var kDVDLanguageCodeCambodian: Int { get }
var kDVDLanguageCodeKannada: Int { get }
var kDVDLanguageCodeKorean: Int { get }
var kDVDLanguageCodeKashmiri: Int { get }
var kDVDLanguageCodeKurdish: Int { get }
var kDVDLanguageCodeKirghiz: Int { get }
var kDVDLanguageCodeLatin: Int { get }
var kDVDLanguageCodeLingala: Int { get }
var kDVDLanguageCodeLaothian: Int { get }
var kDVDLanguageCodeLithuanian: Int { get }
var kDVDLanguageCodeLatvian: Int { get }
var kDVDLanguageCodeMalagasy: Int { get }
var kDVDLanguageCodeMaori: Int { get }
var kDVDLanguageCodeMacedonian: Int { get }
var kDVDLanguageCodeMalayalam: Int { get }
var kDVDLanguageCodeMongolian: Int { get }
var kDVDLanguageCodeMoldavian: Int { get }
var kDVDLanguageCodeMarathi: Int { get }
var kDVDLanguageCodeMalay: Int { get }
var kDVDLanguageCodeMaltese: Int { get }
var kDVDLanguageCodeBurmese: Int { get }
var kDVDLanguageCodeNauru: Int { get }
var kDVDLanguageCodeNepali: Int { get }
var kDVDLanguageCodeDutch: Int { get }
var kDVDLanguageCodeNorwegian: Int { get }
var kDVDLanguageCodeOccitan: Int { get }
var kDVDLanguageCodeOromo: Int { get }
var kDVDLanguageCodeOriya: Int { get }
var kDVDLanguageCodePunjabi: Int { get }
var kDVDLanguageCodePolish: Int { get }
var kDVDLanguageCodePashto: Int { get }
var kDVDLanguageCodePortugese: Int { get }
var kDVDLanguageCodeQuechua: Int { get }
var kDVDLanguageCodeRhaetoRomance: Int { get }
var kDVDLanguageCodeKirundi: Int { get }
var kDVDLanguageCodeRomanian: Int { get }
var kDVDLanguageCodeRussian: Int { get }
var kDVDLanguageCodeKinyarwanda: Int { get }
var kDVDLanguageCodeSanskrit: Int { get }
var kDVDLanguageCodeSindhi: Int { get }
var kDVDLanguageCodeSangro: Int { get }
var kDVDLanguageCodeSerboCroatian: Int { get }
var kDVDLanguageCodeSinghalese: Int { get }
var kDVDLanguageCodeSlovak: Int { get }
var kDVDLanguageCodeSlovenian: Int { get }
var kDVDLanguageCodeSamoan: Int { get }
var kDVDLanguageCodeShona: Int { get }
var kDVDLanguageCodeSomali: Int { get }
var kDVDLanguageCodeAlbanian: Int { get }
var kDVDLanguageCodeSerbian: Int { get }
var kDVDLanguageCodeSiswati: Int { get }
var kDVDLanguageCodeSesotho: Int { get }
var kDVDLanguageCodeSudanese: Int { get }
var kDVDLanguageCodeSwedish: Int { get }
var kDVDLanguageCodeSwahili: Int { get }
var kDVDLanguageCodeTamil: Int { get }
var kDVDLanguageCodeTelugu: Int { get }
var kDVDLanguageCodeTajik: Int { get }
var kDVDLanguageCodeThai: Int { get }
var kDVDLanguageCodeTigrinya: Int { get }
var kDVDLanguageCodeTurkmen: Int { get }
var kDVDLanguageCodeTagalog: Int { get }
var kDVDLanguageCodeSetswana: Int { get }
var kDVDLanguageCodeTonga: Int { get }
var kDVDLanguageCodeTurkish: Int { get }
var kDVDLanguageCodeTsonga: Int { get }
var kDVDLanguageCodeTatar: Int { get }
var kDVDLanguageCodeTwi: Int { get }
var kDVDLanguageCodeUkranian: Int { get }
var kDVDLanguageCodeUrdu: Int { get }
var kDVDLanguageCodeUzbek: Int { get }
var kDVDLanguageCodeVietnamese: Int { get }
var kDVDLanguageCodeVolapuk: Int { get }
var kDVDLanguageCodeWolof: Int { get }
var kDVDLanguageCodeXhosa: Int { get }
var kDVDLanguageCodeYoruba: Int { get }
var kDVDLanguageCodeChinese: Int { get }
var kDVDLanguageCodeZulu: Int { get }
typealias DVDLanguageCode = OSType
var kDVDAudioExtensionCodeNotSpecified: Int { get }
var kDVDAudioExtensionCodeNormalCaptions: Int { get }
var kDVDAudioExtensionCodeNVisualImpaired: Int { get }
var kDVDAudioExtensionCodeDirectorsComment1: Int { get }
var kDVDAudioExtensionCodeDirectorsComment2: Int { get }
typealias DVDAudioExtensionCode = OSType
var kDVDSubpictureExtensionCodeNotSpecified: Int { get }
var kDVDSubpictureExtensionCodeCaptionNormalSize: Int { get }
var kDVDSubpictureExtensionCodeCaptionBiggerSize: Int { get }
var kDVDSubpictureExtensionCodeCaption4Children: Int { get }
var kDVDSubpictureExtensionCodeClosedCaptionNormalSize: Int { get }
var kDVDSubpictureExtensionCodeClosedCaptionBiggerSize: Int { get }
var kDVDSubpictureExtensionCodeClosedCaption4Children: Int { get }
var kDVDSubpictureExtensionCodeForcedCaption: Int { get }
var kDVDSubpictureExtensionDirectorsCommentNormalSize: Int { get }
var kDVDSubpictureExtensionDirectorsCommentBiggerSize: Int { get }
var kDVDSubpictureExtensionDirectorsComment4Children: Int { get }
typealias DVDSubpictureExtensionCode = OSType
typealias DVDDiscID = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
var kDVDRegionCodeUninitialized: Int { get }
var kDVDRegionCode1: Int { get }
var kDVDRegionCode2: Int { get }
var kDVDRegionCode3: Int { get }
var kDVDRegionCode4: Int { get }
var kDVDRegionCode5: Int { get }
var kDVDRegionCode6: Int { get }
var kDVDRegionCode7: Int { get }
var kDVDRegionCode8: Int { get }
typealias DVDRegionCode = UInt32
enum DVDDomainCode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case DVDFPDomain
  case DVDVMGMDomain
  case DVDVTSMDomain
  case DVDTTDomain
  case DVDSTOPDomain
  case DVDAMGMDomain
  case DVDTTGRDomain
}
var kDVDUOPTimePlaySearch: Int { get }
var kDVDUOPPTTPlaySearch: Int { get }
var kDVDUOPTitlePlay: Int { get }
var kDVDUOPStop: Int { get }
var kDVDUOPGoUp: Int { get }
var kDVDUOPTimePTTSearch: Int { get }
var kDVDUOPPrevTopPGSearch: Int { get }
var kDVDUOPNextPGSearch: Int { get }
var kDVDUOPForwardScan: Int { get }
var kDVDUOPBackwardScan: Int { get }
var kDVDUOPMenuCallTitle: Int { get }
var kDVDUOPMenuCallRoot: Int { get }
var kDVDUOPMenuCallSubPicture: Int { get }
var kDVDUOPMenuCallAudio: Int { get }
var kDVDUOPMenuCallAngle: Int { get }
var kDVDUOPMenuCallPTT: Int { get }
var kDVDUOPResume: Int { get }
var kDVDUOPButton: Int { get }
var kDVDUOPStillOff: Int { get }
var kDVDUOPPauseOn: Int { get }
var kDVDUOPAudioStreamChange: Int { get }
var kDVDUOPSubPictureStreamChange: Int { get }
var kDVDUOPAngleChange: Int { get }
var kDVDUOPKaraokeModeChange: Int { get }
var kDVDUOPVideoModeChange: Int { get }
var kDVDUOPScanOff: Int { get }
var kDVDUOPPauseOff: Int { get }
typealias DVDUOPCode = UInt32
enum DVDEventCode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Title
  case PTT
  case ValidUOP
  case Angle
  case AudioStream
  case SubpictureStream
  case DisplayMode
  case Domain
  case Bitrate
  case Still
  case Playback
  case VideoStandard
  case Streams
  case ScanSpeed
  case MenuCalled
  case Parental
  case PGC
  case GPRM
  case RegionMismatch
  case TitleTime
  case SubpictureStreamNumbers
  case AudioStreamNumbers
  case AngleNumbers
  case Error
  case CCInfo
  case ChapterTime
}
typealias DVDEventValue = UInt
typealias DVDEventCallBackRef = UnsafeMutablePointer<Void>
typealias DVDFatalErrCallBackFunctionPtr = @convention(c) (DVDErrorCode, UnsafeMutablePointer<Void>) -> Void
typealias DVDEventCallBackFunctionPtr = @convention(c) (DVDEventCode, DVDEventValue, DVDEventValue, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func DVDInitialize() -> OSStatus
@available(OSX 10.3, *)
func DVDDispose() -> OSStatus
@available(OSX 10.3, *)
func DVDIsValidMediaRef(inRef: UnsafeMutablePointer<FSRef>, _ outIsValid: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func DVDIsValidMediaURL(inRef: CFURL, _ outIsValid: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDHasMedia(outHasMedia: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDOpenMediaFile(inFile: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX 10.5, *)
func DVDOpenMediaFileWithURL(inFile: CFURL) -> OSStatus
@available(OSX 10.3, *)
func DVDCloseMediaFile() -> OSStatus
@available(OSX 10.3, *)
func DVDOpenMediaVolume(inVolume: UnsafeMutablePointer<FSRef>) -> OSStatus
@available(OSX 10.5, *)
func DVDOpenMediaVolumeWithURL(inVolume: CFURL) -> OSStatus
@available(OSX 10.3, *)
func DVDCloseMediaVolume() -> OSStatus
@available(OSX 10.3, *)
func DVDIsSupportedDisplay(inDisplay: CGDirectDisplayID, _ outSupported: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDSwitchToDisplay(newDisplay: CGDirectDisplayID, _ outSupported: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetVideoDisplay(inDisplay: CGDirectDisplayID) -> OSStatus
@available(OSX 10.3, *)
func DVDGetVideoDisplay(outDisplay: UnsafeMutablePointer<CGDirectDisplayID>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetVideoWindowID(inVidWindowID: UInt32) -> OSStatus
@available(OSX 10.3, *)
func DVDGetVideoWindowID(outVidWindowID: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNativeVideoSize(outWidth: UnsafeMutablePointer<UInt16>, _ outHeight: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAspectRatio(outRatio: UnsafeMutablePointer<DVDAspectRatio>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetAspectRatio(inRatio: DVDAspectRatio) -> OSStatus
@available(OSX 10.3, *)
func DVDGetFormatStandard(outFormat: UnsafeMutablePointer<DVDFormat>) -> OSStatus
@available(OSX 10.5, *)
func DVDSetVideoWindowRef(inWindowRef: WindowRef) -> OSStatus
@available(OSX 10.5, *)
func DVDGetVideoWindowRef(outWindowRef: UnsafeMutablePointer<WindowRef>) -> OSStatus
@available(OSX 10.5, *)
func DVDSetVideoCGBounds(inRect: UnsafeMutablePointer<CGRect>) -> OSStatus
@available(OSX 10.5, *)
func DVDGetVideoCGBounds(outRect: UnsafeMutablePointer<CGRect>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioStreamFormat(outFormat: UnsafeMutablePointer<DVDAudioFormat>, _ outBitsPerSample: UnsafeMutablePointer<UInt32>, _ outSamplesPerSecond: UnsafeMutablePointer<UInt32>, _ outChannels: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.4, *)
func DVDGetAudioStreamFormatByStream(inStreamNum: UInt32, _ outFormat: UnsafeMutablePointer<DVDAudioFormat>, _ outBitsPerSample: UnsafeMutablePointer<UInt32>, _ outSamplesPerSecond: UnsafeMutablePointer<UInt32>, _ outChannels: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioOutputModeCapabilities(outModes: UnsafeMutablePointer<DVDAudioMode>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetAudioOutputMode(inMode: DVDAudioMode) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioOutputMode(outMode: UnsafeMutablePointer<DVDAudioMode>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSPDIFDataOutDeviceCount(outCount: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSPDIFDataOutDeviceCFName(inIndex: UInt32, _ outName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetSPDIFDataOutDevice(inIndex: UInt32) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSPDIFDataOutDevice(outIndex: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetTime(inTimeCode: DVDTimeCode, _ inTime: DVDTimePosition, _ inFrames: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetTime(inTimeCode: DVDTimeCode, _ outTime: UnsafeMutablePointer<DVDTimePosition>, _ outFrames: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetState(outState: UnsafeMutablePointer<DVDState>) -> OSStatus
@available(OSX 10.3, *)
func DVDIdle() -> OSStatus
@available(OSX 10.3, *)
func DVDUpdateVideo() -> OSStatus
@available(OSX 10.3, *)
func DVDIsPlaying(outIsPlaying: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDIsPaused(outIsPaused: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDPlay() -> OSStatus
@available(OSX 10.3, *)
func DVDPause() -> OSStatus
@available(OSX 10.3, *)
func DVDResume() -> OSStatus
@available(OSX 10.3, *)
func DVDStop() -> OSStatus
@available(OSX 10.3, *)
func DVDScan(inRate: DVDScanRate, _ inDirection: DVDScanDirection) -> OSStatus
@available(OSX 10.3, *)
func DVDGetScanRate(outRate: UnsafeMutablePointer<DVDScanRate>, _ outDirection: UnsafeMutablePointer<DVDScanDirection>) -> OSStatus
@available(OSX 10.3, *)
func DVDStepFrame(inDirection: DVDScanDirection) -> OSStatus
@available(OSX 10.3, *)
func DVDIsMuted(outIsMuted: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDMute(inMute: Bool) -> OSStatus
@available(OSX 10.3, *)
func DVDSetAudioVolume(inVolume: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioVolume(outVolume: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioVolumeInfo(outMinVolume: UnsafeMutablePointer<UInt16>, _ outCurVolume: UnsafeMutablePointer<UInt16>, _ outMaxVolume: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDHasMenu(inMenu: DVDMenu, _ outHasMenu: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDIsOnMenu(outOnMenu: UnsafeMutablePointer<DarwinBoolean>, _ outMenu: UnsafeMutablePointer<DVDMenu>) -> OSStatus
@available(OSX 10.3, *)
func DVDGoToMenu(inMenu: DVDMenu) -> OSStatus
@available(OSX 10.3, *)
func DVDReturnToTitle() -> OSStatus
@available(OSX 10.3, *)
func DVDGoBackOneLevel() -> OSStatus
@available(OSX 10.3, *)
func DVDDoUserNavigation(inNavigation: DVDUserNavigation) -> OSStatus
@available(OSX 10.4, *)
func DVDDoButtonActivate(inIndex: Int32) -> OSStatus
@available(OSX 10.4, *)
func DVDGetButtoninfo(numberOfButtons: UnsafeMutablePointer<UInt32>, _ selectedButton: UnsafeMutablePointer<UInt32>, _ forcedActivateButton: UnsafeMutablePointer<UInt32>, _ userButtonOffset: UnsafeMutablePointer<UInt32>, _ numberOfUserButtons: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.4, *)
func DVDGetButtonPosition(index: UInt32, _ outRect: UnsafeMutablePointer<CGRect>, _ autoAction: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.5, *)
func DVDDoMenuCGClick(inPt: UnsafeMutablePointer<CGPoint>, _ outIndex: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.5, *)
func DVDDoMenuCGMouseOver(inPt: UnsafeMutablePointer<CGPoint>, _ outIndex: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetMediaUniqueID(outDiscID: UnsafeMutablePointer<UInt8>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetMediaVolumeName(outDiscVolumeName: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus
@available(OSX 10.4, *)
func DVDGetMediaVolumeCFName(outDiscVolumeCFName: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetTitle(inTitleNum: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetTitle(outTitleNum: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNumTitles(outNumTitles: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDHasPreviousChapter(outHasChapter: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDHasNextChapter(outHasChapter: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetChapter(inChapterNum: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetChapter(outChapterNum: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNumChapters(inTitleNum: UInt16, _ outNumChapters: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDPreviousChapter() -> OSStatus
@available(OSX 10.3, *)
func DVDNextChapter() -> OSStatus
@available(OSX 10.3, *)
func DVDSetAngle(inAngleNum: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAngle(outAngleNum: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNumAngles(outNumAngles: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDDisplaySubPicture(inDisplay: Bool) -> OSStatus
@available(OSX 10.3, *)
func DVDIsDisplayingSubPicture(outDisplayingSubPicture: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetSubPictureStream(inStreamNum: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSubPictureStream(outStreamNum: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNumSubPictureStreams(outNumStreams: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetAudioStream(inStreamNum: UInt16) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioStream(outStreamNum: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetNumAudioStreams(outNumStreams: UnsafeMutablePointer<UInt16>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetDefaultSubPictureLanguageCode(inCode: DVDLanguageCode, _ inExtension: DVDSubpictureExtensionCode) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSubPictureLanguageCode(outCode: UnsafeMutablePointer<DVDLanguageCode>, _ outExtension: UnsafeMutablePointer<DVDSubpictureExtensionCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetSubPictureLanguageCodeByStream(inStreamNum: UInt16, _ outCode: UnsafeMutablePointer<DVDLanguageCode>, _ outExtension: UnsafeMutablePointer<DVDSubpictureExtensionCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetDefaultAudioLanguageCode(inCode: DVDLanguageCode, _ inExtension: DVDAudioExtensionCode) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioLanguageCode(outCode: UnsafeMutablePointer<DVDLanguageCode>, _ outExtension: UnsafeMutablePointer<DVDAudioExtensionCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetAudioLanguageCodeByStream(inStreamNum: UInt16, _ outCode: UnsafeMutablePointer<DVDLanguageCode>, _ outExtension: UnsafeMutablePointer<DVDAudioExtensionCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetDefaultMenuLanguageCode(inCode: DVDLanguageCode) -> OSStatus
@available(OSX 10.3, *)
func DVDGetMenuLanguageCode(outCode: UnsafeMutablePointer<DVDLanguageCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetBookmark(outBookMarkData: UnsafeMutablePointer<Void>, _ ioBookMarkDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDGotoBookmark(inBookMarkData: UnsafeMutablePointer<Void>, _ inBookMarkDataSize: UInt32) -> OSStatus
@available(OSX 10.3, *)
func DVDGetLastPlayBookmark(outBookMarkData: UnsafeMutablePointer<Void>, _ ioBookMarkDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetLastPlayBookmark(inBookMarkData: UnsafeMutablePointer<Void>, _ inBookMarkDataSize: UInt32) -> OSStatus
@available(OSX 10.3, *)
func DVDClearLastPlayBookmark() -> OSStatus
@available(OSX 10.3, *)
func DVDGetDiscRegionCode(outCode: UnsafeMutablePointer<DVDRegionCode>) -> OSStatus
@available(OSX 10.3, *)
func DVDGetDriveRegionCode(outCode: UnsafeMutablePointer<DVDRegionCode>, _ outNumberChangesLeft: UnsafeMutablePointer<Int16>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetDriveRegionCode(inCode: DVDRegionCode, _ inAuthorization: AuthorizationRef) -> OSStatus
@available(OSX 10.3, *)
func DVDEnableWebAccess(inEnable: Bool) -> OSStatus
@available(OSX 10.4, *)
func DVDGetGPRMValue(index: UInt32, _ value: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDSetFatalErrorCallBack(inCallBackProc: DVDFatalErrCallBackFunctionPtr, _ inRefCon: UnsafeMutablePointer<Void>) -> OSStatus
@available(OSX 10.3, *)
func DVDRegisterEventCallBack(inCallBackProc: DVDEventCallBackFunctionPtr, _ inCode: UnsafeMutablePointer<DVDEventCode>, _ inCodeCount: UInt32, _ inRefCon: UnsafeMutablePointer<Void>, _ outCallBackID: UnsafeMutablePointer<DVDEventCallBackRef>) -> OSStatus
@available(OSX 10.3, *)
func DVDUnregisterEventCallBack(inCallBackID: DVDEventCallBackRef) -> OSStatus
@available(OSX 10.3, *)
func DVDIsRegisteredEventCallBack(inCallBackID: DVDEventCallBackRef) -> Bool
@available(OSX 10.3, *)
func DVDSetTimeEventRate(inMilliseconds: UInt32) -> OSStatus
@available(OSX 10.3, *)
func DVDGetTimeEventRate(outMilliseconds: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(OSX 10.3, *)
func DVDSleep() -> OSStatus
@available(OSX 10.3, *)
func DVDWakeUp() -> OSStatus
