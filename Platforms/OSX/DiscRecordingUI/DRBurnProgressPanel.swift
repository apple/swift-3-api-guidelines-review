
@available(OSX 10.2, *)
let DRBurnProgressPanelWillBeginNotification: String
@available(OSX 10.2, *)
let DRBurnProgressPanelDidFinishNotification: String
class DRBurnProgressPanel : NSPanel {
  func beginProgressSheet(for burn: DRBurn!, layout: AnyObject!, modalFor docWindow: NSWindow!)
  func begin(for burn: DRBurn!, layout: AnyObject!)
  func setDescription(description: String!)
  func description() -> String!
  func setVerboseProgressStatus(verbose: Bool)
  func verboseProgressStatus() -> Bool
  @IBAction func stopBurn(sender: AnyObject!)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func burnProgressPanelWillBegin(aNotification: NSNotification!)
  func burnProgressPanelWillBegin(aNotification: NSNotification!)
  class func burnProgressPanelDidFinish(aNotification: NSNotification!)
  func burnProgressPanelDidFinish(aNotification: NSNotification!)
  class func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
  func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
}
