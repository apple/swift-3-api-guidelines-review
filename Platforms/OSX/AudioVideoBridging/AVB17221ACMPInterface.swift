
typealias AVB17221ACMPInterfaceCompletion = (NSError?, AVB17221ACMPMessage) -> Void
protocol AVB17221ACMPClient {
  @available(OSX 10.8, *)
  func ACMPDidReceiveCommand(message: AVB17221ACMPMessage, onInterface anInterface: AVB17221ACMPInterface) -> Bool
  @available(OSX 10.8, *)
  func ACMPDidReceiveResponse(message: AVB17221ACMPMessage, onInterface anInterface: AVB17221ACMPInterface) -> Bool
}
@available(OSX 10.8, *)
class AVB17221ACMPInterface : AVB1722ControlInterface {
  @NSCopying var multicastDestinationAddress: AVBMACAddress { get }
  /*not inherited*/ init(interfaceNamed anInterfaceName: String)
  @available(OSX 10.9, *)
  func setHandler(handler: AVB17221ACMPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.9, *)
  func removeHandlerForEntityID(targetEntityID: UInt64)
  func sendACMPResponseMessage(message: AVB17221ACMPMessage) throws
  func sendACMPCommandMessage(message: AVB17221ACMPMessage, completionHandler: AVB17221ACMPInterfaceCompletion) -> Bool
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}
