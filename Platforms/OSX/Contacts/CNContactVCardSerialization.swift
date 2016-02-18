
@available(OSX 10.11, *)
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func data(withContacts contacts: [AnyObject]) throws -> Data
  class func contacts(data: Data) throws -> [AnyObject]
  init()
}
