
typealias AVMIDIPlayerCompletionHandler = () -> Void
@available(tvOS 8.0, *)
class AVMIDIPlayer : NSObject {
  init(contentsOfURL inURL: NSURL, soundBankURL bankURL: NSURL?) throws
  init(data: NSData, soundBankURL bankURL: NSURL?) throws
  func prepareToPlay()
  func play(completionHandler: AVMIDIPlayerCompletionHandler?)
  func stop()
  var duration: NSTimeInterval { get }
  var playing: Bool { get }
  var rate: Float
  var currentPosition: NSTimeInterval
  init()
}
