
@available(iOS 7.0, *)
class MKMapSnapshot : NSObject {
  var image: UIImage { get }
  func pointForCoordinate(coordinate: CLLocationCoordinate2D) -> CGPoint
  init()
}
