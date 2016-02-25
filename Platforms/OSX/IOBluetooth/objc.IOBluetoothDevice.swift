
var kIOBluetoothDeviceNotificationNameConnected: String { get }
var kIOBluetoothDeviceNotificationNameDisconnected: String { get }
var kIOBluetoothDeviceNameChangedNotification: String { get }
var kIOBluetoothDeviceInquiryInfoChangedNotification: String { get }
var kIOBluetoothDeviceServicesChangedNotification: String { get }
var kIOBluetoothL2CAPChannelMaxAllowedIncomingMTU: String { get }
var kIOBluetoothL2CAPChannelDesiredOutgoingMTU: String { get }
protocol IOBluetoothDeviceAsyncCallbacks {
  func remoteNameRequestComplete(_ device: IOBluetoothDevice!, status status: IOReturn)
  func connectionComplete(_ device: IOBluetoothDevice!, status status: IOReturn)
  func sdpQueryComplete(_ device: IOBluetoothDevice!, status status: IOReturn)
}
class IOBluetoothDevice : IOBluetoothObject, NSCoding, NSSecureCoding {
  class func register(forConnectNotifications observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  func register(forDisconnectNotification observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  convenience init!(address address: UnsafePointer<BluetoothDeviceAddress>)
  convenience init!(addressString address: String!)
  func openL2CAPChannelSync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, delegate channelDelegate: AnyObject!) -> IOReturn
  func sendL2CAPEchoRequest(_ data: UnsafeMutablePointer<Void>, length length: UInt16) -> IOReturn
  func openRFCOMMChannelSync(_ rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  func openRFCOMMChannelAsync(_ rfcommChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothRFCOMMChannel?>, withChannelID channelID: BluetoothRFCOMMChannelID, delegate channelDelegate: AnyObject!) -> IOReturn
  var classOfDevice: BluetoothClassOfDevice { get }
  var serviceClassMajor: BluetoothServiceClassMajor { get }
  var deviceClassMajor: BluetoothDeviceClassMajor { get }
  var deviceClassMinor: BluetoothDeviceClassMinor { get }
  var name: String! { get }
  var nameOrAddress: String! { get }
  var lastNameUpdate: NSDate! { get }
  func getAddress() -> UnsafePointer<BluetoothDeviceAddress>
  var addressString: String! { get }
  func getPageScanRepetitionMode() -> BluetoothPageScanRepetitionMode
  func getPageScanPeriodMode() -> BluetoothPageScanPeriodMode
  func getPageScanMode() -> BluetoothPageScanMode
  func getClockOffset() -> BluetoothClockOffset
  func getLastInquiryUpdate() -> NSDate!
  @available(OSX 10.7, *)
  func rssi() -> BluetoothHCIRSSIValue
  @available(OSX 10.7, *)
  func rawRSSI() -> BluetoothHCIRSSIValue
  func isConnected() -> Bool
  func openConnection() -> IOReturn
  func openConnection(_ target: AnyObject!) -> IOReturn
  func openConnection(_ target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout, authenticationRequired authenticationRequired: Bool) -> IOReturn
  func closeConnection() -> IOReturn
  func remoteNameRequest(_ target: AnyObject!) -> IOReturn
  func remoteNameRequest(_ target: AnyObject!, withPageTimeout pageTimeoutValue: BluetoothHCIPageTimeout) -> IOReturn
  func requestAuthentication() -> IOReturn
  var connectionHandle: BluetoothConnectionHandle { get }
  func isIncoming() -> Bool
  func getLinkType() -> BluetoothLinkType
  func getEncryptionMode() -> BluetoothHCIEncryptionMode
  func performSDPQuery(_ target: AnyObject!) -> IOReturn
  @available(OSX 10.7, *)
  func performSDPQuery(_ target: AnyObject!, uuids uuidArray: [AnyObject]!) -> IOReturn
  var services: [AnyObject]! { get }
  func getLastServicesUpdate() -> NSDate!
  func getServiceRecord(for sdpUUID: IOBluetoothSDPUUID!) -> IOBluetoothSDPServiceRecord!
  class func favoriteDevices() -> [AnyObject]!
  func isFavorite() -> Bool
  func addToFavorites() -> IOReturn
  func removeFromFavorites() -> IOReturn
  class func recentDevices(_ numDevices: UInt) -> [AnyObject]!
  func recentAccessDate() -> NSDate!
  class func pairedDevices() -> [AnyObject]!
  func isPaired() -> Bool
  func setSupervisionTimeout(_ timeout: UInt16) -> IOReturn
  func openL2CAPChannelSync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func openL2CAPChannelAsync(_ newChannel: AutoreleasingUnsafeMutablePointer<IOBluetoothL2CAPChannel?>, withPSM psm: BluetoothL2CAPPSM, withConfiguration channelConfiguration: [NSObject : AnyObject]!, delegate channelDelegate: AnyObject!) -> IOReturn
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
}
