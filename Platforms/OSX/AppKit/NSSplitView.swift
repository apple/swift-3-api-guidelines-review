
@available(OSX 10.5, *)
enum NSSplitViewDividerStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Thick
  case Thin
  @available(OSX 10.6, *)
  case PaneSplitter
}
class NSSplitView : NSView {
  var vertical: Bool
  @available(OSX 10.5, *)
  var dividerStyle: NSSplitViewDividerStyle
  @available(OSX 10.5, *)
  var autosaveName: String?
  unowned(unsafe) var delegate: @sil_unmanaged NSSplitViewDelegate?
  func drawDividerInRect(_ rect: NSRect)
  @available(OSX 10.5, *)
  @NSCopying var dividerColor: NSColor { get }
  var dividerThickness: CGFloat { get }
  func adjustSubviews()
  func isSubviewCollapsed(_ subview: NSView) -> Bool
  @available(OSX 10.5, *)
  func minPossiblePositionOfDividerAtIndex(_ dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func maxPossiblePositionOfDividerAtIndex(_ dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func setPosition(_ position: CGFloat, ofDividerAtIndex dividerIndex: Int)
  @available(OSX 10.8, *)
  func holdingPriorityForSubviewAtIndex(_ subviewIndex: Int) -> NSLayoutPriority
  @available(OSX 10.8, *)
  func setHoldingPriority(_ priority: NSLayoutPriority, forSubviewAtIndex subviewIndex: Int)
}
extension NSSplitView {
  @available(OSX 10.11, *)
  var arrangesAllSubviews: Bool
  @available(OSX 10.11, *)
  var arrangedSubviews: [NSView] { get }
  @available(OSX 10.11, *)
  func addArrangedSubview(_ view: NSView)
  @available(OSX 10.11, *)
  func insertArrangedSubview(_ view: NSView, atIndex index: Int)
  @available(OSX 10.11, *)
  func removeArrangedSubview(_ view: NSView)
}
protocol NSSplitViewDelegate : NSObjectProtocol {
  optional func splitView(_ splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(_ splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAtIndex dividerIndex: Int) -> Bool
  optional func splitView(_ splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  optional func splitView(_ splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(_ splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAtIndex dividerIndex: Int) -> NSRect
  @available(OSX 10.5, *)
  optional func splitView(_ splitView: NSSplitView, additionalEffectiveRectOfDividerAtIndex dividerIndex: Int) -> NSRect
  optional func splitViewWillResizeSubviews(_ notification: NSNotification)
  optional func splitViewDidResizeSubviews(_ notification: NSNotification)
}
let NSSplitViewWillResizeSubviewsNotification: String
let NSSplitViewDidResizeSubviewsNotification: String
extension NSSplitView {
}
