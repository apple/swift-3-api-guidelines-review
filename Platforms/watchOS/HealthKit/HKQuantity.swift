
@available(watchOS 2.0, *)
class HKQuantity : NSObject, NSSecureCoding, NSCopying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWith(unit: HKUnit) -> Bool
  func doubleValue(for unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> NSComparisonResult
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
