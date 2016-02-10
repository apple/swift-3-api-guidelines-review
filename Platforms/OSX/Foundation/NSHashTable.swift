
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(OSX 10.5, *)
let hashTableStrongMemory: PointerFunctionsOptions
@available(OSX 10.5, *)
let hashTableCopyIn: PointerFunctionsOptions
@available(OSX 10.5, *)
let hashTableObjectPointerPersonality: PointerFunctionsOptions
@available(OSX 10.8, *)
let hashTableWeakMemory: PointerFunctionsOptions
typealias HashTableOptions = Int
@available(OSX 10.5, *)
class HashTable : Object, Copying, Coding, FastEnumeration {
  init(options: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: PointerFunctionsOptions = [])
  @available(OSX 10.8, *)
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
  @available(OSX 10.5, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct HashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func freeHashTable(table: HashTable)
func resetHashTable(table: HashTable)
func compareHashTables(table1: HashTable, _ table2: HashTable) -> Bool
func copyHashTableWithZone(table: HashTable, _ zone: Zone) -> HashTable
func hashGet(table: HashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func hashInsert(table: HashTable, _ pointer: UnsafePointer<Void>)
func hashInsertKnownAbsent(table: HashTable, _ pointer: UnsafePointer<Void>)
func hashInsertIfAbsent(table: HashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func hashRemove(table: HashTable, _ pointer: UnsafePointer<Void>)
func enumerateHashTable(table: HashTable) -> HashEnumerator
func nextHashEnumeratorItem(enumerator: UnsafeMutablePointer<HashEnumerator>) -> UnsafeMutablePointer<Void>
func endHashTableEnumeration(enumerator: UnsafeMutablePointer<HashEnumerator>)
func countHashTable(table: HashTable) -> Int
func stringFromHashTable(table: HashTable) -> String
func allHashTableObjects(table: HashTable) -> [AnyObject]
struct HashTableCallBacks {
  var hash: (@convention(c) (HashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (HashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (HashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (HashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (HashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash: (@convention(c) (HashTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (HashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (HashTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (HashTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (HashTable, UnsafePointer<Void>) -> String?)?)
}
func createHashTableWithZone(callBacks: HashTableCallBacks, _ capacity: Int, _ zone: Zone) -> HashTable
func createHashTable(callBacks: HashTableCallBacks, _ capacity: Int) -> HashTable
@available(OSX 10.5, *)
let integerHashCallBacks: HashTableCallBacks
let nonOwnedPointerHashCallBacks: HashTableCallBacks
let nonRetainedObjectHashCallBacks: HashTableCallBacks
let objectHashCallBacks: HashTableCallBacks
let ownedObjectIdentityHashCallBacks: HashTableCallBacks
let ownedPointerHashCallBacks: HashTableCallBacks
let pointerToStructHashCallBacks: HashTableCallBacks
