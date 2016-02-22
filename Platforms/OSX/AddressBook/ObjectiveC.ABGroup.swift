
class ABGroup : ABRecord {
  func members() -> [AnyObject]!
  func addMember(_ person: ABPerson!) -> Bool
  func removeMember(_ person: ABPerson!) -> Bool
  func subgroups() -> [AnyObject]!
  func addSubgroup(_ group: ABGroup!) -> Bool
  func removeSubgroup(_ group: ABGroup!) -> Bool
  func parentGroups() -> [AnyObject]!
  func setDistributionIdentifier(_ identifier: String!, forProperty property: String!, person person: ABPerson!) -> Bool
  func distributionIdentifier(forProperty property: String!, person person: ABPerson!) -> String!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook addressBook: ABAddressBook!)
}
extension ABGroup {
  class func addPropertiesAndTypes(_ properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(_ properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOf(property property: String!) -> ABPropertyType
}
extension ABGroup {
  class func searchElement(forProperty property: String!, label label: String!, key key: String!, value value: AnyObject!, comparison comparison: ABSearchComparison) -> ABSearchElement!
}
