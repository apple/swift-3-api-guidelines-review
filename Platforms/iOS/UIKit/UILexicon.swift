
@available(iOS 8.0, *)
class UILexiconEntry : Object, Copying {
  var documentText: String { get }
  var userInput: String { get }
  init()
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class UILexicon : Object, Copying {
  var entries: [UILexiconEntry] { get }
  init()
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
