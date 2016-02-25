
let NSDecimalNumberExactnessException: String
let NSDecimalNumberOverflowException: String
let NSDecimalNumberUnderflowException: String
let NSDecimalNumberDivideByZeroException: String
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(_ operation: Selector, error error: NSCalculationError, leftOperand leftOperand: NSDecimalNumber, rightOperand rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}
class NSDecimalNumber : NSNumber {
  convenience init(mantissa mantissa: UInt64, exponent exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: NSDecimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale locale: AnyObject?)
  class func zero() -> NSDecimalNumber
  class func one() -> NSDecimalNumber
  class func minimumDecimalNumber() -> NSDecimalNumber
  class func maximumDecimalNumber() -> NSDecimalNumber
  class func notANumber() -> NSDecimalNumber
  func decimalNumberByAdding(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByAdding(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberBySubtracting(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberBySubtracting(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByMultiplyingBy(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByDividingBy(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func decimalNumberByDividingBy(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(_ power: Int) -> NSDecimalNumber
  func decimalNumberByRaisingToPower(_ power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(_ power: Int16) -> NSDecimalNumber
  func decimalNumberByMultiplyingByPowerOf10(_ power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func decimalNumberByRoundingAccordingToBehavior(_ behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  class func setDefaultBehavior(_ behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
}
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode roundingMode: NSRoundingMode, scale scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(_ operation: Selector, error error: NSCalculationError, leftOperand leftOperand: NSDecimalNumber, rightOperand rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSNumber {
  var decimalValue: NSDecimal { get }
}
extension NSScanner {
  func scanDecimal(_ dcm: UnsafeMutablePointer<NSDecimal>) -> Bool
}
