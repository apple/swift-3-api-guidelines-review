
@available(OSX 10.6, *)
class NSTextInputContext : NSObject {
  class func current() -> NSTextInputContext?
  init(client theClient: NSTextInputClient)
  var client: NSTextInputClient { get }
  var acceptsGlyphInfo: Bool
  var allowedInputSourceLocales: [String]?
  func activate()
  func deactivate()
  func handle(theEvent: NSEvent) -> Bool
  func discardMarkedText()
  func invalidateCharacterCoordinates()
  var keyboardInputSources: [String]? { get }
  var selectedKeyboardInputSource: String?
  class func localizedName(forInputSource inputSourceIdentifier: String) -> String?
  convenience init()
}
@available(OSX 10.6, *)
let NSTextInputContextKeyboardSelectionDidChangeNotification: String
