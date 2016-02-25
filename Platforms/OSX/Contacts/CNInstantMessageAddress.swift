
@available(OSX 10.11, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username username: String, service service: String)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
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
