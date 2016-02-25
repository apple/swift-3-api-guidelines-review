
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(_ identifiers: [String]) -> NSPredicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroupWithIdentifier(_ parentGroupIdentifier: String) -> NSPredicate
  class func predicateForGroupsInContainerWithIdentifier(_ containerIdentifier: String) -> NSPredicate
}
