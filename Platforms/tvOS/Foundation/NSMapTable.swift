
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(tvOS 6.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(tvOS 6.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions keyOptions: NSPointerFunctionsOptions, valueOptions valueOptions: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions keyOptions: NSPointerFunctionsOptions, valueOptions valueOptions: NSPointerFunctionsOptions)
  @available(tvOS 6.0, *)
  class func strongToStrongObjectsMapTable() -> NSMapTable
  @available(tvOS 6.0, *)
  class func weakToStrongObjectsMapTable() -> NSMapTable
  @available(tvOS 6.0, *)
  class func strongToWeakObjectsMapTable() -> NSMapTable
  @available(tvOS 6.0, *)
  class func weakToWeakObjectsMapTable() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func objectForKey(_ aKey: AnyObject?) -> AnyObject?
  func removeObjectForKey(_ aKey: AnyObject?)
  func setObject(_ anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  @available(tvOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 6.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
