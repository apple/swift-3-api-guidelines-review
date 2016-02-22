
extension CNGroup {
  class func predicateForGroups(withIdentifiers identifiers: [String]) -> NSPredicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroup(withIdentifier parentGroupIdentifier: String) -> NSPredicate
  class func predicateForGroupsInContainer(withIdentifier containerIdentifier: String) -> NSPredicate
}
