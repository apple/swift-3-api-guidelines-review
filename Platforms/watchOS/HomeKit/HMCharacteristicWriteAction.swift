
@available(watchOS 20000, *)
class HMCharacteristicWriteAction : HMAction {
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: NSCopying { get }
}
