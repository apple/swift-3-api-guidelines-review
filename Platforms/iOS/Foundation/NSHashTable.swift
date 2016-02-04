
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(iOS 6.0, *)
let NSHashTableStrongMemory: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableCopyIn: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
@available(iOS 6.0, *)
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: NSPointerFunctionsOptions)
  @available(iOS 6.0, *)
  class func weakObjectsHashTable() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject?)
  func removeObject(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func containsObject(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: NSHashTable) -> Bool
  func isEqualToHashTable(other: NSHashTable) -> Bool
  func isSubsetOfHashTable(other: NSHashTable) -> Bool
  func intersectHashTable(other: NSHashTable)
  func unionHashTable(other: NSHashTable)
  func minusHashTable(other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  convenience init()
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
