
extension NSValue {
  @available(tvOS 4.0, *)
  /*not inherited*/ init(CMTime time: CMTime)
  @available(tvOS 4.0, *)
  var CMTimeValue: CMTime { get }
  @available(tvOS 4.0, *)
  /*not inherited*/ init(CMTimeRange timeRange: CMTimeRange)
  @available(tvOS 4.0, *)
  var CMTimeRangeValue: CMTimeRange { get }
  @available(tvOS 4.0, *)
  /*not inherited*/ init(CMTimeMapping timeMapping: CMTimeMapping)
  @available(tvOS 4.0, *)
  var CMTimeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(tvOS 4.0, *)
  func encodeCMTime(time: CMTime, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(tvOS 4.0, *)
  func encodeCMTimeRange(timeRange: CMTimeRange, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(tvOS 4.0, *)
  func encodeCMTimeMapping(timeMapping: CMTimeMapping, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
