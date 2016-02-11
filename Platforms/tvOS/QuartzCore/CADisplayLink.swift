
class CADisplayLink : Object {
  /*not inherited*/ init(target: AnyObject, selector sel: Selector)
  func add(to runloop: RunLoop, forMode mode: String)
  func remove(from runloop: RunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var isPaused: Bool
  var frameInterval: Int
  init()
}
