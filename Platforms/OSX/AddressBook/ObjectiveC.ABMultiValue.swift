
class ABMultiValue : NSObject, NSCopying, NSMutableCopying, NSFastEnumeration {
  func count() -> Int
  func valueAtIndex(_ index: Int) -> AnyObject!
  func labelAtIndex(_ index: Int) -> String!
  func identifierAtIndex(_ index: Int) -> String!
  func indexForIdentifier(_ identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueForIdentifier(_ identifier: String!) -> AnyObject!
  func labelForIdentifier(_ identifier: String!) -> AnyObject!
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func addValue(_ value: AnyObject!, withLabel label: String!) -> String!
  func insertValue(_ value: AnyObject!, withLabel label: String!, atIndex index: Int) -> String!
  func removeValueAndLabelAtIndex(_ index: Int) -> Bool
  func replaceValueAtIndex(_ index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabelAtIndex(_ index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(_ identifier: String!) -> Bool
}
