
class IOBluetoothRFCOMMChannel : IOBluetoothObject, NSPortDelegate {
  class func registerForChannelOpenNotifications(_ object: AnyObject!, selector selector: Selector) -> IOBluetoothUserNotification!
  class func registerForChannelOpenNotifications(_ object: AnyObject!, selector selector: Selector, withChannelID channelID: BluetoothRFCOMMChannelID, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withRFCOMMChannelRef(_ rfcommChannelRef: IOBluetoothRFCOMMChannelRef!) -> Self!
  class func withObjectID(_ objectID: IOBluetoothObjectID) -> Self!
  func getRFCOMMChannelRef() -> Unmanaged<IOBluetoothRFCOMMChannelRef>!
  func closeChannel() -> IOReturn
  func isOpen() -> Bool
  func getMTU() -> BluetoothRFCOMMMTU
  func isTransmissionPaused() -> Bool
  func writeAsync(_ data: UnsafeMutablePointer<Void>, length length: UInt16, refcon refcon: UnsafeMutablePointer<Void>) -> IOReturn
  func writeSync(_ data: UnsafeMutablePointer<Void>, length length: UInt16) -> IOReturn
  func setSerialParameters(_ speed: UInt32, dataBits nBits: UInt8, parity parity: BluetoothRFCOMMParityType, stopBits bitStop: UInt8) -> IOReturn
  func sendRemoteLineStatus(_ lineStatus: BluetoothRFCOMMLineStatus) -> IOReturn
  func setDelegate(_ delegate: AnyObject!) -> IOReturn
  func delegate() -> AnyObject!
  func getChannelID() -> BluetoothRFCOMMChannelID
  func isIncoming() -> Bool
  func getDevice() -> IOBluetoothDevice!
  func getObjectID() -> IOBluetoothObjectID
  func registerForChannelCloseNotification(_ observer: AnyObject!, selector inSelector: Selector) -> IOBluetoothUserNotification!
  func handlePortMessage(_ message: NSPortMessage)
}
protocol IOBluetoothRFCOMMChannelDelegate {
  optional func rfcommChannelData(_ rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  optional func rfcommChannelOpenComplete(_ rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  optional func rfcommChannelClosed(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelControlSignalsChanged(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelFlowControlChanged(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  optional func rfcommChannelWriteComplete(_ rfcommChannel: IOBluetoothRFCOMMChannel!, refcon refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  optional func rfcommChannelQueueSpaceAvailable(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
}
