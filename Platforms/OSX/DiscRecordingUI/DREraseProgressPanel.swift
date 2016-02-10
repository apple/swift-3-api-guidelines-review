
@available(OSX 10.2, *)
let DREraseProgressPanelWillBeginNotification: String
@available(OSX 10.2, *)
let DREraseProgressPanelDidFinishNotification: String
class DREraseProgressPanel : NSPanel {
  func beginProgressSheet(forErase erase: DRErase!, modalFor docWindow: NSWindow!)
  func begin(forErase erase: DRErase!)
  func setDescription(description: String!)
  func description() -> String!
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension Object {
  class func eraseProgressPanelWillBegin(aNotification: Notification!)
  func eraseProgressPanelWillBegin(aNotification: Notification!)
  class func eraseProgressPanelDidFinish(aNotification: Notification!)
  func eraseProgressPanelDidFinish(aNotification: Notification!)
  class func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
  func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}
