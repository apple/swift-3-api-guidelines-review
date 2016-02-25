
@available(OSX 10.8, *)
class AVBInterface : NSObject {
  var interfaceName: String { get }
  var entityDiscovery: AVB17221EntityDiscovery? { get }
  var aecp: AVB17221AECPInterface? { get }
  var acmp: AVB17221ACMPInterface? { get }
  class func macAddress(forInterfaceNamed anInterfaceName: String) -> AVBMACAddress?
  class func supportedInterfaces() -> [String]?
  class func isAVBEnabled(onInterfaceNamed anInterfaceName: String) -> Bool
  class func isAVBCapableInterfaceNamed(_ anInterfaceName: String) -> Bool
  init?(interfaceName anInterfaceName: String)
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func myGUID() -> UInt64
  class func myEntityID() -> UInt64
}
