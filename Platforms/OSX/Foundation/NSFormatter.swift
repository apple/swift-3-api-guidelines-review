
@available(OSX 10.10, *)
enum NSFormattingContext : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Dynamic
  case Standalone
  case ListItem
  case BeginningOfSentence
  case MiddleOfSentence
}
@available(OSX 10.10, *)
enum NSFormattingUnitStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Short
  case Medium
  case Long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func stringForObjectValue(_ obj: AnyObject) -> String?
  func attributedStringForObjectValue(_ obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]?) -> NSAttributedString?
  func editingStringForObjectValue(_ obj: AnyObject) -> String?
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(_ partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(_ partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
