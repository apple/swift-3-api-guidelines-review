
class CFBoolean {
}
let kCFBooleanTrue: CFBoolean!
let kCFBooleanFalse: CFBoolean!
func CFBooleanGetTypeID() -> CFTypeID
func CFBooleanGetValue(boolean: CFBoolean!) -> Bool
enum CFNumberType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case sInt8Type
  case sInt16Type
  case sInt32Type
  case sInt64Type
  case float32Type
  case float64Type
  case charType
  case shortType
  case intType
  case longType
  case longLongType
  case floatType
  case doubleType
  case cfIndexType
  @available(watchOS 2.0, *)
  case nsIntegerType
  @available(watchOS 2.0, *)
  case cgFloatType
  static var maxType: CFNumberType { get }
}
class CFNumber {
}
let kCFNumberPositiveInfinity: CFNumber!
let kCFNumberNegativeInfinity: CFNumber!
let kCFNumberNaN: CFNumber!
func CFNumberGetTypeID() -> CFTypeID
func CFNumberCreate(allocator: CFAllocator!, _ theType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFNumber!
func CFNumberGetType(number: CFNumber!) -> CFNumberType
func CFNumberGetByteSize(number: CFNumber!) -> CFIndex
func CFNumberIsFloatType(number: CFNumber!) -> Bool
func CFNumberGetValue(number: CFNumber!, _ theType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberCompare(number: CFNumber!, _ otherNumber: CFNumber!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
