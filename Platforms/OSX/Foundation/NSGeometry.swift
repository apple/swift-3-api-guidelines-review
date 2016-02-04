
typealias NSPoint = CGPoint
typealias NSPointPointer = UnsafeMutablePointer<NSPoint>
typealias NSPointArray = UnsafeMutablePointer<NSPoint>
typealias NSSize = CGSize
typealias NSSizePointer = UnsafeMutablePointer<NSSize>
typealias NSSizeArray = UnsafeMutablePointer<NSSize>
typealias NSRect = CGRect
typealias NSRectPointer = UnsafeMutablePointer<NSRect>
typealias NSRectArray = UnsafeMutablePointer<NSRect>
enum NSRectEdge : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MinX
  case MinY
  case MaxX
  case MaxY
}

extension NSRectEdge {
  init(rectEdge: CGRectEdge)
}
struct NSEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
struct NSAlignmentOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var AlignMinXInward: NSAlignmentOptions { get }
  static var AlignMinYInward: NSAlignmentOptions { get }
  static var AlignMaxXInward: NSAlignmentOptions { get }
  static var AlignMaxYInward: NSAlignmentOptions { get }
  static var AlignWidthInward: NSAlignmentOptions { get }
  static var AlignHeightInward: NSAlignmentOptions { get }
  static var AlignMinXOutward: NSAlignmentOptions { get }
  static var AlignMinYOutward: NSAlignmentOptions { get }
  static var AlignMaxXOutward: NSAlignmentOptions { get }
  static var AlignMaxYOutward: NSAlignmentOptions { get }
  static var AlignWidthOutward: NSAlignmentOptions { get }
  static var AlignHeightOutward: NSAlignmentOptions { get }
  static var AlignMinXNearest: NSAlignmentOptions { get }
  static var AlignMinYNearest: NSAlignmentOptions { get }
  static var AlignMaxXNearest: NSAlignmentOptions { get }
  static var AlignMaxYNearest: NSAlignmentOptions { get }
  static var AlignWidthNearest: NSAlignmentOptions { get }
  static var AlignHeightNearest: NSAlignmentOptions { get }
  static var AlignRectFlipped: NSAlignmentOptions { get }
  static var AlignAllEdgesInward: NSAlignmentOptions { get }
  static var AlignAllEdgesOutward: NSAlignmentOptions { get }
  static var AlignAllEdgesNearest: NSAlignmentOptions { get }
}
let NSZeroPoint: NSPoint
let NSZeroSize: NSSize
let NSZeroRect: NSRect
@available(OSX 10.10, *)
let NSEdgeInsetsZero: NSEdgeInsets
func NSMakePoint(x: CGFloat, _ y: CGFloat) -> NSPoint
func NSMakeSize(w: CGFloat, _ h: CGFloat) -> NSSize
func NSMakeRect(x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> NSRect
func NSMaxX(aRect: NSRect) -> CGFloat
func NSMaxY(aRect: NSRect) -> CGFloat
func NSMidX(aRect: NSRect) -> CGFloat
func NSMidY(aRect: NSRect) -> CGFloat
func NSMinX(aRect: NSRect) -> CGFloat
func NSMinY(aRect: NSRect) -> CGFloat
func NSWidth(aRect: NSRect) -> CGFloat
func NSHeight(aRect: NSRect) -> CGFloat
func NSRectFromCGRect(cgrect: CGRect) -> NSRect
func NSRectToCGRect(nsrect: NSRect) -> CGRect
func NSPointFromCGPoint(cgpoint: CGPoint) -> NSPoint
func NSPointToCGPoint(nspoint: NSPoint) -> CGPoint
func NSSizeFromCGSize(cgsize: CGSize) -> NSSize
func NSSizeToCGSize(nssize: NSSize) -> CGSize
func NSEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> NSEdgeInsets
func NSEqualPoints(aPoint: NSPoint, _ bPoint: NSPoint) -> Bool
func NSEqualSizes(aSize: NSSize, _ bSize: NSSize) -> Bool
func NSEqualRects(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIsEmptyRect(aRect: NSRect) -> Bool
@available(OSX 10.10, *)
func NSEdgeInsetsEqual(aInsets: NSEdgeInsets, _ bInsets: NSEdgeInsets) -> Bool
func NSInsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSIntegralRect(aRect: NSRect) -> NSRect
@available(OSX 10.7, *)
func NSIntegralRectWithOptions(aRect: NSRect, _ opts: NSAlignmentOptions) -> NSRect
func NSUnionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSIntersectionRect(aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSOffsetRect(aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSDivideRect(inRect: NSRect, _ slice: UnsafeMutablePointer<NSRect>, _ rem: UnsafeMutablePointer<NSRect>, _ amount: CGFloat, _ edge: NSRectEdge)
func NSPointInRect(aPoint: NSPoint, _ aRect: NSRect) -> Bool
func NSMouseInRect(aPoint: NSPoint, _ aRect: NSRect, _ flipped: Bool) -> Bool
func NSContainsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIntersectsRect(aRect: NSRect, _ bRect: NSRect) -> Bool
func NSStringFromPoint(aPoint: NSPoint) -> String
func NSStringFromSize(aSize: NSSize) -> String
func NSStringFromRect(aRect: NSRect) -> String
func NSPointFromString(aString: String) -> NSPoint
func NSSizeFromString(aString: String) -> NSSize
func NSRectFromString(aString: String) -> NSRect
extension NSValue {
  /*not inherited*/ init(point: NSPoint)
  /*not inherited*/ init(size: NSSize)
  /*not inherited*/ init(rect: NSRect)
  @available(OSX 10.10, *)
  /*not inherited*/ init(edgeInsets insets: NSEdgeInsets)
  var pointValue: NSPoint { get }
  var sizeValue: NSSize { get }
  var rectValue: NSRect { get }
  @available(OSX 10.10, *)
  var edgeInsetsValue: NSEdgeInsets { get }
}
extension NSCoder {
  func encodePoint(point: NSPoint)
  func decodePoint() -> NSPoint
  func encodeSize(size: NSSize)
  func decodeSize() -> NSSize
  func encodeRect(rect: NSRect)
  func decodeRect() -> NSRect
}
extension NSCoder {
  func encodePoint(point: NSPoint, forKey key: String)
  func encodeSize(size: NSSize, forKey key: String)
  func encodeRect(rect: NSRect, forKey key: String)
  func decodePointForKey(key: String) -> NSPoint
  func decodeSizeForKey(key: String) -> NSSize
  func decodeRectForKey(key: String) -> NSRect
}
