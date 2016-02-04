
@available(iOS 9.0, *)
class NEPacketTunnelFlow : Object {
  @available(iOS 9.0, *)
  func readPacketsWithCompletionHandler(completionHandler: ([Data], [Number]) -> Void)
  @available(iOS 9.0, *)
  func writePackets(packets: [Data], withProtocols protocols: [Number]) -> Bool
  init()
}
