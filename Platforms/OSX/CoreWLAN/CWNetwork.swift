
@available(OSX 10.6, *)
class CWNetwork : Object, Copying, SecureCoding {
  @available(OSX 10.6, *)
  var ssid: String? { get }
  @available(OSX 10.7, *)
  var ssidData: Data? { get }
  @available(OSX 10.6, *)
  var bssid: String? { get }
  @available(OSX 10.7, *)
  var wlanChannel: CWChannel { get }
  @available(OSX 10.7, *)
  var rssiValue: Int { get }
  @available(OSX 10.7, *)
  var noiseMeasurement: Int { get }
  @available(OSX 10.7, *)
  var informationElementData: Data? { get }
  @available(OSX 10.7, *)
  var countryCode: String? { get }
  @available(OSX 10.7, *)
  var beaconInterval: Int { get }
  @available(OSX 10.7, *)
  var ibss: Bool { get }
  @available(OSX 10.6, *)
  func isEqual(to network: CWNetwork) -> Bool
  @available(OSX 10.7, *)
  func supportsSecurity(security: CWSecurity) -> Bool
  @available(OSX 10.8, *)
  func supportsPHYMode(phyMode: CWPHYMode) -> Bool
  init()
  @available(OSX 10.6, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
