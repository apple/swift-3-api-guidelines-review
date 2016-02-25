
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
  @available(OSX 10.7, *)
  init(configuration configuration: CWConfiguration)
  @available(OSX 10.6, *)
  func isEqual(to configuration: CWConfiguration) -> Bool
  @available(OSX 10.6, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.6, *)
class CWMutableConfiguration : CWConfiguration {
}
