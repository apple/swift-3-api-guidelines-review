
class ABMultiValue : Object, Copying, MutableCopying, FastEnumeration {
  func count() -> Int
  func value(at index: Int) -> AnyObject!
  func label(at index: Int) -> String!
  func identifier(at index: Int) -> String!
  func index(forIdentifier identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func value(forIdentifier identifier: String!) -> AnyObject!
  func label(forIdentifier identifier: String!) -> AnyObject!
  init()
  func copy(withZone zone: Zone = nil) -> AnyObject
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func add(value: AnyObject!, withLabel label: String!) -> String!
  func insert(value: AnyObject!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabel(at index: Int) -> Bool
  func replace(at index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabel(at index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(identifier: String!) -> Bool
  init()
}
