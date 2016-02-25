
@available(OSX 10.11, *)
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  @available(OSX 10.11, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
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
