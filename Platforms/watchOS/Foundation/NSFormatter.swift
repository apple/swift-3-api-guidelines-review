
@available(watchOS 2.0, *)
enum NSFormattingContext : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case dynamic
  case standalone
  case listItem
  case beginningOfSentence
  case middleOfSentence
}
@available(watchOS 2.0, *)
enum NSFormattingUnitStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case short
  case medium
  case long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func string(for obj: AnyObject) -> String?
  func attributedString(for obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> NSAttributedString?
  func editingString(for obj: AnyObject) -> String?
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(_ partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(_ partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
