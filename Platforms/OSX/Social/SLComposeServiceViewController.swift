
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
  func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event event: NSEvent, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  @available(OSX 10.10, *)
  func textView(_ view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type type: String) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  @available(OSX 10.10, *)
  func textViewDidChangeSelection(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  @available(OSX 10.10, *)
  func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(_ view: NSTextView, menu menu: NSMenu, for event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, willCheckTextIn range: NSRange, options options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(_ view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject] = [:], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(_ textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(_ textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.10, *)
  func undoManager(for view: NSTextView) -> NSUndoManager?
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
