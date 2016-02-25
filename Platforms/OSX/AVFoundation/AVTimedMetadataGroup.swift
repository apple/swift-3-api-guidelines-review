
@available(OSX 10.11, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
@available(OSX 10.7, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], timeRange timeRange: CMTimeRange)
  @available(OSX 10.10, *)
  init?(sampleBuffer sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVTimedMetadataGroup {
  @available(OSX 10.10, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(OSX 10.7, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
}
@available(OSX 10.11, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items items: [AVMetadataItem], start startDate: NSDate, end endDate: NSDate?)
  @NSCopying var startDate: NSDate { get }
  @NSCopying var endDate: NSDate? { get }
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
