
@available(iOS 7.0, *)
class MKMapSnapshot : NSObject {
  var image: UIImage { get }
  func pointForCoordinate(_ coordinate: CLLocationCoordinate2D) -> CGPoint
}
