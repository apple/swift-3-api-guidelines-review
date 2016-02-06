
extension CNContact {
  class func predicateForContactsMatching(name name: String) -> Predicate
  class func predicateForContactsWith(identifiers identifiers: [String]) -> Predicate
  class func predicateForContactsInGroupWith(identifier groupIdentifier: String) -> Predicate
  class func predicateForContactsInContainerWith(identifier containerIdentifier: String) -> Predicate
}
