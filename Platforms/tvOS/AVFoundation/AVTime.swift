
extension NSValue {
  @available(tvOS 4.0, *)
  /*not inherited*/ init(cmTime time: CMTime)
  @available(tvOS 4.0, *)
  var cmTimeValue: CMTime { get }
  @available(tvOS 4.0, *)
  /*not inherited*/ init(cmTimeRange timeRange: CMTimeRange)
  @available(tvOS 4.0, *)
  var cmTimeRangeValue: CMTimeRange { get }
  @available(tvOS 4.0, *)
  /*not inherited*/ init(cmTimeMapping timeMapping: CMTimeMapping)
  @available(tvOS 4.0, *)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(tvOS 4.0, *)
  func encode(time: CMTime, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTime(forKey key: String) -> CMTime
  @available(tvOS 4.0, *)
  func encode(timeRange: CMTimeRange, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTimeRange(forKey key: String) -> CMTimeRange
  @available(tvOS 4.0, *)
  func encode(timeMapping: CMTimeMapping, forKey key: String)
  @available(tvOS 4.0, *)
  func decodeCMTimeMapping(forKey key: String) -> CMTimeMapping
}
