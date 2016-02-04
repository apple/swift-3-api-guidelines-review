
@available(OSX 10.11, *)
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> Data
  class func contactsWith(data: Data) throws -> [AnyObject]
  init()
}
