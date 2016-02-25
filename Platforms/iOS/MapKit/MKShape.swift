
@available(iOS 4.0, *)
class MKShape : NSObject, MKAnnotation {
  var title: String?
  var subtitle: String?
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
}
