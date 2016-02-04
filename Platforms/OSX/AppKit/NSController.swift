
class NSController : Object, Coding {
  init()
  init?(coder: Coder)
  func objectDidBeginEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
  func discardEditing()
  func commitEditing() -> Bool
  func commitEditingWithDelegate(delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var isEditing: Bool { get }
  func encodeWith(aCoder: Coder)
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
