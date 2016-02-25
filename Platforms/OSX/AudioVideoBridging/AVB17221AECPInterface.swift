
protocol AVB17221AECPClient {
  @available(OSX 10.8, *)
  func aecpDidReceiveCommand(_ message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
  @available(OSX 10.8, *)
  func aecpDidReceiveResponse(_ message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (NSError?, AVB17221AECPMessage) -> Void
@available(OSX 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -setCommandHandler:forEntityID: and -setResponseHandler:forControllerEntityID: instead.")
  func setHandler(_ handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -removeCommandHandlerForEntityID: or -removeResponseHandlerForControllerEntityID: instead.")
  func removeHandler(forEntityID targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setCommandHandler(_ handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeCommandHandler(forEntityID targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setResponseHandler(_ handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeResponseHandler(forControllerEntityID controllerEntityID: UInt64)
  func sendCommand(_ message: AVB17221AECPMessage, to destMAC: AVBMACAddress, completionHandler completionHandler: AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(_ message: AVB17221AECPMessage, to destMAC: AVBMACAddress) throws
}
