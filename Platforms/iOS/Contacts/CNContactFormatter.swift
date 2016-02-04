
@available(iOS 9.0, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullName
  case PhoneticFullName
}
@available(iOS 9.0, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserDefault
  case GivenNameFirst
  case FamilyNameFirst
}
@available(iOS 9.0, *)
class CNContactFormatter : NSFormatter {
  class func descriptorForRequiredKeysForStyle(style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func stringFromContact(contact: CNContact, style: CNContactFormatterStyle) -> String?
  class func attributedStringFromContact(contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
  class func nameOrderForContact(contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiterForContact(contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func stringFromContact(contact: CNContact) -> String?
  func attributedStringFromContact(contact: CNContact, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
  init()
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyAttribute: String
