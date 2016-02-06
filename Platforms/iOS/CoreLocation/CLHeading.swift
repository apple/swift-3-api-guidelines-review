
typealias CLHeadingComponentValue = Double
let kCLHeadingFilterNone: CLLocationDegrees
@available(iOS 3.0, *)
class CLHeading : Object, Copying, SecureCoding {
  var magneticHeading: CLLocationDirection { get }
  var trueHeading: CLLocationDirection { get }
  var headingAccuracy: CLLocationDirection { get }
  var x: CLHeadingComponentValue { get }
  var y: CLHeadingComponentValue { get }
  var z: CLHeadingComponentValue { get }
  @NSCopying var timestamp: Date { get }
  var description: String { get }
  init()
  @available(iOS 3.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
