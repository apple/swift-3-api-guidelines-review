
@available(watchOS 20000, *)
class HMCharacteristicEvent : HMEvent {
  var characteristic: HMCharacteristic { get }
  @NSCopying var triggerValue: NSCopying? { get }
}
