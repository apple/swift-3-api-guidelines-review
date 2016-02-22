
@available(watchOS 2.0, *)
class HKQuery : NSObject {
  var sampleType: HKSampleType { get }
  var predicate: NSPredicate? { get }
}
@available(watchOS 2.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: HKQueryOptions { get }
  static var strictStartDate: HKQueryOptions { get }
  static var strictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjects(withMetadataKey key: String) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, allowedValues allowedValues: [AnyObject]) -> NSPredicate
  class func predicateForObjects(withMetadataKey key: String, operatorType operatorType: NSPredicateOperatorType, value value: AnyObject) -> NSPredicate
  class func predicateForObjects(from source: HKSource) -> NSPredicate
  class func predicateForObjects(from sources: Set<HKSource>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(from sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(from devices: Set<HKDevice>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjects(withDeviceProperty key: String, allowedValues allowedValues: Set<String>) -> NSPredicate
  class func predicateForObject(with UUID: NSUUID) -> NSPredicate
  class func predicateForObjects(with UUIDs: Set<NSUUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjects(from workout: HKWorkout) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamples(withStart startDate: NSDate?, end endDate: NSDate?, options options: HKQueryOptions = []) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamples(with operatorType: NSPredicateOperatorType, quantity quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamples(with operatorType: NSPredicateOperatorType, value value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkouts(with workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, duration duration: NSTimeInterval) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, totalEnergyBurned totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkouts(with operatorType: NSPredicateOperatorType, totalDistance totalDistance: HKQuantity) -> NSPredicate
}
