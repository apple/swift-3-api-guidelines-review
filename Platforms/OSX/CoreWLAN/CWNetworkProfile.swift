
@available(OSX 10.7, *)
class CWNetworkProfile : Object, Copying, MutableCopying, SecureCoding {
  @available(OSX 10.7, *)
  var ssid: String? { get }
  @available(OSX 10.7, *)
  @NSCopying var ssidData: Data? { get }
  @available(OSX 10.7, *)
  var security: CWSecurity { get }
  @available(OSX 10.7, *)
  init()
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)
  @available(OSX 10.7, *)
  func isEqual(to networkProfile: CWNetworkProfile) -> Bool
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.7, *)
class CWMutableNetworkProfile : CWNetworkProfile {
  @available(OSX 10.7, *)
  @NSCopying var ssidData: Data
  @available(OSX 10.7, *)
  var security: CWSecurity
  @available(OSX 10.7, *)
  init()
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)
  init?(coder aDecoder: Coder)
}
