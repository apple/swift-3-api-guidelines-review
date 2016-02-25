
extension CNContact {
  class func predicateForContactsMatchingName(_ name: String) -> NSPredicate
  class func predicateForContactsWithIdentifiers(_ identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroupWithIdentifier(_ groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainerWithIdentifier(_ containerIdentifier: String) -> NSPredicate
}
