
class IOBluetoothObjectPushUIController : NSWindowController {
  init!(objectPushWithBluetoothDevice inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)
  func runModal()
  func runPanel()
  func beginSheetModalForWindow(_ sheetWindow: NSWindow!, modalDelegate modalDelegate: AnyObject!, didEndSelector didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func stop()
  func setTitle(_ windowTitle: String!)
  func getTitle() -> String!
  func setIconImage(_ image: NSImage!)
  func getDevice() -> IOBluetoothDevice!
  func isTransferInProgress() -> Bool
}
