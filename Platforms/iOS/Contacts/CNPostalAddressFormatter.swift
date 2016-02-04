
@available(iOS 9.0, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case MailingAddress
}
@available(iOS 9.0, *)
class CNPostalAddressFormatter : NSFormatter {
  class func stringFromPostalAddress(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String
  class func attributedStringFromPostalAddress(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
  var style: CNPostalAddressFormatterStyle
  func stringFromPostalAddress(postalAddress: CNPostalAddress) -> String
  func attributedStringFromPostalAddress(postalAddress: CNPostalAddress, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
  init()
  init?(coder aDecoder: NSCoder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
