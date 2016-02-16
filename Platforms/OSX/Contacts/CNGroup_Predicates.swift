
extension CNGroup {
  class func predicateForGroups(identifiers identifiers: [String]) -> Predicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroup(identifier parentGroupIdentifier: String) -> Predicate
  class func predicateForGroupsInContainer(identifier containerIdentifier: String) -> Predicate
}
