
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension Object {
  class func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  class func inputText(string: String!, client sender: AnyObject!) -> Bool
  func inputText(string: String!, client sender: AnyObject!) -> Bool
  class func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  class func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool
  func didCommandBy(aSelector: Selector, client sender: AnyObject!) -> Bool
  class func composedString(sender: AnyObject!) -> AnyObject!
  func composedString(sender: AnyObject!) -> AnyObject!
  class func originalString(sender: AnyObject!) -> AttributedString!
  func originalString(sender: AnyObject!) -> AttributedString!
  class func commitComposition(sender: AnyObject!)
  func commitComposition(sender: AnyObject!)
  class func candidates(sender: AnyObject!) -> [AnyObject]!
  func candidates(sender: AnyObject!) -> [AnyObject]!
}
protocol IMKStateSetting {
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func valueFor(tag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
}
protocol IMKMouseHandling {
  func mouseDownOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
class IMKInputController : Object, IMKStateSetting, IMKMouseHandling {
  init!(server: IMKServer!, delegate: AnyObject!, client inputClient: AnyObject!)
  func updateComposition()
  func cancelComposition()
  func compositionAttributesAt(range: NSRange) -> MutableDictionary!
  func selectionRange() -> NSRange
  func replacementRange() -> NSRange
  func markFor(style style: Int, at range: NSRange) -> [Object : AnyObject]!
  func doCommandBy(aSelector: Selector, command infoDictionary: [Object : AnyObject]!)
  func hidePalettes()
  func menu() -> NSMenu!
  func delegate() -> AnyObject!
  func setDelegate(newDelegate: AnyObject!)
  func server() -> IMKServer!
  func client() -> protocol<IMKTextInput, ObjectProtocol>!
  @available(OSX 10.7, *)
  func inputControllerWillClose()
  func annotationSelected(annotationString: AttributedString!, forCandidate candidateString: AttributedString!)
  func candidateSelectionChanged(candidateString: AttributedString!)
  func candidateSelected(candidateString: AttributedString!)
  init()
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func valueFor(tag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [Object : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
  func mouseDownOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOn(characterIndex index: Int, coordinate point: Point, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
