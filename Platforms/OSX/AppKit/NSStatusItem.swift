
class NSStatusItem : Object {
  unowned(unsafe) var statusBar: @sil_unmanaged NSStatusBar { get }
  var length: CGFloat
  var menu: NSMenu?
  @available(OSX 10.10, *)
  var button: NSStatusBarButton? { get }
  init()
}
extension NSStatusItem {
  var action: Selector
  var doubleAction: Selector
  weak var target: @sil_weak AnyObject?
  var title: String?
  @NSCopying var attributedTitle: AttributedString?
  var image: NSImage?
  var alternateImage: NSImage?
  var isEnabled: Bool
  var highlightMode: Bool
  var toolTip: String?
  func sendActionOn(mask: Int) -> Int
  var view: NSView?
  func drawStatusBarBackgroundIn(rect: Rect, withHighlight highlight: Bool)
  func popUpMenu(menu: NSMenu)
}
