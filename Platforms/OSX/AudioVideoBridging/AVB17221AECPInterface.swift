
protocol AVB17221AECPClient {
  @available(OSX 10.8, *)
  func AECPDidReceiveCommand(_ message: AVB17221AECPMessage, onInterface anInterface: AVB17221AECPInterface) -> Bool
  @available(OSX 10.8, *)
  func AECPDidReceiveResponse(_ message: AVB17221AECPMessage, onInterface anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (NSError?, AVB17221AECPMessage) -> Void
@available(OSX 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -setCommandHandler:forEntityID: and -setResponseHandler:forControllerEntityID: instead.")
  func setHandler(_ handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -removeCommandHandlerForEntityID: or -removeResponseHandlerForControllerEntityID: instead.")
  func removeHandlerForEntityID(_ targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setCommandHandler(_ handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeCommandHandlerForEntityID(_ targetEntityID: UInt64)
  @available(OSX 10.11, *)
  func setResponseHandler(_ handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  @available(OSX 10.11, *)
  func removeResponseHandlerForControllerEntityID(_ controllerEntityID: UInt64)
  func sendCommand(_ message: AVB17221AECPMessage, toMACAddress destMAC: AVBMACAddress, completionHandler completionHandler: AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(_ message: AVB17221AECPMessage, toMACAddress destMAC: AVBMACAddress) throws
}
