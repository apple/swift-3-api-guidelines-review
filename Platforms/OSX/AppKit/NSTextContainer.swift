
@available(OSX 10.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {
  @available(OSX 10.11, *)
  init(size size: NSSize)
  init(coder coder: NSCoder)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(OSX 10.0, *)
  func replaceLayoutManager(_ newLayoutManager: NSLayoutManager)
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
  func lineFragmentRectForProposedRect(_ proposedRect: NSRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect remainingRect: UnsafeMutablePointer<NSRect>) -> NSRect
  @available(OSX 10.0, *)
  var simpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  @available(OSX 10.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
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
  init(widthTracksTextView widthTracksTextView: UInt16, heightTracksTextView heightTracksTextView: UInt16, observingFrameChanges observingFrameChanges: UInt16, lineBreakMode lineBreakMode: UInt16, oldAPI oldAPI: UInt16, _reserved _reserved: UInt16)
}
enum NSLineSweepDirection : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Down
  case Up
}
enum NSLineMovementDirection : UInt {
  init?(rawValue rawValue: UInt)
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
  func lineFragmentRectForProposedRect(_ proposedRect: NSRect, sweepDirection sweepDirection: NSLineSweepDirection, movementDirection movementDirection: NSLineMovementDirection, remainingRect remainingRect: NSRectPointer) -> NSRect
  @available(OSX, introduced=10.0, deprecated=10.11)
  func containsPoint(_ point: NSPoint) -> Bool
}
