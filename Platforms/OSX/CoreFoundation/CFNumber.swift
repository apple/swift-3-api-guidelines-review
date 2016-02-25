
class CFBoolean {
}
@available(*, deprecated, renamed="CFBoolean")
typealias CFBooleanRef = CFBoolean
let kCFBooleanTrue: CFBoolean!
let kCFBooleanFalse: CFBoolean!
func CFBooleanGetTypeID() -> CFTypeID
func CFBooleanGetValue(_ boolean: CFBoolean!) -> Bool
enum CFNumberType : CFIndex {
  init?(rawValue rawValue: CFIndex)
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
  @available(OSX 10.5, *)
  case NSIntegerType
  @available(OSX 10.5, *)
  case CGFloatType
  static var MaxType: CFNumberType { get }
}
class CFNumber {
}
@available(*, deprecated, renamed="CFNumber")
typealias CFNumberRef = CFNumber
let kCFNumberPositiveInfinity: CFNumber!
let kCFNumberNegativeInfinity: CFNumber!
let kCFNumberNaN: CFNumber!
func CFNumberGetTypeID() -> CFTypeID
func CFNumberCreate(_ allocator: CFAllocator!, _ theType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFNumber!
func CFNumberGetType(_ number: CFNumber!) -> CFNumberType
func CFNumberGetByteSize(_ number: CFNumber!) -> CFIndex
func CFNumberIsFloatType(_ number: CFNumber!) -> Bool
func CFNumberGetValue(_ number: CFNumber!, _ theType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberCompare(_ number: CFNumber!, _ otherNumber: CFNumber!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
