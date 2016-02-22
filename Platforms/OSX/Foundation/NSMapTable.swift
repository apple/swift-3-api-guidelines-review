
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(OSX 10.5, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(OSX 10.5, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(OSX 10.8, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(OSX 10.5, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func strongToStrongObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func weakToStrongObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func strongToWeakObjects() -> NSMapTable
  @available(OSX 10.8, *)
  class func weakToWeakObjects() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func object(forKey aKey: AnyObject?) -> AnyObject?
  func removeObject(forKey aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSMapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func NSFreeMapTable(table: NSMapTable)
func NSResetMapTable(table: NSMapTable)
func NSCompareMapTables(table1: NSMapTable, _ table2: NSMapTable) -> Bool
func NSCopyMapTableWithZone(table: NSMapTable, _ zone: NSZone) -> NSMapTable
func NSMapMember(table: NSMapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSMapGet(table: NSMapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapInsert(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertKnownAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertIfAbsent(table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapRemove(table: NSMapTable, _ key: UnsafePointer<Void>)
func NSEnumerateMapTable(table: NSMapTable) -> NSMapEnumerator
func NSNextMapEnumeratorPair(enumerator: UnsafeMutablePointer<NSMapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSEndMapTableEnumeration(enumerator: UnsafeMutablePointer<NSMapEnumerator>)
func NSCountMapTable(table: NSMapTable) -> Int
func NSStringFromMapTable(table: NSMapTable) -> String
func NSAllMapTableKeys(table: NSMapTable) -> [AnyObject]
func NSAllMapTableValues(table: NSMapTable) -> [AnyObject]
struct NSMapTableKeyCallBacks {
  var hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker: UnsafePointer<Void>)
}
struct NSMapTableValueCallBacks {
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateMapTableWithZone(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int, _ zone: NSZone) -> NSMapTable
func NSCreateMapTable(keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int) -> NSMapTable
@available(OSX 10.5, *)
let NSIntegerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonOwnedPointerOrNullMapKeyCallBacks: NSMapTableKeyCallBacks
let NSNonRetainedObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSObjectMapKeyCallBacks: NSMapTableKeyCallBacks
let NSOwnedPointerMapKeyCallBacks: NSMapTableKeyCallBacks
@available(OSX 10.5, *)
let NSIntegerMapValueCallBacks: NSMapTableValueCallBacks
let NSNonOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
let NSObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSNonRetainedObjectMapValueCallBacks: NSMapTableValueCallBacks
let NSOwnedPointerMapValueCallBacks: NSMapTableValueCallBacks
