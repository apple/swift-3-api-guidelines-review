
@available(watchOS 2.0, *)
class CNInstantMessageAddress : Object, Copying, SecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
  init()
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
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
