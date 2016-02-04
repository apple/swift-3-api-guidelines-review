
class NSClipView : NSView {
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var documentRect: Rect { get }
  var documentCursor: NSCursor?
  var documentVisibleRect: Rect { get }
  func viewFrameChanged(notification: Notification)
  func viewBoundsChanged(notification: Notification)
  var copiesOnScroll: Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func scrollTo(newOrigin: Point)
  @available(OSX 10.9, *)
  func constrainBoundsRect(proposedBounds: Rect) -> Rect
  @available(OSX 10.10, *)
  var contentInsets: EdgeInsets
  @available(OSX 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct __cvFlags {
  var onlyUncovered: UInt32
  var reflectScroll: UInt32
  var usedByCell: UInt32
  var scrollClipTo: UInt32
  var noCopyOnScroll: UInt32
  var drawsBackground: UInt32
  var scrollInProgress: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var animateCurrentScroll: UInt32
  var canAnimateScrolls: UInt32
  var nextScrollRelativeToCurrentPosition: UInt32
  var viewBoundsChangedOverridden: UInt32
  var viewFrameChangedOverridden: UInt32
  var documentViewAlignment: UInt32
  var redrawnWhileScrolling: UInt32
  var dontConstrainScroll: UInt32
  var lastAtEdgesState: UInt32
  var showOverlayScrollersForScrollStep: UInt32
  var scrollerKnobFlashSpecifier: UInt32
  var drawsContentShadow: UInt32
  var dontConstrainBoundsChange: UInt32
  var isScrollDueToUserAction: UInt32
  var hasOverlappingViews: UInt32
  var automaticallyCalculateContentSize: UInt32
  init()
  init(onlyUncovered: UInt32, reflectScroll: UInt32, usedByCell: UInt32, scrollClipTo: UInt32, noCopyOnScroll: UInt32, drawsBackground: UInt32, scrollInProgress: UInt32, skipRemoveSuperviewCheck: UInt32, animateCurrentScroll: UInt32, canAnimateScrolls: UInt32, nextScrollRelativeToCurrentPosition: UInt32, viewBoundsChangedOverridden: UInt32, viewFrameChangedOverridden: UInt32, documentViewAlignment: UInt32, redrawnWhileScrolling: UInt32, dontConstrainScroll: UInt32, lastAtEdgesState: UInt32, showOverlayScrollersForScrollStep: UInt32, scrollerKnobFlashSpecifier: UInt32, drawsContentShadow: UInt32, dontConstrainBoundsChange: UInt32, isScrollDueToUserAction: UInt32, hasOverlappingViews: UInt32, automaticallyCalculateContentSize: UInt32)
}
extension NSClipView {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -constrainBoundsRect: instead")
  func constrainScroll(newOrigin: Point) -> Point
}
extension NSView {
  func reflectScrolledClip(aClipView: NSClipView)
  func scrollClip(aClipView: NSClipView, to aPoint: Point)
}
