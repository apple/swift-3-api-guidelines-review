
@available(iOS 9.0, *)
class HMCharacteristicEvent : HMEvent {
  init(characteristic: HMCharacteristic, triggerValue: Copying?)
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: Copying? { get }
  func updateTriggerValue(triggerValue: Copying?, completionHandler completion: (Error?) -> Void)
}
