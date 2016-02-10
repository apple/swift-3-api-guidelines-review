
extension CNGroup {
  class func predicateForGroupsWith(identifiers identifiers: [String]) -> Predicate
  @available(OSX 10.11, *)
  class func predicateForSubgroupsInGroupWith(identifier parentGroupIdentifier: String) -> Predicate
  class func predicateForGroupsInContainerWith(identifier containerIdentifier: String) -> Predicate
}
