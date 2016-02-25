
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
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event event: NSEvent, atIndex charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type type: String) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  @available(OSX 10.10, *)
  func textViewDidChangeSelection(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(_ view: NSTextView, menu menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, willCheckTextInRange range: NSRange, options options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(_ textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(_ textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.10, *)
  func undoManagerForTextView(_ view: NSTextView) -> NSUndoManager?
  @available(OSX 10.10, *)
  func textShouldBeginEditing(_ textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textShouldEndEditing(_ textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textDidBeginEditing(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textDidEndEditing(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textDidChange(_ notification: NSNotification)
}
