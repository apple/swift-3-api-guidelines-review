
@available(iOS 6.0, *)
class MKMapItem : Object {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(iOS 9.0, *)
  @NSCopying var timeZone: TimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMapsWithLaunchOptions(launchOptions: [String : AnyObject]? = [:]) -> Bool
  class func openMaps(withItems mapItems: [MKMapItem], launchOptions: [String : AnyObject]? = [:]) -> Bool
  init()
}
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapTypeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(iOS 9.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(iOS 7.1, *)
let MKLaunchOptionsCameraKey: String
