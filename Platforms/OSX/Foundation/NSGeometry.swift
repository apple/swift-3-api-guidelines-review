
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case minX
  case minY
  case maxX
  case maxY
}

extension NSRectEdge {
  init(rectEdge rectEdge: CGRectEdge)
}
struct NSEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top top: CGFloat, left left: CGFloat, bottom bottom: CGFloat, right right: CGFloat)
}
struct NSAlignmentOptions : OptionSetType {
  init(rawValue rawValue: UInt64)
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
func NSMakePoint(_ x: CGFloat, _ y: CGFloat) -> NSPoint
func NSMakeSize(_ w: CGFloat, _ h: CGFloat) -> NSSize
func NSMakeRect(_ x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> NSRect
func NSMaxX(_ aRect: NSRect) -> CGFloat
func NSMaxY(_ aRect: NSRect) -> CGFloat
func NSMidX(_ aRect: NSRect) -> CGFloat
func NSMidY(_ aRect: NSRect) -> CGFloat
func NSMinX(_ aRect: NSRect) -> CGFloat
func NSMinY(_ aRect: NSRect) -> CGFloat
func NSWidth(_ aRect: NSRect) -> CGFloat
func NSHeight(_ aRect: NSRect) -> CGFloat
func NSRectFromCGRect(_ cgrect: CGRect) -> NSRect
func NSRectToCGRect(_ nsrect: NSRect) -> CGRect
func NSPointFromCGPoint(_ cgpoint: CGPoint) -> NSPoint
func NSPointToCGPoint(_ nspoint: NSPoint) -> CGPoint
func NSSizeFromCGSize(_ cgsize: CGSize) -> NSSize
func NSSizeToCGSize(_ nssize: NSSize) -> CGSize
func NSEdgeInsetsMake(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> NSEdgeInsets
func NSEqualPoints(_ aPoint: NSPoint, _ bPoint: NSPoint) -> Bool
func NSEqualSizes(_ aSize: NSSize, _ bSize: NSSize) -> Bool
func NSEqualRects(_ aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIsEmptyRect(_ aRect: NSRect) -> Bool
@available(OSX 10.10, *)
func NSEdgeInsetsEqual(_ aInsets: NSEdgeInsets, _ bInsets: NSEdgeInsets) -> Bool
func NSInsetRect(_ aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSIntegralRect(_ aRect: NSRect) -> NSRect
@available(OSX 10.7, *)
func NSIntegralRectWithOptions(_ aRect: NSRect, _ opts: NSAlignmentOptions) -> NSRect
func NSUnionRect(_ aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSIntersectionRect(_ aRect: NSRect, _ bRect: NSRect) -> NSRect
func NSOffsetRect(_ aRect: NSRect, _ dX: CGFloat, _ dY: CGFloat) -> NSRect
func NSDivideRect(_ inRect: NSRect, _ slice: UnsafeMutablePointer<NSRect>, _ rem: UnsafeMutablePointer<NSRect>, _ amount: CGFloat, _ edge: NSRectEdge)
func NSPointInRect(_ aPoint: NSPoint, _ aRect: NSRect) -> Bool
func NSMouseInRect(_ aPoint: NSPoint, _ aRect: NSRect, _ flipped: Bool) -> Bool
func NSContainsRect(_ aRect: NSRect, _ bRect: NSRect) -> Bool
func NSIntersectsRect(_ aRect: NSRect, _ bRect: NSRect) -> Bool
func NSStringFromPoint(_ aPoint: NSPoint) -> String
func NSStringFromSize(_ aSize: NSSize) -> String
func NSStringFromRect(_ aRect: NSRect) -> String
func NSPointFromString(_ aString: String) -> NSPoint
func NSSizeFromString(_ aString: String) -> NSSize
func NSRectFromString(_ aString: String) -> NSRect
extension NSValue {
  /*not inherited*/ init(point point: NSPoint)
  /*not inherited*/ init(size size: NSSize)
  /*not inherited*/ init(rect rect: NSRect)
  @available(OSX 10.10, *)
  /*not inherited*/ init(edgeInsets insets: NSEdgeInsets)
  var pointValue: NSPoint { get }
  var sizeValue: NSSize { get }
  var rectValue: NSRect { get }
  @available(OSX 10.10, *)
  var edgeInsetsValue: NSEdgeInsets { get }
}
extension NSCoder {
  func encode(_ point: NSPoint)
  func decodePoint() -> NSPoint
  func encode(_ size: NSSize)
  func decodeSize() -> NSSize
  func encode(_ rect: NSRect)
  func decodeRect() -> NSRect
}
extension NSCoder {
  func encode(_ point: NSPoint, forKey key: String)
  func encode(_ size: NSSize, forKey key: String)
  func encode(_ rect: NSRect, forKey key: String)
  func decodePoint(forKey key: String) -> NSPoint
  func decodeSize(forKey key: String) -> NSSize
  func decodeRect(forKey key: String) -> NSRect
}
