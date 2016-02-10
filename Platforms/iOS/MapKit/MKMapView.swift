
@available(iOS 5.0, *)
enum MKUserTrackingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case follow
  case followWithHeading
}
@available(iOS 3.0, *)
class MKMapView : UIView, Coding {
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
  func _handleSelection(at locationInView: CGPoint)
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: UIEdgeInsets) -> MKMapRect
  @available(iOS 7.0, *)
  @NSCopying var camera: MKMapCamera
  @available(iOS 7.0, *)
  func setCamera(camera: MKMapCamera, animated: Bool)
  func convert(coordinate: CLLocationCoordinate2D, toPointTo view: UIView?) -> CGPoint
  func convert(point: CGPoint, toCoordinateFrom view: UIView?) -> CLLocationCoordinate2D
  func convertRegion(region: MKCoordinateRegion, toRectTo view: UIView?) -> CGRect
  func convert(rect: CGRect, toRegionFrom view: UIView?) -> MKCoordinateRegion
  var isZoomEnabled: Bool
  var isScrollEnabled: Bool
  @available(iOS 7.0, *)
  var isRotateEnabled: Bool
  @available(iOS 7.0, *)
  var isPitchEnabled: Bool
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
  var isUserLocationVisible: Bool { get }
  func addAnnotation(annotation: MKAnnotation)
  func addAnnotations(annotations: [MKAnnotation])
  func removeAnnotation(annotation: MKAnnotation)
  func removeAnnotations(annotations: [MKAnnotation])
  var annotations: [MKAnnotation] { get }
  @available(iOS 4.2, *)
  func annotations(in mapRect: MKMapRect) -> Set<Object>
  func view(for annotation: MKAnnotation) -> MKAnnotationView?
  func dequeueReusableAnnotationView(withIdentifier identifier: String) -> MKAnnotationView?
  func selectAnnotation(annotation: MKAnnotation, animated: Bool)
  func deselectAnnotation(annotation: MKAnnotation?, animated: Bool)
  var selectedAnnotations: [MKAnnotation]
  var annotationVisibleRect: CGRect { get }
  @available(iOS 7.0, *)
  func showAnnotations(annotations: [MKAnnotation], animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 7.0, *)
enum MKOverlayLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aboveRoads
  case aboveLabels
}
extension MKMapView {
  @available(iOS 7.0, *)
  func add(overlay: MKOverlay, level: MKOverlayLevel)
  @available(iOS 7.0, *)
  func addOverlays(overlays: [MKOverlay], level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func remove(overlay: MKOverlay)
  @available(iOS 4.0, *)
  func removeOverlays(overlays: [MKOverlay])
  @available(iOS 7.0, *)
  func insert(overlay: MKOverlay, at index: Int, level: MKOverlayLevel)
  @available(iOS 4.0, *)
  func insert(overlay: MKOverlay, above sibling: MKOverlay)
  @available(iOS 4.0, *)
  func insert(overlay: MKOverlay, below sibling: MKOverlay)
  @available(iOS 7.0, *)
  func exchangeOverlay(overlay1: MKOverlay, with overlay2: MKOverlay)
  @available(iOS 4.0, *)
  var overlays: [MKOverlay] { get }
  @available(iOS 7.0, *)
  func overlaysIn(level: MKOverlayLevel) -> [MKOverlay]
  @available(iOS 7.0, *)
  func renderer(for overlay: MKOverlay) -> MKOverlayRenderer?
  @available(iOS 4.0, *)
  func add(overlay: MKOverlay)
  @available(iOS 4.0, *)
  func addOverlays(overlays: [MKOverlay])
  @available(iOS 4.0, *)
  func insert(overlay: MKOverlay, at index: Int)
  @available(iOS 4.0, *)
  func exchangeOverlay(at index1: Int, withOverlayAt index2: Int)
}
protocol MKMapViewDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, regionWillChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool)
  @available(iOS 3.0, *)
  optional func mapViewWillStartLoadingMap(mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFinishLoadingMap(mapView: MKMapView)
  @available(iOS 3.0, *)
  optional func mapViewDidFailLoadingMap(mapView: MKMapView, withError error: Error)
  @available(iOS 7.0, *)
  optional func mapViewWillStartRenderingMap(mapView: MKMapView)
  @available(iOS 7.0, *)
  optional func mapViewDidFinishRenderingMap(mapView: MKMapView, fullyRendered: Bool)
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, didAdd views: [MKAnnotationView])
  @available(iOS 3.0, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didSelect view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didDeselect view: MKAnnotationView)
  @available(iOS 4.0, *)
  optional func mapViewWillStartLocatingUser(mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapViewDidStopLocatingUser(mapView: MKMapView)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: Error)
  @available(iOS 4.0, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(iOS 5.0, *)
  optional func mapView(mapView: MKMapView, didChange mode: MKUserTrackingMode, animated: Bool)
  @available(iOS 7.0, *)
  optional func mapView(mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(iOS 7.0, *)
  optional func mapView(mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
}
