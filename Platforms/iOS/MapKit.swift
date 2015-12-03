
protocol MKAnnotation : NSObjectProtocol {
  var coordinate: CLLocationCoordinate2D { get }
  optional var title: String? { get }
  optional var subtitle: String? { get }
}
let MKAnnotationCalloutInfoDidChangeNotification: String
@available(iOS 4.0, *)
enum MKAnnotationViewDragState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Starting
  case Dragging
  case Canceling
  case Ending
}
@available(iOS 3.0, *)
class MKAnnotationView : UIView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: UIImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var enabled: Bool
  var highlighted: Bool
  var selected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: UIView?
  var rightCalloutAccessoryView: UIView?
  @available(iOS 9.0, *)
  var detailCalloutAccessoryView: UIView?
  @available(iOS 4.0, *)
  var draggable: Bool
  @available(iOS 4.0, *)
  var dragState: MKAnnotationViewDragState
  @available(iOS 4.2, *)
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(centerCoordinate coord: CLLocationCoordinate2D, radius: CLLocationDistance)
  convenience init(mapRect: MKMapRect)
  var coordinate: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  init()
  @available(iOS 4.0, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
@available(iOS 7.0, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay: MKOverlay)
  convenience init()
}
@available(iOS 4.0, *)
class MKCircleView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
typealias MKDirectionsHandler = (MKDirectionsResponse?, NSError?) -> Void
typealias MKETAHandler = (MKETAResponse?, NSError?) -> Void
@available(iOS 7.0, *)
class MKDirections : NSObject {
  init(request: MKDirectionsRequest)
  func calculateDirectionsWithCompletionHandler(completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(completionHandler: MKETAHandler)
  func cancel()
  var calculating: Bool { get }
  convenience init()
}
@available(iOS 6.0, *)
class MKDirectionsRequest : NSObject {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  @available(iOS 7.0, *)
  var transportType: MKDirectionsTransportType
  @available(iOS 7.0, *)
  var requestsAlternateRoutes: Bool
  @available(iOS 7.0, *)
  @NSCopying var departureDate: NSDate?
  @available(iOS 7.0, *)
  @NSCopying var arrivalDate: NSDate?
}
extension MKDirectionsRequest {
  @available(iOS 6.0, *)
  init(contentsOfURL url: NSURL)
  @available(iOS 6.0, *)
  class func isDirectionsRequestURL(url: NSURL) -> Bool
}
@available(iOS 7.0, *)
class MKDirectionsResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
@available(iOS 7.0, *)
class MKRoute : NSObject {
  var name: String { get }
  var advisoryNotices: [String] { get }
  var distance: CLLocationDistance { get }
  var expectedTravelTime: NSTimeInterval { get }
  var transportType: MKDirectionsTransportType { get }
  var polyline: MKPolyline { get }
  var steps: [MKRouteStep] { get }
  init()
}
@available(iOS 7.0, *)
class MKRouteStep : NSObject {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(iOS 7.0, *)
class MKETAResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: NSTimeInterval { get }
  @available(iOS 9.0, *)
  var distance: CLLocationDistance { get }
  @available(iOS 9.0, *)
  var expectedArrivalDate: NSDate { get }
  @available(iOS 9.0, *)
  var expectedDepartureDate: NSDate { get }
  @available(iOS 9.0, *)
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(iOS 7.0, *)
struct MKDirectionsTransportType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Automobile: MKDirectionsTransportType { get }
  static var Walking: MKDirectionsTransportType { get }
  @available(iOS 9.0, *)
  static var Transit: MKDirectionsTransportType { get }
  static var Any: MKDirectionsTransportType { get }
}
@available(iOS 7.0, *)
class MKDistanceFormatter : NSFormatter {
  func stringFromDistance(distance: CLLocationDistance) -> String
  func distanceFromString(distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Metric
  case Imperial
  case ImperialWithYards
}
@available(iOS 7.0, *)
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Abbreviated
  case Full
}
struct MKCoordinateSpan {
  var latitudeDelta: CLLocationDegrees
  var longitudeDelta: CLLocationDegrees
  init()
  init(latitudeDelta: CLLocationDegrees, longitudeDelta: CLLocationDegrees)
}
struct MKCoordinateRegion {
  var center: CLLocationCoordinate2D
  var span: MKCoordinateSpan
  init()
  init(center: CLLocationCoordinate2D, span: MKCoordinateSpan)
}
func MKCoordinateSpanMake(latitudeDelta: CLLocationDegrees, _ longitudeDelta: CLLocationDegrees) -> MKCoordinateSpan
func MKCoordinateRegionMake(centerCoordinate: CLLocationCoordinate2D, _ span: MKCoordinateSpan) -> MKCoordinateRegion
func MKCoordinateRegionMakeWithDistance(centerCoordinate: CLLocationCoordinate2D, _ latitudinalMeters: CLLocationDistance, _ longitudinalMeters: CLLocationDistance) -> MKCoordinateRegion
struct MKMapPoint {
  var x: Double
  var y: Double
  init()
  init(x: Double, y: Double)
}
struct MKMapSize {
  var width: Double
  var height: Double
  init()
  init(width: Double, height: Double)
}
struct MKMapRect {
  var origin: MKMapPoint
  var size: MKMapSize
  init()
  init(origin: MKMapPoint, size: MKMapSize)
}
typealias MKZoomScale = CGFloat
@available(iOS 4.0, *)
let MKMapSizeWorld: MKMapSize
@available(iOS 4.0, *)
let MKMapRectWorld: MKMapRect
@available(iOS 4.0, *)
func MKMapPointForCoordinate(coordinate: CLLocationCoordinate2D) -> MKMapPoint
@available(iOS 4.0, *)
func MKCoordinateForMapPoint(mapPoint: MKMapPoint) -> CLLocationCoordinate2D
@available(iOS 4.0, *)
func MKMetersPerMapPointAtLatitude(latitude: CLLocationDegrees) -> CLLocationDistance
@available(iOS 4.0, *)
func MKMapPointsPerMeterAtLatitude(latitude: CLLocationDegrees) -> Double
@available(iOS 4.0, *)
func MKMetersBetweenMapPoints(a: MKMapPoint, _ b: MKMapPoint) -> CLLocationDistance
@available(iOS 4.0, *)
let MKMapRectNull: MKMapRect
func MKMapPointMake(x: Double, _ y: Double) -> MKMapPoint
func MKMapSizeMake(width: Double, _ height: Double) -> MKMapSize
func MKMapRectMake(x: Double, _ y: Double, _ width: Double, _ height: Double) -> MKMapRect
func MKMapRectGetMinX(rect: MKMapRect) -> Double
func MKMapRectGetMinY(rect: MKMapRect) -> Double
func MKMapRectGetMidX(rect: MKMapRect) -> Double
func MKMapRectGetMidY(rect: MKMapRect) -> Double
func MKMapRectGetMaxX(rect: MKMapRect) -> Double
func MKMapRectGetMaxY(rect: MKMapRect) -> Double
func MKMapRectGetWidth(rect: MKMapRect) -> Double
func MKMapRectGetHeight(rect: MKMapRect) -> Double
func MKMapPointEqualToPoint(point1: MKMapPoint, _ point2: MKMapPoint) -> Bool
func MKMapSizeEqualToSize(size1: MKMapSize, _ size2: MKMapSize) -> Bool
func MKMapRectEqualToRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKMapRectIsNull(rect: MKMapRect) -> Bool
func MKMapRectIsEmpty(rect: MKMapRect) -> Bool
func MKStringFromMapPoint(point: MKMapPoint) -> String
func MKStringFromMapSize(size: MKMapSize) -> String
func MKStringFromMapRect(rect: MKMapRect) -> String
@available(iOS 4.0, *)
func MKMapRectUnion(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(iOS 4.0, *)
func MKMapRectIntersection(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(iOS 4.0, *)
func MKMapRectInset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(iOS 4.0, *)
func MKMapRectOffset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(iOS 4.0, *)
func MKMapRectDivide(rect: MKMapRect, _ slice: UnsafeMutablePointer<MKMapRect>, _ remainder: UnsafeMutablePointer<MKMapRect>, _ amount: Double, _ edge: CGRectEdge)
@available(iOS 4.0, *)
func MKMapRectContainsPoint(rect: MKMapRect, _ point: MKMapPoint) -> Bool
@available(iOS 4.0, *)
func MKMapRectContainsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(iOS 4.0, *)
func MKMapRectIntersectsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(iOS 4.0, *)
func MKCoordinateRegionForMapRect(rect: MKMapRect) -> MKCoordinateRegion
@available(iOS 4.0, *)
func MKMapRectSpans180thMeridian(rect: MKMapRect) -> Bool
@available(iOS 4.0, *)
func MKMapRectRemainder(rect: MKMapRect) -> MKMapRect
extension NSValue {
  /*not inherited*/ init(MKCoordinate coordinate: CLLocationCoordinate2D)
  /*not inherited*/ init(MKCoordinateSpan span: MKCoordinateSpan)
  var MKCoordinateValue: CLLocationCoordinate2D { get }
  var MKCoordinateSpanValue: MKCoordinateSpan { get }
}
@available(iOS 7.0, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(iOS 9.0, *)
  convenience init(lookingAtCenterCoordinate centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 6.0, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: NSURL?
  @available(iOS 9.0, *)
  @NSCopying var timeZone: NSTimeZone?
  class func mapItemForCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMapsWithLaunchOptions(launchOptions: [String : AnyObject]?) -> Bool
  class func openMapsWithItems(mapItems: [MKMapItem], launchOptions: [String : AnyObject]?) -> Bool
  init()
}
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapTypeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(iOS 9.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(iOS 7.1, *)
let MKLaunchOptionsCameraKey: String
@available(iOS 7.0, *)
class MKMapSnapshot : NSObject {
  var image: UIImage { get }
  func pointForCoordinate(coordinate: CLLocationCoordinate2D) -> CGPoint
  init()
}
@available(iOS 7.0, *)
class MKMapSnapshotOptions : NSObject, NSCopying {
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
  func copyWithZone(zone: NSZone) -> AnyObject
}
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
@available(iOS 7.0, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotOptions)
  func startWithCompletionHandler(completionHandler: MKMapSnapshotCompletionHandler)
  func startWithQueue(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var loading: Bool { get }
  convenience init()
}
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
@available(iOS 4.0, *)
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  init()
}
protocol MKOverlay : MKAnnotation {
  var coordinate: CLLocationCoordinate2D { get }
  var boundingMapRect: MKMapRect { get }
  optional func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  optional func canReplaceMapContent() -> Bool
}
@available(iOS 7.0, *)
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: UIColor?
  var strokeColor: UIColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesToContext(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, inContext context: CGContext)
  func fillPath(path: CGPath, inContext context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
@available(iOS 4.0, *)
class MKOverlayPathView : MKOverlayView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointForMapPoint(mapPoint: MKMapPoint) -> CGPoint
  func mapPointForPoint(point: CGPoint) -> MKMapPoint
  func rectForMapRect(mapRect: MKMapRect) -> CGRect
  func mapRectForRect(rect: CGRect) -> MKMapRect
  func canDrawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func drawMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale, inContext context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayInMapRect(mapRect: MKMapRect)
  func setNeedsDisplayInMapRect(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
@available(iOS 4.0, *)
class MKOverlayView : UIView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
func MKRoadWidthAtZoomScale(zoomScale: MKZoomScale) -> CGFloat
@available(iOS, introduced=3.0, deprecated=9.0, message="Use MKPinAnnotationView's pinTintColor instead")
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Red
  case Green
  case Purple
}
@available(iOS 3.0, *)
class MKPinAnnotationView : MKAnnotationView {
  @available(iOS 9.0, *)
  class func redPinColor() -> UIColor
  @available(iOS 9.0, *)
  class func greenPinColor() -> UIColor
  @available(iOS 9.0, *)
  class func purplePinColor() -> UIColor
  @available(iOS 9.0, *)
  var pinTintColor: UIColor!
  var animatesDrop: Bool
  @available(iOS, introduced=3.0, deprecated=9.0, message="Use pinTintColor instead")
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 3.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 3.0, *)
  var title: String? { get }
  @available(iOS 3.0, *)
  var subtitle: String? { get }
}
@available(iOS 4.0, *)
class MKPointAnnotation : MKShape {
  var coordinate: CLLocationCoordinate2D
  init()
}
@available(iOS 4.0, *)
class MKPolygon : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int, interiorPolygons: [MKPolygon]?)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int, interiorPolygons: [MKPolygon]?)
  var interiorPolygons: [MKPolygon]? { get }
  init()
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 4.0, *)
  var boundingMapRect: MKMapRect { get }
  @available(iOS 4.0, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
@available(iOS 7.0, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay: MKOverlay)
  convenience init()
}
@available(iOS 4.0, *)
class MKPolygonView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  init()
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(iOS 4.0, *)
  var boundingMapRect: MKMapRect { get }
  @available(iOS 4.0, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(iOS 7.0, *)
  func canReplaceMapContent() -> Bool
}
@available(iOS 7.0, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  init(overlay: MKOverlay)
  convenience init()
}
@available(iOS 4.0, *)
class MKPolylineView : MKOverlayPathView {
  convenience init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 4.0, *)
class MKShape : NSObject, MKAnnotation {
  var title: String?
  var subtitle: String?
  init()
  @available(iOS 4.0, *)
  var coordinate: CLLocationCoordinate2D { get }
}
@available(iOS 3.0, *)
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Standard
  case Satellite
  case Hybrid
  @available(iOS 9.0, *)
  case SatelliteFlyover
  @available(iOS 9.0, *)
  case HybridFlyover
}
let MKErrorDomain: String
@available(iOS 3.0, *)
enum MKErrorCode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case PlacemarkNotFound
  @available(iOS 7.0, *)
  case DirectionsNotFound
}
@available(iOS 3.0, *)
class MKUserLocation : NSObject, MKAnnotation {
  var updating: Bool { get }
  var location: CLLocation? { get }
  @available(iOS 5.0, *)
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  init()
  @available(iOS 3.0, *)
  var coordinate: CLLocationCoordinate2D { get }
}
@available(iOS 5.0, *)
class MKUserTrackingBarButtonItem : UIBarButtonItem {
  init(mapView: MKMapView?)
  var mapView: MKMapView?
  convenience init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  @available(iOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
}
