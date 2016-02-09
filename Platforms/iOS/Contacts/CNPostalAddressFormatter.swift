
@available(iOS 9.0, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case mailingAddress
}
@available(iOS 9.0, *)
class CNPostalAddressFormatter : Formatter {
  class func string(from postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String
  class func attributedString(from postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  var style: CNPostalAddressFormatterStyle
  func string(from postalAddress: CNPostalAddress) -> String
  func attributedString(from postalAddress: CNPostalAddress, withDefaultAttributes attributes: [Object : AnyObject] = [:]) -> AttributedString
  init()
  init?(coder aDecoder: Coder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String
