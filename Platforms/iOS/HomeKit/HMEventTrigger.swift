
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
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerWithCharacteristic(characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
  func addEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func removeEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func updatePredicate(predicate: NSPredicate?, completionHandler completion: (NSError?) -> Void)
}
