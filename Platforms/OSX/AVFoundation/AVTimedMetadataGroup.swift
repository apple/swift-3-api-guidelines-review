
@available(OSX 10.11, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
  init()
}
@available(OSX 10.7, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(OSX 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
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
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], startDate: NSDate, endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  var items: [AVMetadataItem] { get }
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
  @NSCopying var startDate: NSDate
  @NSCopying var endDate: NSDate?
  var items: [AVMetadataItem]
  init(items: [AVMetadataItem], startDate: NSDate, endDate: NSDate?)
  init()
}
