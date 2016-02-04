
@available(iOS 4.0, *)
class MKShape : Object, MKAnnotation {
  var title: String?
  var subtitle: String?
  init()
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
}
