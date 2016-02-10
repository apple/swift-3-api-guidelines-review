
@available(iOS 9.0, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullName
  case phoneticFullName
}
@available(iOS 9.0, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case userDefault
  case givenNameFirst
  case familyNameFirst
}
@available(iOS 9.0, *)
class CNContactFormatter : Formatter {
  class func descriptorForRequiredKeys(for style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func string(from contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedString(from contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  class func nameOrder(for contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiter(for contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func string(from contact: CNContact) -> String?
  func attributedString(from contact: CNContact, defaultAttributes attributes: [Object : AnyObject]? = [:]) -> AttributedString?
  init()
  init?(coder aDecoder: Coder)
}
let CNContactPropertyAttribute: String
