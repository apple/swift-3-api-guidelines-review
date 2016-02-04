
class CADisplayLink : NSObject {
  /*not inherited*/ init(target: AnyObject, selector sel: Selector)
  func addToRunLoop(runloop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(runloop: NSRunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var paused: Bool
  var frameInterval: Int
  init()
}
