
@available(watchOS 2.0, *)
class HKObjectType : Object, SecureCoding, Copying {
  var identifier: String { get }
  class func quantityType(forIdentifier identifier: String) -> HKQuantityType?
  class func categoryType(forIdentifier identifier: String) -> HKCategoryType?
  class func characteristicType(forIdentifier identifier: String) -> HKCharacteristicType?
  class func correlationType(forIdentifier identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
class HKCharacteristicType : HKObjectType {
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKSampleType : HKObjectType {
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKCategoryType : HKSampleType {
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKCorrelationType : HKSampleType {
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cumulative
  case discrete
}
@available(watchOS 2.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWith(unit: HKUnit) -> Bool
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKWorkoutType : HKSampleType {
  init?(coder aDecoder: Coder)
}
