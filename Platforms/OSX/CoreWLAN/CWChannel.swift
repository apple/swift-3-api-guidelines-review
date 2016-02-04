
@available(OSX 10.7, *)
class CWChannel : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  var channelNumber: Int { get }
  @available(OSX 10.7, *)
  var channelWidth: CWChannelWidth { get }
  @available(OSX 10.7, *)
  var channelBand: CWChannelBand { get }
  @available(OSX 10.7, *)
  func isEqualToChannel(channel: CWChannel) -> Bool
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
