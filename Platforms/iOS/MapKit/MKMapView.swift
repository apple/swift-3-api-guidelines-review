
@available(iOS 5.0, *)
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Follow
  case FollowWithHeading
}
@available(iOS 3.0, *)
class MKMapView : UIView, NSCoding {
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
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets) -> MKMapRect
  @available(iOS 7.0, *)
  @NSCopying var camera: MKMapCamera
  @available(iOS 7.0, *)
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convertCoordinate(coordinate: CLLocationCoordinate2D, toPointToView view: UIView?) -> CGPoint
  func convertPoint(point: CGPoint, toCoordinateFromView view: UIView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectToView view: UIView?) -> CGRect
  func convertRect(rect: CGRect, toRegionFromView view: UIView?) -> MKCoordinateRegion
  var zoomEnabled: Bool
  var scrollEnabled: Bool
  @available(iOS 7.0, *)
  var rotateEnabled: Bool
  @available(iOS 7.0, *)
  var pitchEnabled: Bool
  @available(iOS 9.0, *)
  var showsCompass: Bool
  @available(iOS 9.0, *)
  var showsScale: Bool
  @available(iOS 7.0, *)
  var showsPointsOfInterest: Bool
  @available(iOS 7.0, *)
  var showsBuildings: Bool
  @available(iOS 9.0, *)
  var showsTraffic: Bool
  var showsUserLocation: Bool
  var userLocation: MKUserLocation { get }
  @available(iOS 5.0, *)
  var userTrackingMode: MKUserTrackingMode
  @available(iOS 5.0, *)
  func setUserTrackingMode(mode: MKUserTrackingMode, animated: Bool)
  var userLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(iOS 4.2, *)
  func annotationsInMapRect(mapRect: MKMapRect) -> Set<NSObject>
  func viewForAnnotation(annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(iOS 7.0, *)
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  @available(iOS 7.0, *)
  func addOverlay(overlay: MKOverlay, level: MKOverlayLevel)
  @available(iOS 7.0, *)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func removeOverlay(overlay: MKOverlay)
  @available(iOS 4.0, *)
  func removeOverlays(overlays: [MKOverlay])
  @available(iOS 7.0, *)
  func insertOverlay(overlay: MKOverlay, atIndex index: Int, level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func insertOverlay(overlay: MKOverlay, aboveOverlay sibling: MKOverlay)
  @available(iOS 4.0, *)
  func insertOverlay(overlay: MKOverlay, belowOverlay sibling: MKOverlay)
  @available(iOS 7.0, *)
  func exchangeOverlay(overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  @available(iOS 4.0, *)
  var overlays: [MKOverlay] { get }
  @available(iOS 7.0, *)
  func overlaysInLevel(level: MKOverlayLevel) -> [MKOverlay]
  @available(iOS 7.0, *)
  func rendererForOverlay(overlay: MKOverlay) -> MKOverlayRenderer?
  @available(iOS 4.0, *)
  func addOverlay(overlay: MKOverlay)
  @available(iOS 4.0, *)
  func addOverlays(overlays: [MKOverlay])
  @available(iOS 4.0, *)
  func insertOverlay(overlay: MKOverlay, atIndex index: Int)
  @available(iOS 4.0, *)
  func exchangeOverlayAtIndex(index1: Int, withOverlayAtIndex index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: NSError)
  @available(iOS 7.0, *)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  @available(iOS 7.0, *)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, didAddAnnotationViews views: [MKAnnotationView])
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChangeDragState newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(iOS 5.0, *)
  optional func mapView(mapView: MKMapView, didChangeUserTrackingMode mode: MKUserTrackingMode, animated: Bool)
  @available(iOS 7.0, *)
  optional func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
  @available(iOS 7.0, *)
  optional func mapView(mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer])
}
