
class IOBluetoothOBEXSession : OBEXSession, IOBluetoothRFCOMMChannelDelegate {
  class func withSDPServiceRecord(inSDPServiceRecord: IOBluetoothSDPServiceRecord!) -> Self!
  class func withDevice(inDevice: IOBluetoothDevice!, channelID inRFCOMMChannelID: BluetoothRFCOMMChannelID) -> Self!
  class func withIncomingRFCOMMChannel(inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> Self!
  init!(sdpServiceRecord inSDPServiceRecord: IOBluetoothSDPServiceRecord!)
  init!(device inDevice: IOBluetoothDevice!, channelID inChannelID: BluetoothRFCOMMChannelID)
  init!(incomingRFCOMMChannel inChannel: IOBluetoothRFCOMMChannel!, eventSelector inEventSelector: Selector, selectorTarget inEventSelectorTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  func getRFCOMMChannel() -> IOBluetoothRFCOMMChannel!
  func getDevice() -> IOBluetoothDevice!
  func sendBufferTroughChannel() -> IOReturn
  func restartTransmission()
  func isSessionTargetAMac() -> Bool
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
  func sendData(toTransport inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
  func setOpenTransportConnectionAsyncSelector(inSelector: Selector, target inSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func setOBEXSessionOpenConnectionCallback(inCallback: IOBluetoothOBEXSessionOpenConnectionCallback!, refCon inUserRefCon: UnsafeMutablePointer<Void>)
  init()
  func rfcommChannelData(rfcommChannel: IOBluetoothRFCOMMChannel!, data dataPointer: UnsafeMutablePointer<Void>, length dataLength: Int)
  func rfcommChannelOpenComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, status error: IOReturn)
  func rfcommChannelClosed(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelControlSignalsChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelFlowControlChanged(rfcommChannel: IOBluetoothRFCOMMChannel!)
  func rfcommChannelWriteComplete(rfcommChannel: IOBluetoothRFCOMMChannel!, refcon: UnsafeMutablePointer<Void>, status error: IOReturn)
  func rfcommChannelQueueSpaceAvailable(rfcommChannel: IOBluetoothRFCOMMChannel!)
}
