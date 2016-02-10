
@available(watchOS 20000, *)
let HMSignificantEventSunrise: String
@available(watchOS 20000, *)
let HMSignificantEventSunset: String
@available(watchOS 20000, *)
let HMCharacteristicKeyPath: String
@available(watchOS 20000, *)
let HMCharacteristicValueKeyPath: String
@available(watchOS 20000, *)
class HMEventTrigger : HMTrigger {
  var events: [HMEvent] { get }
  @NSCopying var predicate: Predicate? { get }
  class func predicateForEvaluatingTriggerOccurring(beforeSignificantEvent significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurring(afterSignificantEvent significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringBeforeDate(with dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringOnDate(with dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterDate(with dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTrigger(with characteristic: HMCharacteristic, relatedBy operatorType: PredicateOperatorType, toValue value: AnyObject) -> Predicate
}
