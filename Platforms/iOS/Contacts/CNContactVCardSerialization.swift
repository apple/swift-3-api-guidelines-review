
@available(iOS 9.0, *)
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> NSData
  class func contactsWithData(data: NSData) throws -> [AnyObject]
  init()
}
