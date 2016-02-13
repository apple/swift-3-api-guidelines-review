
@available(OSX 10.5, *)
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
  @available(OSX 10.5, *)
  func countByEnumerating(with state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(OSX 10.5, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension PointerArray {
  @available(OSX 10.8, *)
  class func strongObjects() -> PointerArray
  @available(OSX 10.8, *)
  class func weakObjects() -> PointerArray
  var allObjects: [AnyObject] { get }
}
