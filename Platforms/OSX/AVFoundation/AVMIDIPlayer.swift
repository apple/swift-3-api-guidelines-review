
typealias AVMIDIPlayerCompletionHandler = () -> Void
@available(OSX 10.10, *)
class AVMIDIPlayer : Object {
  init(contentsOf inURL: URL, soundBankURL bankURL: URL?) throws
  init(data: Data, soundBankURL bankURL: URL?) throws
  func prepareToPlay()
  func play(completionHandler: AVMIDIPlayerCompletionHandler? = nil)
  func stop()
  var duration: TimeInterval { get }
  var isPlaying: Bool { get }
  var rate: Float
  var currentPosition: TimeInterval
  init()
}
