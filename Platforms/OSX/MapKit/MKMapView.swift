
@available(OSX 10.9, *)
class MKMapView : NSView, NSCoding {
  weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(region: MKCoordinateRegion, animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenterCoordinate(coordinate: CLLocationCoordinate2D, animated: Bool)
  func regionThatFits(region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAtPoint(locationInView: CGPoint)
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: NSEdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: NSEdgeInsets) -> MKMapRect
  @available(OSX 10.9, *)
  @NSCopying var camera: MKMapCamera
  @available(OSX 10.9, *)
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convertCoordinate(coordinate: CLLocationCoordinate2D, toPointToView view: NSView?) -> CGPoint
  func convertPoint(point: CGPoint, toCoordinateFromView view: NSView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectToView view: NSView?) -> CGRect
  func convertRect(rect: CGRect, toRegionFromView view: NSView?) -> MKCoordinateRegion
  var zoomEnabled: Bool
  var scrollEnabled: Bool
  @available(OSX 10.9, *)
  var rotateEnabled: Bool
  @available(OSX 10.9, *)
  var pitchEnabled: Bool
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
  var userLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(OSX 10.9, *)
  func annotationsInMapRect(mapRect: MKMapRect) -> Set<NSObject>
  func viewForAnnotation(annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(OSX 10.9, *)
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.9, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  @available(OSX 10.9, *)
  func addOverlay(overlay: MKOverlay, level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func removeOverlay(overlay: MKOverlay)
  @available(OSX 10.9, *)
  func removeOverlays(overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insertOverlay(overlay: MKOverlay, atIndex index: Int, level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func insertOverlay(overlay: MKOverlay, aboveOverlay sibling: MKOverlay)
  @available(OSX 10.9, *)
  func insertOverlay(overlay: MKOverlay, belowOverlay sibling: MKOverlay)
  @available(OSX 10.9, *)
  func exchangeOverlay(overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  @available(OSX 10.9, *)
  var overlays: [MKOverlay] { get }
  @available(OSX 10.9, *)
  func overlaysInLevel(level: MKOverlayLevel) -> [MKOverlay]
  @available(OSX 10.9, *)
  func rendererForOverlay(overlay: MKOverlay) -> MKOverlayRenderer?
  @available(OSX 10.9, *)
  func addOverlay(overlay: MKOverlay)
  @available(OSX 10.9, *)
  func addOverlays(overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insertOverlay(overlay: MKOverlay, atIndex index: Int)
  @available(OSX 10.9, *)
  func exchangeOverlayAtIndex(index1: Int, withOverlayAtIndex index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: NSError)
  @available(OSX 10.9, *)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didAddAnnotationViews views: [MKAnnotationView])
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChangeDragState newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer])
}
