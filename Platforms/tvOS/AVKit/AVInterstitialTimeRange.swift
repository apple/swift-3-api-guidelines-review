
@available(tvOS 9.0, *)
class AVInterstitialTimeRange : NSObject, NSCopying, NSSecureCoding {
  init(timeRange timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
