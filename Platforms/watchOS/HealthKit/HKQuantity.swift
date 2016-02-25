
@available(watchOS 2.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit unit: HKUnit, doubleValue value: Double)
  func isCompatibleWithUnit(_ unit: HKUnit) -> Bool
  func doubleValueForUnit(_ unit: HKUnit) -> Double
  func compare(_ quantity: HKQuantity) -> NSComparisonResult
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
