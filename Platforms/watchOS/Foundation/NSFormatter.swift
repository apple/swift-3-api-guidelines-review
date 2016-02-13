
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
  func string(for obj: AnyObject) -> String?
  func attributedString(for obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> AttributedString?
  func editingString(for obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: RangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
