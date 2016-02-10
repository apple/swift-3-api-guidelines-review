
@available(watchOS 2.0, *)
enum FormattingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case dynamic
  case standalone
  case listItem
  case beginningOfSentence
  case middleOfSentence
}
@available(watchOS 2.0, *)
enum FormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case short
  case medium
  case long
}
class Formatter : Object, Copying, Coding {
  func string(forObjectValue obj: AnyObject) -> String?
  func attributedString(forObjectValue obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> AttributedString?
  func editingString(forObjectValue obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: RangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(withZone zone: Zone = nil) -> AnyObject
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
