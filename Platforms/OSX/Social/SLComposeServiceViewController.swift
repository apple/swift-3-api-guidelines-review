
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
  var charactersRemaining: Number!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: Rect, event: NSEvent, at charIndex: Int)
  @available(OSX 10.10, *)
  func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  @available(OSX 10.10, *)
  func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [Value], toCharacterRanges newSelectedCharRanges: [Value]) -> [Value]
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [Value], replacementStrings: [String]?) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  @available(OSX 10.10, *)
  func textViewDidChangeSelection(notification: Notification)
  @available(OSX 10.10, *)
  func textViewDidChangeTypingAttributes(notification: Notification)
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  @available(OSX 10.10, *)
  func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(view: NSTextView, menu: NSMenu, for event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<TextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:], results: [TextCheckingResult], orthography: Orthography, wordCount: Int) -> [TextCheckingResult]
  @available(OSX 10.7, *)
  func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> URL?
  @available(OSX 10.8, *)
  func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.10, *)
  func undoManager(for view: NSTextView) -> UndoManager?
  @available(OSX 10.10, *)
  func textShouldBeginEditing(textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textShouldEndEditing(textObject: NSText) -> Bool
  @available(OSX 10.10, *)
  func textDidBeginEditing(notification: Notification)
  @available(OSX 10.10, *)
  func textDidEndEditing(notification: Notification)
  @available(OSX 10.10, *)
  func textDidChange(notification: Notification)
}
