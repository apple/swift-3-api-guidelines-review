
extension CNContact {
  class func predicateForContacts(matchingName name: String) -> NSPredicate
  class func predicateForContacts(withIdentifiers identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroup(withIdentifier groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainer(withIdentifier containerIdentifier: String) -> NSPredicate
}
