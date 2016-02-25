
extension CNContainer {
  class func predicateForContainersWithIdentifiers(_ identifiers: [String]) -> NSPredicate
  class func predicateForContainerOfContactWithIdentifier(_ contactIdentifier: String) -> NSPredicate
  class func predicateForContainerOfGroupWithIdentifier(_ groupIdentifier: String) -> NSPredicate
}
