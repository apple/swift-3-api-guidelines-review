
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKSendDataMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Reliable
  case Unreliable
}
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKSessionMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Server
  case Client
  case Peer
}
@available(OSX, introduced=10.8, deprecated=10.10)
enum GKPeerConnectionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StateAvailable
  case StateUnavailable
  case StateConnected
  case StateDisconnected
  case StateConnecting
}
