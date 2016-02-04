
@available(watchOS 2.0, *)
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
  class func localizedStringForKey(key: String) -> String
  class func localizedStringForService(service: String) -> String
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNSocialProfileURLStringKey: String
@available(watchOS 2.0, *)
let CNSocialProfileUsernameKey: String
@available(watchOS 2.0, *)
let CNSocialProfileUserIdentifierKey: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceKey: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceFacebook: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceFlickr: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceLinkedIn: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceMySpace: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceSinaWeibo: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceTencentWeibo: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceTwitter: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceYelp: String
@available(watchOS 2.0, *)
let CNSocialProfileServiceGameCenter: String
