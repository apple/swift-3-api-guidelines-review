
@available(OSX 10.11, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullName
  case PhoneticFullName
}
@available(OSX 10.11, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserDefault
  case GivenNameFirst
  case FamilyNameFirst
}
@available(OSX 10.11, *)
class CNContactFormatter : Formatter {
  class func descriptorForRequiredKeysFor(style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func stringFrom(contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedStringFrom(contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  class func nameOrderFor(contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiterFor(contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func stringFrom(contact: CNContact) -> String?
  func attributedStringFrom(contact: CNContact, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  init()
  init?(coder aDecoder: Coder)
}
let CNContactPropertyAttribute: String
