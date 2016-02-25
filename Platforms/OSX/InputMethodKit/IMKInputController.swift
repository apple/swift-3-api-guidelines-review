
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension NSObject {
  class func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  class func inputText(_ string: String!, client sender: AnyObject!) -> Bool
  func inputText(_ string: String!, client sender: AnyObject!) -> Bool
  class func handle(_ event: NSEvent!, client sender: AnyObject!) -> Bool
  func handle(_ event: NSEvent!, client sender: AnyObject!) -> Bool
  class func didCommand(by aSelector: Selector, client sender: AnyObject!) -> Bool
  func didCommand(by aSelector: Selector, client sender: AnyObject!) -> Bool
  class func composedString(_ sender: AnyObject!) -> AnyObject!
  func composedString(_ sender: AnyObject!) -> AnyObject!
  class func originalString(_ sender: AnyObject!) -> NSAttributedString!
  func originalString(_ sender: AnyObject!) -> NSAttributedString!
  class func commitComposition(_ sender: AnyObject!)
  func commitComposition(_ sender: AnyObject!)
  class func candidates(_ sender: AnyObject!) -> [AnyObject]!
  func candidates(_ sender: AnyObject!) -> [AnyObject]!
}
protocol IMKStateSetting {
  func activateServer(_ sender: AnyObject!)
  func deactivateServer(_ sender: AnyObject!)
  func value(forTag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(_ value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(_ sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(_ sender: AnyObject!) -> Int
  func showPreferences(_ sender: AnyObject!)
}
protocol IMKMouseHandling {
  func mouseDown(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUp(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMoved(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
class IMKInputController : NSObject, IMKStateSetting, IMKMouseHandling {
  init!(server server: IMKServer!, delegate delegate: AnyObject!, client inputClient: AnyObject!)
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
  func setDelegate(_ newDelegate: AnyObject!)
  func server() -> IMKServer!
  func client() -> protocol<IMKTextInput, NSObjectProtocol>!
  @available(OSX 10.7, *)
  func inputControllerWillClose()
  func annotationSelected(_ annotationString: NSAttributedString!, forCandidate candidateString: NSAttributedString!)
  func candidateSelectionChanged(_ candidateString: NSAttributedString!)
  func candidateSelected(_ candidateString: NSAttributedString!)
  func activateServer(_ sender: AnyObject!)
  func deactivateServer(_ sender: AnyObject!)
  func value(forTag tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(_ value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(_ sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(_ sender: AnyObject!) -> Int
  func showPreferences(_ sender: AnyObject!)
  func mouseDown(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUp(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMoved(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
