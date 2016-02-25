
@available(watchOS 2.0, *)
class HKQuery : NSObject {
  var sampleType: HKSampleType { get }
  var predicate: NSPredicate? { get }
}
@available(watchOS 2.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: HKQueryOptions { get }
  static var StrictStartDate: HKQueryOptions { get }
  static var StrictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjectsWithMetadataKey(_ key: String) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(_ key: String, allowedValues allowedValues: [AnyObject]) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(_ key: String, operatorType operatorType: NSPredicateOperatorType, value value: AnyObject) -> NSPredicate
  class func predicateForObjectsFromSource(_ source: HKSource) -> NSPredicate
  class func predicateForObjectsFromSources(_ sources: Set<HKSource>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsFromSourceRevisions(_ sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsFromDevices(_ devices: Set<HKDevice>) -> NSPredicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsWithDeviceProperty(_ key: String, allowedValues allowedValues: Set<String>) -> NSPredicate
  class func predicateForObjectWithUUID(_ UUID: NSUUID) -> NSPredicate
  class func predicateForObjectsWithUUIDs(_ UUIDs: Set<NSUUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjectsFromWorkout(_ workout: HKWorkout) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamplesWithStartDate(_ startDate: NSDate?, endDate endDate: NSDate?, options options: HKQueryOptions) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamplesWithOperatorType(_ operatorType: NSPredicateOperatorType, quantity quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamplesWithOperatorType(_ operatorType: NSPredicateOperatorType, value value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkoutsWithWorkoutActivityType(_ workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(_ operatorType: NSPredicateOperatorType, duration duration: NSTimeInterval) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(_ operatorType: NSPredicateOperatorType, totalEnergyBurned totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(_ operatorType: NSPredicateOperatorType, totalDistance totalDistance: HKQuantity) -> NSPredicate
}
