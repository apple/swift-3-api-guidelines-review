
@available(iOS 8.0, *)
class HMCharacteristicWriteAction : HMAction {
  init(characteristic characteristic: HMCharacteristic, targetValue targetValue: NSCopying)
  var characteristic: HMCharacteristic { get }
  @NSCopying var targetValue: NSCopying { get }
  func updateTargetValue(_ targetValue: NSCopying, completionHandler completion: (NSError?) -> Void)
}
