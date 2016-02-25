
@available(iOS 8.0, *)
class HKObjectType : NSObject, NSSecureCoding, NSCopying {
  var identifier: String { get }
  class func quantityTypeForIdentifier(_ identifier: String) -> HKQuantityType?
  class func categoryTypeForIdentifier(_ identifier: String) -> HKCategoryType?
  class func characteristicTypeForIdentifier(_ identifier: String) -> HKCharacteristicType?
  class func correlationTypeForIdentifier(_ identifier: String) -> HKCorrelationType?
  class func workoutType() -> HKWorkoutType
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class HKCharacteristicType : HKObjectType {
}
@available(iOS 8.0, *)
class HKSampleType : HKObjectType {
}
@available(iOS 8.0, *)
class HKCategoryType : HKSampleType {
}
@available(iOS 8.0, *)
class HKCorrelationType : HKSampleType {
}
@available(iOS 8.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Cumulative
  case Discrete
}
@available(iOS 8.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func isCompatibleWithUnit(_ unit: HKUnit) -> Bool
}
@available(iOS 8.0, *)
class HKWorkoutType : HKSampleType {
}
