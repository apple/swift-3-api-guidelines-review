
@available(iOS 9.0, *)
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
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
let CNSocialProfileURLStringKey: String
@available(iOS 9.0, *)
let CNSocialProfileUsernameKey: String
@available(iOS 9.0, *)
let CNSocialProfileUserIdentifierKey: String
@available(iOS 9.0, *)
let CNSocialProfileServiceKey: String
@available(iOS 9.0, *)
let CNSocialProfileServiceFacebook: String
@available(iOS 9.0, *)
let CNSocialProfileServiceFlickr: String
@available(iOS 9.0, *)
let CNSocialProfileServiceLinkedIn: String
@available(iOS 9.0, *)
let CNSocialProfileServiceMySpace: String
@available(iOS 9.0, *)
let CNSocialProfileServiceSinaWeibo: String
@available(iOS 9.0, *)
let CNSocialProfileServiceTencentWeibo: String
@available(iOS 9.0, *)
let CNSocialProfileServiceTwitter: String
@available(iOS 9.0, *)
let CNSocialProfileServiceYelp: String
@available(iOS 9.0, *)
let CNSocialProfileServiceGameCenter: String
