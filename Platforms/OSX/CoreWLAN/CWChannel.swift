
@available(OSX 10.7, *)
class CWChannel : Object, Copying, SecureCoding {
  @available(OSX 10.7, *)
  var channelNumber: Int { get }
  @available(OSX 10.7, *)
  var channelWidth: CWChannelWidth { get }
  @available(OSX 10.7, *)
  var channelBand: CWChannelBand { get }
  @available(OSX 10.7, *)
  func isEqualTo(channel: CWChannel) -> Bool
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
