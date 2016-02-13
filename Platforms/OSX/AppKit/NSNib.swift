
class NSNib : Object, Coding {
  init?(nibNamed nibName: String, bundle: Bundle?)
  @available(OSX 10.8, *)
  init(nibData: Data, bundle: Bundle?)
  @available(OSX 10.8, *)
  func instantiate(owner owner: AnyObject?, topLevel topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
struct _NSNibFlags {
  var _isKeyed: UInt32
  var _inheritsDecodeTimeBundle: UInt32
  var _inheritsDecodeTimePath: UInt32
  var _reserved: UInt32
  init()
  init(_isKeyed: UInt32, _inheritsDecodeTimeBundle: UInt32, _inheritsDecodeTimePath: UInt32, _reserved: UInt32)
}
extension NSNib {
}
