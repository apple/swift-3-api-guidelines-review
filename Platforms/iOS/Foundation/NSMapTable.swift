
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(iOS 6.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(iOS 6.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions, capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions, valueOptions: NSPointerFunctionsOptions)
  @available(iOS 6.0, *)
  class func strongToStrongObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
  class func weakToStrongObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
  class func strongToWeakObjectsMapTable() -> NSMapTable
  @available(iOS 6.0, *)
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
  @available(iOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
