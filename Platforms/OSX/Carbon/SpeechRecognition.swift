
var kSRNotAvailable: Int { get }
var kSRInternalError: Int { get }
var kSRComponentNotFound: Int { get }
var kSROutOfMemory: Int { get }
var kSRNotASpeechObject: Int { get }
var kSRBadParameter: Int { get }
var kSRParamOutOfRange: Int { get }
var kSRBadSelector: Int { get }
var kSRBufferTooSmall: Int { get }
var kSRNotARecSystem: Int { get }
var kSRFeedbackNotAvail: Int { get }
var kSRCantSetProperty: Int { get }
var kSRCantGetProperty: Int { get }
var kSRCantSetDuringRecognition: Int { get }
var kSRAlreadyListening: Int { get }
var kSRNotListeningState: Int { get }
var kSRModelMismatch: Int { get }
var kSRNoClientLanguageModel: Int { get }
var kSRNoPendingUtterances: Int { get }
var kSRRecognitionCanceled: Int { get }
var kSRRecognitionDone: Int { get }
var kSROtherRecAlreadyModal: Int { get }
var kSRHasNoSubItems: Int { get }
var kSRSubItemNotFound: Int { get }
var kSRLanguageModelTooBig: Int { get }
var kSRAlreadyReleased: Int { get }
var kSRAlreadyFinished: Int { get }
var kSRWordNotFound: Int { get }
var kSRNotFinishedWithRejection: Int { get }
var kSRExpansionTooDeep: Int { get }
var kSRTooManyElements: Int { get }
var kSRCantAdd: Int { get }
var kSRSndInSourceDisconnected: Int { get }
var kSRCantReadLanguageObject: Int { get }
var kSRNotImplementedYet: Int { get }
typealias SRSpeechObject = COpaquePointer
typealias SRRecognitionSystem = SRSpeechObject
typealias SRRecognizer = SRSpeechObject
typealias SRSpeechSource = SRSpeechObject
typealias SRRecognitionResult = SRSpeechSource
typealias SRLanguageObject = SRSpeechObject
typealias SRLanguageModel = SRLanguageObject
typealias SRPath = SRLanguageObject
typealias SRPhrase = SRLanguageObject
typealias SRWord = SRLanguageObject
typealias SRSpeedSetting = UInt16
typealias SRRejectionLevel = UInt16
struct SRCallBackStruct {
  var what: UInt32
  var message: Int
  var instance: SRRecognizer
  var status: OSErr
  var flags: Int16
  var refCon: SRefCon
  init()
  init(what: UInt32, message: Int, instance: SRRecognizer, status: OSErr, flags: Int16, refCon: SRefCon)
}
typealias SRCallBackProcPtr = @convention(c) (UnsafeMutablePointer<SRCallBackStruct>) -> Void
typealias SRCallBackUPP = SRCallBackProcPtr
func NewSRCallBackUPP(userRoutine: SRCallBackProcPtr!) -> SRCallBackUPP!
func DisposeSRCallBackUPP(userUPP: SRCallBackUPP!)
func InvokeSRCallBackUPP(param: UnsafeMutablePointer<SRCallBackStruct>, _ userUPP: SRCallBackUPP!)
struct SRCallBackParam {
  var callBack: SRCallBackUPP!
  var refCon: SRefCon
  init()
  init(callBack: SRCallBackUPP!, refCon: SRefCon)
}
var kSRDefaultRecognitionSystemID: Int { get }
var kSRFeedbackAndListeningModes: Int { get }
var kSRRejectedWord: Int { get }
var kSRCleanupOnClientExit: Int { get }
var kSRNoFeedbackNoListenModes: Int { get }
var kSRHasFeedbackHasListenModes: Int { get }
var kSRNoFeedbackHasListenModes: Int { get }
var kSRDefaultSpeechSource: Int { get }
var kSRLiveDesktopSpeechSource: Int { get }
var kSRCanned22kHzSpeechSource: Int { get }
var kSRNotifyRecognitionBeginning: Int { get }
var kSRNotifyRecognitionDone: Int { get }
var kAESpeechSuite: Int { get }
var kAESpeechDone: Int { get }
var kAESpeechDetected: Int { get }
var keySRRecognizer: Int { get }
var keySRSpeechResult: Int { get }
var keySRSpeechStatus: Int { get }
var typeSRRecognizer: Int { get }
var typeSRSpeechResult: Int { get }
var kSRNotificationParam: Int { get }
var kSRCallBackParam: Int { get }
var kSRSearchStatusParam: Int { get }
var kSRAutoFinishingParam: Int { get }
var kSRForegroundOnly: Int { get }
var kSRBlockBackground: Int { get }
var kSRBlockModally: Int { get }
var kSRWantsResultTextDrawn: Int { get }
var kSRWantsAutoFBGestures: Int { get }
var kSRSoundInVolume: Int { get }
var kSRReadAudioFSSpec: Int { get }
var kSRReadAudioURL: Int { get }
var kSRCancelOnSoundOut: Int { get }
var kSRSpeedVsAccuracyParam: Int { get }
var kSRUseToggleListen: Int { get }
var kSRUsePushToTalk: Int { get }
var kSRListenKeyMode: Int { get }
var kSRListenKeyCombo: Int { get }
var kSRListenKeyName: Int { get }
var kSRKeyWord: Int { get }
var kSRKeyExpected: Int { get }
var kSRIdleRecognizer: Int { get }
var kSRSearchInProgress: Int { get }
var kSRSearchWaitForAllClients: Int { get }
var kSRMustCancelSearch: Int { get }
var kSRPendingSearch: Int { get }
var kSRTEXTFormat: Int { get }
var kSRPhraseFormat: Int { get }
var kSRPathFormat: Int { get }
var kSRLanguageModelFormat: Int { get }
var kSRSpelling: Int { get }
var kSRLMObjType: Int { get }
var kSRRefCon: Int { get }
var kSROptional: Int { get }
var kSREnabled: Int { get }
var kSRRepeatable: Int { get }
var kSRRejectable: Int { get }
var kSRRejectionLevel: Int { get }
var kSRLanguageModelType: Int { get }
var kSRPathType: Int { get }
var kSRPhraseType: Int { get }
var kSRWordType: Int { get }
var kSRDefaultRejectionLevel: Int { get }
func SROpenRecognitionSystem(system: UnsafeMutablePointer<SRRecognitionSystem>, _ systemID: OSType) -> OSErr
func SRCloseRecognitionSystem(system: SRRecognitionSystem) -> OSErr
func SRSetProperty(srObject: SRSpeechObject, _ selector: OSType, _ property: UnsafePointer<Void>, _ propertyLen: Size) -> OSErr
func SRGetProperty(srObject: SRSpeechObject, _ selector: OSType, _ property: UnsafeMutablePointer<Void>, _ propertyLen: UnsafeMutablePointer<Size>) -> OSErr
func SRReleaseObject(srObject: SRSpeechObject) -> OSErr
func SRGetReference(srObject: SRSpeechObject, _ newObjectRef: UnsafeMutablePointer<SRSpeechObject>) -> OSErr
func SRNewRecognizer(system: SRRecognitionSystem, _ recognizer: UnsafeMutablePointer<SRRecognizer>, _ sourceID: OSType) -> OSErr
func SRStartListening(recognizer: SRRecognizer) -> OSErr
func SRStopListening(recognizer: SRRecognizer) -> OSErr
func SRSetLanguageModel(recognizer: SRRecognizer, _ languageModel: SRLanguageModel) -> OSErr
func SRGetLanguageModel(recognizer: SRRecognizer, _ languageModel: UnsafeMutablePointer<SRLanguageModel>) -> OSErr
func SRContinueRecognition(recognizer: SRRecognizer) -> OSErr
func SRCancelRecognition(recognizer: SRRecognizer) -> OSErr
func SRIdle() -> OSErr
func SRNewLanguageModel(system: SRRecognitionSystem, _ model: UnsafeMutablePointer<SRLanguageModel>, _ name: UnsafePointer<Void>, _ nameLength: Int32) -> OSErr
func SRNewPath(system: SRRecognitionSystem, _ path: UnsafeMutablePointer<SRPath>) -> OSErr
func SRNewPhrase(system: SRRecognitionSystem, _ phrase: UnsafeMutablePointer<SRPhrase>, _ text: UnsafePointer<Void>, _ textLength: Int32) -> OSErr
func SRNewWord(system: SRRecognitionSystem, _ word: UnsafeMutablePointer<SRWord>, _ text: UnsafePointer<Void>, _ textLength: Int32) -> OSErr
func SRPutLanguageObjectIntoHandle(languageObject: SRLanguageObject, _ lobjHandle: Handle) -> OSErr
func SRPutLanguageObjectIntoDataFile(languageObject: SRLanguageObject, _ fRefNum: Int16) -> OSErr
func SRNewLanguageObjectFromHandle(system: SRRecognitionSystem, _ languageObject: UnsafeMutablePointer<SRLanguageObject>, _ lObjHandle: Handle) -> OSErr
func SRNewLanguageObjectFromDataFile(system: SRRecognitionSystem, _ languageObject: UnsafeMutablePointer<SRLanguageObject>, _ fRefNum: Int16) -> OSErr
func SREmptyLanguageObject(languageObject: SRLanguageObject) -> OSErr
func SRChangeLanguageObject(languageObject: SRLanguageObject, _ text: UnsafePointer<Void>, _ textLength: Int32) -> OSErr
func SRAddLanguageObject(base: SRLanguageObject, _ addon: SRLanguageObject) -> OSErr
func SRAddText(base: SRLanguageObject, _ text: UnsafePointer<Void>, _ textLength: Int32, _ refCon: SRefCon) -> OSErr
func SRRemoveLanguageObject(base: SRLanguageObject, _ toRemove: SRLanguageObject) -> OSErr
func SRCountItems(container: SRSpeechObject, _ count: UnsafeMutablePointer<Int>) -> OSErr
func SRGetIndexedItem(container: SRSpeechObject, _ item: UnsafeMutablePointer<SRSpeechObject>, _ index: Int) -> OSErr
func SRSetIndexedItem(container: SRSpeechObject, _ item: SRSpeechObject, _ index: Int) -> OSErr
func SRRemoveIndexedItem(container: SRSpeechObject, _ index: Int) -> OSErr
func SRDrawText(recognizer: SRRecognizer, _ dispText: UnsafePointer<Void>, _ dispLength: Int32) -> OSErr
func SRDrawRecognizedText(recognizer: SRRecognizer, _ dispText: UnsafePointer<Void>, _ dispLength: Int32) -> OSErr
func SRSpeakText(recognizer: SRRecognizer, _ speakText: UnsafePointer<Void>, _ speakLength: Int32) -> OSErr
func SRSpeakAndDrawText(recognizer: SRRecognizer, _ text: UnsafePointer<Void>, _ textLength: Int32) -> OSErr
func SRStopSpeech(recognizer: SRRecognizer) -> OSErr
func SRSpeechBusy(recognizer: SRRecognizer) -> Bool
func SRProcessBegin(recognizer: SRRecognizer, _ failed: Bool) -> OSErr
func SRProcessEnd(recognizer: SRRecognizer, _ failed: Bool) -> OSErr
