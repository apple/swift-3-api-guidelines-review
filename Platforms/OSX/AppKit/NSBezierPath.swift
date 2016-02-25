
enum NSLineCapStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ButtLineCapStyle
  case RoundLineCapStyle
  case SquareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case MiterLineJoinStyle
  case RoundLineJoinStyle
  case BevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NonZeroWindingRule
  case EvenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case MoveToBezierPathElement
  case LineToBezierPathElement
  case CurveToBezierPathElement
  case ClosePathBezierPathElement
}
class NSBezierPath : NSObject, NSCopying, NSCoding {
  /*not inherited*/ init(rect rect: NSRect)
  /*not inherited*/ init(ovalInRect rect: NSRect)
  @available(OSX 10.5, *)
  /*not inherited*/ init(roundedRect rect: NSRect, xRadius xRadius: CGFloat, yRadius yRadius: CGFloat)
  class func fillRect(_ rect: NSRect)
  class func strokeRect(_ rect: NSRect)
  class func clipRect(_ rect: NSRect)
  class func strokeLineFromPoint(_ point1: NSPoint, toPoint point2: NSPoint)
  class func drawPackedGlyphs(_ packedGlyphs: UnsafePointer<Int8>, atPoint point: NSPoint)
  class func setDefaultMiterLimit(_ limit: CGFloat)
  class func defaultMiterLimit() -> CGFloat
  class func setDefaultFlatness(_ flatness: CGFloat)
  class func defaultFlatness() -> CGFloat
  class func setDefaultWindingRule(_ windingRule: NSWindingRule)
  class func defaultWindingRule() -> NSWindingRule
  class func setDefaultLineCapStyle(_ lineCapStyle: NSLineCapStyle)
  class func defaultLineCapStyle() -> NSLineCapStyle
  class func setDefaultLineJoinStyle(_ lineJoinStyle: NSLineJoinStyle)
  class func defaultLineJoinStyle() -> NSLineJoinStyle
  class func setDefaultLineWidth(_ lineWidth: CGFloat)
  class func defaultLineWidth() -> CGFloat
  func moveToPoint(_ point: NSPoint)
  func lineToPoint(_ point: NSPoint)
  func curveToPoint(_ endPoint: NSPoint, controlPoint1 controlPoint1: NSPoint, controlPoint2 controlPoint2: NSPoint)
  func closePath()
  func removeAllPoints()
  func relativeMoveToPoint(_ point: NSPoint)
  func relativeLineToPoint(_ point: NSPoint)
  func relativeCurveToPoint(_ endPoint: NSPoint, controlPoint1 controlPoint1: NSPoint, controlPoint2 controlPoint2: NSPoint)
  var lineWidth: CGFloat
  var lineCapStyle: NSLineCapStyle
  var lineJoinStyle: NSLineJoinStyle
  var windingRule: NSWindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>, count count: UnsafeMutablePointer<Int>, phase phase: UnsafeMutablePointer<CGFloat>)
  func setLineDash(_ pattern: UnsafePointer<CGFloat>, count count: Int, phase phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var bezierPathByFlatteningPath: NSBezierPath { get }
  @NSCopying var bezierPathByReversingPath: NSBezierPath { get }
  func transformUsingAffineTransform(_ transform: NSAffineTransform)
  var empty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func elementAtIndex(_ index: Int, associatedPoints points: NSPointArray) -> NSBezierPathElement
  func elementAtIndex(_ index: Int) -> NSBezierPathElement
  func setAssociatedPoints(_ points: NSPointArray, atIndex index: Int)
  func appendBezierPath(_ path: NSBezierPath)
  func appendBezierPathWithRect(_ rect: NSRect)
  func appendBezierPathWithPoints(_ points: NSPointArray, count count: Int)
  func appendBezierPathWithOvalInRect(_ rect: NSRect)
  func appendBezierPathWithArcWithCenter(_ center: NSPoint, radius radius: CGFloat, startAngle startAngle: CGFloat, endAngle endAngle: CGFloat, clockwise clockwise: Bool)
  func appendBezierPathWithArcWithCenter(_ center: NSPoint, radius radius: CGFloat, startAngle startAngle: CGFloat, endAngle endAngle: CGFloat)
  func appendBezierPathWithArcFromPoint(_ point1: NSPoint, toPoint point2: NSPoint, radius radius: CGFloat)
  func appendBezierPathWithGlyph(_ glyph: NSGlyph, inFont font: NSFont)
  func appendBezierPathWithGlyphs(_ glyphs: UnsafeMutablePointer<NSGlyph>, count count: Int, inFont font: NSFont)
  func appendBezierPathWithPackedGlyphs(_ packedGlyphs: UnsafePointer<Int8>)
  @available(OSX 10.5, *)
  func appendBezierPathWithRoundedRect(_ rect: NSRect, xRadius xRadius: CGFloat, yRadius yRadius: CGFloat)
  func containsPoint(_ point: NSPoint) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSBezierPath {
}
