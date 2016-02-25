
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
@available(OSX 10.7, *)
class CLHeading : NSObject, NSCopying, NSSecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: NSDate { get }
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
