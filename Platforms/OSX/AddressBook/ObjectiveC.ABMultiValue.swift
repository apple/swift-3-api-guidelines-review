
class ABMultiValue : Object, Copying, MutableCopying, FastEnumeration {
  func count() -> Int
  func valueAt(index: Int) -> AnyObject!
  func labelAt(index: Int) -> String!
  func identifierAt(index: Int) -> String!
  func indexFor(identifier identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueFor(identifier identifier: String!) -> AnyObject!
  func labelFor(identifier identifier: String!) -> AnyObject!
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func add(value: AnyObject!, withLabel label: String!) -> String!
  func insert(value: AnyObject!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabelAt(index: Int) -> Bool
  func replaceAt(index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabelAt(index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(identifier: String!) -> Bool
  init()
}
