
struct NSTrackingAreaOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var mouseEnteredAndExited: NSTrackingAreaOptions { get }
  static var mouseMoved: NSTrackingAreaOptions { get }
  static var cursorUpdate: NSTrackingAreaOptions { get }
  static var activeWhenFirstResponder: NSTrackingAreaOptions { get }
  static var activeInKeyWindow: NSTrackingAreaOptions { get }
  static var activeInActiveApp: NSTrackingAreaOptions { get }
  static var activeAlways: NSTrackingAreaOptions { get }
  static var assumeInside: NSTrackingAreaOptions { get }
  static var inVisibleRect: NSTrackingAreaOptions { get }
  static var enabledDuringMouseDrag: NSTrackingAreaOptions { get }
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
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
