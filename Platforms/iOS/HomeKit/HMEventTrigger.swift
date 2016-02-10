
@available(iOS 9.0, *)
let HMSignificantEventSunrise: String
@available(iOS 9.0, *)
let HMSignificantEventSunset: String
@available(iOS 9.0, *)
let HMCharacteristicKeyPath: String
@available(iOS 9.0, *)
let HMCharacteristicValueKeyPath: String
@available(iOS 9.0, *)
class HMEventTrigger : HMTrigger {
  init(name: String, events: [HMEvent], predicate: Predicate?)
  var events: [HMEvent] { get }
  @NSCopying var predicate: Predicate? { get }
  class func predicateForEvaluatingTriggerOccurring(beforeSignificantEvent significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurring(afterSignificantEvent significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate
  class func predicateForEvaluatingTriggerOccurringBeforeDate(withComponents dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringOnDate(withComponents dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTriggerOccurringAfterDate(withComponents dateComponents: DateComponents) -> Predicate
  class func predicateForEvaluatingTrigger(withCharacteristic characteristic: HMCharacteristic, relatedBy operatorType: PredicateOperatorType, toValue value: AnyObject) -> Predicate
  func addEvent(event: HMEvent, completionHandler completion: (Error?) -> Void)
  func removeEvent(event: HMEvent, completionHandler completion: (Error?) -> Void)
  func updatePredicate(predicate: Predicate?, completionHandler completion: (Error?) -> Void)
}
