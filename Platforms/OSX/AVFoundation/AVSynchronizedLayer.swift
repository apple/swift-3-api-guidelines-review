
@available(OSX 10.7, *)
class AVSynchronizedLayer : CALayer {
  /*not inherited*/ init(playerItem: AVPlayerItem)
  var playerItem: AVPlayerItem?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: Coder)
}
