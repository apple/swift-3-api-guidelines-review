
typealias AVMIDIPlayerCompletionHandler = () -> Void
@available(OSX 10.10, *)
class AVMIDIPlayer : NSObject {
  init(contentsOf inURL: NSURL, soundBankURL bankURL: NSURL?) throws
  init(data: NSData, soundBankURL bankURL: NSURL?) throws
  func prepareToPlay()
  func play(completionHandler: AVMIDIPlayerCompletionHandler? = nil)
  func stop()
  var duration: NSTimeInterval { get }
  var isPlaying: Bool { get }
  var rate: Float
  var currentPosition: NSTimeInterval
  init()
}
