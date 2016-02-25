
class IOBluetoothServiceBrowserController : NSWindowController {
  /*not inherited*/ init!(_ inOptions: IOBluetoothServiceBrowserControllerOptions)
  class func withServiceBrowserControllerRef(_ serviceBrowserControllerRef: IOBluetoothServiceBrowserControllerRef!) -> IOBluetoothServiceBrowserController!
  func getRef() -> Unmanaged<IOBluetoothServiceBrowserControllerRef>!
  func setOptions(_ inOptions: IOBluetoothServiceBrowserControllerOptions)
  func runModal() -> Int32
  func beginSheetModal(for sheetWindow: NSWindow!, modalDelegate modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(_ searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(_ allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(_ allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(_ windowTitle: String!)
  func getTitle() -> String!
  func setDescriptionText(_ descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(_ prompt: String!)
  func getPrompt() -> String!
}
