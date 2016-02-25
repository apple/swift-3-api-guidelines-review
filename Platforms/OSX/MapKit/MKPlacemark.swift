
@available(OSX 10.9, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate coordinate: CLLocationCoordinate2D, addressDictionary addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var title: String? { get }
  @available(OSX 10.9, *)
  var subtitle: String? { get }
}
