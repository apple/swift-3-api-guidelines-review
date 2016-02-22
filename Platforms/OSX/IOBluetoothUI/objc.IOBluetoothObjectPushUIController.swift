
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWith inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)
  func runModal()
  func runPanel()
  func beginSheetModal(for sheetWindow: NSWindow!, modalDelegate modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func stop()
  func setTitle(_ windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(_ image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
  init(window window: NSWindow?)
  init?(coder coder: NSCoder)
  convenience init(windowNibName windowNibName: String)
  convenience init(windowNibName windowNibName: String, owner owner: AnyObject)
  convenience init(windowNibPath windowNibPath: String, owner owner: AnyObject)
  convenience init()
}
