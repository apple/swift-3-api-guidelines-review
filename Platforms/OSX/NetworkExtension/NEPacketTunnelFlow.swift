
@available(OSX 10.11, *)
class NEPacketTunnelFlow : NSObject {
  @available(OSX 10.11, *)
  func readPacketsWithCompletionHandler(completionHandler: ([NSData], [NSNumber]) -> Void)
  @available(OSX 10.11, *)
  func writePackets(packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
  init()
}
