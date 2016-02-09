
@available(iOS 8.0, *)
class HKQuantity : Object, SecureCoding, Copying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatible(withUnit unit: HKUnit) -> Bool
  func doubleValue(forUnit unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> ComparisonResult
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
