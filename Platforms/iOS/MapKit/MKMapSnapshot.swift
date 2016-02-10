
@available(iOS 7.0, *)
class MKMapSnapshot : Object {
  var image: UIImage { get }
  func point(forCoordinate coordinate: CLLocationCoordinate2D) -> CGPoint
  init()
}
