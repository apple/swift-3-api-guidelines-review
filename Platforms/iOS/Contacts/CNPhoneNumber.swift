
@available(iOS 9.0, *)
class CNPhoneNumber : Object, Copying, SecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
let CNLabelPhoneNumberiPhone: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMobile: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMain: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberHomeFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberWorkFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberOtherFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberPager: String
