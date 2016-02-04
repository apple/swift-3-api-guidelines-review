
@available(iOS 4.2, *)
let MIDINetworkBonjourServiceType: String
@available(iOS 4.2, *)
let MIDINetworkNotificationContactsDidChange: String
@available(iOS 4.2, *)
let MIDINetworkNotificationSessionDidChange: String
enum MIDINetworkConnectionPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoOne
  case HostsInContactList
  case Anyone
}
@available(iOS 4.2, *)
class MIDINetworkHost : Object {
  convenience init(name: String, address: String, port: Int)
  convenience init(name: String, netService: NetService)
  convenience init(name: String, netServiceName: String, netServiceDomain: String)
  func hasSameAddressAs(other: MIDINetworkHost) -> Bool
  var name: String { get }
  var address: String { get }
  var port: Int { get }
  var netServiceName: String? { get }
  var netServiceDomain: String? { get }
  init()
}
@available(iOS 4.2, *)
class MIDINetworkConnection : Object {
  convenience init(host: MIDINetworkHost)
  var host: MIDINetworkHost { get }
  init()
}
@available(iOS 4.2, *)
class MIDINetworkSession : Object {
  class func defaultSession() -> MIDINetworkSession
  var isEnabled: Bool
  var networkPort: Int { get }
  var networkName: String { get }
  var localName: String { get }
  var connectionPolicy: MIDINetworkConnectionPolicy
  func contacts() -> Set<MIDINetworkHost>
  func addContact(contact: MIDINetworkHost) -> Bool
  func removeContact(contact: MIDINetworkHost) -> Bool
  func connections() -> Set<MIDINetworkConnection>
  func addConnection(connection: MIDINetworkConnection) -> Bool
  func removeConnection(connection: MIDINetworkConnection) -> Bool
  func sourceEndpoint() -> MIDIEndpointRef
  func destinationEndpoint() -> MIDIEndpointRef
  init()
}
