
var kIOBluetoothDeviceNotificationNameConnected: String { get }
var kIOBluetoothDeviceNotificationNameDisconnected: String { get }
var kIOBluetoothDeviceNameChangedNotification: String { get }
var kIOBluetoothDeviceInquiryInfoChangedNotification: String { get }
var kIOBluetoothDeviceServicesChangedNotification: String { get }
var kIOBluetoothL2CAPChannelMaxAllowedIncomingMTU: String { get }
var kIOBluetoothL2CAPChannelDesiredOutgoingMTU: String { get }
protocol IOBluetoothDeviceAsyncCallbacks {
  func remoteNameRequestComplete(device: IOBluetoothDevice!, status: IOReturn)
  func connectionComplete(device: IOBluetoothDevice!, status: IOReturn)
  func sdpQueryComplete(device: IOBluetoothDevice!, status: IOReturn)
}
class IOBluetoothDevice : IOBluetoothObject, Coding, SecureCoding {
  class func register(forConnectNotifications observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  func register(forDisconnectNotification observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  convenience init!(address: UnsafePointer<BluetoothDeviceAddress>)
  convenience init!(addressString address: String!)
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func sendL2CAPEchoRequest(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func openRFCOMMChannelSync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  func openRFCOMMChannelAsync(rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  var classOfDevice: BluetoothClassOfDevice { get }
  var serviceClassMajor: BluetoothServiceClassMajor { get }
  var deviceClassMajor: BluetoothDeviceClassMajor { get }
  var deviceClassMinor: BluetoothDeviceClassMinor { get }
  var name: String! { get }
  var nameOrAddress: String! { get }
  var lastNameUpdate: Date! { get }
  func getAddress() -> UnsafePointer<BluetoothDeviceAddress>
  var addressString: String! { get }
  func getPageScanRepetitionMode() -> BluetoothPageScanRepetitionMode
  func getPageScanPeriodMode() -> BluetoothPageScanPeriodMode
  func getPageScanMode() -> BluetoothPageScanMode
  func getClockOffset() -> BluetoothClockOffset
  func getLastInquiryUpdate() -> Date!
  @available(OSX 10.7, *)
  func rssi() -> BluetoothHCIRSSIValue
  @available(OSX 10.7, *)
  func rawRSSI() -> BluetoothHCIRSSIValue
  func isConnected() -> Bool
  func openConnection() -> IOReturn
  func openConnection(target: AnyObject!) -> IOReturn
  func openConnection(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout, authenticationRequired: Bool) -> IOReturn
  func closeConnection() -> IOReturn
  func remoteNameRequest(target: AnyObject!) -> IOReturn
  func remoteNameRequest(target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout) -> IOReturn
  func requestAuthentication() -> IOReturn
  var connectionHandle: BluetoothConnectionHandle { get }
  func isIncoming() -> Bool
  func getLinkType() -> BluetoothLinkType
  func getEncryptionMode() -> BluetoothHCIEncryptionMode
  func performSDPQuery(target: AnyObject!) -> IOReturn
  @available(OSX 10.7, *)
  func performSDPQuery(target: AnyObject!, uuids uuidArray: [AnyObject]!) -> IOReturn
  var services: [AnyObject]! { get }
  func getLastServicesUpdate() -> Date!
  func getServiceRecord(for sdpUUID: IOBluetoothSDPUUID!) -> IOBluetoothSDPServiceRecord!
  class func favoriteDevices() -> [AnyObject]!
  func isFavorite() -> Bool
  func addToFavorites() -> IOReturn
  func removeFromFavorites() -> IOReturn
  class func recentDevices(numDevices: UInt) -> [AnyObject]!
  func recentAccessDate() -> Date!
  class func pairedDevices() -> [AnyObject]!
  func isPaired() -> Bool
  func setSupervisionTimeout(timeout: UInt16) -> IOReturn
  func openL2CAPChannelSync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [Object : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [Object : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func awakeAfter(using coder: Coder!) -> AnyObject!
  init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  class func supportsSecureCoding() -> Bool
}
