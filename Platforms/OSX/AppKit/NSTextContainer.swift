
@available(OSX 10.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  @available(OSX 10.11, *)
  init(size: NSSize)
  init(coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(OSX 10.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)
  @available(OSX 10.11, *)
  var size: NSSize
  @available(OSX 10.11, *)
  var exclusionPaths: [NSBezierPath]
  @available(OSX 10.11, *)
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int
  @available(OSX 10.11, *)
  func lineFragmentRect(forProposedRect proposedRect: NSRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<NSRect>) -> NSRect
  @available(OSX 10.0, *)
  var isSimpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  convenience init()
  @available(OSX 10.0, *)
  func encode(with aCoder: NSCoder)
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
  case left
  case right
  case down
  case up
}
enum NSLineMovementDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case doesntMove
  case movesLeft
  case movesRight
  case movesDown
  case movesUp
}
extension NSTextContainer {
  convenience init(containerSize aContainerSize: NSSize)
  var containerSize: NSSize
  func lineFragmentRect(forProposedRect proposedRect: NSRect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remaining remainingRect: NSRectPointer) -> NSRect
  @available(OSX, introduced=10.0, deprecated=10.11)
  func contains(point: NSPoint) -> Bool
}
