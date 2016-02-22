
@available(iOS 3.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate coordinate: CLLocationCoordinate2D, addressDictionary addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark placemark: CLPlacemark)
  init()
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 3.0, *)
  var title: String? { get }
  @available(iOS 3.0, *)
  var subtitle: String? { get }
}
