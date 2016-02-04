
class CFBoolean {
}
let kCFBooleanTrue: CFBoolean!
let kCFBooleanFalse: CFBoolean!
func CFBooleanGetTypeID() -> CFTypeID
func CFBooleanGetValue(boolean: CFBoolean!) -> Bool
enum CFNumberType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case SInt8Type
  case SInt16Type
  case SInt32Type
  case SInt64Type
  case Float32Type
  case Float64Type
  case CharType
  case ShortType
  case IntType
  case LongType
  case LongLongType
  case FloatType
  case DoubleType
  case CFIndexType
  @available(watchOS 2.0, *)
  case NSIntegerType
  @available(watchOS 2.0, *)
  case CGFloatType
  static var MaxType: CFNumberType { get }
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
