
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
@available(iOS 3.0, *)
class CLHeading : NSObject, NSCopying, NSSecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: NSDate { get }
  var description: String { get }
  init()
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
