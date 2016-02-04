
@available(OSX 10.2, *)
let DRBurnProgressPanelWillBeginNotification: String
@available(OSX 10.2, *)
let DRBurnProgressPanelDidFinishNotification: String
class DRBurnProgressPanel : NSPanel {
  func beginProgressSheetFor(burn: DRBurn!, layout: AnyObject!, modalFor docWindow: NSWindow!)
  func beginFor(burn: DRBurn!, layout: AnyObject!)
  func setDescription(description: String!)
  func description() -> String!
  func setVerboseProgressStatus(verbose: Bool)
  func verboseProgressStatus() -> Bool
  @IBAction func stopBurn(sender: AnyObject!)
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension Object {
  class func burnProgressPanelWillBegin(aNotification: Notification!)
  func burnProgressPanelWillBegin(aNotification: Notification!)
  class func burnProgressPanelDidFinish(aNotification: Notification!)
  func burnProgressPanelDidFinish(aNotification: Notification!)
  class func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
  func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
}
