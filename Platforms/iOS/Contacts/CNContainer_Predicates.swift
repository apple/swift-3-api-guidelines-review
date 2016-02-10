
extension CNContainer {
  class func predicateForContainers(withIdentifiers identifiers: [String]) -> Predicate
  class func predicateForContainerOfContact(withIdentifier contactIdentifier: String) -> Predicate
  class func predicateForContainerOfGroup(withIdentifier groupIdentifier: String) -> Predicate
}
