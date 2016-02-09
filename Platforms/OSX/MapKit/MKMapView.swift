
@available(OSX 10.9, *)
class MKMapView : NSView, Coding {
  weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(region: MKCoordinateRegion, animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenter(coordinate: CLLocationCoordinate2D, animated: Bool)
  func regionThatFits(region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAt(locationInView: CGPoint)
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: EdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: EdgeInsets) -> MKMapRect
  @available(OSX 10.9, *)
  @NSCopying var camera: MKMapCamera
  @available(OSX 10.9, *)
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convert(coordinate: CLLocationCoordinate2D, toPointTo view: NSView?) -> CGPoint
  func convert(point: CGPoint, toCoordinateFrom view: NSView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectTo view: NSView?) -> CGRect
  func convert(rect: CGRect, toRegionFrom view: NSView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  @available(OSX 10.9, *)
  var isRotateEnabled: Bool
  @available(OSX 10.9, *)
  var isPitchEnabled: Bool
  @available(OSX 10.9, *)
  var showsZoomControls: Bool
  @available(OSX 10.9, *)
  var showsCompass: Bool
  @available(OSX 10.10, *)
  var showsScale: Bool
  @available(OSX 10.9, *)
  var showsPointsOfInterest: Bool
  @available(OSX 10.9, *)
  var showsBuildings: Bool
  @available(OSX 10.11, *)
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  var isUserLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(OSX 10.9, *)
  func annotationsIn(mapRect: MKMapRect) -> Set<Object>
  func viewFor(annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWith(identifier identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(OSX 10.9, *)
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
@available(OSX 10.9, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aboveRoads
  case aboveLabels
}
extension MKMapView {
  @available(OSX 10.9, *)
  func add(overlay: MKOverlay, level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func remove(overlay: MKOverlay)
  @available(OSX 10.9, *)
  func removeOverlays(overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insert(overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func insert(overlay: MKOverlay, above sibling: MKOverlay)
  @available(OSX 10.9, *)
  func insert(overlay: MKOverlay, below sibling: MKOverlay)
  @available(OSX 10.9, *)
  func exchangeOverlay(overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  @available(OSX 10.9, *)
  var overlays: [MKOverlay] { get }
  @available(OSX 10.9, *)
  func overlaysIn(level: MKOverlayLevel) -> [MKOverlay]
  @available(OSX 10.9, *)
  func rendererFor(overlay: MKOverlay) -> MKOverlayRenderer?
  @available(OSX 10.9, *)
  func add(overlay: MKOverlay)
  @available(OSX 10.9, *)
  func addOverlays(overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insert(overlay: MKOverlay, at index: Int)
  @available(OSX 10.9, *)
  func exchangeOverlay(at index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : ObjectProtocol {
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: Error)
  @available(OSX 10.9, *)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didAdd views: [MKAnnotationView])
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didSelect view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didDeselect view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: Error)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
}
