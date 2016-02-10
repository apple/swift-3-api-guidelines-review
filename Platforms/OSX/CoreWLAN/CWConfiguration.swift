
@available(OSX 10.6, *)
class CWConfiguration : Object, Copying, MutableCopying, SecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: OrderedSet { get }
  @available(OSX 10.7, *)
  var requireAdministratorForAssociation: Bool { get }
  @available(OSX 10.7, *)
  var requireAdministratorForPower: Bool { get }
  @available(OSX 10.7, *)
  var requireAdministratorForIBSSMode: Bool { get }
  @available(OSX 10.7, *)
  var rememberJoinedNetworks: Bool { get }
  @available(OSX 10.6, *)
  init()
  @available(OSX 10.7, *)
  init(configuration: CWConfiguration)
  @available(OSX 10.6, *)
  func isEqual(to configuration: CWConfiguration) -> Bool
  @available(OSX 10.6, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.6, *)
class CWMutableConfiguration : CWConfiguration {
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: OrderedSet
  @available(OSX 10.7, *)
  var requireAdministratorForAssociation: Bool
  @available(OSX 10.7, *)
  var requireAdministratorForPower: Bool
  @available(OSX 10.7, *)
  var requireAdministratorForIBSSMode: Bool
  @available(OSX 10.7, *)
  var rememberJoinedNetworks: Bool
  @available(OSX 10.6, *)
  init()
  @available(OSX 10.7, *)
  init(configuration: CWConfiguration)
  init?(coder aDecoder: Coder)
}
