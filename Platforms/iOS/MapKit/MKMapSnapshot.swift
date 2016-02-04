
@available(iOS 7.0, *)
class MKMapSnapshot : Object {
  var image: UIImage { get }
  func pointFor(coordinate: CLLocationCoordinate2D) -> CGPoint
  init()
}
