
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension NSObject {
  class func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  func inputText(string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  class func inputText(string: String!, client sender: AnyObject!) -> Bool
  func inputText(string: String!, client sender: AnyObject!) -> Bool
  class func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  func handle(event: NSEvent!, client sender: AnyObject!) -> Bool
  class func didCommand(by aSelector: Selector, client sender: AnyObject!) -> Bool
  func didCommand(by aSelector: Selector, client sender: AnyObject!) -> Bool
  class func composedString(sender: AnyObject!) -> AnyObject!
  func composedString(sender: AnyObject!) -> AnyObject!
  class func originalString(sender: AnyObject!) -> NSAttributedString!
  func originalString(sender: AnyObject!) -> NSAttributedString!
  class func commitComposition(sender: AnyObject!)
  func commitComposition(sender: AnyObject!)
  class func candidates(sender: AnyObject!) -> [AnyObject]!
  func candidates(sender: AnyObject!) -> [AnyObject]!
}
protocol IMKStateSetting {
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func value(forTag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
}
protocol IMKMouseHandling {
  func mouseDown(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUp(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMoved(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
class IMKInputController : NSObject, IMKStateSetting, IMKMouseHandling {
  init!(server: IMKServer!, delegate: AnyObject!, client inputClient: AnyObject!)
  func updateComposition()
  func cancelComposition()
  func compositionAttributes(at range: NSRange) -> NSMutableDictionary!
  func selectionRange() -> NSRange
  func replacementRange() -> NSRange
  func mark(forStyle style: Int, at range: NSRange) -> [NSObject : AnyObject]!
  func doCommand(by aSelector: Selector, command infoDictionary: [NSObject : AnyObject]!)
  func hidePalettes()
  func menu() -> NSMenu!
  func delegate() -> AnyObject!
  func setDelegate(newDelegate: AnyObject!)
  func server() -> IMKServer!
  func client() -> protocol<IMKTextInput, NSObjectProtocol>!
  @available(OSX 10.7, *)
  func inputControllerWillClose()
  func annotationSelected(annotationString: NSAttributedString!, forCandidate candidateString: NSAttributedString!)
  func candidateSelectionChanged(candidateString: NSAttributedString!)
  func candidateSelected(candidateString: NSAttributedString!)
  init()
  func activateServer(sender: AnyObject!)
  func deactivateServer(sender: AnyObject!)
  func value(forTag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(sender: AnyObject!) -> Int
  func showPreferences(sender: AnyObject!)
  func mouseDown(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUp(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMoved(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
