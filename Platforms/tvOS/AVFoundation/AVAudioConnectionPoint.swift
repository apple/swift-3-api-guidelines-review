
@available(tvOS 9.0, *)
class AVAudioConnectionPoint : NSObject {
  init(node: AVAudioNode, bus: AVAudioNodeBus)
  weak var node: @sil_weak AVAudioNode? { get }
  var bus: AVAudioNodeBus { get }
  convenience init()
}
