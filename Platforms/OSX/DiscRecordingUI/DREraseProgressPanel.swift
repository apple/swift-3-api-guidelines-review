
@available(OSX 10.2, *)
let DREraseProgressPanelWillBeginNotification: String
@available(OSX 10.2, *)
let DREraseProgressPanelDidFinishNotification: String
class DREraseProgressPanel : NSPanel {
  func beginProgressSheet(for erase: DRErase!, modalFor docWindow: NSWindow!)
  func begin(for erase: DRErase!)
  func setDescription(_ description: String!)
  func description() -> String!
  init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController contentViewController: NSViewController)
  convenience init()
  init?(coder coder: NSCoder)
  convenience init?(windowRef windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func eraseProgressPanelWillBegin(_ aNotification: NSNotification!)
  func eraseProgressPanelWillBegin(_ aNotification: NSNotification!)
  class func eraseProgressPanelDidFinish(_ aNotification: NSNotification!)
  func eraseProgressPanelDidFinish(_ aNotification: NSNotification!)
  class func eraseProgressPanel(_ theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
  func eraseProgressPanel(_ theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}
