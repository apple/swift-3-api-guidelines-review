
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
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(_ significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(_ significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerWithCharacteristic(_ characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
}
