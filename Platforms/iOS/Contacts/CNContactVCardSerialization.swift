
@available(iOS 9.0, *)
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func data(withContacts contacts: [AnyObject]) throws -> Data
  class func contacts(with data: Data) throws -> [AnyObject]
  init()
}
