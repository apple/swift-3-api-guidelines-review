
@available(OSX 10.11, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let CNInstantMessageAddressUsernameKey: String
@available(OSX 10.11, *)
let CNInstantMessageAddressServiceKey: String
@available(OSX 10.11, *)
let CNInstantMessageServiceAIM: String
@available(OSX 10.11, *)
let CNInstantMessageServiceFacebook: String
@available(OSX 10.11, *)
let CNInstantMessageServiceGaduGadu: String
@available(OSX 10.11, *)
let CNInstantMessageServiceGoogleTalk: String
@available(OSX 10.11, *)
let CNInstantMessageServiceICQ: String
@available(OSX 10.11, *)
let CNInstantMessageServiceJabber: String
@available(OSX 10.11, *)
let CNInstantMessageServiceMSN: String
@available(OSX 10.11, *)
let CNInstantMessageServiceQQ: String
@available(OSX 10.11, *)
let CNInstantMessageServiceSkype: String
@available(OSX 10.11, *)
let CNInstantMessageServiceYahoo: String
