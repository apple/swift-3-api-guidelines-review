
@available(iOS 9.0, *)
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(_ contacts: [AnyObject]) throws -> NSData
  class func contactsWithData(_ data: NSData) throws -> [AnyObject]
}
