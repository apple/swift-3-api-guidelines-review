
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(OSX 10.5, *)
let mapTableStrongMemory: PointerFunctionsOptions
@available(OSX 10.5, *)
let mapTableCopyIn: PointerFunctionsOptions
@available(OSX 10.5, *)
let mapTableObjectPointerPersonality: PointerFunctionsOptions
@available(OSX 10.8, *)
let mapTableWeakMemory: PointerFunctionsOptions
typealias MapTableOptions = Int
@available(OSX 10.5, *)
class MapTable : Object, Copying, Coding, FastEnumeration {
  init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: PointerFunctions, valuePointerFunctions valueFunctions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [])
  @available(OSX 10.8, *)
  class func strongToStrongObjects() -> MapTable
  @available(OSX 10.8, *)
  class func weakToStrongObjects() -> MapTable
  @available(OSX 10.8, *)
  class func strongToWeakObjects() -> MapTable
  @available(OSX 10.8, *)
  class func weakToWeakObjects() -> MapTable
  @NSCopying var keyPointerFunctions: PointerFunctions { get }
  @NSCopying var valuePointerFunctions: PointerFunctions { get }
  func object(for aKey: AnyObject?) -> AnyObject?
  func removeObject(for aKey: AnyObject?)
  func setObject(anObject: AnyObject?, for aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> Enumerator
  func objectEnumerator() -> Enumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [Object : AnyObject]
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
struct MapEnumerator {
  var _pi: Int
  var _si: Int
  var _bs: UnsafeMutablePointer<Void>
  init()
  init(_pi: Int, _si: Int, _bs: UnsafeMutablePointer<Void>)
}
func freeMapTable(table: MapTable)
func resetMapTable(table: MapTable)
func compareMapTables(table1: MapTable, _ table2: MapTable) -> Bool
func copyMapTableWithZone(table: MapTable, _ zone: Zone) -> MapTable
func mapMember(table: MapTable, _ key: UnsafePointer<Void>, _ originalKey: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func mapGet(table: MapTable, _ key: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func mapInsert(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func mapInsertKnownAbsent(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)
func mapInsertIfAbsent(table: MapTable, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>) -> UnsafeMutablePointer<Void>
func mapRemove(table: MapTable, _ key: UnsafePointer<Void>)
func enumerateMapTable(table: MapTable) -> MapEnumerator
func nextMapEnumeratorPair(enumerator: UnsafeMutablePointer<MapEnumerator>, _ key: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ value: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func endMapTableEnumeration(enumerator: UnsafeMutablePointer<MapEnumerator>)
func countMapTable(table: MapTable) -> Int
func stringFromMapTable(table: MapTable) -> String
func allMapTableKeys(table: MapTable) -> [AnyObject]
func allMapTableValues(table: MapTable) -> [AnyObject]
struct MapTableKeyCallBacks {
  var hash: (@convention(c) (MapTable, UnsafePointer<Void>) -> Int)?
  var isEqual: (@convention(c) (MapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?
  var retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?
  var notAKeyMarker: UnsafePointer<Void>
  init()
  init(hash: (@convention(c) (MapTable, UnsafePointer<Void>) -> Int)?, isEqual: (@convention(c) (MapTable, UnsafePointer<Void>, UnsafePointer<Void>) -> ObjCBool)?, retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?, notAKeyMarker: UnsafePointer<Void>)
}
struct MapTableValueCallBacks {
  var retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?
  var release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?
  var describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?
  init()
  init(retain: (@convention(c) (MapTable, UnsafePointer<Void>) -> Void)?, release: (@convention(c) (MapTable, UnsafeMutablePointer<Void>) -> Void)?, describe: (@convention(c) (MapTable, UnsafePointer<Void>) -> String?)?)
}
func createMapTableWithZone(keyCallBacks: MapTableKeyCallBacks, _ valueCallBacks: MapTableValueCallBacks, _ capacity: Int, _ zone: Zone) -> MapTable
func createMapTable(keyCallBacks: MapTableKeyCallBacks, _ valueCallBacks: MapTableValueCallBacks, _ capacity: Int) -> MapTable
@available(OSX 10.5, *)
let integerMapKeyCallBacks: MapTableKeyCallBacks
let nonOwnedPointerMapKeyCallBacks: MapTableKeyCallBacks
let nonOwnedPointerOrNullMapKeyCallBacks: MapTableKeyCallBacks
let nonRetainedObjectMapKeyCallBacks: MapTableKeyCallBacks
let objectMapKeyCallBacks: MapTableKeyCallBacks
let ownedPointerMapKeyCallBacks: MapTableKeyCallBacks
@available(OSX 10.5, *)
let integerMapValueCallBacks: MapTableValueCallBacks
let nonOwnedPointerMapValueCallBacks: MapTableValueCallBacks
let objectMapValueCallBacks: MapTableValueCallBacks
let nonRetainedObjectMapValueCallBacks: MapTableValueCallBacks
let ownedPointerMapValueCallBacks: MapTableValueCallBacks
