
class DRBurnSetupPanel : DRSetupPanel {
  func setDefaultButtonTitle(_ title: String!)
  func setCanSelectTestBurn(_ flag: Bool)
  func setCanSelectAppendableMedia(_ flag: Bool)
  func burnObject() -> DRBurn!
  @IBAction func expand(_ sender: AnyObject!)
  @IBAction func burnSpeed(_ sender: AnyObject!)
  @IBAction func appendable(_ sender: AnyObject!)
  @IBAction func completionAction(_ sender: AnyObject!)
  @IBAction func testBurn(_ sender: AnyObject!)
  @IBAction func verifyBurn(_ sender: AnyObject!)
  init!(nibName nibName: String!)
  init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController contentViewController: NSViewController)
  convenience init()
  init?(coder coder: NSCoder)
  convenience init?(windowRef windowRef: UnsafeMutablePointer<Void>)
}
@available(OSX 10.2, *)
let DRBurnSetupPanelDefaultButtonDefaultTitle: String
