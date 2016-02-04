
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(identifiers: [String]) -> NSPredicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroupWithIdentifier(parentGroupIdentifier: String) -> NSPredicate
  class func predicateForGroupsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}
