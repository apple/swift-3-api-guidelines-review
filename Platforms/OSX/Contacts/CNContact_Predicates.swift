
extension CNContact {
  class func predicateForContacts(matchingName name: String) -> Predicate
  class func predicateForContacts(identifiers identifiers: [String]) -> Predicate
  class func predicateForContactsInGroup(identifier groupIdentifier: String) -> Predicate
  class func predicateForContactsInContainer(identifier containerIdentifier: String) -> Predicate
}
