
@available(iOS 9.0, *)
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func data(withContacts contacts: [AnyObject]) throws -> NSData
  class func contacts(with data: NSData) throws -> [AnyObject]
}
