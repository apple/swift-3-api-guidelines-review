
struct NSTrackingAreaOptions : OptionSetType {
  init(rawValue: UInt)
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
class NSTrackingArea : Object, Copying, Coding {
  init(rect: Rect, options: NSTrackingAreaOptions = [], owner: AnyObject?, userInfo: [Object : AnyObject]? = [:])
  var rect: Rect { get }
  var options: NSTrackingAreaOptions { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject? { get }
  var userInfo: [Object : AnyObject]? { get }
  init()
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
