
@available(iOS 7.0, *)
class MKMapSnapshotOptions : Object, Copying {
  @NSCopying var camera: MKMapCamera
  var mapRect: MKMapRect
  var region: MKCoordinateRegion
  var mapType: MKMapType
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var size: CGSize
  var scale: CGFloat
  init()
  @available(iOS 7.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
