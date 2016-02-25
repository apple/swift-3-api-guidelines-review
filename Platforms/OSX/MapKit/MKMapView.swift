
@available(OSX 10.9, *)
class MKMapView : NSView, NSCoding {
  weak var delegate: @sil_weak MKMapViewDelegate?
  var mapType: MKMapType
  var region: MKCoordinateRegion
  func setRegion(_ region: MKCoordinateRegion, animated animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenterCoordinate(_ coordinate: CLLocationCoordinate2D, animated animated: Bool)
  func regionThatFits(_ region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(_ mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAtPoint(_ locationInView: CGPoint)
  func setVisibleMapRect(_ mapRect: MKMapRect, edgePadding insets: NSEdgeInsets, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect, edgePadding insets: NSEdgeInsets) -> MKMapRect
  @available(OSX 10.9, *)
  @NSCopying var camera: MKMapCamera
  @available(OSX 10.9, *)
  func setCamera(_ camera: MKMapCamera, animated animated: Bool)
  func convertCoordinate(_ coordinate: CLLocationCoordinate2D, toPointToView view: NSView?) -> CGPoint
  func convertPoint(_ point: CGPoint, toCoordinateFromView view: NSView?) -> CLLocationCoordinate2D
  func convertRegion(_ region: MKCoordinateRegion, toRectToView view: NSView?) -> CGRect
  func convertRect(_ rect: CGRect, toRegionFromView view: NSView?) -> MKCoordinateRegion
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
  func addAnnotation(_ annotation: MKAnnotation)
  func addAnnotations(_ annotations: [MKAnnotation])
  func removeAnnotation(_ annotation: MKAnnotation)
  func removeAnnotations(_ annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(OSX 10.9, *)
  func annotationsInMapRect(_ mapRect: MKMapRect) -> Set<NSObject>
  func viewForAnnotation(_ annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(_ identifier: String) -> MKAnnotationView?
  func selectAnnotation(_ annotation: MKAnnotation, animated animated: Bool)
  func deselectAnnotation(_ annotation: MKAnnotation?, animated animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(OSX 10.9, *)
  func showAnnotations(_ annotations: [MKAnnotation], animated animated: Bool)
}
@available(OSX 10.9, *)
enum MKOverlayLevel : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  @available(OSX 10.9, *)
  func addOverlay(_ overlay: MKOverlay, level level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func addOverlays(_ overlays: [MKOverlay], level level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func removeOverlay(_ overlay: MKOverlay)
  @available(OSX 10.9, *)
  func removeOverlays(_ overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, atIndex index: Int, level level: MKOverlayLevel)
  @available(OSX 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, aboveOverlay sibling: MKOverlay)
  @available(OSX 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, belowOverlay sibling: MKOverlay)
  @available(OSX 10.9, *)
  func exchangeOverlay(_ overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  @available(OSX 10.9, *)
  var overlays: [MKOverlay] { get }
  @available(OSX 10.9, *)
  func overlaysInLevel(_ level: MKOverlayLevel) -> [MKOverlay]
  @available(OSX 10.9, *)
  func rendererForOverlay(_ overlay: MKOverlay) -> MKOverlayRenderer?
  @available(OSX 10.9, *)
  func addOverlay(_ overlay: MKOverlay)
  @available(OSX 10.9, *)
  func addOverlays(_ overlays: [MKOverlay])
  @available(OSX 10.9, *)
  func insertOverlay(_ overlay: MKOverlay, atIndex index: Int)
  @available(OSX 10.9, *)
  func exchangeOverlayAtIndex(_ index1: Int, withOverlayAtIndex index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLoadingMap(_ mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishLoadingMap(_ mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: NSError)
  @available(OSX 10.9, *)
  optional func mapViewWillStartRenderingMap(_ mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered fullyRendered: Bool)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didAddAnnotationViews views: [MKAnnotationView])
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView)
  @available(OSX 10.9, *)
  optional func mapViewWillStartLocatingUser(_ mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapViewDidStopLocatingUser(_ mapView: MKMapView)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChangeDragState newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
  @available(OSX 10.9, *)
  optional func mapView(_ mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer])
}
