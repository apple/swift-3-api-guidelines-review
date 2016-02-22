
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
  init(name: String, events: [HMEvent], predicate: NSPredicate?)
  var events: [HMEvent] { get }
  @NSCopying var predicate: NSPredicate? { get }
  class func predicateForEvaluatingTriggerOccurring(beforeSignificantEvent significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurring(afterSignificantEvent significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDate(with dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDate(with dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDate(with dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(with characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
  func addEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func removeEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func updatePredicate(predicate: NSPredicate?, completionHandler completion: (NSError?) -> Void)
}
