
@available(OSX 10.11, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case MailingAddress
}
@available(OSX 10.11, *)
class CNPostalAddressFormatter : Formatter {
  class func stringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String
  class func attributedStringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  var style: CNPostalAddressFormatterStyle
  func stringFrom(postalAddress: CNPostalAddress) -> String
  func attributedStringFrom(postalAddress: CNPostalAddress, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  init()
  init?(coder aDecoder: Coder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
