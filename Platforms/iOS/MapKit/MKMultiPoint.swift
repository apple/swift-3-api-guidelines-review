
@available(iOS 4.0, *)
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  init()
}
