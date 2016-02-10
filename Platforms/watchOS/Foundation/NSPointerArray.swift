
@available(watchOS 2.0, *)
class PointerArray : Object, FastEnumeration, Copying, Coding {
  init(options: PointerFunctionsOptions = [])
  init(pointerFunctions functions: PointerFunctions)
  @NSCopying var pointerFunctions: PointerFunctions { get }
  func pointer(at index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointer(at index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, at index: Int)
  func replacePointer(at index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  @available(watchOS 2.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension PointerArray {
  @available(watchOS 2.0, *)
  class func strongObjects() -> PointerArray
  @available(watchOS 2.0, *)
  class func weakObjects() -> PointerArray
  var allObjects: [AnyObject] { get }
}
