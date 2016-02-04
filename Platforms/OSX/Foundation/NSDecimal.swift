
enum RoundingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundPlain
  case RoundDown
  case RoundUp
  case RoundBankers
}
enum CalculationError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoError
  case LossOfPrecision
  case Underflow
  case Overflow
  case DivideByZero
}
var decimalMaxSize: Int32 { get }
var decimalNoScale: Int32 { get }
struct Decimal {
  var _exponent: Int32
  var _length: UInt32
  var _isNegative: UInt32
  var _isCompact: UInt32
  var _reserved: UInt32
  var _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  init()
  init(_exponent: Int32, _length: UInt32, _isNegative: UInt32, _isCompact: UInt32, _reserved: UInt32, _mantissa: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16))
}
func decimalIsNotANumber(dcm: UnsafePointer<Decimal>) -> Bool
func decimalCopy(destination: UnsafeMutablePointer<Decimal>, _ source: UnsafePointer<Decimal>)
func decimalCompact(number: UnsafeMutablePointer<Decimal>)
func decimalCompare(leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>) -> ComparisonResult
func decimalRound(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ scale: Int, _ roundingMode: RoundingMode)
func decimalNormalize(number1: UnsafeMutablePointer<Decimal>, _ number2: UnsafeMutablePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalAdd(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalSubtract(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiply(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalDivide(result: UnsafeMutablePointer<Decimal>, _ leftOperand: UnsafePointer<Decimal>, _ rightOperand: UnsafePointer<Decimal>, _ roundingMode: RoundingMode) -> CalculationError
func decimalPower(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int, _ roundingMode: RoundingMode) -> CalculationError
func decimalMultiplyByPowerOf10(result: UnsafeMutablePointer<Decimal>, _ number: UnsafePointer<Decimal>, _ power: Int16, _ roundingMode: RoundingMode) -> CalculationError
func decimalString(dcm: UnsafePointer<Decimal>, _ locale: AnyObject?) -> String
