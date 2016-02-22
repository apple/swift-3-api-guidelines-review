
extension CNContainer {
  class func predicateForContainers(withIdentifiers identifiers: [String]) -> NSPredicate
  class func predicateForContainerOfContact(withIdentifier contactIdentifier: String) -> NSPredicate
  class func predicateForContainerOfGroup(withIdentifier groupIdentifier: String) -> NSPredicate
}
