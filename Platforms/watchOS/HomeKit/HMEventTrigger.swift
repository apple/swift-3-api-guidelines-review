
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
  @NSCopying var predicate: NSPredicate? { get }
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerWithCharacteristic(characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
}
