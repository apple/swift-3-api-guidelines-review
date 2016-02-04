
extension CNContact {
  class func predicateForContactsMatchingName(name: String) -> NSPredicate
  class func predicateForContactsWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroupWithIdentifier(groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}
