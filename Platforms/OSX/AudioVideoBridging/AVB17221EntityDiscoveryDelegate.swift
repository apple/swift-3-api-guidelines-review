
@available(OSX 10.8, *)
struct AVB17221EntityPropertyChanged : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var TimeToLive: AVB17221EntityPropertyChanged { get }
  @available(OSX 10.9, *)
  static var EntityID: AVB17221EntityPropertyChanged { get }
  static var VendorID: AVB17221EntityPropertyChanged { get }
  static var ModelID: AVB17221EntityPropertyChanged { get }
  static var EntityCapabilities: AVB17221EntityPropertyChanged { get }
  static var TalkerStreamSources: AVB17221EntityPropertyChanged { get }
  static var TalkerCapabilities: AVB17221EntityPropertyChanged { get }
  static var ListenerStreamSinks: AVB17221EntityPropertyChanged { get }
  static var ListenerCapabilities: AVB17221EntityPropertyChanged { get }
  static var ControllerCapabilities: AVB17221EntityPropertyChanged { get }
  static var AvailableIndex: AVB17221EntityPropertyChanged { get }
  @available(OSX 10.9, *)
  static var GPTPGrandmasterID: AVB17221EntityPropertyChanged { get }
  static var MACAddress: AVB17221EntityPropertyChanged { get }
  static var AssociationID: AVB17221EntityPropertyChanged { get }
  static var EntityType: AVB17221EntityPropertyChanged { get }
  @available(OSX 10.9, *)
  static var IdentifyControlIndex: AVB17221EntityPropertyChanged { get }
  @available(OSX 10.9, *)
  static var InterfaceIndex: AVB17221EntityPropertyChanged { get }
  @available(OSX 10.9, *)
  static var GPTPDomainNumber: AVB17221EntityPropertyChanged { get }
}
protocol AVB17221EntityDiscoveryDelegate {
  @available(OSX 10.8, *)
  func didAddRemoteEntity(_ newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRemoveRemoteEntity(_ oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRediscoverRemoteEntity(_ entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didUpdateRemoteEntity(_ entity: AVB17221Entity, changedProperties changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didAddLocalEntity(_ newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRemoveLocalEntity(_ oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRediscoverLocalEntity(_ entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didUpdateLocalEntity(_ entity: AVB17221Entity, changedProperties changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
}
