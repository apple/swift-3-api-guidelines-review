
@available(tvOS 7.0, *)
enum AVSpeechBoundary : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case immediate
  case word
}
@available(tvOS 9.0, *)
enum AVSpeechSynthesisVoiceQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case enhanced
}
@available(tvOS 7.0, *)
let AVSpeechUtteranceMinimumSpeechRate: Float
@available(tvOS 7.0, *)
let AVSpeechUtteranceMaximumSpeechRate: Float
@available(tvOS 7.0, *)
let AVSpeechUtteranceDefaultSpeechRate: Float
@available(tvOS 9.0, *)
let AVSpeechSynthesisVoiceIdentifierAlex: String
@available(tvOS 7.0, *)
class AVSpeechSynthesisVoice : Object, SecureCoding {
  class func speechVoices() -> [AVSpeechSynthesisVoice]
  class func currentLanguageCode() -> String
  /*not inherited*/ init?(language languageCode: String?)
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(identifier: String)
  var language: String { get }
  @available(tvOS 9.0, *)
  var identifier: String { get }
  @available(tvOS 9.0, *)
  var name: String { get }
  @available(tvOS 9.0, *)
  var quality: AVSpeechSynthesisVoiceQuality { get }
  init()
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 7.0, *)
class AVSpeechUtterance : Object, Copying, SecureCoding {
  init(string: String)
  var voice: AVSpeechSynthesisVoice?
  var speechString: String { get }
  var rate: Float
  var pitchMultiplier: Float
  var volume: Float
  var preUtteranceDelay: TimeInterval
  var postUtteranceDelay: TimeInterval
  init()
  @available(tvOS 7.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 7.0, *)
class AVSpeechSynthesizer : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AVSpeechSynthesizerDelegate?
  var isSpeaking: Bool { get }
  var isPaused: Bool { get }
  func speak(utterance: AVSpeechUtterance)
  func stopSpeaking(at boundary: AVSpeechBoundary) -> Bool
  func pauseSpeaking(at boundary: AVSpeechBoundary) -> Bool
  func continueSpeaking() -> Bool
  init()
}
protocol AVSpeechSynthesizerDelegate : ObjectProtocol {
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance)
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance)
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance)
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance)
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance)
  @available(tvOS 7.0, *)
  optional func speechSynthesizer(synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance)
}
