
@available(iOS 8.2, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Red
  case Green
  case Purple
}
@available(iOS 8.2, *)
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(mapRect: MKMapRect)
  func setRegion(coordinateRegion: MKCoordinateRegion)
  func addAnnotation(location: CLLocationCoordinate2D, withImage image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withPinColor pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
