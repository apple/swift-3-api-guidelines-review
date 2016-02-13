
@available(iOS 9.0, *)
class CNInstantMessageAddress : Object, Copying, SecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
let CNInstantMessageAddressUsernameKey: String
@available(iOS 9.0, *)
let CNInstantMessageAddressServiceKey: String
@available(iOS 9.0, *)
let CNInstantMessageServiceAIM: String
@available(iOS 9.0, *)
let CNInstantMessageServiceFacebook: String
@available(iOS 9.0, *)
let CNInstantMessageServiceGaduGadu: String
@available(iOS 9.0, *)
let CNInstantMessageServiceGoogleTalk: String
@available(iOS 9.0, *)
let CNInstantMessageServiceICQ: String
@available(iOS 9.0, *)
let CNInstantMessageServiceJabber: String
@available(iOS 9.0, *)
let CNInstantMessageServiceMSN: String
@available(iOS 9.0, *)
let CNInstantMessageServiceQQ: String
@available(iOS 9.0, *)
let CNInstantMessageServiceSkype: String
@available(iOS 9.0, *)
let CNInstantMessageServiceYahoo: String
