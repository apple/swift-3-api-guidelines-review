
@available(OSX 10.7, *)
class CWNetworkProfile : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  var ssid: String? { get }
  @available(OSX 10.7, *)
  @NSCopying var ssidData: NSData? { get }
  @available(OSX 10.7, *)
  var security: CWSecurity { get }
  @available(OSX 10.7, *)
  init(networkProfile networkProfile: CWNetworkProfile)
  @available(OSX 10.7, *)
  func isEqual(to networkProfile: CWNetworkProfile) -> Bool
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class CWMutableNetworkProfile : CWNetworkProfile {
}
