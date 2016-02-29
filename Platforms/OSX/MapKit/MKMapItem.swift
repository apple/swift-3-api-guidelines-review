
@available(OSX 10.9, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: NSURL?
  @available(OSX 10.11, *)
  @NSCopying var timeZone: NSTimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark placemark: MKPlacemark)
  func openInMaps(launchOptions launchOptions: [String : AnyObject]? = [:]) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions launchOptions: [String : AnyObject]? = [:]) -> Bool
}
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapTypeKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(OSX 10.11, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapCenterKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapSpanKey: String
@available(OSX 10.10, *)
let MKLaunchOptionsCameraKey: String
