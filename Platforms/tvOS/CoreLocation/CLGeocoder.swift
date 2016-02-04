
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, NSError?) -> Void
@available(tvOS 5.0, *)
class CLGeocoder : NSObject {
  var geocoding: Bool { get }
  func reverseGeocodeLocation(location: CLLocation, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressDictionary(addressDictionary: [NSObject : AnyObject], completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, completionHandler: CLGeocodeCompletionHandler)
  func geocodeAddressString(addressString: String, inRegion region: CLRegion?, completionHandler: CLGeocodeCompletionHandler)
  func cancelGeocode()
  init()
}
