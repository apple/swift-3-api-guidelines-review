
@available(tvOS 9.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
  init()
}
@available(tvOS 4.3, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], timeRange timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 4.3, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.3, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {
  @available(tvOS 8.0, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(tvOS 4.3, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
  var timeRange: CMTimeRange
  var items: [AVMetadataItem]
  init(items items: [AVMetadataItem], timeRange timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer sampleBuffer: CMSampleBuffer)
  init()
}
@available(tvOS 9.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate?
  var items: [AVMetadataItem]
  init(items items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  init()
}
