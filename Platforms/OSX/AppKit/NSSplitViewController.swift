
@available(OSX 10.11, *)
let NSSplitViewControllerAutomaticDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewController : NSViewController, NSSplitViewDelegate {
  var splitView: NSSplitView
  var splitViewItems: [NSSplitViewItem]
  func addSplitViewItem(_ splitViewItem: NSSplitViewItem)
  func insertSplitViewItem(_ splitViewItem: NSSplitViewItem, atIndex index: Int)
  func removeSplitViewItem(_ splitViewItem: NSSplitViewItem)
  func splitViewItemForViewController(_ viewController: NSViewController) -> NSSplitViewItem?
  @available(OSX 10.11, *)
  var minimumThicknessForInlineSidebars: CGFloat
  func splitView(_ splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  func splitView(_ splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(_ splitView: NSSplitView, shouldHideDividerAtIndex dividerIndex: Int) -> Bool
  func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAtIndex dividerIndex: Int) -> NSRect
  func splitView(_ splitView: NSSplitView, additionalEffectiveRectOfDividerAtIndex dividerIndex: Int) -> NSRect
  @available(OSX 10.10, *)
  func splitView(_ splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(_ splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(_ splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(_ splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  func splitView(_ splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.10, *)
  func splitViewWillResizeSubviews(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func splitViewDidResizeSubviews(_ notification: NSNotification)
}
extension NSSplitViewController {
  @available(OSX 10.11, *)
  @IBAction func toggleSidebar(_ sender: AnyObject?)
}
@available(OSX 10.11, *)
enum NSSplitViewItemBehavior : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Sidebar
  case ContentList
}
@available(OSX 10.11, *)
enum NSSplitViewItemCollapseBehavior : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case PreferResizingSplitViewWithFixedSiblings
  case PreferResizingSiblingsWithFixedSplitView
  case UseConstraints
}
@available(OSX 10.11, *)
let NSSplitViewItemUnspecifiedDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewItem : NSObject, NSAnimatablePropertyContainer, NSCoding {
  convenience init(viewController viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(sidebarWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(contentListWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  var behavior: NSSplitViewItemBehavior { get }
  var viewController: NSViewController
  var collapsed: Bool
  var canCollapse: Bool
  @available(OSX 10.11, *)
  var collapseBehavior: NSSplitViewItemCollapseBehavior
  @available(OSX 10.11, *)
  var minimumThickness: CGFloat
  @available(OSX 10.11, *)
  var maximumThickness: CGFloat
  @available(OSX 10.11, *)
  var preferredThicknessFraction: CGFloat
  var holdingPriority: NSLayoutPriority
  @available(OSX 10.11, *)
  var automaticMaximumThickness: CGFloat
  @available(OSX 10.11, *)
  var springLoaded: Bool
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(_ key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(_ key: String) -> AnyObject?
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
