
@available(OSX 10.11, *)
class CNSocialProfile : Object, Copying, SecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)
  class func localizedString(forKey key: String) -> String
  class func localizedString(forService service: String) -> String
  init()
  @available(OSX 10.11, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
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
