
@available(OSX 10.8, *)
struct AVB17221EntityPropertyChanged : OptionSetType {
  init(rawValue: UInt)
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
  func didAddRemoteEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRemoveRemoteEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRediscoverRemoteEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didUpdateRemoteEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didAddLocalEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRemoveLocalEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didRediscoverLocalEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(OSX 10.8, *)
  func didUpdateLocalEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
}
