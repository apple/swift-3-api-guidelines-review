
@available(OSX 10.11, *)
class NEPacketTunnelFlow : Object {
  @available(OSX 10.11, *)
  func readPackets(withCompletionHandler completionHandler: ([Data], [Number]) -> Void)
  @available(OSX 10.11, *)
  func writePackets(packets: [Data], withProtocols protocols: [Number]) -> Bool
  init()
}
