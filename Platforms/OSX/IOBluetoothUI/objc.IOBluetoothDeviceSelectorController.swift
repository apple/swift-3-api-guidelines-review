
class IOBluetoothDeviceSelectorController : NSWindowController {
  class func deviceSelector() -> IOBluetoothDeviceSelectorController!
  func runModal() -> Int32
  func beginSheetModal(for sheetWindow: NSWindow!, modalDelegate modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func setOptions(_ options: IOBluetoothServiceBrowserControllerOptions)
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(_ searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(_ allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(_ allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(_ windowTitle: String!)
  func getTitle() -> String!
  func setHeader(_ headerText: String!)
  func getHeader() -> String!
  func setDescriptionText(_ descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(_ prompt: String!)
  func getPrompt() -> String!
  func setCancel(_ prompt: String!)
  func getCancel() -> String!
}
