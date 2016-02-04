
@available(OSX 10.11, *)
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> NSData
  class func contactsWithData(data: NSData) throws -> [AnyObject]
  init()
}
