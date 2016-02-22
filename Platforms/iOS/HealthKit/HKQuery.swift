
@available(iOS 8.0, *)
class HKQuery : NSObject {
  var sampleType: HKSampleType { get }
  var predicate: NSPredicate? { get }
}
@available(iOS 8.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: HKQueryOptions { get }
  static var strictStartDate: HKQueryOptions { get }
  static var strictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjects(withMetadataKey key: String) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, allowedValues: [AnyObject]) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, operatorType: NSPredicateOperatorType, value: AnyObject) -> NSPredicate
  class func predicateForObjects(from source: HKSource) -> NSPredicate
  class func predicateForObjects(from sources: Set<HKSource>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjects(from sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjects(from devices: Set<HKDevice>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjects(withDeviceProperty key: String, allowedValues: Set<String>) -> NSPredicate
  class func predicateForObject(with UUID: NSUUID) -> NSPredicate
  class func predicateForObjects(with UUIDs: Set<NSUUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjects(from workout: HKWorkout) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamples(withStart startDate: NSDate?, end endDate: NSDate?, options: HKQueryOptions = []) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamples(with operatorType: NSPredicateOperatorType, quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamples(with operatorType: NSPredicateOperatorType, value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkouts(with workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, duration: NSTimeInterval) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, totalDistance: HKQuantity) -> NSPredicate
}
