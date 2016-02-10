
@available(watchOS 2.0, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case red
  case green
  case purple
}
@available(watchOS 2.0, *)
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(mapRect: MKMapRect)
  func setRegion(coordinateRegion: MKCoordinateRegion)
  func addAnnotation(location: CLLocationCoordinate2D, withImage image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withPinColor pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
