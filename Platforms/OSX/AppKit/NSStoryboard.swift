
@available(OSX 10.10, *)
class NSStoryboard : Object {
  convenience init(name: String, bundle storyboardBundleOrNil: Bundle?)
  func instantiateInitialController() -> AnyObject?
  func instantiateController(identifier identifier: String) -> AnyObject
  init()
}
struct _storyboardFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
