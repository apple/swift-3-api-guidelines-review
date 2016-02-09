
protocol AVB17221AECPClient {
  @available(OSX 10.8, *)
  func aecpDidReceiveCommand(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
  @available(OSX 10.8, *)
  func aecpDidReceiveResponse(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (Error?, AVB17221AECPMessage) -> Void
@available(OSX 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -setCommandHandler:forEntityID: and -setResponseHandler:forControllerEntityID: instead.")
  func setHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -removeCommandHandlerForEntityID: or -removeResponseHandlerForControllerEntityID: instead.")
  func removeHandler(forEntityID targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setCommandHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeCommandHandler(forEntityID targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setResponseHandler(handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeResponseHandler(forControllerEntityID controllerEntityID: UInt64)
  func sendCommand(message: AVB17221AECPMessage, to destMAC: AVBMACAddress, completionHandler: AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(message: AVB17221AECPMessage, to destMAC: AVBMACAddress) throws
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}
