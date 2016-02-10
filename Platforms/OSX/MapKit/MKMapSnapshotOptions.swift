
@available(OSX 10.9, *)
class MKMapSnapshotOptions : Object, Copying {
  @NSCopying var camera: MKMapCamera
  var mapRect: MKMapRect
  var region: MKCoordinateRegion
  var mapType: MKMapType
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var size: Size
  init()
  @available(OSX 10.9, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
