
@available(watchOS 2.0, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options options: NSPointerFunctionsOptions = [])
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointer(at index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(_ pointer: UnsafeMutablePointer<Void>)
  func removePointer(at index: Int)
  func insertPointer(_ item: UnsafeMutablePointer<Void>, at index: Int)
  func replacePointer(at index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  @available(watchOS 2.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  @available(watchOS 2.0, *)
  class func strongObjects() -> NSPointerArray
  @available(watchOS 2.0, *)
  class func weakObjects() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
