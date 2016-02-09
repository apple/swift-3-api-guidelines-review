
let decimalNumberExactnessException: String
let decimalNumberOverflowException: String
let decimalNumberUnderflowException: String
let decimalNumberDivideByZeroException: String
protocol DecimalNumberBehaviors {
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
}
class DecimalNumber : Number {
  convenience init(mantissa: UInt64, exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: Decimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale: AnyObject?)
  func description(withLocale locale: AnyObject?) -> String
  var decimalValue: Decimal { get }
  class func zero() -> DecimalNumber
  class func one() -> DecimalNumber
  class func minimum() -> DecimalNumber
  class func maximum() -> DecimalNumber
  class func notA() -> DecimalNumber
  func adding(decimalNumber: DecimalNumber) -> DecimalNumber
  func adding(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber) -> DecimalNumber
  func subtracting(decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplying(by decimalNumber: DecimalNumber) -> DecimalNumber
  func multiplying(by decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func dividing(by decimalNumber: DecimalNumber) -> DecimalNumber
  func dividing(by decimalNumber: DecimalNumber, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func raising(toPower power: Int) -> DecimalNumber
  func raising(toPower power: Int, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func multiplying(byPowerOf10 power: Int16) -> DecimalNumber
  func multiplying(byPowerOf10 power: Int16, withBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func byRoundingAccording(toBehavior behavior: DecimalNumberBehaviors?) -> DecimalNumber
  func compare(decimalNumber: Number) -> ComparisonResult
  class func setDefaultBehavior(behavior: DecimalNumberBehaviors)
  class func defaultBehavior() -> DecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: Coder)
  convenience init(char value: Int8)
  convenience init(unsignedChar value: UInt8)
  convenience init(short value: Int16)
  convenience init(unsignedShort value: UInt16)
  convenience init(int value: Int32)
  convenience init(unsignedInt value: UInt32)
  convenience init(long value: Int)
  convenience init(unsignedLong value: UInt)
  convenience init(longLong value: Int64)
  convenience init(unsignedLongLong value: UInt64)
  convenience init(float value: Float)
  convenience init(double value: Double)
  convenience init(bool value: Bool)
  @available(watchOS 2.0, *)
  convenience init(integer value: Int)
  @available(watchOS 2.0, *)
  convenience init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
class DecimalNumberHandler : Object, DecimalNumberBehaviors, Coding {
  class func defaultDecimalNumberHandler() -> DecimalNumberHandler
  init(roundingMode: RoundingMode, scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> RoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(operation: Selector, error: CalculationError, leftOperand: DecimalNumber, rightOperand: DecimalNumber?) -> DecimalNumber?
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Number {
  var decimalValue: Decimal { get }
}
extension Scanner {
  func scanDecimal(dcm: UnsafeMutablePointer<Decimal>) -> Bool
}
