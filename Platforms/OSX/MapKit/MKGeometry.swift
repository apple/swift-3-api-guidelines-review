
struct MKCoordinateSpan {
  var latitudeDelta: CLLocationDegrees
  var longitudeDelta: CLLocationDegrees
  init()
  init(latitudeDelta latitudeDelta: CLLocationDegrees, longitudeDelta longitudeDelta: CLLocationDegrees)
}
struct MKCoordinateRegion {
  var center: CLLocationCoordinate2D
  var span: MKCoordinateSpan
  init()
  init(center center: CLLocationCoordinate2D, span span: MKCoordinateSpan)
}
func MKCoordinateSpanMake(_ latitudeDelta: CLLocationDegrees, _ longitudeDelta: CLLocationDegrees) -> MKCoordinateSpan
func MKCoordinateRegionMake(_ centerCoordinate: CLLocationCoordinate2D, _ span: MKCoordinateSpan) -> MKCoordinateRegion
func MKCoordinateRegionMakeWithDistance(_ centerCoordinate: CLLocationCoordinate2D, _ latitudinalMeters: CLLocationDistance, _ longitudinalMeters: CLLocationDistance) -> MKCoordinateRegion
struct MKMapPoint {
  var x: Double
  var y: Double
  init()
  init(x x: Double, y y: Double)
}
struct MKMapSize {
  var width: Double
  var height: Double
  init()
  init(width width: Double, height height: Double)
}
struct MKMapRect {
  var origin: MKMapPoint
  var size: MKMapSize
  init()
  init(origin origin: MKMapPoint, size size: MKMapSize)
}
typealias MKZoomScale = CGFloat
@available(OSX 10.9, *)
let MKMapSizeWorld: MKMapSize
@available(OSX 10.9, *)
let MKMapRectWorld: MKMapRect
@available(OSX 10.9, *)
func MKMapPointForCoordinate(_ coordinate: CLLocationCoordinate2D) -> MKMapPoint
@available(OSX 10.9, *)
func MKCoordinateForMapPoint(_ mapPoint: MKMapPoint) -> CLLocationCoordinate2D
@available(OSX 10.9, *)
func MKMetersPerMapPointAtLatitude(_ latitude: CLLocationDegrees) -> CLLocationDistance
@available(OSX 10.9, *)
func MKMapPointsPerMeterAtLatitude(_ latitude: CLLocationDegrees) -> Double
@available(OSX 10.9, *)
func MKMetersBetweenMapPoints(_ a: MKMapPoint, _ b: MKMapPoint) -> CLLocationDistance
@available(OSX 10.9, *)
let MKMapRectNull: MKMapRect
func MKMapPointMake(_ x: Double, _ y: Double) -> MKMapPoint
func MKMapSizeMake(_ width: Double, _ height: Double) -> MKMapSize
func MKMapRectMake(_ x: Double, _ y: Double, _ width: Double, _ height: Double) -> MKMapRect
func MKMapRectGetMinX(_ rect: MKMapRect) -> Double
func MKMapRectGetMinY(_ rect: MKMapRect) -> Double
func MKMapRectGetMidX(_ rect: MKMapRect) -> Double
func MKMapRectGetMidY(_ rect: MKMapRect) -> Double
func MKMapRectGetMaxX(_ rect: MKMapRect) -> Double
func MKMapRectGetMaxY(_ rect: MKMapRect) -> Double
func MKMapRectGetWidth(_ rect: MKMapRect) -> Double
func MKMapRectGetHeight(_ rect: MKMapRect) -> Double
func MKMapPointEqualToPoint(_ point1: MKMapPoint, _ point2: MKMapPoint) -> Bool
func MKMapSizeEqualToSize(_ size1: MKMapSize, _ size2: MKMapSize) -> Bool
func MKMapRectEqualToRect(_ rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
func MKMapRectIsNull(_ rect: MKMapRect) -> Bool
func MKMapRectIsEmpty(_ rect: MKMapRect) -> Bool
func MKStringFromMapPoint(_ point: MKMapPoint) -> String
func MKStringFromMapSize(_ size: MKMapSize) -> String
func MKStringFromMapRect(_ rect: MKMapRect) -> String
@available(OSX 10.9, *)
func MKMapRectUnion(_ rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectIntersection(_ rect1: MKMapRect, _ rect2: MKMapRect) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectInset(_ rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectOffset(_ rect: MKMapRect, _ dx: Double, _ dy: Double) -> MKMapRect
@available(OSX 10.9, *)
func MKMapRectDivide(_ rect: MKMapRect, _ slice: UnsafeMutablePointer<MKMapRect>, _ remainder: UnsafeMutablePointer<MKMapRect>, _ amount: Double, _ edge: CGRectEdge)
@available(OSX 10.9, *)
func MKMapRectContainsPoint(_ rect: MKMapRect, _ point: MKMapPoint) -> Bool
@available(OSX 10.9, *)
func MKMapRectContainsRect(_ rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKMapRectIntersectsRect(_ rect1: MKMapRect, _ rect2: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKCoordinateRegionForMapRect(_ rect: MKMapRect) -> MKCoordinateRegion
@available(OSX 10.9, *)
func MKMapRectSpans180thMeridian(_ rect: MKMapRect) -> Bool
@available(OSX 10.9, *)
func MKMapRectRemainder(_ rect: MKMapRect) -> MKMapRect
extension NSValue {
  /*not inherited*/ init(mkCoordinate coordinate: CLLocationCoordinate2D)
  /*not inherited*/ init(mkCoordinateSpan span: MKCoordinateSpan)
  var mkCoordinateValue: CLLocationCoordinate2D { get }
  var mkCoordinateSpanValue: MKCoordinateSpan { get }
}
