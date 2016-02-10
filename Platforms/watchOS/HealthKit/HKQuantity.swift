
@available(watchOS 2.0, *)
class HKQuantity : Object, SecureCoding, Copying {
  convenience init(unit: HKUnit, doubleValue value: Double)
  func isCompatibleWith(unit: HKUnit) -> Bool
  func doubleValue(forUnit unit: HKUnit) -> Double
  func compare(quantity: HKQuantity) -> ComparisonResult
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
