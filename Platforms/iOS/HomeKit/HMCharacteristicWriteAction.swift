
@available(iOS 8.0, *)
class HMCharacteristicWriteAction : HMAction {
  init(characteristic: HMCharacteristic, targetValue: Copying)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: Copying { get }
  func updateTargetValue(targetValue: Copying, completionHandler completion: (Error?) -> Void)
}
