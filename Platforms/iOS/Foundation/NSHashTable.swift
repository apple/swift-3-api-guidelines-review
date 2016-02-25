
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
  init(options options: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options options: NSPointerFunctionsOptions)
  @available(iOS 6.0, *)
  class func weakObjectsHashTable() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(_ object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func addObject(_ object: AnyObject?)
  func removeObject(_ object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func containsObject(_ anObject: AnyObject?) -> Bool
  func intersectsHashTable(_ other: NSHashTable) -> Bool
  func isEqualToHashTable(_ other: NSHashTable) -> Bool
  func isSubsetOfHashTable(_ other: NSHashTable) -> Bool
  func intersectHashTable(_ other: NSHashTable)
  func unionHashTable(_ other: NSHashTable)
  func minusHashTable(_ other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  @available(iOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
