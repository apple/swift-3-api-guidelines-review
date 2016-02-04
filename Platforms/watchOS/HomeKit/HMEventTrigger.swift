
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
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringOnDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWith(dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerWith(characteristic: HMCharacteristic, relatedBy operatorType: PredicateOperatorType, toValue value: AnyObject) -> Predicate
}
