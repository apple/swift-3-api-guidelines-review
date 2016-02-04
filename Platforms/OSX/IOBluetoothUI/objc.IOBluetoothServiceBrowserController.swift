
class IOBluetoothServiceBrowserController : NSWindowController {
  /*not inherited*/ init!(_ inOptions: IOBluetoothServiceBrowserControllerOptions)
  class func withServiceBrowserControllerRef(serviceBrowserControllerRef: IOBluetoothServiceBrowserControllerRef!) -> IOBluetoothServiceBrowserController!
  func getServiceBrowserControllerRef() -> Unmanaged<IOBluetoothServiceBrowserControllerRef>!
  func setOptions(inOptions: IOBluetoothServiceBrowserControllerOptions)
  func runModal() -> Int32
  func beginSheetModalForWindow(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn
  func getResults() -> [AnyObject]!
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)
  func clearAllowedUUIDs()
  func setTitle(windowTitle: String!)
  func getTitle() -> String!
  func setDescriptionText(descriptionText: String!)
  func getDescriptionText() -> String!
  func setPrompt(prompt: String!)
  func getPrompt() -> String!
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
