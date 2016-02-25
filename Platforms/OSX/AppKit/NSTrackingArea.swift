
struct NSTrackingAreaOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var MouseEnteredAndExited: NSTrackingAreaOptions { get }
  static var MouseMoved: NSTrackingAreaOptions { get }
  static var CursorUpdate: NSTrackingAreaOptions { get }
  static var ActiveWhenFirstResponder: NSTrackingAreaOptions { get }
  static var ActiveInKeyWindow: NSTrackingAreaOptions { get }
  static var ActiveInActiveApp: NSTrackingAreaOptions { get }
  static var ActiveAlways: NSTrackingAreaOptions { get }
  static var AssumeInside: NSTrackingAreaOptions { get }
  static var InVisibleRect: NSTrackingAreaOptions { get }
  static var EnabledDuringMouseDrag: NSTrackingAreaOptions { get }
}
@available(OSX 10.5, *)
class NSTrackingArea : NSObject, NSCopying, NSCoding {
  init(rect rect: NSRect, options options: NSTrackingAreaOptions, owner owner: AnyObject?, userInfo userInfo: [NSObject : AnyObject]?)
  var rect: NSRect { get }
  var options: NSTrackingAreaOptions { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(OSX 10.5, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
