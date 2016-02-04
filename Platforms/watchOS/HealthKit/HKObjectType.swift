
@available(watchOS 2.0, *)
class HKObjectType : NSObject, NSSecureCoding, NSCopying {
  var identifier: String { get }
  class func quantityTypeForIdentifier(identifier: String) -> HKQuantityType?
  class func categoryTypeForIdentifier(identifier: String) -> HKCategoryType?
  class func characteristicTypeForIdentifier(identifier: String) -> HKCharacteristicType?
  class func correlationTypeForIdentifier(identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(watchOS 2.0, *)
class HKCharacteristicType : HKObjectType {
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKSampleType : HKObjectType {
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKCategoryType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKCorrelationType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cumulative
  case Discrete
}
@available(watchOS 2.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWithUnit(unit: HKUnit) -> Bool
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKWorkoutType : HKSampleType {
  init?(coder aDecoder: NSCoder)
}
