
@available(OSX 10.7, *)
class CWChannel : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  var channelNumber: Int { get }
  @available(OSX 10.7, *)
  var channelWidth: CWChannelWidth { get }
  @available(OSX 10.7, *)
  var channelBand: CWChannelBand { get }
  @available(OSX 10.7, *)
  func isEqual(to channel: CWChannel) -> Bool
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
