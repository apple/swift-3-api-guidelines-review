
@available(OSX 10.11, *)
class NEPacketTunnelFlow : NSObject {
  @available(OSX 10.11, *)
  func readPacketsWithCompletionHandler(_ completionHandler: ([NSData], [NSNumber]) -> Void)
  @available(OSX 10.11, *)
  func writePackets(_ packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
}
