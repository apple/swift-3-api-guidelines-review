
class NSController : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  func objectDidBeginEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
  func discardEditing()
  func commitEditing() -> Bool
  func commitEditingWithDelegate(delegate: AnyObject?, didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var editing: Bool { get }
  func encodeWithCoder(aCoder: NSCoder)
}
struct __bindingsControllerFlags {
  var _alwaysPresentsApplicationModalAlerts: UInt32
  var _refreshesAllModelKeys: UInt32
  var _multipleObservedModelObjects: UInt32
  var _isEditing: UInt32
  var _reservedController: UInt32
  init()
  init(_alwaysPresentsApplicationModalAlerts: UInt32, _refreshesAllModelKeys: UInt32, _multipleObservedModelObjects: UInt32, _isEditing: UInt32, _reservedController: UInt32)
}
