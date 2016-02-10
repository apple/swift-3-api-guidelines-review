
class DRSetupPanel : NSPanel {
  init!(nibName: String!)
  func run() -> Int
  func beginSetupSheet(for owner: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @IBAction func ok(sender: AnyObject!)
  @IBAction func cancel(sender: AnyObject!)
  @IBAction func eject(sender: AnyObject!)
  @IBAction func open(sender: AnyObject!)
  @IBAction func close(sender: AnyObject!)
  func deviceSelectionChanged(device: DRDevice!)
  func mediaStateChanged(status: [Object : AnyObject]!) -> Bool
  func setupForDisplay()
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
@available(OSX 10.2, *)
let DRSetupPanelDeviceSelectionChangedNotification: String
@available(OSX 10.2, *)
let DRSetupPanelSelectedDeviceKey: String
extension Object {
  class func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  class func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  class func setupPanelDeviceSelectionChanged(aNotification: Notification!)
  func setupPanelDeviceSelectionChanged(aNotification: Notification!)
  class func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool
  func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool
  class func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
}
