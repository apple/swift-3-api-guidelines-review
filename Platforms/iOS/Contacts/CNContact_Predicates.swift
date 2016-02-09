
extension CNContact {
  class func predicateForContacts(matchingName name: String) -> Predicate
  class func predicateForContacts(withIdentifiers identifiers: [String]) -> Predicate
  class func predicateForContactsInGroup(withIdentifier groupIdentifier: String) -> Predicate
  class func predicateForContactsInContainer(withIdentifier containerIdentifier: String) -> Predicate
}
