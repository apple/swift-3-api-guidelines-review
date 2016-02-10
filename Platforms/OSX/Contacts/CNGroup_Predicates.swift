
extension CNGroup {
  class func predicateForGroups(withIdentifiers identifiers: [String]) -> Predicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroup(withIdentifier parentGroupIdentifier: String) -> Predicate
  class func predicateForGroupsInContainer(withIdentifier containerIdentifier: String) -> Predicate
}
