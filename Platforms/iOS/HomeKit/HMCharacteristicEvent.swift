
@available(iOS 9.0, *)
class HMCharacteristicEvent : HMEvent {
  init(characteristic: HMCharacteristic, triggerValue: NSCopying?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: NSCopying? { get }
  func updateTriggerValue(triggerValue: NSCopying?, completionHandler completion: (NSError?) -> Void)
}
