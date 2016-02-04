
extension Value {
  @available(iOS 4.0, *)
  /*not inherited*/ init(cmTime time: CMTime)
  @available(iOS 4.0, *)
  var cmTimeValue: CMTime { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(cmTimeRange timeRange: CMTimeRange)
  @available(iOS 4.0, *)
  var cmTimeRangeValue: CMTimeRange { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(cmTimeMapping timeMapping: CMTimeMapping)
  @available(iOS 4.0, *)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension Coder {
  @available(iOS 4.0, *)
  func encode(time: CMTime, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(iOS 4.0, *)
  func encode(timeRange: CMTimeRange, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(iOS 4.0, *)
  func encode(timeMapping: CMTimeMapping, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
