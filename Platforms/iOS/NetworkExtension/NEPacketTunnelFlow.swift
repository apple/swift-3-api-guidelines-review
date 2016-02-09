
@available(iOS 9.0, *)
class NEPacketTunnelFlow : Object {
  @available(iOS 9.0, *)
  func readPackets(withCompletionHandler completionHandler: ([Data], [Number]) -> Void)
  @available(iOS 9.0, *)
  func writePackets(packets: [Data], withProtocols protocols: [Number]) -> Bool
  init()
}
