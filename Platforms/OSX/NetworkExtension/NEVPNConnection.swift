
@available(OSX 10.10, *)
enum NEVPNStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Disconnected
  case Connecting
  case Connected
  case Reasserting
  case Disconnecting
}
@available(OSX 10.10, *)
let NEVPNStatusDidChangeNotification: String
@available(OSX 10.11, *)
let NEVPNConnectionStartOptionUsername: String
@available(OSX 10.11, *)
let NEVPNConnectionStartOptionPassword: String
@available(OSX 10.10, *)
class NEVPNConnection : Object {
  @available(OSX 10.10, *)
  func startVPNTunnel() throws
  @available(OSX 10.11, *)
  func startVPNTunnel(options options: [String : Object]? = [:]) throws
  @available(OSX 10.10, *)
  func stopVPNTunnel()
  @available(OSX 10.10, *)
  var status: NEVPNStatus { get }
  @available(OSX 10.11, *)
  var connectedDate: Date? { get }
  init()
}
