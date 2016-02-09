
@available(watchOS 2.0, *)
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func data(withContacts contacts: [AnyObject]) throws -> Data
  class func contacts(withData data: Data) throws -> [AnyObject]
  init()
}
