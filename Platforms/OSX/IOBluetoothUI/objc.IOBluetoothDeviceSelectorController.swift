
class IOBluetoothDeviceSelectorController : NSWindowController {
  class func deviceSelector() -> IOBluetoothDeviceSelectorController!
  func runModal() -> Int32
  func beginSheetModalForWindow(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func setOptions(options: IOBluetoothServiceBrowserControllerOptions)
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setHeader(headerText: String!)
  func getHeader() -> String!
  func setDescriptionText(descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(prompt: String!)
  func getPrompt() -> String!
  func setCancel(prompt: String!)
  func getCancel() -> String!
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
