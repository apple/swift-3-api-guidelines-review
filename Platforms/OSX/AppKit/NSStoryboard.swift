
@available(OSX 10.10, *)
class NSStoryboard : NSObject {
  convenience init(name name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialController() -> AnyObject?
  func instantiateControllerWithIdentifier(_ identifier: String) -> AnyObject
}
struct _storyboardFlags {
  var reserved: UInt32
  init()
  init(reserved reserved: UInt32)
}
