
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
  case minX
  case minY
  case maxX
  case maxY
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
  static var alignMinXInward: NSAlignmentOptions { get }
  static var alignMinYInward: NSAlignmentOptions { get }
  static var alignMaxXInward: NSAlignmentOptions { get }
  static var alignMaxYInward: NSAlignmentOptions { get }
  static var alignWidthInward: NSAlignmentOptions { get }
  static var alignHeightInward: NSAlignmentOptions { get }
  static var alignMinXOutward: NSAlignmentOptions { get }
  static var alignMinYOutward: NSAlignmentOptions { get }
  static var alignMaxXOutward: NSAlignmentOptions { get }
  static var alignMaxYOutward: NSAlignmentOptions { get }
  static var alignWidthOutward: NSAlignmentOptions { get }
  static var alignHeightOutward: NSAlignmentOptions { get }
  static var alignMinXNearest: NSAlignmentOptions { get }
  static var alignMinYNearest: NSAlignmentOptions { get }
  static var alignMaxXNearest: NSAlignmentOptions { get }
  static var alignMaxYNearest: NSAlignmentOptions { get }
  static var alignWidthNearest: NSAlignmentOptions { get }
  static var alignHeightNearest: NSAlignmentOptions { get }
  static var alignRectFlipped: NSAlignmentOptions { get }
  static var alignAllEdgesInward: NSAlignmentOptions { get }
  static var alignAllEdgesOutward: NSAlignmentOptions { get }
  static var alignAllEdgesNearest: NSAlignmentOptions { get }
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
  func encode(point: NSPoint)
  func decodePoint() -> NSPoint
  func encode(size: NSSize)
  func decodeSize() -> NSSize
  func encode(rect: NSRect)
  func decodeRect() -> NSRect
}
extension NSCoder {
  func encode(point: NSPoint, forKey key: String)
  func encode(size: NSSize, forKey key: String)
  func encode(rect: NSRect, forKey key: String)
  func decodePoint(forKey key: String) -> NSPoint
  func decodeSize(forKey key: String) -> NSSize
  func decodeRect(forKey key: String) -> NSRect
}
