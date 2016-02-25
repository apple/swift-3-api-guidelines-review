
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
  func encodeCMTime(_ time: CMTime, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeForKey(_ key: String) -> CMTime
  @available(OSX 10.7, *)
  func encodeCMTimeRange(_ timeRange: CMTimeRange, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeRangeForKey(_ key: String) -> CMTimeRange
  @available(OSX 10.7, *)
  func encodeCMTimeMapping(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeMappingForKey(_ key: String) -> CMTimeMapping
}
