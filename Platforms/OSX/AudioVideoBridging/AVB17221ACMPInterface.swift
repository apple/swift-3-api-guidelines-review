
typealias AVB17221ACMPInterfaceCompletion = (NSError?, AVB17221ACMPMessage) -> Void
protocol AVB17221ACMPClient {
  @available(OSX 10.8, *)
  func ACMPDidReceiveCommand(_ message: AVB17221ACMPMessage, onInterface anInterface: AVB17221ACMPInterface) -> Bool
  @available(OSX 10.8, *)
  func ACMPDidReceiveResponse(_ message: AVB17221ACMPMessage, onInterface anInterface: AVB17221ACMPInterface) -> Bool
}
@available(OSX 10.8, *)
class AVB17221ACMPInterface : AVB1722ControlInterface {
  @NSCopying var multicastDestinationAddress: AVBMACAddress { get }
  /*not inherited*/ init(interfaceNamed anInterfaceName: String)
  @available(OSX 10.9, *)
  func setHandler(_ handler: AVB17221ACMPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(OSX 10.9, *)
  func removeHandlerForEntityID(_ targetEntityID: UInt64)
  func sendACMPResponseMessage(_ message: AVB17221ACMPMessage) throws
  func sendACMPCommandMessage(_ message: AVB17221ACMPMessage, completionHandler completionHandler: AVB17221ACMPInterfaceCompletion) -> Bool
}
