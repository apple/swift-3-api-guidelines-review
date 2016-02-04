
class ABMultiValue : NSObject, NSCopying, NSMutableCopying, NSFastEnumeration {
  func count() -> Int
  func valueAtIndex(index: Int) -> AnyObject!
  func labelAtIndex(index: Int) -> String!
  func identifierAtIndex(index: Int) -> String!
  func indexForIdentifier(identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueForIdentifier(identifier: String!) -> AnyObject!
  func labelForIdentifier(identifier: String!) -> AnyObject!
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func addValue(value: AnyObject!, withLabel label: String!) -> String!
  func insertValue(value: AnyObject!, withLabel label: String!, atIndex index: Int) -> String!
  func removeValueAndLabelAtIndex(index: Int) -> Bool
  func replaceValueAtIndex(index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabelAtIndex(index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(identifier: String!) -> Bool
  init()
}
