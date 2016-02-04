
@available(OSX 10.11, *)
class AVAudioConnectionPoint : Object {
  init(node: AVAudioNode, bus: AVAudioNodeBus)
  weak var node: @sil_weak AVAudioNode? { get }
  var bus: AVAudioNodeBus { get }
  convenience init()
}
