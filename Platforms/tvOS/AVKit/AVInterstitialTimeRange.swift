
@available(tvOS 9.0, *)
class AVInterstitialTimeRange : Object, Copying, SecureCoding {
  init(timeRange: CMTimeRange)
  var timeRange: CMTimeRange { get }
  convenience init()
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
