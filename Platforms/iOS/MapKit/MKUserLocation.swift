
@available(iOS 3.0, *)
class MKUserLocation : Object, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(iOS 5.0, *)
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  init()
  @available(iOS 3.0, *)
  var coordinate: CLLocationCoordinate2D { get }
}
