
@available(OSX 10.10, *)
class SLComposeServiceViewController : NSViewController, NSTextViewDelegate {
  func presentationAnimationDidFinish()
  var textView: NSTextView! { get }
  var contentText: String! { get }
  var placeholder: String!
  func didSelectPost()
  func didSelectCancel()
  func cancel()
  func isContentValid() -> Bool
  func validateContent()
  var charactersRemaining: NSNumber!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event: NSEvent, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  @available(OSX 10.10, *)
  func textView(view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type: String) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  @available(OSX 10.10, *)
  func textViewDidChangeSelection(notification: NSNotification)
  @available(OSX 10.10, *)
  func textViewDidChangeTypingAttributes(notification: NSNotification)
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString: String?) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(view: NSTextView, willCheckTextInRange range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.10, *)
  func undoManagerForTextView(view: NSTextView) -> NSUndoManager?
  @available(OSX 10.10, *)
  func textShouldBeginEditing(textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textShouldEndEditing(textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textDidBeginEditing(notification: NSNotification)
  @available(OSX 10.10, *)
  func textDidEndEditing(notification: NSNotification)
  @available(OSX 10.10, *)
  func textDidChange(notification: NSNotification)
}
