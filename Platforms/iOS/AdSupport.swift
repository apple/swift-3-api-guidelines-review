
@available(iOS 6.0, *)
class ASIdentifierManager : Object {
  class func shared() -> ASIdentifierManager!
  var advertisingIdentifier: UUID! { get }
  var isAdvertisingTrackingEnabled: Bool { get }
  init()
}
