
class ABGroup : ABRecord {
  func members() -> [AnyObject]!
  func addMember(person: ABPerson!) -> Bool
  func removeMember(person: ABPerson!) -> Bool
  func subgroups() -> [AnyObject]!
  func addSubgroup(group: ABGroup!) -> Bool
  func removeSubgroup(group: ABGroup!) -> Bool
  func parentGroups() -> [AnyObject]!
  func setDistributionIdentifier(identifier: String!, forProperty property: String!, person: ABPerson!) -> Bool
  func distributionIdentifierForProperty(property: String!, person: ABPerson!) -> String!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
}
extension ABGroup {
  class func addPropertiesAndTypes(properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABGroup {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
