
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(OSX 10.5, *)
let NSHashTableStrongMemory: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSHashTableCopyIn: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(OSX 10.8, *)
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
@available(OSX 10.5, *)
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options: NSPointerFunctionsOptions)
  @available(OSX 10.8, *)
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
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSHashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeHashTable(table: NSHashTable)
func NSResetHashTable(table: NSHashTable)
func NSCompareHashTables(table1: NSHashTable, _ table2: NSHashTable) -> Bool
func NSCopyHashTableWithZone(table: NSHashTable, _ zone: NSZone) -> NSHashTable
func NSHashGet(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashInsert(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertKnownAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertIfAbsent(table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashRemove(table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSEnumerateHashTable(table: NSHashTable) -> NSHashEnumerator
func NSNextHashEnumeratorItem(enumerator: UnsafeMutablePointer<NSHashEnumerator>) -> UnsafeMutablePointer<Void>
func NSEndHashTableEnumeration(enumerator: UnsafeMutablePointer<NSHashEnumerator>)
func NSCountHashTable(table: NSHashTable) -> Int
func NSStringFromHashTable(table: NSHashTable) -> String
func NSAllHashTableObjects(table: NSHashTable) -> [AnyObject]
struct NSHashTableCallBacks {
  var hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateHashTableWithZone(callBacks: NSHashTableCallBacks, _ capacity: Int, _ zone: NSZone) -> NSHashTable
func NSCreateHashTable(callBacks: NSHashTableCallBacks, _ capacity: Int) -> NSHashTable
@available(OSX 10.5, *)
let NSIntegerHashCallBacks: NSHashTableCallBacks
let NSNonOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSNonRetainedObjectHashCallBacks: NSHashTableCallBacks
let NSObjectHashCallBacks: NSHashTableCallBacks
let NSOwnedObjectIdentityHashCallBacks: NSHashTableCallBacks
let NSOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSPointerToStructHashCallBacks: NSHashTableCallBacks
