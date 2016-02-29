
var __FOUNDATION_NSHASHTABLE__: Int32 { get }
@available(watchOS 2.0, *)
let NSHashTableStrongMemory: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSHashTableCopyIn: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSHashTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSHashTableWeakMemory: NSPointerFunctionsOptions
typealias NSHashTableOptions = Int
@available(watchOS 2.0, *)
class NSHashTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(options options: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(pointerFunctions functions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(options options: NSPointerFunctionsOptions = [])
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
