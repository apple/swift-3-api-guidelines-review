
@available(OSX 10.11, *)
let NSSplitViewControllerAutomaticDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewController : NSViewController, NSSplitViewDelegate {
  var splitView: NSSplitView
  var splitViewItems: [NSSplitViewItem]
  func addSplitViewItem(splitViewItem: NSSplitViewItem)
  func insertSplitViewItem(splitViewItem: NSSplitViewItem, at index: Int)
  func removeSplitViewItem(splitViewItem: NSSplitViewItem)
  func splitViewItem(for viewController: NSViewController) -> NSSplitViewItem?
  @available(OSX 10.11, *)
  var minimumThicknessForInlineSidebars: CGFloat
  func viewDidLoad()
  func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAt dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, shouldHideDividerAt dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: Rect, forDrawnRect drawnRect: Rect, ofDividerAt dividerIndex: Int) -> Rect
  func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAt dividerIndex: Int) -> Rect
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: Size)
  @available(OSX 10.6, *)
  func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.10, *)
  func splitViewWillResizeSubviews(notification: Notification)
  @available(OSX 10.10, *)
  func splitViewDidResizeSubviews(notification: Notification)
}
extension NSSplitViewController {
  @available(OSX 10.11, *)
  @IBAction func toggleSidebar(sender: AnyObject?)
}
@available(OSX 10.11, *)
enum NSSplitViewItemBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case sidebar
  case contentList
}
@available(OSX 10.11, *)
enum NSSplitViewItemCollapseBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case preferResizingSplitViewWithFixedSiblings
  case preferResizingSiblingsWithFixedSplitView
  case useConstraints
}
@available(OSX 10.11, *)
let NSSplitViewItemUnspecifiedDimension: CGFloat
@available(OSX 10.10, *)
class NSSplitViewItem : Object, NSAnimatablePropertyContainer, Coding {
  convenience init(viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(sidebarWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  convenience init(contentListWithViewController viewController: NSViewController)
  @available(OSX 10.11, *)
  var behavior: NSSplitViewItemBehavior { get }
  var viewController: NSViewController
  var isCollapsed: Bool
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
  var isSpringLoaded: Bool
  init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimation(forKey key: String) -> AnyObject?
  @available(OSX 10.10, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
