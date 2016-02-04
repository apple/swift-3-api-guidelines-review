
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
  func lineFragmentRectForProposedRect(proposedRect: NSRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<NSRect>) -> NSRect
  @available(OSX 10.0, *)
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  convenience init()
  @available(OSX 10.0, *)
  func encodeWithCoder(aCoder: NSCoder)
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
  convenience init(containerSize aContainerSize: NSSize)
  var containerSize: NSSize
  func lineFragmentRectForProposedRect(proposedRect: NSRect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remainingRect: NSRectPointer) -> NSRect
  @available(OSX, introduced=10.0, deprecated=10.11)
  func containsPoint(point: NSPoint) -> Bool
}
