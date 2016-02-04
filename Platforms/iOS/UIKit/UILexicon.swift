
@available(iOS 8.0, *)
class UILexiconEntry : NSObject, NSCopying {
  var documentText: String { get }
  var userInput: String { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class UILexicon : NSObject, NSCopying {
  var entries: [UILexiconEntry] { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
