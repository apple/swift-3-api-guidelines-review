
@available(OSX 10.10, *)
class NSStoryboard : NSObject {
  convenience init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialController() -> AnyObject?
  func instantiateControllerWithIdentifier(identifier: String) -> AnyObject
  init()
}
struct _storyboardFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
