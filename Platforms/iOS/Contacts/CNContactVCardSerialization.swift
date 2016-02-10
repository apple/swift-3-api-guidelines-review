
@available(iOS 9.0, *)
class CNContactVCardSerialization : Object {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWith(contacts contacts: [AnyObject]) throws -> Data
  class func contactsWith(data: Data) throws -> [AnyObject]
  init()
}
