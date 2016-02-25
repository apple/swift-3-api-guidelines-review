
@available(watchOS 2.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate coordinate: CLLocationCoordinate2D, addressDictionary addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  @available(watchOS 2.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(watchOS 2.0, *)
  var title: String? { get }
  @available(watchOS 2.0, *)
  var subtitle: String? { get }
}
