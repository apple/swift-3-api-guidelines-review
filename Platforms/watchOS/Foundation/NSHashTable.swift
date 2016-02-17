
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(watchOS 2.0, *)
let hashTableStrongMemory: PointerFunctionsOptions
@available(watchOS 2.0, *)
let hashTableCopyIn: PointerFunctionsOptions
@available(watchOS 2.0, *)
let hashTableObjectPointerPersonality: PointerFunctionsOptions
@available(watchOS 2.0, *)
let hashTableWeakMemory: PointerFunctionsOptions
typealias HashTableOptions = Int
@available(watchOS 2.0, *)
class HashTable : Object, Copying, Coding, FastEnumeration {
  init(options: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: PointerFunctionsOptions = [])
  @available(watchOS 2.0, *)
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
  func intersects(other: HashTable) -> Bool
  func isEqual(to other: HashTable) -> Bool
  func isSubsetOf(other: HashTable) -> Bool
  func intersect(other: HashTable)
  func union(other: HashTable)
  func minus(other: HashTable)
  var setRepresentation: Set<Object> { get }
  convenience init()
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
