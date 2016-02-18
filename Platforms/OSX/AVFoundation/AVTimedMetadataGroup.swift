
@available(OSX 10.11, *)
class AVMetadataGroup : Object {
  var items: [AVMetadataItem] { get }
  init()
}
@available(OSX 10.7, *)
class AVTimedMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(OSX 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {
  @available(OSX 10.10, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(OSX 10.7, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
  var timeRange: CMTimeRange
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(OSX 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  init()
}
@available(OSX 10.11, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  @NSCopying var startDate: Date { get }
  @NSCopying var endDate: Date? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date?
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  init()
}
