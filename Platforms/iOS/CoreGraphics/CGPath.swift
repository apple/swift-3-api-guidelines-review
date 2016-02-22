
class CGMutablePath {
}
class CGPath {
}
enum CGLineJoin : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case miter
  case round
  case bevel
}
enum CGLineCap : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case butt
  case round
  case square
}
@available(iOS 2.0, *)
func CGPathGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CGPathCreateMutable() -> CGMutablePath
@available(iOS 2.0, *)
func CGPathCreateCopy(_ path: CGPath?) -> CGPath?
@available(iOS 5.0, *)
func CGPathCreateCopyByTransformingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(iOS 2.0, *)
func CGPathCreateMutableCopy(_ path: CGPath?) -> CGMutablePath?
@available(iOS 5.0, *)
func CGPathCreateMutableCopyByTransformingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
@available(iOS 4.0, *)
func CGPathCreateWithRect(_ rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(iOS 5.0, *)
func CGPathCreateWithEllipseInRect(_ rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(iOS 7.0, *)
func CGPathCreateWithRoundedRect(_ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(iOS 7.0, *)
func CGPathAddRoundedRect(_ path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
@available(iOS 5.0, *)
func CGPathCreateCopyByDashingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
@available(iOS 5.0, *)
func CGPathCreateCopyByStrokingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
@available(iOS 2.0, *)
func CGPathEqualToPath(_ path1: CGPath?, _ path2: CGPath?) -> Bool
@available(iOS 2.0, *)
func CGPathMoveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(iOS 2.0, *)
func CGPathAddLineToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(iOS 2.0, *)
func CGPathAddQuadCurveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(iOS 2.0, *)
func CGPathAddCurveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(iOS 2.0, *)
func CGPathCloseSubpath(_ path: CGMutablePath?)
@available(iOS 2.0, *)
func CGPathAddRect(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(iOS 2.0, *)
func CGPathAddRects(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(iOS 2.0, *)
func CGPathAddLines(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(iOS 2.0, *)
func CGPathAddEllipseInRect(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(iOS 5.0, *)
func CGPathAddRelativeArc(_ path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
@available(iOS 2.0, *)
func CGPathAddArc(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
@available(iOS 2.0, *)
func CGPathAddArcToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(iOS 2.0, *)
func CGPathAddPath(_ path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)
@available(iOS 2.0, *)
func CGPathIsEmpty(_ path: CGPath?) -> Bool
@available(iOS 2.0, *)
func CGPathIsRect(_ path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
@available(iOS 2.0, *)
func CGPathGetCurrentPoint(_ path: CGPath?) -> CGPoint
@available(iOS 2.0, *)
func CGPathGetBoundingBox(_ path: CGPath?) -> CGRect
@available(iOS 4.0, *)
func CGPathGetPathBoundingBox(_ path: CGPath?) -> CGRect
@available(iOS 2.0, *)
func CGPathContainsPoint(_ path: CGPath?, _ m: UnsafePointer<CGAffineTransform>, _ point: CGPoint, _ eoFill: Bool) -> Bool
enum CGPathElementType : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case moveToPoint
  case addLineToPoint
  case addQuadCurveToPoint
  case addCurveToPoint
  case closeSubpath
}
struct CGPathElement {
  var type: CGPathElementType
  var points: UnsafeMutablePointer<CGPoint>
}
typealias CGPathApplierFunction = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGPathElement>) -> Void
@available(iOS 2.0, *)
func CGPathApply(_ path: CGPath?, _ info: UnsafeMutablePointer<Void>, _ function: CGPathApplierFunction?)
