
enum NSLineCapStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ButtLineCapStyle
  case RoundLineCapStyle
  case SquareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MiterLineJoinStyle
  case RoundLineJoinStyle
  case BevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NonZeroWindingRule
  case EvenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MoveToBezierPathElement
  case LineToBezierPathElement
  case CurveToBezierPathElement
  case ClosePathBezierPathElement
}
class NSBezierPath : NSObject, NSCopying, NSCoding {
  /*not inherited*/ init(rect: NSRect)
  /*not inherited*/ init(ovalInRect rect: NSRect)
  @available(OSX 10.5, *)
  /*not inherited*/ init(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  class func fillRect(rect: NSRect)
  class func strokeRect(rect: NSRect)
  class func clipRect(rect: NSRect)
  class func strokeLineFromPoint(point1: NSPoint, toPoint point2: NSPoint)
  class func drawPackedGlyphs(packedGlyphs: UnsafePointer<Int8>, atPoint point: NSPoint)
  class func setDefaultMiterLimit(limit: CGFloat)
  class func defaultMiterLimit() -> CGFloat
  class func setDefaultFlatness(flatness: CGFloat)
  class func defaultFlatness() -> CGFloat
  class func setDefaultWindingRule(windingRule: NSWindingRule)
  class func defaultWindingRule() -> NSWindingRule
  class func setDefaultLineCapStyle(lineCapStyle: NSLineCapStyle)
  class func defaultLineCapStyle() -> NSLineCapStyle
  class func setDefaultLineJoinStyle(lineJoinStyle: NSLineJoinStyle)
  class func defaultLineJoinStyle() -> NSLineJoinStyle
  class func setDefaultLineWidth(lineWidth: CGFloat)
  class func defaultLineWidth() -> CGFloat
  func moveToPoint(point: NSPoint)
  func lineToPoint(point: NSPoint)
  func curveToPoint(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  func closePath()
  func removeAllPoints()
  func relativeMoveToPoint(point: NSPoint)
  func relativeLineToPoint(point: NSPoint)
  func relativeCurveToPoint(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  var lineWidth: CGFloat
  var lineCapStyle: NSLineCapStyle
  var lineJoinStyle: NSLineJoinStyle
  var windingRule: NSWindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var bezierPathByFlatteningPath: NSBezierPath { get }
  @NSCopying var bezierPathByReversingPath: NSBezierPath { get }
  func transformUsingAffineTransform(transform: NSAffineTransform)
  var empty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func elementAtIndex(index: Int, associatedPoints points: NSPointArray) -> NSBezierPathElement
  func elementAtIndex(index: Int) -> NSBezierPathElement
  func setAssociatedPoints(points: NSPointArray, atIndex index: Int)
  func appendBezierPath(path: NSBezierPath)
  func appendBezierPathWithRect(rect: NSRect)
  func appendBezierPathWithPoints(points: NSPointArray, count: Int)
  func appendBezierPathWithOvalInRect(rect: NSRect)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendBezierPathWithArcFromPoint(point1: NSPoint, toPoint point2: NSPoint, radius: CGFloat)
  func appendBezierPathWithGlyph(glyph: NSGlyph, inFont font: NSFont)
  func appendBezierPathWithGlyphs(glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, inFont font: NSFont)
  func appendBezierPathWithPackedGlyphs(packedGlyphs: UnsafePointer<Int8>)
  @available(OSX 10.5, *)
  func appendBezierPathWithRoundedRect(rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  func containsPoint(point: NSPoint) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSBezierPath {
}
