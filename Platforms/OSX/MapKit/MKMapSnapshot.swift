
@available(OSX 10.9, *)
class MKMapSnapshot : Object {
  var image: NSImage { get }
  func pointFor(coordinate: CLLocationCoordinate2D) -> Point
  init()
}
