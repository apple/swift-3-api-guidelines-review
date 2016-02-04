
@available(tvOS 9.0, *)
class AVMetadataGroup : Object {
  var items: [AVMetadataItem] { get }
  init()
}
@available(tvOS 4.3, *)
class AVTimedMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 4.3, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 4.3, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {
  @available(tvOS 8.0, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(tvOS 4.3, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
  var timeRange: CMTimeRange
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  init()
}
@available(tvOS 9.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, Copying, MutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  @NSCopying var startDate: Date { get }
  @NSCopying var endDate: Date? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: Date
  @NSCopying var endDate: Date?
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  init()
}
