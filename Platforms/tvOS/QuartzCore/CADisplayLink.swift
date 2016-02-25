
class CADisplayLink : NSObject {
  /*not inherited*/ init(target target: AnyObject, selector sel: Selector)
  func addToRunLoop(_ runloop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(_ runloop: NSRunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var paused: Bool
  var frameInterval: Int
}
