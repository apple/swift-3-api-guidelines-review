
class ABPerson : ABRecord {
  func parentGroups() -> [AnyObject]!
  @available(OSX 10.8, *)
  func linkedPeople() -> [AnyObject]!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
}
extension ABPerson {
  class func addPropertiesAndTypes(properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(VCardRepresentation vCardData: NSData!)
  func vCardRepresentation() -> NSData!
}
