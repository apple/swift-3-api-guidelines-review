
@available(watchOS 2.0, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case MailingAddress
}
@available(watchOS 2.0, *)
class CNPostalAddressFormatter : NSFormatter {
  class func stringFromPostalAddress(_ postalAddress: CNPostalAddress, style style: CNPostalAddressFormatterStyle) -> String
  class func attributedStringFromPostalAddress(_ postalAddress: CNPostalAddress, style style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
  var style: CNPostalAddressFormatterStyle
  func stringFromPostalAddress(_ postalAddress: CNPostalAddress) -> String
  func attributedStringFromPostalAddress(_ postalAddress: CNPostalAddress, withDefaultAttributes attributes: [NSObject : AnyObject]) -> NSAttributedString
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
