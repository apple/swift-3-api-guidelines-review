
@available(tvOS 9.0, *)
class AVInterstitialTimeRange : NSObject, NSCopying, NSSecureCoding {
  init(timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  convenience init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
