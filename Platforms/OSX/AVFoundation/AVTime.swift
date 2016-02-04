
extension NSValue {
  @available(OSX 10.7, *)
  /*not inherited*/ init(CMTime time: CMTime)
  @available(OSX 10.7, *)
  var CMTimeValue: CMTime { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(CMTimeRange timeRange: CMTimeRange)
  @available(OSX 10.7, *)
  var CMTimeRangeValue: CMTimeRange { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(CMTimeMapping timeMapping: CMTimeMapping)
  @available(OSX 10.7, *)
  var CMTimeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(OSX 10.7, *)
  func encodeCMTime(time: CMTime, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(OSX 10.7, *)
  func encodeCMTimeRange(timeRange: CMTimeRange, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(OSX 10.7, *)
  func encodeCMTimeMapping(timeMapping: CMTimeMapping, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
