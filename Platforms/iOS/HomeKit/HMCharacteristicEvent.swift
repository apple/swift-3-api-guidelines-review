
@available(iOS 9.0, *)
class HMCharacteristicEvent : HMEvent {
  init(characteristic characteristic: HMCharacteristic, triggerValue triggerValue: NSCopying?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: NSCopying? { get }
  func updateTriggerValue(_ triggerValue: NSCopying?, completionHandler completion: (NSError?) -> Void)
}
