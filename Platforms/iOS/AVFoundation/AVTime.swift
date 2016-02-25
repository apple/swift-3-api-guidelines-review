
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
  func encodeCMTime(_ time: CMTime, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeForKey(_ key: String) -> CMTime
  @available(iOS 4.0, *)
  func encodeCMTimeRange(_ timeRange: CMTimeRange, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeRangeForKey(_ key: String) -> CMTimeRange
  @available(iOS 4.0, *)
  func encodeCMTimeMapping(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(iOS 4.0, *)
  func decodeCMTimeMappingForKey(_ key: String) -> CMTimeMapping
}
