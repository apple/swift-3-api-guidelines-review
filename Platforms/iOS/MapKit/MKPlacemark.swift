
@available(iOS 3.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: Coder)
  @available(iOS 3.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 3.0, *)
  var title: String? { get }
  @available(iOS 3.0, *)
  var subtitle: String? { get }
}
