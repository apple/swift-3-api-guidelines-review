
@available(iOS 4.0, *)
let CTCallStateDialing: String
@available(iOS 4.0, *)
let CTCallStateIncoming: String
@available(iOS 4.0, *)
let CTCallStateConnected: String
@available(iOS 4.0, *)
let CTCallStateDisconnected: String
@available(iOS 4.0, *)
class CTCall : NSObject {
  @available(iOS 4.0, *)
  var callState: String { get }
  @available(iOS 4.0, *)
  var callID: String { get }
  init()
}
@available(iOS 4.0, *)
class CTCallCenter : NSObject {
  @available(iOS 4.0, *)
  var currentCalls: Set<CTCall>? { get }
  @available(iOS 4.0, *)
  var callEventHandler: ((CTCall) -> Void)?
  init()
}
@available(iOS 4.0, *)
class CTCarrier : NSObject {
  @available(iOS 4.0, *)
  var carrierName: String? { get }
  @available(iOS 4.0, *)
  var mobileCountryCode: String? { get }
  @available(iOS 4.0, *)
  var mobileNetworkCode: String? { get }
  @available(iOS 4.0, *)
  var isoCountryCode: String? { get }
  @available(iOS 4.0, *)
  var allowsVOIP: Bool { get }
  init()
}
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
@available(iOS 7.0, *)
let CTSubscriberTokenRefreshed: String
@available(iOS 7.0, *)
class CTSubscriber : NSObject {
  @available(iOS 7.0, *)
  var carrierToken: NSData? { get }
  init()
}
@available(iOS 6.0, *)
class CTSubscriberInfo : NSObject {
  class func subscriber() -> CTSubscriber
  init()
}
@available(iOS 7.0, *)
let CTRadioAccessTechnologyDidChangeNotification: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyGPRS: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyEdge: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyWCDMA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyHSDPA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyHSUPA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMA1x: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORev0: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORevA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORevB: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyeHRPD: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyLTE: String
@available(iOS 4.0, *)
class CTTelephonyNetworkInfo : NSObject {
  @available(iOS 4.0, *)
  var subscriberCellularProvider: CTCarrier? { get }
  @available(iOS 4.0, *)
  var subscriberCellularProviderDidUpdateNotifier: ((CTCarrier) -> Void)?
  @available(iOS 7.0, *)
  var currentRadioAccessTechnology: String? { get }
  init()
}
var kCTErrorDomainNoError: Int { get }
var kCTErrorDomainPOSIX: Int { get }
var kCTErrorDomainMach: Int { get }
struct CTError {
  var domain: Int32
  var error: Int32
  init()
  init(domain: Int32, error: Int32)
}
