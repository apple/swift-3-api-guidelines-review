
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
  init(options options: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options options: NSPointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func weakObjects() -> NSHashTable
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  var count: Int { get }
  func member(_ object: AnyObject?) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  func add(_ object: AnyObject?)
  func remove(_ object: AnyObject?)
  func removeAllObjects()
  var allObjects: [AnyObject] { get }
  var anyObject: AnyObject? { get }
  func contains(_ anObject: AnyObject?) -> Bool
  func intersects(_ other: NSHashTable) -> Bool
  func isEqual(to other: NSHashTable) -> Bool
  func isSubset(of other: NSHashTable) -> Bool
  func intersect(_ other: NSHashTable)
  func union(_ other: NSHashTable)
  func minus(_ other: NSHashTable)
  var setRepresentation: Set<NSObject> { get }
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSHashEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi _pi: Int, _si _si: Int, _bs _bs: UnsafeMutablePointer<Void>)
}
func NSFreeHashTable(_ table: NSHashTable)
func NSResetHashTable(_ table: NSHashTable)
func NSCompareHashTables(_ table1: NSHashTable, _ table2: NSHashTable) -> Bool
func NSCopyHashTableWithZone(_ table: NSHashTable, _ zone: NSZone) -> NSHashTable
func NSHashGet(_ table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashInsert(_ table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertKnownAbsent(_ table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSHashInsertIfAbsent(_ table: NSHashTable, _ pointer: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSHashRemove(_ table: NSHashTable, _ pointer: UnsafePointer<Void>)
func NSEnumerateHashTable(_ table: NSHashTable) -> NSHashEnumerator
func NSNextHashEnumeratorItem(_ enumerator: UnsafeMutablePointer<NSHashEnumerator>) -> UnsafeMutablePointer<Void>
func NSEndHashTableEnumeration(_ enumerator: UnsafeMutablePointer<NSHashEnumerator>)
func NSCountHashTable(_ table: NSHashTable) -> Int
func NSStringFromHashTable(_ table: NSHashTable) -> String
func NSAllHashTableObjects(_ table: NSHashTable) -> [AnyObject]
struct NSHashTableCallBacks {
  var hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?
  init()
  init(hash hash: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Int)?, isEqual isEqual: (@convention(c) (NSHashTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain retain: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> Void)?, release release: (@convention(c) (NSHashTable, UnsafeMutablePointer<Void>) -> Void)?, describe describe: (@convention(c) (NSHashTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateHashTableWithZone(_ callBacks: NSHashTableCallBacks, _ capacity: Int, _ zone: NSZone) -> NSHashTable
func NSCreateHashTable(_ callBacks: NSHashTableCallBacks, _ capacity: Int) -> NSHashTable
@available(OSX 10.5, *)
let NSIntegerHashCallBacks: NSHashTableCallBacks
let NSNonOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSNonRetainedObjectHashCallBacks: NSHashTableCallBacks
let NSObjectHashCallBacks: NSHashTableCallBacks
let NSOwnedObjectIdentityHashCallBacks: NSHashTableCallBacks
let NSOwnedPointerHashCallBacks: NSHashTableCallBacks
let NSPointerToStructHashCallBacks: NSHashTableCallBacks
