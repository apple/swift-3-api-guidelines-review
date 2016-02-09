
@available(OSX 10.11, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case mailingAddress
}
@available(OSX 10.11, *)
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
