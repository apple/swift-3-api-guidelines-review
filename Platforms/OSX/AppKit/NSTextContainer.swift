
@available(OSX 10.0, *)
class NSTextContainer : Object, Coding, NSTextLayoutOrientationProvider {
  @available(OSX 10.11, *)
  init(size: Size)
  init(coder: Coder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(OSX 10.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
  @available(OSX 10.11, *)
  var size: Size
  @available(OSX 10.11, *)
  var exclusionPaths: [NSBezierPath]
  @available(OSX 10.11, *)
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int
  @available(OSX 10.11, *)
  func lineFragmentRectForProposedRect(proposedRect: Rect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<Rect>) -> Rect
  @available(OSX 10.0, *)
  var isSimpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  convenience init()
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
struct __tcFlags {
  var widthTracksTextView: UInt16
  var heightTracksTextView: UInt16
  var observingFrameChanges: UInt16
  var lineBreakMode: UInt16
  var oldAPI: UInt16
  var _reserved: UInt16
  init()
  init(widthTracksTextView: UInt16, heightTracksTextView: UInt16, observingFrameChanges: UInt16, lineBreakMode: UInt16, oldAPI: UInt16, _reserved: UInt16)
}
enum NSLineSweepDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Down
  case Up
}
enum NSLineMovementDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DoesntMove
  case MovesLeft
  case MovesRight
  case MovesDown
  case MovesUp
}
extension NSTextContainer {
  convenience init(containerSize aContainerSize: Size)
  var containerSize: Size
  func lineFragmentRectForProposedRect(proposedRect: Rect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remaining remainingRect: RectPointer) -> Rect
  @available(OSX, introduced=10.0, deprecated=10.11)
  func contains(point: Point) -> Bool
}
