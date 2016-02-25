
@available(OSX 10.11, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case FullName
  case PhoneticFullName
}
@available(OSX 10.11, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case UserDefault
  case GivenNameFirst
  case FamilyNameFirst
}
@available(OSX 10.11, *)
class CNContactFormatter : NSFormatter {
  class func descriptorForRequiredKeysForStyle(_ style: CNContactFormatterStyle) -> CNKeyDescriptor
  class func stringFromContact(_ contact: CNContact, style style: CNContactFormatterStyle) -> String?
  class func attributedStringFromContact(_ contact: CNContact, style style: CNContactFormatterStyle, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
  class func nameOrderForContact(_ contact: CNContact) -> CNContactDisplayNameOrder
  class func delimiterForContact(_ contact: CNContact) -> String
  var style: CNContactFormatterStyle
  func stringFromContact(_ contact: CNContact) -> String?
  func attributedStringFromContact(_ contact: CNContact, defaultAttributes attributes: [NSObject : AnyObject]?) -> NSAttributedString?
}
let CNContactPropertyAttribute: String
