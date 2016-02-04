
class CADisplayLink : Object {
  /*not inherited*/ init(target: AnyObject, selector sel: Selector)
  func addTo(runloop: RunLoop, forMode mode: String)
  func removeFrom(runloop: RunLoop, forMode mode: String)
  func invalidate()
  var timestamp: CFTimeInterval { get }
  var duration: CFTimeInterval { get }
  var isPaused: Bool
  var frameInterval: Int
  init()
}
