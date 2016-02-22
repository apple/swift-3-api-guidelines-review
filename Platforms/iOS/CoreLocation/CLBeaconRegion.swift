
typealias CLBeaconMajorValue = UInt16
typealias CLBeaconMinorValue = UInt16
@available(iOS 7.0, *)
class CLBeaconRegion : CLRegion {
  init(proximityUUID: NSUUID, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, identifier: String)
  init(proximityUUID: NSUUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue, identifier: String)
  func peripheralData(withMeasuredPower measuredPower: NSNumber?) -> NSMutableDictionary
  var proximityUUID: NSUUID { get }
  var major: NSNumber? { get }
  var minor: NSNumber? { get }
  var notifyEntryStateOnDisplay: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 7.0, *)
class CLBeacon : NSObject, NSCopying, NSSecureCoding {
  var proximityUUID: NSUUID { get }
  var major: NSNumber { get }
  var minor: NSNumber { get }
  var proximity: CLProximity { get }
  var accuracy: CLLocationAccuracy { get }
  var rssi: Int { get }
  init()
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
