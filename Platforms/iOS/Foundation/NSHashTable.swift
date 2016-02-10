
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(iOS 6.0, *)
let hashTableStrongMemory: PointerFunctionsOptions
@available(iOS 6.0, *)
let hashTableCopyIn: PointerFunctionsOptions
@available(iOS 6.0, *)
let hashTableObjectPointerPersonality: PointerFunctionsOptions
@available(iOS 6.0, *)
let hashTableWeakMemory: PointerFunctionsOptions
typealias HashTableOptions = Int
@available(iOS 6.0, *)
class HashTable : Object, Copying, Coding, FastEnumeration {
  init(options: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: PointerFunctionsOptions = [])
  @available(iOS 6.0, *)
  class func weakObjects() -> HashTable
  @NSCopying var pointerFunctions: PointerFunctions { get }
  var count: Int { get }
  func member(object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject?)
  func remove(object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func contains(anObject: AnyObject?) -> Bool
  func intersectsHashTable(other: HashTable) -> Bool
  func isEqual(to other: HashTable) -> Bool
  func isSubset(of other: HashTable) -> Bool
  func intersectHashTable(other: HashTable)
  func unionHashTable(other: HashTable)
  func minusHashTable(other: HashTable)
  var setRepresentation: Set<Object> { get }
  convenience init()
  @available(iOS 6.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 6.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
