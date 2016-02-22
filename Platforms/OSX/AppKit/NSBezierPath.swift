
enum NSLineCapStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case buttLineCapStyle
  case roundLineCapStyle
  case squareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case miterLineJoinStyle
  case roundLineJoinStyle
  case bevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nonZeroWindingRule
  case evenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case moveToBezierPathElement
  case lineToBezierPathElement
  case curveToBezierPathElement
  case closePathBezierPathElement
}
class NSBezierPath : NSObject, NSCopying, NSCoding {
  /*not inherited*/ init(rect: NSRect)
  /*not inherited*/ init(ovalIn rect: NSRect)
  @available(OSX 10.5, *)
  /*not inherited*/ init(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  class func fill(rect: NSRect)
  class func stroke(rect: NSRect)
  class func clipRect(rect: NSRect)
  class func strokeLine(from point1: NSPoint, to point2: NSPoint)
  class func drawPackedGlyphs(packedGlyphs: UnsafePointer<Int8>, at point: NSPoint)
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
  func move(to point: NSPoint)
  func line(to point: NSPoint)
  func curve(to endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  func close()
  func removeAllPoints()
  func relativeMove(to point: NSPoint)
  func relativeLine(to point: NSPoint)
  func relativeCurve(to endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
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
  @NSCopying var flattening: NSBezierPath { get }
  @NSCopying var reversing: NSBezierPath { get }
  func transform(transform: NSAffineTransform)
  var isEmpty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func element(at index: Int, associatedPoints points: NSPointArray) -> NSBezierPathElement
  func element(at index: Int) -> NSBezierPathElement
  func setAssociatedPoints(points: NSPointArray, at index: Int)
  func append(path: NSBezierPath)
  func append(rect: NSRect)
  func append(points: NSPointArray, count: Int)
  func appendWithOval(in rect: NSRect)
  func appendWithArc(center center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendWithArc(center center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendWithArc(from point1: NSPoint, to point2: NSPoint, radius: CGFloat)
  func append(glyph glyph: NSGlyph, in font: NSFont)
  func append(glyphs glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, in font: NSFont)
  func append(packedGlyphs packedGlyphs: UnsafePointer<Int8>)
  @available(OSX 10.5, *)
  func append(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  func contains(point: NSPoint) -> Bool
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSBezierPath {
}
