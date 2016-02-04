
enum CTCellularDataRestrictedState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RestrictedStateUnknown
  case Restricted
  case NotRestricted
}
typealias CellularDataRestrictionDidUpdateNotifier = (CTCellularDataRestrictedState) -> Void
@available(iOS 9.0, *)
class CTCellularData : NSObject {
  @available(iOS 9.0, *)
  var cellularDataRestrictionDidUpdateNotifier: CellularDataRestrictionDidUpdateNotifier?
  @available(iOS 9.0, *)
  var restrictedState: CTCellularDataRestrictedState { get }
  init()
}
