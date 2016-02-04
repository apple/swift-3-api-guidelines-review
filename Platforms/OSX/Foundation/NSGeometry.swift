
typealias Point = CGPoint
typealias PointPointer = UnsafeMutablePointer<Point>
typealias PointArray = UnsafeMutablePointer<Point>
typealias Size = CGSize
typealias SizePointer = UnsafeMutablePointer<Size>
typealias SizeArray = UnsafeMutablePointer<Size>
typealias Rect = CGRect
typealias RectPointer = UnsafeMutablePointer<Rect>
typealias RectArray = UnsafeMutablePointer<Rect>
enum RectEdge : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MinX
  case MinY
  case MaxX
  case MaxY
}

extension RectEdge {
  init(rectEdge: CGRectEdge)
}
struct EdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}
struct AlignmentOptions : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var AlignMinXInward: AlignmentOptions { get }
  static var AlignMinYInward: AlignmentOptions { get }
  static var AlignMaxXInward: AlignmentOptions { get }
  static var AlignMaxYInward: AlignmentOptions { get }
  static var AlignWidthInward: AlignmentOptions { get }
  static var AlignHeightInward: AlignmentOptions { get }
  static var AlignMinXOutward: AlignmentOptions { get }
  static var AlignMinYOutward: AlignmentOptions { get }
  static var AlignMaxXOutward: AlignmentOptions { get }
  static var AlignMaxYOutward: AlignmentOptions { get }
  static var AlignWidthOutward: AlignmentOptions { get }
  static var AlignHeightOutward: AlignmentOptions { get }
  static var AlignMinXNearest: AlignmentOptions { get }
  static var AlignMinYNearest: AlignmentOptions { get }
  static var AlignMaxXNearest: AlignmentOptions { get }
  static var AlignMaxYNearest: AlignmentOptions { get }
  static var AlignWidthNearest: AlignmentOptions { get }
  static var AlignHeightNearest: AlignmentOptions { get }
  static var AlignRectFlipped: AlignmentOptions { get }
  static var AlignAllEdgesInward: AlignmentOptions { get }
  static var AlignAllEdgesOutward: AlignmentOptions { get }
  static var AlignAllEdgesNearest: AlignmentOptions { get }
}
let zeroPoint: Point
let zeroSize: Size
let zeroRect: Rect
@available(OSX 10.10, *)
let edgeInsetsZero: EdgeInsets
func makePoint(x: CGFloat, _ y: CGFloat) -> Point
func makeSize(w: CGFloat, _ h: CGFloat) -> Size
func makeRect(x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat) -> Rect
func maxX(aRect: Rect) -> CGFloat
func maxY(aRect: Rect) -> CGFloat
func midX(aRect: Rect) -> CGFloat
func midY(aRect: Rect) -> CGFloat
func minX(aRect: Rect) -> CGFloat
func minY(aRect: Rect) -> CGFloat
func width(aRect: Rect) -> CGFloat
func height(aRect: Rect) -> CGFloat
func rectFromCGRect(cgrect: CGRect) -> Rect
func rectToCGRect(nsrect: Rect) -> CGRect
func pointFromCGPoint(cgpoint: CGPoint) -> Point
func pointToCGPoint(nspoint: Point) -> CGPoint
func sizeFromCGSize(cgsize: CGSize) -> Size
func sizeToCGSize(nssize: Size) -> CGSize
func edgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> EdgeInsets
func equalPoints(aPoint: Point, _ bPoint: Point) -> Bool
func equalSizes(aSize: Size, _ bSize: Size) -> Bool
func equalRects(aRect: Rect, _ bRect: Rect) -> Bool
func isEmptyRect(aRect: Rect) -> Bool
@available(OSX 10.10, *)
func edgeInsetsEqual(aInsets: EdgeInsets, _ bInsets: EdgeInsets) -> Bool
func insetRect(aRect: Rect, _ dX: CGFloat, _ dY: CGFloat) -> Rect
func integralRect(aRect: Rect) -> Rect
@available(OSX 10.7, *)
func integralRectWithOptions(aRect: Rect, _ opts: AlignmentOptions) -> Rect
func unionRect(aRect: Rect, _ bRect: Rect) -> Rect
func intersectionRect(aRect: Rect, _ bRect: Rect) -> Rect
func offsetRect(aRect: Rect, _ dX: CGFloat, _ dY: CGFloat) -> Rect
func divideRect(inRect: Rect, _ slice: UnsafeMutablePointer<Rect>, _ rem: UnsafeMutablePointer<Rect>, _ amount: CGFloat, _ edge: RectEdge)
func pointInRect(aPoint: Point, _ aRect: Rect) -> Bool
func mouseInRect(aPoint: Point, _ aRect: Rect, _ flipped: Bool) -> Bool
func containsRect(aRect: Rect, _ bRect: Rect) -> Bool
func intersectsRect(aRect: Rect, _ bRect: Rect) -> Bool
func stringFromPoint(aPoint: Point) -> String
func stringFromSize(aSize: Size) -> String
func stringFromRect(aRect: Rect) -> String
func pointFromString(aString: String) -> Point
func sizeFromString(aString: String) -> Size
func rectFromString(aString: String) -> Rect
extension Value {
  /*not inherited*/ init(point: Point)
  /*not inherited*/ init(size: Size)
  /*not inherited*/ init(rect: Rect)
  @available(OSX 10.10, *)
  /*not inherited*/ init(edgeInsets insets: EdgeInsets)
  var pointValue: Point { get }
  var sizeValue: Size { get }
  var rectValue: Rect { get }
  @available(OSX 10.10, *)
  var edgeInsetsValue: EdgeInsets { get }
}
extension Coder {
  func encode(point: Point)
  func decodePoint() -> Point
  func encode(size: Size)
  func decodeSize() -> Size
  func encode(rect: Rect)
  func decodeRect() -> Rect
}
extension Coder {
  func encode(point: Point, forKey key: String)
  func encode(size: Size, forKey key: String)
  func encode(rect: Rect, forKey key: String)
  func decodePointForKey(key: String) -> Point
  func decodeSizeForKey(key: String) -> Size
  func decodeRectForKey(key: String) -> Rect
}
