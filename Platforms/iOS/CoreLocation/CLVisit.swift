
@available(iOS 8.0, *)
class CLVisit : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var arrivalDate: NSDate { get }
  @NSCopying var departureDate: NSDate { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
