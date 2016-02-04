
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWithBluetoothDevice inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)
  func runModal()
  func runPanel()
  func beginSheetModalForWindow(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func stop()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}