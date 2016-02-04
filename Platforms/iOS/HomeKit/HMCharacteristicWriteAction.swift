
@available(iOS 8.0, *)
class HMCharacteristicWriteAction : HMAction {
  init(characteristic: HMCharacteristic, targetValue: NSCopying)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: NSCopying { get }
  func updateTargetValue(targetValue: NSCopying, completionHandler completion: (NSError?) -> Void)
}
