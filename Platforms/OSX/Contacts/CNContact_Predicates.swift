
extension CNContact {
  class func predicateForContactsMatchingName(name: String) -> Predicate
  class func predicateForContactsWithIdentifiers(identifiers: [String]) -> Predicate
  class func predicateForContactsInGroupWithIdentifier(groupIdentifier: String) -> Predicate
  class func predicateForContactsInContainerWithIdentifier(containerIdentifier: String) -> Predicate
}
