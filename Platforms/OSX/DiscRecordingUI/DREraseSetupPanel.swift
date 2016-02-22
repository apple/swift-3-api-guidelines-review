
class DREraseSetupPanel : DRSetupPanel {
  func eraseObject() -> DRErase!
  @IBAction func eraseType(_ sender: AnyObject!)
  init!(nibName nibName: String!)
  init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController contentViewController: NSViewController)
  convenience init()
  init?(coder coder: NSCoder)
  convenience init?(windowRef windowRef: UnsafeMutablePointer<Void>)
}
