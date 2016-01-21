
protocol MKAnnotation : NSObjectProtocol {
  var coordinate: CLLocationCoordinate2D { get }
  optional var title: String? { get }
  optional var subtitle: String? { get }
}
let MKAnnotationCalloutInfoDidChangeNotification: String
@available(OSX 10.9, *)
enum MKAnnotationViewDragState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Starting
  case Dragging
  case Canceling
  case Ending
}
@available(OSX 10.9, *)
class MKAnnotationView : NSView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: NSImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var leftCalloutOffset: CGPoint
  var rightCalloutOffset: CGPoint
  var isEnabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: NSView?
  var rightCalloutAccessoryView: NSView?
  @available(OSX 10.11, *)
  var detailCalloutAccessoryView: NSView?
  @available(OSX 10.9, *)
  var isDraggable: Bool
  @available(OSX 10.9, *)
  var dragState: MKAnnotationViewDragState
  @available(OSX 10.9, *)
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.9, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius: CLLocationDistance)
  convenience init(mapRect: MKMapRect)
  var coordinate: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  var boundingMapRect: MKMapRect { get }
  init()
  @available(OSX 10.9, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
@available(OSX 10.9, *)
class MKCircleRenderer : MKOverlayPathRenderer {
  init(circle: MKCircle)
  var circle: MKCircle { get }
  init(overlay: MKOverlay)
  convenience init()
}
typealias MKDirectionsHandler = (MKDirectionsResponse?, NSError?) -> Void
typealias MKETAHandler = (MKETAResponse?, NSError?) -> Void
@available(OSX 10.9, *)
class MKDirections : NSObject {
  init(request: MKDirectionsRequest)
  func calculateDirectionsWithCompletionHandler(completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(completionHandler: MKETAHandler)
  func cancel()
  var isCalculating: Bool { get }
  convenience init()
}
@available(OSX 10.9, *)
class MKDirectionsRequest : NSObject {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  var transportType: MKDirectionsTransportType
  @available(OSX 10.9, *)
  var requestsAlternateRoutes: Bool
  @available(OSX 10.9, *)
  @NSCopying var departureDate: NSDate?
  @available(OSX 10.9, *)
  @NSCopying var arrivalDate: NSDate?
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  init(contentsOf url: NSURL)
  @available(OSX 10.9, *)
  class func isDirectionsRequest(url: NSURL) -> Bool
}
@available(OSX 10.9, *)
class MKDirectionsResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
class MKRouteStep : NSObject {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(OSX 10.9, *)
class MKETAResponse : NSObject {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: NSTimeInterval { get }
  @available(OSX 10.11, *)
  var distance: CLLocationDistance { get }
  @available(OSX 10.11, *)
  var expectedArrivalDate: NSDate { get }
  @available(OSX 10.11, *)
  var expectedDepartureDate: NSDate { get }
  @available(OSX 10.11, *)
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(OSX 10.9, *)
struct MKDirectionsTransportType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Automobile: MKDirectionsTransportType { get }
  static var Walking: MKDirectionsTransportType { get }
  @available(OSX 10.11, *)
  static var Transit: MKDirectionsTransportType { get }
  static var Any: MKDirectionsTransportType { get }
}
@available(OSX 10.9, *)
class MKDistanceFormatter : NSFormatter {
  func stringFromDistance(distance: CLLocationDistance) -> String
  func distanceFrom(distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Metric
  case Imperial
  case ImperialWithYards
}
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
let MKMapSizeWorld: MKMapSize
@available(OSX 10.9, *)
let MKMapRectWorld: MKMapRect
@available(OSX 10.9, *)
func MKMapPointForCoordinate(coordinate: CLLocationCoordinate2D) -> MKMapPoint
@available(OSX 10.9, *)
func MKCoordinateForMapPoint(mapPoint: MKMapPoint) -> CLLocationCoordinate2D
@available(OSX 10.9, *)
func MKMetersPerMapPointAtLatitude(latitude: CLLocationDegrees) -> CLLocationDistance
@available(OSX 10.9, *)
func MKMapPointsPerMeterAtLatitude(latitude: CLLocationDegrees) -> Double
@available(OSX 10.9, *)
func MKMetersBetweenMapPoints(a: MKMapPoint, _ b: MKMapPoint) -> CLLocationDistance
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
func MKMapRectUnion(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectIntersection(rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectInset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectOffset(rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectDivide(rect: MKMapRect, _ slice: UnsafeMutablePointer<MKMapRect>, _ remainder: UnsafeMutablePointer<MKMapRect>, _ amount: Double, _ edge: CGRectEdge)
@available(OSX 10.9, *)
func MKMapRectContainsPoint(rect: MKMapRect, _ point: MKMapPoint) -> Bool
@available(OSX 10.9, *)
func MKMapRectContainsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKMapRectIntersectsRect(rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKCoordinateRegionForMapRect(rect: MKMapRect) -> MKCoordinateRegion
@available(OSX 10.9, *)
func MKMapRectSpans180thMeridian(rect: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKMapRectRemainder(rect: MKMapRect) -> MKMapRect
extension NSValue {
  /*not inherited*/ init(mkCoordinate coordinate: CLLocationCoordinate2D)
  /*not inherited*/ init(mkCoordinateSpan span: MKCoordinateSpan)
  var mkCoordinateValue: CLLocationCoordinate2D { get }
  var mkCoordinateSpanValue: MKCoordinateSpan { get }
}
@available(OSX 10.9, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  var heading: CLLocationDirection
  var pitch: CGFloat
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(OSX 10.11, *)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
  init()
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.9, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: NSURL?
  @available(OSX 10.11, *)
  @NSCopying var timeZone: NSTimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMapsWithLaunchOptions(launchOptions: [String : AnyObject]? = [:]) -> Bool
  class func openMapsWith(mapItems: [MKMapItem], launchOptions: [String : AnyObject]? = [:]) -> Bool
  init()
}
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapTypeKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(OSX 10.9, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(OSX 10.11, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapCenterKey: String
@available(OSX 10.9, *)
let MKLaunchOptionsMapSpanKey: String
@available(OSX 10.10, *)
let MKLaunchOptionsCameraKey: String
@available(OSX 10.9, *)
class MKMapSnapshot : NSObject {
  var image: NSImage { get }
  func pointFor(coordinate: CLLocationCoordinate2D) -> NSPoint
  init()
}
@available(OSX 10.9, *)
class MKMapSnapshotOptions : NSObject, NSCopying {
  @NSCopying var camera: MKMapCamera
  var mapRect: MKMapRect
  var region: MKCoordinateRegion
  var mapType: MKMapType
  var showsPointsOfInterest: Bool
  var showsBuildings: Bool
  var size: NSSize
  init()
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
@available(OSX 10.9, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotOptions)
  func startWithCompletionHandler(completionHandler: MKMapSnapshotCompletionHandler)
  func startWith(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var isLoading: Bool { get }
  convenience init()
}
@available(OSX 10.9, *)
class MKMapView : NSView, NSCoding {
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
  func setVisibleMapRect(mapRect: MKMapRect, edgePadding insets: NSEdgeInsets, animated animate: Bool)
  func mapRectThatFits(mapRect: MKMapRect, edgePadding insets: NSEdgeInsets) -> MKMapRect
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
  func annotationsIn(mapRect: MKMapRect) -> Set<NSObject>
  func viewFor(annotation: MKAnnotation) -> MKAnnotationView?
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
  func exchangeOverlayAt(index1: Int, withOverlayAt index2: Int)
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
  optional func mapView(mapView: MKMapView, didFailToLocateUserWithError error: NSError)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, didChange newState: MKAnnotationViewDragState, fromOldState oldState: MKAnnotationViewDragState)
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer
  @available(OSX 10.9, *)
  optional func mapView(mapView: MKMapView, didAdd renderers: [MKOverlayRenderer])
}
@available(OSX 10.9, *)
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
  @available(OSX 10.9, *)
  optional func canReplaceMapContent() -> Bool
}
@available(OSX 10.9, *)
class MKOverlayPathRenderer : MKOverlayRenderer {
  var fillColor: NSColor?
  var strokeColor: NSColor?
  var lineWidth: CGFloat
  var lineJoin: CGLineJoin
  var lineCap: CGLineCap
  var miterLimit: CGFloat
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
  func createPath()
  var path: CGPath!
  func invalidatePath()
  func applyStrokePropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func applyFillPropertiesTo(context: CGContext, atZoomScale zoomScale: MKZoomScale)
  func strokePath(path: CGPath, in context: CGContext)
  func fillPath(path: CGPath, in context: CGContext)
  init(overlay: MKOverlay)
  convenience init()
}
@available(OSX 10.9, *)
class MKOverlayRenderer : NSObject {
  init(overlay: MKOverlay)
  var overlay: MKOverlay { get }
  func pointFor(mapPoint: MKMapPoint) -> CGPoint
  func mapPointFor(point: CGPoint) -> MKMapPoint
  func rectFor(mapRect: MKMapRect) -> CGRect
  func mapRectFor(rect: CGRect) -> MKMapRect
  func canDraw(mapRect: MKMapRect, zoomScale: MKZoomScale) -> Bool
  func draw(mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext)
  func setNeedsDisplay()
  func setNeedsDisplayIn(mapRect: MKMapRect)
  func setNeedsDisplayIn(mapRect: MKMapRect, zoomScale: MKZoomScale)
  var alpha: CGFloat
  var contentScaleFactor: CGFloat { get }
  convenience init()
}
@available(OSX 10.9, *)
func MKRoadWidthAtZoomScale(zoomScale: MKZoomScale) -> CGFloat
@available(OSX, introduced=10.9, deprecated=10.11, message="Use MKPinAnnotationView's pinTintColor instead")
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Red
  case Green
  case Purple
}
@available(OSX 10.9, *)
class MKPinAnnotationView : MKAnnotationView {
  @available(OSX 10.11, *)
  class func redPinColor() -> NSColor
  @available(OSX 10.11, *)
  class func greenPinColor() -> NSColor
  @available(OSX 10.11, *)
  class func purplePinColor() -> NSColor
  @available(OSX 10.11, *)
  var pinTintColor: NSColor!
  var animatesDrop: Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use pinTintColor instead")
  var pinColor: MKPinAnnotationColor
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.9, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : AnyObject]?)
  var countryCode: String? { get }
  init(placemark: CLPlacemark)
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var title: String? { get }
  @available(OSX 10.9, *)
  var subtitle: String? { get }
}
@available(OSX 10.9, *)
class MKPointAnnotation : MKShape {
  var coordinate: CLLocationCoordinate2D
  init()
}
@available(OSX 10.9, *)
class MKPolygon : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int, interiorPolygons: [MKPolygon]?)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int, interiorPolygons: [MKPolygon]?)
  var interiorPolygons: [MKPolygon]? { get }
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
@available(OSX 10.9, *)
class MKPolygonRenderer : MKOverlayPathRenderer {
  init(polygon: MKPolygon)
  var polygon: MKPolygon { get }
  init(overlay: MKOverlay)
  convenience init()
}
@available(OSX 10.9, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafeMutablePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafeMutablePointer<CLLocationCoordinate2D>, count: Int)
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
  @available(OSX 10.9, *)
  var boundingMapRect: MKMapRect { get }
  @available(OSX 10.9, *)
  func intersectsMapRect(mapRect: MKMapRect) -> Bool
  @available(OSX 10.9, *)
  func canReplaceMapContent() -> Bool
}
@available(OSX 10.9, *)
class MKPolylineRenderer : MKOverlayPathRenderer {
  init(polyline: MKPolyline)
  var polyline: MKPolyline { get }
  init(overlay: MKOverlay)
  convenience init()
}
@available(OSX 10.9, *)
class MKShape : NSObject, MKAnnotation {
  var title: String?
  var subtitle: String?
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
}
@available(OSX 10.9, *)
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Standard
  case Satellite
  case Hybrid
  @available(OSX 10.11, *)
  case SatelliteFlyover
  @available(OSX 10.11, *)
  case HybridFlyover
}
let MKErrorDomain: String
@available(OSX 10.9, *)
enum MKErrorCode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case ServerFailure
  case LoadingThrottled
  case PlacemarkNotFound
  @available(OSX 10.9, *)
  case DirectionsNotFound
}
@available(OSX 10.9, *)
class MKUserLocation : NSObject, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(OSX 10.9, *)
  var heading: CLHeading? { get }
  var title: String?
  var subtitle: String?
  init()
  @available(OSX 10.9, *)
  var coordinate: CLLocationCoordinate2D { get }
}
