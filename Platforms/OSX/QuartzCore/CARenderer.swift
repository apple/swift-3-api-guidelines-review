
class CARenderer : NSObject {
  /*not inherited*/ init(CGLContext ctx: UnsafeMutablePointer<Void>, options dict: [NSObject : AnyObject]?)
  var layer: CALayer?
  var bounds: CGRect
  func beginFrameAtTime(_ t: CFTimeInterval, timeStamp ts: UnsafeMutablePointer<CVTimeStamp>)
  func updateBounds() -> CGRect
  func addUpdateRect(_ r: CGRect)
  func render()
  func nextFrameTime() -> CFTimeInterval
  func endFrame()
}
