
@available(OSX 10.2, *)
let DREraseProgressPanelWillBeginNotification: String
@available(OSX 10.2, *)
let DREraseProgressPanelDidFinishNotification: String
class DREraseProgressPanel : NSPanel {
  func beginProgressSheet(for erase: DRErase!, modalFor docWindow: NSWindow!)
  func begin(for erase: DRErase!)
  func setDescription(description: String!)
  func description() -> String!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func eraseProgressPanelWillBegin(aNotification: NSNotification!)
  func eraseProgressPanelWillBegin(aNotification: NSNotification!)
  class func eraseProgressPanelDidFinish(aNotification: NSNotification!)
  func eraseProgressPanelDidFinish(aNotification: NSNotification!)
  class func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
  func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}
