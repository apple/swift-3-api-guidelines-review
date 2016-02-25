
class DRSetupPanel : NSPanel {
  init!(nibName nibName: String!)
  func run() -> Int
  func beginSetupSheet(for owner: NSWindow!, modalDelegate modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @IBAction func ok(_ sender: AnyObject!)
  @IBAction func cancel(_ sender: AnyObject!)
  @IBAction func eject(_ sender: AnyObject!)
  @IBAction func open(_ sender: AnyObject!)
  @IBAction func close(_ sender: AnyObject!)
  func deviceSelectionChanged(_ device: DRDevice!)
  func mediaStateChanged(_ status: [NSObject : AnyObject]!) -> Bool
  func setupForDisplay()
}
@available(OSX 10.2, *)
let DRSetupPanelDeviceSelectionChangedNotification: String
@available(OSX 10.2, *)
let DRSetupPanelSelectedDeviceKey: String
extension NSObject {
  class func setupPanel(_ aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  func setupPanel(_ aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  class func setupPanel(_ aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  func setupPanel(_ aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  class func setupPanelDeviceSelectionChanged(_ aNotification: NSNotification!)
  func setupPanelDeviceSelectionChanged(_ aNotification: NSNotification!)
  class func setupPanelShouldHandleMediaReservations(_ aPanel: DRSetupPanel!) -> Bool
  func setupPanelShouldHandleMediaReservations(_ aPanel: DRSetupPanel!) -> Bool
  class func setupPanel(_ aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func setupPanel(_ aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
}
