
class IOBluetoothRFCOMMChannel : IOBluetoothObject, NSPortDelegate {
  class func register(forChannelOpenNotifications object: AnyObject!, selector: Selector) -> IOBluetoothUserNotification!
  class func register(forChannelOpenNotifications object: AnyObject!, selector: Selector, withChannelID channelID: BluetoothRFCOMMChannelID, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withRFCOMMChannelRef(rfcommChannelRef: IOBluetoothRFCOMMChannelRef!) -> Self!
  class func withObjectID(objectID: IOBluetoothObjectID) -> Self!
  func getRef() -> Unmanaged<IOBluetoothRFCOMMChannelRef>!
  func close() -> IOReturn
  func isOpen() -> Bool
  func getMTU() -> BluetoothRFCOMMMTU
  func isTransmissionPaused() -> Bool
  func writeAsync(data: UnsafeMutablePointer<Void>, length: UInt16, refcon: UnsafeMutablePointer<Void>) -> IOReturn
  func writeSync(data: UnsafeMutablePointer<Void>, length: UInt16) -> IOReturn
  func setSerialParameters(speed: UInt32, dataBits nBits: UInt8, parity: BluetoothRFCOMMParityType, stopBits bitStop: UInt8) -> IOReturn
  func sendRemoteLineStatus(lineStatus: BluetoothRFCOMMLineStatus) -> IOReturn
  func setDelegate(delegate: AnyObject!) -> IOReturn
  func delegate() -> AnyObject!
  func getID() -> BluetoothRFCOMMChannelID
  func isIncoming() -> Bool
  func getDevice() -> IOBluetoothDevice!
  func getObjectID() -> IOBluetoothObjectID
  func register(forChannelCloseNotification observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  init()
  func handle(message: NSPortMessage)
}
protocol IOBluetoothRFCOMMChannelDelegate {
  optional func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  optional func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}
