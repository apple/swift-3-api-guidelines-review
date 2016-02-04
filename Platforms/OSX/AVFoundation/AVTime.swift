
extension Value {
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTime time: CMTime)
  @available(OSX 10.7, *)
  var cmTimeValue: CMTime { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeRange timeRange: CMTimeRange)
  @available(OSX 10.7, *)
  var cmTimeRangeValue: CMTimeRange { get }
  @available(OSX 10.7, *)
  /*not inherited*/ init(cmTimeMapping timeMapping: CMTimeMapping)
  @available(OSX 10.7, *)
  var cmTimeMappingValue: CMTimeMapping { get }
}
extension Coder {
  @available(OSX 10.7, *)
  func encode(time: CMTime, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeForKey(key: String) -> CMTime
  @available(OSX 10.7, *)
  func encode(timeRange: CMTimeRange, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeRangeForKey(key: String) -> CMTimeRange
  @available(OSX 10.7, *)
  func encode(timeMapping: CMTimeMapping, forKey key: String)
  @available(OSX 10.7, *)
  func decodeCMTimeMappingForKey(key: String) -> CMTimeMapping
}
