
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(tvOS 6.0, *)
let mapTableStrongMemory: PointerFunctionsOptions
@available(tvOS 6.0, *)
let mapTableCopyIn: PointerFunctionsOptions
@available(tvOS 6.0, *)
let mapTableObjectPointerPersonality: PointerFunctionsOptions
@available(tvOS 6.0, *)
let mapTableWeakMemory: PointerFunctionsOptions
typealias MapTableOptions = Int
@available(tvOS 6.0, *)
class MapTable : Object, Copying, Coding, FastEnumeration {
  init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: PointerFunctions, valuePointerFunctions valueFunctions: PointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: PointerFunctionsOptions = [], valueOptions: PointerFunctionsOptions = [])
  @available(tvOS 6.0, *)
  class func strongToStrongObjects() -> MapTable
  @available(tvOS 6.0, *)
  class func weakToStrongObjects() -> MapTable
  @available(tvOS 6.0, *)
  class func strongToWeakObjects() -> MapTable
  @available(tvOS 6.0, *)
  class func weakToWeakObjects() -> MapTable
  @NSCopying var keyPointerFunctions: PointerFunctions { get }
  @NSCopying var valuePointerFunctions: PointerFunctions { get }
  func objectFor(aKey: AnyObject?) -> AnyObject?
  func removeObjectFor(aKey: AnyObject?)
  func setObject(anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> Enumerator
  func objectEnumerator() -> Enumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [Object : AnyObject]
  convenience init()
  @available(tvOS 6.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 6.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
