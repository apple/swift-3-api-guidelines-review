
@available(OSX 10.7, *)
class CWNetworkProfile : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  var ssid: String? { get }
  @available(OSX 10.7, *)
  @NSCopying var ssidData: NSData? { get }
  @available(OSX 10.7, *)
  var security: CWSecurity { get }
  @available(OSX 10.7, *)
  init()
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)
  @available(OSX 10.7, *)
  func isEqualToNetworkProfile(networkProfile: CWNetworkProfile) -> Bool
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class CWMutableNetworkProfile : CWNetworkProfile {
  @available(OSX 10.7, *)
  @NSCopying var ssidData: NSData
  @available(OSX 10.7, *)
  var security: CWSecurity
  @available(OSX 10.7, *)
  init()
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)
  init?(coder aDecoder: NSCoder)
}
