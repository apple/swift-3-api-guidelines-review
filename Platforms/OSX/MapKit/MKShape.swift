
@available(OSX 10.9, *)
class MKShape : NSObject, MKAnnotation {
  var title: String?
  var subtitle: String?
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
}
