
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension NSObject {
  class func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: AnyObject!) -> Bool
  class func inputText(_ string: String!, client sender: AnyObject!) -> Bool
  func inputText(_ string: String!, client sender: AnyObject!) -> Bool
  class func handleEvent(_ event: NSEvent!, client sender: AnyObject!) -> Bool
  func handleEvent(_ event: NSEvent!, client sender: AnyObject!) -> Bool
  class func didCommandBySelector(_ aSelector: Selector, client sender: AnyObject!) -> Bool
  func didCommandBySelector(_ aSelector: Selector, client sender: AnyObject!) -> Bool
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
  func valueForTag(_ tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(_ value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(_ sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(_ sender: AnyObject!) -> Int
  func showPreferences(_ sender: AnyObject!)
}
protocol IMKMouseHandling {
  func mouseDownOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
class IMKInputController : NSObject, IMKStateSetting, IMKMouseHandling {
  init!(server server: IMKServer!, delegate delegate: AnyObject!, client inputClient: AnyObject!)
  func updateComposition()
  func cancelComposition()
  func compositionAttributesAtRange(_ range: NSRange) -> NSMutableDictionary!
  func selectionRange() -> NSRange
  func replacementRange() -> NSRange
  func markForStyle(_ style: Int, atRange range: NSRange) -> [NSObject : AnyObject]!
  func doCommandBySelector(_ aSelector: Selector, commandDictionary infoDictionary: [NSObject : AnyObject]!)
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
  func valueForTag(_ tag: Int, client sender: AnyObject!) -> AnyObject!
  func setValue(_ value: AnyObject!, forTag tag: Int, client sender: AnyObject!)
  @available(OSX 10.0, *)
  func modes(_ sender: AnyObject!) -> [NSObject : AnyObject]!
  func recognizedEvents(_ sender: AnyObject!) -> Int
  func showPreferences(_ sender: AnyObject!)
  func mouseDownOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>, client sender: AnyObject!) -> Bool
  func mouseUpOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
  func mouseMovedOnCharacterIndex(_ index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: AnyObject!) -> Bool
}
