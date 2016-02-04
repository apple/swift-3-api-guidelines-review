
class NSNib : NSObject, NSCoding {
  init?(nibNamed nibName: String, bundle: NSBundle?)
  @available(OSX 10.8, *)
  init(nibData: NSData, bundle: NSBundle?)
  @available(OSX 10.8, *)
  func instantiateWithOwner(owner: AnyObject?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
