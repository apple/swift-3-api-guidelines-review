
@available(OSX 10.10, *)
enum NSFormattingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case dynamic
  case standalone
  case listItem
  case beginningOfSentence
  case middleOfSentence
}
@available(OSX 10.10, *)
enum NSFormattingUnitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case short
  case medium
  case long
}
class NSFormatter : NSObject, NSCopying, NSCoding {
  func string(for obj: AnyObject) -> String?
  func attributedString(for obj: AnyObject, withDefaultAttributes attrs: [String : AnyObject]? = [:]) -> NSAttributedString?
  func editingString(for obj: AnyObject) -> String?
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialString: String, newEditing newString: AutoreleasingUnsafeMutablePointer<NSString?>, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isPartialStringValid(partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString?>, proposedSelectedRange proposedSelRangePtr: NSRangePointer, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
