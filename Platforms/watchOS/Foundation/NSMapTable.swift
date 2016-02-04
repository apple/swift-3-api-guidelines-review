
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(watchOS 2.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(watchOS 2.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(watchOS 2.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions)
  @available(watchOS 2.0, *)
  class func strongToStrongObjectsMapTable() -> NSMapTable
  @available(watchOS 2.0, *)
  class func weakToStrongObjectsMapTable() -> NSMapTable
  @available(watchOS 2.0, *)
  class func strongToWeakObjectsMapTable() -> NSMapTable
  @available(watchOS 2.0, *)
  class func weakToWeakObjectsMapTable() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func objectForKey(aKey: AnyObject?) -> AnyObject?
  func removeObjectForKey(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
