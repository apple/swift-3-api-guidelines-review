
class NSStatusItem : NSObject {
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
  @NSCopying var attributedTitle: NSAttributedString?
  var image: NSImage?
  var alternateImage: NSImage?
  var enabled: Bool
  var highlightMode: Bool
  var toolTip: String?
  func sendActionOn(mask: Int) -> Int
  var view: NSView?
  func drawStatusBarBackgroundInRect(rect: NSRect, withHighlight highlight: Bool)
  func popUpStatusItemMenu(menu: NSMenu)
}
