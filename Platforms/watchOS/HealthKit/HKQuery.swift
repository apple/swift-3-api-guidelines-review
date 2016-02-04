
@available(watchOS 2.0, *)
class HKQuery : Object {
  var sampleType: HKSampleType { get }
  var predicate: Predicate? { get }
}
@available(watchOS 2.0, *)
struct HKQueryOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKQueryOptions { get }
  static var StrictStartDate: HKQueryOptions { get }
  static var StrictEndDate: HKQueryOptions { get }
}
extension HKQuery {
  class func predicateForObjectsWithMetadataKey(key: String) -> Predicate
  class func predicateForObjectsWithMetadataKey(key: String, allowedValues: [AnyObject]) -> Predicate
  class func predicateForObjectsWithMetadataKey(key: String, operatorType: PredicateOperatorType, value: AnyObject) -> Predicate
  class func predicateForObjectsFrom(source: HKSource) -> Predicate
  class func predicateForObjectsFrom(sources: Set<HKSource>) -> Predicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsFrom(sourceRevisions: Set<HKSourceRevision>) -> Predicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsFrom(devices: Set<HKDevice>) -> Predicate
  @available(watchOS 2.0, *)
  class func predicateForObjectsWithDeviceProperty(key: String, allowedValues: Set<String>) -> Predicate
  class func predicateForObjectWith(UUID: UUID) -> Predicate
  class func predicateForObjectsWithUUIDs(UUIDs: Set<UUID>) -> Predicate
  class func predicateForObjectsWithNoCorrelation() -> Predicate
  class func predicateForObjectsFrom(workout: HKWorkout) -> Predicate
}
extension HKQuery {
  class func predicateForSamplesWithStart(startDate: Date?, end endDate: Date?, options: HKQueryOptions = []) -> Predicate
}
extension HKQuery {
  class func predicateForQuantitySamplesWith(operatorType: PredicateOperatorType, quantity: HKQuantity) -> Predicate
}
extension HKQuery {
  class func predicateForCategorySamplesWith(operatorType: PredicateOperatorType, value: Int) -> Predicate
}
extension HKQuery {
  class func predicateForWorkoutsWith(workoutActivityType: HKWorkoutActivityType) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, duration: TimeInterval) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, totalEnergyBurned: HKQuantity) -> Predicate
  class func predicateForWorkoutsWith(operatorType: PredicateOperatorType, totalDistance: HKQuantity) -> Predicate
}
