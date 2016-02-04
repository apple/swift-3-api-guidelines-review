
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
