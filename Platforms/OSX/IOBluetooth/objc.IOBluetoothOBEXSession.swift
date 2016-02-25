
class IOBluetoothOBEXSession : OBEXSession, IOBluetoothRFCOMMChannelDelegate {
  class func withSDPServiceRecord(_ inSDPServiceRecord: IOBluetoothSDPServiceRecord!) -> Self!
  class func withDevice(_ inDevice: IOBluetoothDevice!, channelID inRFCOMMChannelID: BluetoothRFCOMMChannelID) -> Self!
  class func withIncomingRFCOMMChannel(_ inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> Self!
  init!(sdpServiceRecord inSDPServiceRecord: IOBluetoothSDPServiceRecord!)
  init!(device inDevice: IOBluetoothDevice!, channelID inChannelID: BluetoothRFCOMMChannelID)
  init!(incomingRFCOMMChannel inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  func getRFCOMMChannel() -> IOBluetoothRFCOMMChannel!
  func getDevice() -> IOBluetoothDevice!
  func sendBufferTroughChannel() -> IOReturn
  func restartTransmission()
  func isSessionTargetAMac() -> Bool
  func setOpenTransportConnectionAsyncSelector(_ inSelector: Selector, target inSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func setOBEXSessionOpenConnectionCallback(_ inCallback: IOBluetoothOBEXSessionOpenConnectionCallback!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  func rfcommChannelData(_ rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  func rfcommChannelOpenComplete(_ rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  func rfcommChannelClosed(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelControlSignalsChanged(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelFlowControlChanged(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelWriteComplete(_ rfcommChannel: IOBluetoothRFCOMMChannel!, refcon refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  func rfcommChannelQueueSpaceAvailable(_ rfcommChannel: IOBluetoothRFCOMMChannel!)
}
