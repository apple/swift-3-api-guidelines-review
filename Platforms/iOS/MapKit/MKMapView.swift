
@available(iOS 5.0, *)
enum MKUserTrackingMode : Int {
  init?(rawValue rawValue: Int)
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
  func setRegion(_ region: MKCoordinateRegion, animated animated: Bool)
  var centerCoordinate: CLLocationCoordinate2D
  func setCenterCoordinate(_ coordinate: CLLocationCoordinate2D, animated animated: Bool)
  func regionThatFits(_ region: MKCoordinateRegion) -> MKCoordinateRegion
  var visibleMapRect: MKMapRect
  func setVisibleMapRect(_ mapRect: MKMapRect, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect) -> MKMapRect
  func _handleSelectionAtPoint(_ locationInView: CGPoint)
  func setVisibleMapRect(_ mapRect: MKMapRect, edgePadding insets: UIEdgeInsets, animated animate: Bool)
  func mapRectThatFits(_ mapRect: MKMapRect, edgePadding insets: UIEdgeInsets) -> MKMapRect
  @available(iOS 7.0, *)
  @NSCopying var camera: MKMapCamera
  @available(iOS 7.0, *)
  func setCamera(_ camera: MKMapCamera, animated animated: Bool)
  func convertCoordinate(_ coordinate: CLLocationCoordinate2D, toPointToView view: UIView?) -> CGPoint
  func convertPoint(_ point: CGPoint, toCoordinateFromView view: UIView?) -> CLLocationCoordinate2D
  func convertRegion(_ region: MKCoordinateRegion, toRectToView view: UIView?) -> CGRect
  func convertRect(_ rect: CGRect, toRegionFromView view: UIView?) -> MKCoordinateRegion
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
  func setUserTrackingMode(_ mode: MKUserTrackingMode, animated animated: Bool)
  var userLocationVisible: Bool { get }
  func addAnnotation(_ annotation: MKAnnotation)
  func addAnnotations(_ annotations: [MKAnnotation])
  func removeAnnotation(_ annotation: MKAnnotation)
  func removeAnnotations(_ annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(iOS 4.2, *)
  func annotationsInMapRect(_ mapRect: MKMapRect) -> Set<NSObject>
  func viewForAnnotation(_ annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationViewWithIdentifier(_ identifier: String) -> MKAnnotationView?
  func selectAnnotation(_ annotation: MKAnnotation, animated animated: Bool)
  func deselectAnnotation(_ annotation: MKAnnotation?, animated animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(iOS 7.0, *)
  func showAnnotations(_ annotations: [MKAnnotation], animated animated: Bool)
}
@available(iOS 7.0, *)
enum MKOverlayLevel : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AboveRoads
  case AboveLabels
}
extension MKMapView {
  @available(iOS 7.0, *)
  func addOverlay(_ overlay: MKOverlay, level level: MKOverlayLevel)
  @available(iOS 7.0, *)
  func addOverlays(_ overlays: [MKOverlay], level level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func removeOverlay(_ overlay: MKOverlay)
  @available(iOS 4.0, *)
  func removeOverlays(_ overlays: [MKOverlay])
  @available(iOS 7.0, *)
  func insertOverlay(_ overlay: MKOverlay, atIndex index: Int, level level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, aboveOverlay sibling: MKOverlay)
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, belowOverlay sibling: MKOverlay)
  @available(iOS 7.0, *)
  func exchangeOverlay(_ overlay1: MKOverlay, withOverlay overlay2: MKOverlay)
  @available(iOS 4.0, *)
  var overlays: [MKOverlay] { get }
  @available(iOS 7.0, *)
  func overlaysInLevel(_ level: MKOverlayLevel) -> [MKOverlay]
  @available(iOS 7.0, *)
  func rendererForOverlay(_ overlay: MKOverlay) -> MKOverlayRenderer?
  @available(iOS 4.0, *)
  func addOverlay(_ overlay: MKOverlay)
  @available(iOS 4.0, *)
  func addOverlays(_ overlays: [MKOverlay])
  @available(iOS 4.0, *)
  func insertOverlay(_ overlay: MKOverlay, atIndex index: Int)
  @available(iOS 4.0, *)
  func exchangeOverlayAtIndex(_ index1: Int, withOverlayAtIndex index2: Int)
}
protocol MKMapViewDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapViewWillStartLoadingMap(_ mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFinishLoadingMap(_ mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: NSError)
  @available(iOS 7.0, *)
  optional func mapViewWillStartRenderingMap(_ mapView: MKMapView)
  @available(iOS 7.0, *)
  optional func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered fullyRendered: Bool)
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView?
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, didAddAnnotationViews views: [MKAnnotationView])
  @available(iOS 3.0, *)
  optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
  @available(iOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didDeselectAnnotationView view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapViewWillStartLocatingUser(_ mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapViewDidStopLocatingUser(_ mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(iOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  @available(iOS 4.0, *)
  optional func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, didChangeDragState newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(iOS 5.0, *)
  optional func mapView(_ mapView: MKMapView, didChangeUserTrackingMode mode: MKUserTrackingMode, animated animated: Bool)
  @available(iOS 7.0, *)
  optional func mapView(_ mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer
  @available(iOS 7.0, *)
  optional func mapView(_ mapView: MKMapView, didAddOverlayRenderers renderers: [MKOverlayRenderer])
}
