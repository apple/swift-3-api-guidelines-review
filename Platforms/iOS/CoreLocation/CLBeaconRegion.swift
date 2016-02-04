
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(iOS 7.0, *)
class CLBeaconRegion : CLRegion {
  init(proximityUUID: UUID, identifier: String)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, identifier: String)
  init(proximityUUID: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  func peripheralDataWithMeasuredPower(measuredPower: Number?) -> MutableDictionary
  var proximityUUID: UUID { get }
  var major: Number? { get }
  var minor: Number? { get }
  var notifyEntryStateOnDisplay: Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 7.0, *)
class CLBeacon : Object, Copying, SecureCoding {
  var proximityUUID: UUID { get }
  var major: Number { get }
  var minor: Number { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  init()
  @available(iOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
