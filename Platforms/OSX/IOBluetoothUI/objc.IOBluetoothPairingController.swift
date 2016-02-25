
class IOBluetoothPairingController : NSWindowController {
  func runModal() -> Int32
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
  func setDescriptionText(_ descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(_ prompt: String!)
  func getPrompt() -> String!
}
