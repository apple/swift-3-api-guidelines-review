
@available(iOS 7.0, *)
enum AVSpeechBoundary : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Word
}
@available(iOS 9.0, *)
enum AVSpeechSynthesisVoiceQuality : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Enhanced
}
@available(iOS 7.0, *)
let AVSpeechUtteranceMinimumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceMaximumSpeechRate: Float
@available(iOS 7.0, *)
let AVSpeechUtteranceDefaultSpeechRate: Float
@available(iOS 9.0, *)
let AVSpeechSynthesisVoiceIdentifierAlex: String
@available(iOS 7.0, *)
class AVSpeechSynthesisVoice : NSObject, NSSecureCoding {
  class func speechVoices() -> [AVSpeechSynthesisVoice]
  class func currentLanguageCode() -> String
  /*not inherited*/ init?(language languageCode: String?)
  @available(iOS 9.0, *)
  /*not inherited*/ init?(identifier identifier: String)
  var language: String { get }
  @available(iOS 9.0, *)
  var identifier: String { get }
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var quality: AVSpeechSynthesisVoiceQuality { get }
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class AVSpeechUtterance : NSObject, NSCopying, NSSecureCoding {
  init(string string: String)
  var voice: AVSpeechSynthesisVoice?
  var speechString: String { get }
  var rate: Float
  var pitchMultiplier: Float
  var volume: Float
  var preUtteranceDelay: NSTimeInterval
  var postUtteranceDelay: NSTimeInterval
  @available(iOS 7.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class AVSpeechSynthesizer : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AVSpeechSynthesizerDelegate?
  var speaking: Bool { get }
  var paused: Bool { get }
  func speakUtterance(_ utterance: AVSpeechUtterance)
  func stopSpeakingAtBoundary(_ boundary: AVSpeechBoundary) -> Bool
  func pauseSpeakingAtBoundary(_ boundary: AVSpeechBoundary) -> Bool
  func continueSpeaking() -> Bool
}
protocol AVSpeechSynthesizerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStartSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinishSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPauseSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinueSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancelSpeechUtterance utterance: AVSpeechUtterance)
  @available(iOS 7.0, *)
  optional func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance utterance: AVSpeechUtterance)
}
