
@available(watchOS 2.0, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username username: String, service service: String)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNInstantMessageAddressUsernameKey: String
@available(watchOS 2.0, *)
let CNInstantMessageAddressServiceKey: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceAIM: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceFacebook: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceGaduGadu: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceGoogleTalk: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceICQ: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceJabber: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceMSN: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceQQ: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceSkype: String
@available(watchOS 2.0, *)
let CNInstantMessageServiceYahoo: String
