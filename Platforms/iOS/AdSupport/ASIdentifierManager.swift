
@available(iOS 6.0, *)
class ASIdentifierManager : NSObject {
  class func shared() -> ASIdentifierManager!
  var advertisingIdentifier: NSUUID! { get }
  var isAdvertisingTrackingEnabled: Bool { get }
}
