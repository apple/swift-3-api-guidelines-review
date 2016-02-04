
@available(watchOS 2.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWithUnit(unit: HKUnit) -> Bool
  func doubleValueForUnit(unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> NSComparisonResult
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
