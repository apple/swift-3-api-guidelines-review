
@available(watchOS 2.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(watchOS 2.0, *)
  var title: String? { get }
  @available(watchOS 2.0, *)
  var subtitle: String? { get }
}
