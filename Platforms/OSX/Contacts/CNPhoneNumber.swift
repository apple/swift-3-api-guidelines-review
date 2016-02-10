
@available(OSX 10.11, *)
class CNPhoneNumber : Object, Copying, SecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  init()
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNLabelPhoneNumberiPhone: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberMobile: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberMain: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberHomeFax: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberWorkFax: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberOtherFax: String
@available(OSX 10.11, *)
let CNLabelPhoneNumberPager: String
