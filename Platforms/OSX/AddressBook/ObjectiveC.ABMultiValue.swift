
class ABMultiValue : NSObject, NSCopying, NSMutableCopying, NSFastEnumeration {
  func count() -> Int
  func value(at index: Int) -> AnyObject!
  func label(at index: Int) -> String!
  func identifier(at index: Int) -> String!
  func index(forIdentifier identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func value(forIdentifier identifier: String!) -> AnyObject!
  func label(forIdentifier identifier: String!) -> AnyObject!
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func add(_ value: AnyObject!, withLabel label: String!) -> String!
  func insert(_ value: AnyObject!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabel(at index: Int) -> Bool
  func replace(at index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabel(at index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(_ identifier: String!) -> Bool
}
