
@available(OSX 10.9, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var title: String? { get }
  @available(OSX 10.9, *)
  var subtitle: String? { get }
}
