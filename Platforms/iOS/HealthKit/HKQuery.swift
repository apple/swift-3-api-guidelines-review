
@available(iOS 8.0, *)
class HKQuery : NSObject {
  var sampleType: HKSampleType { get }
  var predicate: NSPredicate? { get }
}
@available(iOS 8.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKQueryOptions { get }
  static var StrictStartDate: HKQueryOptions { get }
  static var StrictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjectsWithMetadataKey(key: String) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(key: String, allowedValues: [AnyObject]) -> NSPredicate
  class func predicateForObjectsWithMetadataKey(key: String, operatorType: NSPredicateOperatorType, value: AnyObject) -> NSPredicate
  class func predicateForObjectsFromSource(source: HKSource) -> NSPredicate
  class func predicateForObjectsFromSources(sources: Set<HKSource>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjectsFromSourceRevisions(sourceRevisions: Set<HKSourceRevision>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjectsFromDevices(devices: Set<HKDevice>) -> NSPredicate
  @available(iOS 9.0, *)
  class func predicateForObjectsWithDeviceProperty(key: String, allowedValues: Set<String>) -> NSPredicate
  class func predicateForObjectWithUUID(UUID: NSUUID) -> NSPredicate
  class func predicateForObjectsWithUUIDs(UUIDs: Set<NSUUID>) -> NSPredicate
  class func predicateForObjectsWithNoCorrelation() -> NSPredicate
  class func predicateForObjectsFromWorkout(workout: HKWorkout) -> NSPredicate
}
extension HKQuery {
  class func predicateForSamplesWithStartDate(startDate: NSDate?, endDate: NSDate?, options: HKQueryOptions) -> NSPredicate
}
extension HKQuery {
  class func predicateForQuantitySamplesWithOperatorType(operatorType: NSPredicateOperatorType, quantity: HKQuantity) -> NSPredicate
}
extension HKQuery {
  class func predicateForCategorySamplesWithOperatorType(operatorType: NSPredicateOperatorType, value: Int) -> NSPredicate
}
extension HKQuery {
  class func predicateForWorkoutsWithWorkoutActivityType(workoutActivityType: HKWorkoutActivityType) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, duration: NSTimeInterval) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, totalEnergyBurned: HKQuantity) -> NSPredicate
  class func predicateForWorkoutsWithOperatorType(operatorType: NSPredicateOperatorType, totalDistance: HKQuantity) -> NSPredicate
}
