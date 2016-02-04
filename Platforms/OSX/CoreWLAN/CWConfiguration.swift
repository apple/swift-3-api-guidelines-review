
@available(OSX 10.6, *)
class CWConfiguration : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: NSOrderedSet { get }
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
  func isEqualToConfiguration(configuration: CWConfiguration) -> Bool
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.6, *)
class CWMutableConfiguration : CWConfiguration {
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: NSOrderedSet
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
  init?(coder aDecoder: NSCoder)
}
