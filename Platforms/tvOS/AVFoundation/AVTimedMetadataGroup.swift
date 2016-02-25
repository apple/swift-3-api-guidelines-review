
@available(tvOS 9.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
@available(tvOS 4.3, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], timeRange timeRange: CMTimeRange)
  @available(tvOS 8.0, *)
  init?(sampleBuffer sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
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
}
@available(tvOS 9.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
