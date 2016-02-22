
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
@available(iOS 5.0, *)
class CLGeocoder : NSObject {
  var isGeocoding: Bool { get }
  func reverseGeocodeLocation(location: CLLocation, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressDictionary(addressDictionary: [NSObject : AnyObject], completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, in region: CLRegion?, completionHandler: CLGeocodeCompletionHandler)
  func cancelGeocode()
  init()
}
