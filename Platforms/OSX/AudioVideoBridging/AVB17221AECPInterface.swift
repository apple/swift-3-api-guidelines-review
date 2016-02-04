
protocol AVB17221AECPClient {
  @available(OSX 10.8, *)
  func AECPDidReceiveCommand(message: AVB17221AECPMessage, onInterface anInterface: AVB17221AECPInterface) -> Bool
  @available(OSX 10.8, *)
  func AECPDidReceiveResponse(message: AVB17221AECPMessage, onInterface anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (NSError?, AVB17221AECPMessage) -> Void
@available(OSX 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -setCommandHandler:forEntityID: and -setResponseHandler:forControllerEntityID: instead.")
  func setHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -removeCommandHandlerForEntityID: or -removeResponseHandlerForControllerEntityID: instead.")
  func removeHandlerForEntityID(targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setCommandHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeCommandHandlerForEntityID(targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setResponseHandler(handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeResponseHandlerForControllerEntityID(controllerEntityID: UInt64)
  func sendCommand(message: AVB17221AECPMessage, toMACAddress destMAC: AVBMACAddress, completionHandler: AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(message: AVB17221AECPMessage, toMACAddress destMAC: AVBMACAddress) throws
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}
