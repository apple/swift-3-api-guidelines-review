
@available(OSX 10.11, *)
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
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
let CNSocialProfileURLStringKey: String
@available(OSX 10.11, *)
let CNSocialProfileUsernameKey: String
@available(OSX 10.11, *)
let CNSocialProfileUserIdentifierKey: String
@available(OSX 10.11, *)
let CNSocialProfileServiceKey: String
@available(OSX 10.11, *)
let CNSocialProfileServiceFacebook: String
@available(OSX 10.11, *)
let CNSocialProfileServiceFlickr: String
@available(OSX 10.11, *)
let CNSocialProfileServiceLinkedIn: String
@available(OSX 10.11, *)
let CNSocialProfileServiceMySpace: String
@available(OSX 10.11, *)
let CNSocialProfileServiceSinaWeibo: String
@available(OSX 10.11, *)
let CNSocialProfileServiceTencentWeibo: String
@available(OSX 10.11, *)
let CNSocialProfileServiceTwitter: String
@available(OSX 10.11, *)
let CNSocialProfileServiceYelp: String
@available(OSX 10.11, *)
let CNSocialProfileServiceGameCenter: String
