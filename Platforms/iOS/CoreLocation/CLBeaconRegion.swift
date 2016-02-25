
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(iOS 7.0, *)
class CLBeaconRegion : CLRegion {
  init(proximityUUID proximityUUID: NSUUID, identifier identifier: String)
  init(proximityUUID proximityUUID: NSUUID, major major: CLBeaconMajorValue, identifier identifier: String)
  init(proximityUUID proximityUUID: NSUUID, major major: CLBeaconMajorValue, minor minor: CLBeaconMinorValue, identifier identifier: String)
  func peripheralData(withMeasuredPower measuredPower: NSNumber?) -> NSMutableDictionary
  var proximityUUID: NSUUID { get }
  var major: NSNumber? { get }
  var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
}
@available(iOS 7.0, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  var proximityUUID: NSUUID { get }
  var major: NSNumber { get }
  var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
