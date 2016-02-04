
extension NSValue {
  @available(iOS 4.0, *)
  /*not inherited*/ init(CMTime time: CMTime)
  @available(iOS 4.0, *)
  var CMTimeValue: CMTime { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(CMTimeRange timeRange: CMTimeRange)
  @available(iOS 4.0, *)
  var CMTimeRangeValue: CMTimeRange { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(CMTimeMapping timeMapping: CMTimeMapping)
  @available(iOS 4.0, *)
  var CMTimeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(iOS 4.0, *)
  func encodeCMTime(time: CMTime, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(iOS 4.0, *)
  func encodeCMTimeRange(timeRange: CMTimeRange, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(iOS 4.0, *)
  func encodeCMTimeMapping(timeMapping: CMTimeMapping, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
