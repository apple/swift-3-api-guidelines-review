
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(identifiers: [String]) -> Predicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroupWithIdentifier(parentGroupIdentifier: String) -> Predicate
  class func predicateForGroupsInContainerWithIdentifier(containerIdentifier: String) -> Predicate
}
