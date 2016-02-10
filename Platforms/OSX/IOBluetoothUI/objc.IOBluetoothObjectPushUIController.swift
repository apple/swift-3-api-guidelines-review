
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWith inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)
  func runModal()
  func runPanel()
  func beginSheetModal(forWindow sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func stop()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
