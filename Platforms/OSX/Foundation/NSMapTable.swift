
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
  init(keyOptions keyOptions: NSPointerFunctionsOptions = [], valueOptions valueOptions: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions keyOptions: NSPointerFunctionsOptions = [], valueOptions valueOptions: NSPointerFunctionsOptions = [])
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
  func setObject(_ anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct NSMapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi _pi: Int, _si _si: Int, _bs _bs: UnsafeMutablePointer<Void>)
}
func NSFreeMapTable(_ table: NSMapTable)
func NSResetMapTable(_ table: NSMapTable)
func NSCompareMapTables(_ table1: NSMapTable, _ table2: NSMapTable) -> Bool
func NSCopyMapTableWithZone(_ table: NSMapTable, _ zone: NSZone) -> NSMapTable
func NSMapMember(_ table: NSMapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSMapGet(_ table: NSMapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapInsert(_ table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertKnownAbsent(_ table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func NSMapInsertIfAbsent(_ table: NSMapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func NSMapRemove(_ table: NSMapTable, _ key: UnsafePointer<Void>)
func NSEnumerateMapTable(_ table: NSMapTable) -> NSMapEnumerator
func NSNextMapEnumeratorPair(_ enumerator: UnsafeMutablePointer<NSMapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func NSEndMapTableEnumeration(_ enumerator: UnsafeMutablePointer<NSMapEnumerator>)
func NSCountMapTable(_ table: NSMapTable) -> Int
func NSStringFromMapTable(_ table: NSMapTable) -> String
func NSAllMapTableKeys(_ table: NSMapTable) -> [AnyObject]
func NSAllMapTableValues(_ table: NSMapTable) -> [AnyObject]
struct NSMapTableKeyCallBacks {
  var hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash hash: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Int)?, isEqual isEqual: (@convention(c) (NSMapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker notAKeyMarker: UnsafePointer<Void>)
}
struct NSMapTableValueCallBacks {
  var retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain retain: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> Void)?, release release: (@convention(c) (NSMapTable, UnsafeMutablePointer<Void>) -> Void)?, describe describe: (@convention(c) (NSMapTable, UnsafePointer<Void>) -> String?)?)
}
func NSCreateMapTableWithZone(_ keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int, _ zone: NSZone) -> NSMapTable
func NSCreateMapTable(_ keyCallBacks: NSMapTableKeyCallBacks, _ valueCallBacks: NSMapTableValueCallBacks, _ capacity: Int) -> NSMapTable
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
