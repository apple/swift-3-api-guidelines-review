
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
  init(name name: String, events events: [HMEvent], predicate predicate: NSPredicate?)
  var events: [HMEvent] { get }
  @NSCopying var predicate: NSPredicate? { get }
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(_ significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(_ significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(_ dateComponents: NSDateComponents) -> NSPredicate
  class func predicateForEvaluatingTriggerWithCharacteristic(_ characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate
  func addEvent(_ event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func removeEvent(_ event: HMEvent, completionHandler completion: (NSError?) -> Void)
  func updatePredicate(_ predicate: NSPredicate?, completionHandler completion: (NSError?) -> Void)
}
