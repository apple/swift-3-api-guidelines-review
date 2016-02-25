
@available(tvOS 9.0, *)
class AVInterstitialTimeRange : NSObject, NSCopying, NSSecureCoding {
  init(timeRange timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
