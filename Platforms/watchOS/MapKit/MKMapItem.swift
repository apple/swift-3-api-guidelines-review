
@available(watchOS 2.0, *)
class MKMapItem : Object {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(watchOS 2.0, *)
  @NSCopying var timeZone: TimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMaps(launchOptions launchOptions: [String : AnyObject]? = [:]) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : AnyObject]? = [:]) -> Bool
  init()
}
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(watchOS 2.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(watchOS 2.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(watchOS 2.0, *)
let MKLaunchOptionsCameraKey: String
