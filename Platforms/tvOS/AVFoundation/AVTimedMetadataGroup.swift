
@available(tvOS 9.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
  init()
}
@available(tvOS 4.3, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 4.3, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 4.3, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
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
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], startDate: NSDate, endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate?
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], startDate: NSDate, endDate: NSDate?)
  init()
}
