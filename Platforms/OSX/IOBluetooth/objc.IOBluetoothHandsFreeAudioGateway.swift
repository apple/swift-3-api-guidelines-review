
@available(OSX 10.7, *)
class IOBluetoothHandsFreeAudioGateway : IOBluetoothHandsFree {
  @available(OSX 10.7, *)
  init!(device: IOBluetoothDevice!, delegate inDelegate: AnyObject!)
  @available(OSX 10.7, *)
  func createIndicator(indicatorName: String!, min minValue: Int32, max maxValue: Int32, currentValue: Int32)
  @available(OSX 10.7, *)
  func process(atCommand atCommand: String!)
  @available(OSX 10.7, *)
  func sendOKResponse()
  @available(OSX 10.7, *)
  func sendResponse(response: String!)
  @available(OSX 10.7, *)
  func sendResponse(response: String!, withOK: Bool)
  init()
}
protocol IOBluetoothHandsFreeAudioGatewayDelegate {
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, hangup: Number!)
  @available(OSX 10.7, *)
  optional func handsFree(device: IOBluetoothHandsFreeAudioGateway!, redial: Number!)
}
