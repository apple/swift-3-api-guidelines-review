
class CARenderer : Object {
  /*not inherited*/ init(cglContext ctx: UnsafeMutablePointer<Void>, options dict: [Object : AnyObject]? = [:])
  var layer: CALayer?
  var bounds: CGRect
  func beginFrameAtTime(t: CFTimeInterval, timeStamp ts: UnsafeMutablePointer<CVTimeStamp>)
  func updateBounds() -> CGRect
  func addUpdateRect(r: CGRect)
  func render()
  func nextFrameTime() -> CFTimeInterval
  func endFrame()
  init()
}
