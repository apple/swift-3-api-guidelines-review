
@available(OSX 10.9, *)
class MKMapSnapshot : NSObject {
  var image: NSImage { get }
  func pointForCoordinate(coordinate: CLLocationCoordinate2D) -> NSPoint
  init()
}
