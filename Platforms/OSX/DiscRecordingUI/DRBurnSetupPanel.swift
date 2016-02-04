
class DRBurnSetupPanel : DRSetupPanel {
  func setDefaultButtonTitle(title: String!)
  func setCanSelectTestBurn(flag: Bool)
  func setCanSelectAppendableMedia(flag: Bool)
  func burnObject() -> DRBurn!
  @IBAction func expand(sender: AnyObject!)
  @IBAction func burnSpeed(sender: AnyObject!)
  @IBAction func appendable(sender: AnyObject!)
  @IBAction func completionAction(sender: AnyObject!)
  @IBAction func testBurn(sender: AnyObject!)
  @IBAction func verifyBurn(sender: AnyObject!)
  init!(nibName: String!)
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
@available(OSX 10.2, *)
let DRBurnSetupPanelDefaultButtonDefaultTitle: String
