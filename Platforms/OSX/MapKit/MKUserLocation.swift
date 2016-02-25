
@available(OSX 10.9, *)
class MKUserLocation : NSObject, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(OSX 10.9, *)
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
}
