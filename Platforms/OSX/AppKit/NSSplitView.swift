
@available(OSX 10.5, *)
enum NSSplitViewDividerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thick
  case thin
  @available(OSX 10.6, *)
  case paneSplitter
}
class NSSplitView : NSView {
  var isVertical: Bool
  @available(OSX 10.5, *)
  var dividerStyle: NSSplitViewDividerStyle
  @available(OSX 10.5, *)
  var autosaveName: String?
  unowned(unsafe) var delegate: @sil_unmanaged NSSplitViewDelegate?
  func drawDivider(in rect: NSRect)
  @available(OSX 10.5, *)
  @NSCopying var dividerColor: NSColor { get }
  var dividerThickness: CGFloat { get }
  func adjustSubviews()
  func isSubviewCollapsed(subview: NSView) -> Bool
  @available(OSX 10.5, *)
  func minPossiblePositionOfDivider(at dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func maxPossiblePositionOfDivider(at dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func setPosition(position: CGFloat, ofDividerAt dividerIndex: Int)
  @available(OSX 10.8, *)
  func holdingPriorityForSubview(at subviewIndex: Int) -> NSLayoutPriority
  @available(OSX 10.8, *)
  func setHoldingPriority(priority: NSLayoutPriority, forSubviewAt subviewIndex: Int)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSSplitView {
  @available(OSX 10.11, *)
  var arrangesAllSubviews: Bool
  @available(OSX 10.11, *)
  var arrangedSubviews: [NSView] { get }
  @available(OSX 10.11, *)
  func addArrangedSubview(view: NSView)
  @available(OSX 10.11, *)
  func insertArrangedSubview(view: NSView, at index: Int)
  @available(OSX 10.11, *)
  func removeArrangedSubview(view: NSView)
}
protocol NSSplitViewDelegate : NSObjectProtocol {
  optional func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAt dividerIndex: Int) -> Bool
  optional func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  optional func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, shouldHideDividerAt dividerIndex: Int) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAt dividerIndex: Int) -> NSRect
  optional func splitViewWillResizeSubviews(notification: NSNotification)
  optional func splitViewDidResizeSubviews(notification: NSNotification)
}
let NSSplitViewWillResizeSubviewsNotification: String
let NSSplitViewDidResizeSubviewsNotification: String
extension NSSplitView {
}
