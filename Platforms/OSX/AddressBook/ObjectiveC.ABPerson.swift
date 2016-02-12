
class ABPerson : ABRecord {
  func parentGroups() -> [AnyObject]!
  @available(OSX 10.8, *)
  func linkedPeople() -> [AnyObject]!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
}
extension ABPerson {
  class func addPropertiesAndTypes(properties: [Object : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOf(property property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElement(forProperty property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(vCardRepresentation vCardData: Data!)
  func vCardRepresentation() -> Data!
}
