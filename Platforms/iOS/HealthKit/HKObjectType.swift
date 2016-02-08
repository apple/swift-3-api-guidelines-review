
@available(iOS 8.0, *)
class HKObjectType : Object, SecureCoding, Copying {
  var identifier: String { get }
  class func quantityTypeFor(identifier identifier: String) -> HKQuantityType?
  class func categoryTypeFor(identifier identifier: String) -> HKCategoryType?
  class func characteristicTypeFor(identifier identifier: String) -> HKCharacteristicType?
  class func correlationTypeFor(identifier identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class HKCharacteristicType : HKObjectType {
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class HKSampleType : HKObjectType {
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class HKCategoryType : HKSampleType {
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class HKCorrelationType : HKSampleType {
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cumulative
  case discrete
}
@available(iOS 8.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWith(unit: HKUnit) -> Bool
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
class HKWorkoutType : HKSampleType {
  init?(coder aDecoder: Coder)
}
