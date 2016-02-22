
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
@available(OSX 10.2, *)
func CGPathGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CGPathCreateMutable() -> CGMutablePath
@available(OSX 10.2, *)
func CGPathCreateCopy(_ path: CGPath?) -> CGPath?
@available(OSX 10.7, *)
func CGPathCreateCopyByTransformingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(OSX 10.2, *)
func CGPathCreateMutableCopy(_ path: CGPath?) -> CGMutablePath?
@available(OSX 10.7, *)
func CGPathCreateMutableCopyByTransformingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
@available(OSX 10.5, *)
func CGPathCreateWithRect(_ rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.7, *)
func CGPathCreateWithEllipseInRect(_ rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.9, *)
func CGPathCreateWithRoundedRect(_ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.9, *)
func CGPathAddRoundedRect(_ path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
@available(OSX 10.7, *)
func CGPathCreateCopyByDashingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
@available(OSX 10.7, *)
func CGPathCreateCopyByStrokingPath(_ path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
@available(OSX 10.2, *)
func CGPathEqualToPath(_ path1: CGPath?, _ path2: CGPath?) -> Bool
@available(OSX 10.2, *)
func CGPathMoveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddLineToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddQuadCurveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddCurveToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathCloseSubpath(_ path: CGMutablePath?)
@available(OSX 10.2, *)
func CGPathAddRect(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(OSX 10.2, *)
func CGPathAddRects(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.2, *)
func CGPathAddLines(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.4, *)
func CGPathAddEllipseInRect(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(OSX 10.7, *)
func CGPathAddRelativeArc(_ path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
@available(OSX 10.2, *)
func CGPathAddArc(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
@available(OSX 10.2, *)
func CGPathAddArcToPoint(_ path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(OSX 10.2, *)
func CGPathAddPath(_ path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)
@available(OSX 10.2, *)
func CGPathIsEmpty(_ path: CGPath?) -> Bool
@available(OSX 10.2, *)
func CGPathIsRect(_ path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
@available(OSX 10.2, *)
func CGPathGetCurrentPoint(_ path: CGPath?) -> CGPoint
@available(OSX 10.2, *)
func CGPathGetBoundingBox(_ path: CGPath?) -> CGRect
@available(OSX 10.6, *)
func CGPathGetPathBoundingBox(_ path: CGPath?) -> CGRect
@available(OSX 10.4, *)
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
@available(OSX 10.2, *)
func CGPathApply(_ path: CGPath?, _ info: UnsafeMutablePointer<Void>, _ function: CGPathApplierFunction?)
