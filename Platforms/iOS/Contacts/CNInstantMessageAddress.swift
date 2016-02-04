
@available(iOS 9.0, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
