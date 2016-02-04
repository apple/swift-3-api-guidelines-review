
class ABMultiValue : Object, Copying, MutableCopying, FastEnumeration {
  func count() -> Int
  func valueAt(index: Int) -> AnyObject!
  func labelAt(index: Int) -> String!
  func identifierAt(index: Int) -> String!
  func indexForIdentifier(identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueForIdentifier(identifier: String!) -> AnyObject!
  func labelForIdentifier(identifier: String!) -> AnyObject!
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
