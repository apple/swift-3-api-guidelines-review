
@available(iOS 8.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWithUnit(unit: HKUnit) -> Bool
  func doubleValueForUnit(unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> NSComparisonResult
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
