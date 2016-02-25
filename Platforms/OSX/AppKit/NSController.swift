
class NSController : NSObject, NSCoding {
  init?(coder coder: NSCoder)
  var isEditing: Bool { get }
  func encode(with aCoder: NSCoder)
}
struct __bindingsControllerFlags {
  var _alwaysPresentsApplicationModalAlerts: UInt32
  var _refreshesAllModelKeys: UInt32
  var _multipleObservedModelObjects: UInt32
  var _isEditing: UInt32
  var _reservedController: UInt32
  init()
  init(_alwaysPresentsApplicationModalAlerts _alwaysPresentsApplicationModalAlerts: UInt32, _refreshesAllModelKeys _refreshesAllModelKeys: UInt32, _multipleObservedModelObjects _multipleObservedModelObjects: UInt32, _isEditing _isEditing: UInt32, _reservedController _reservedController: UInt32)
}
