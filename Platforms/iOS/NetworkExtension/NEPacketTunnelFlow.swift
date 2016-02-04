
@available(iOS 9.0, *)
class NEPacketTunnelFlow : NSObject {
  @available(iOS 9.0, *)
  func readPacketsWithCompletionHandler(completionHandler: ([NSData], [NSNumber]) -> Void)
  @available(iOS 9.0, *)
  func writePackets(packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
  init()
}
