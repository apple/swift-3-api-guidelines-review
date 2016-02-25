
enum NSSelectionGranularity : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case SelectByCharacter
  case SelectByWord
  case SelectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Upstream
  case Downstream
}
@available(OSX 10.5, *)
let NSAllRomanInputSourcesLocaleIdentifier: String
class NSTextView : NSText, NSUserInterfaceValidations, NSTextInputClient, NSTextLayoutOrientationProvider, NSDraggingSource, NSTextInput, NSAccessibilityNavigableStaticText {
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(_ newContainer: NSTextContainer)
  var textContainerInset: NSSize
  var textContainerOrigin: NSPoint { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }
  func setConstrainedFrameSize(_ desiredSize: NSSize)
  func setAlignment(_ alignment: NSTextAlignment, range range: NSRange)
  func setBaseWritingDirection(_ writingDirection: NSWritingDirection, range range: NSRange)
  func turnOffKerning(_ sender: AnyObject?)
  func tightenKerning(_ sender: AnyObject?)
  func loosenKerning(_ sender: AnyObject?)
  func useStandardKerning(_ sender: AnyObject?)
  func turnOffLigatures(_ sender: AnyObject?)
  func useStandardLigatures(_ sender: AnyObject?)
  func useAllLigatures(_ sender: AnyObject?)
  func raiseBaseline(_ sender: AnyObject?)
  func lowerBaseline(_ sender: AnyObject?)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use the traditional shaped characters encoded in the Unicode standard. Access the characters via the character palette.")
  func toggleTraditionalCharacterShape(_ sender: AnyObject?)
  func outline(_ sender: AnyObject?)
  func performFindPanelAction(_ sender: AnyObject?)
  func alignJustified(_ sender: AnyObject?)
  func changeAttributes(_ sender: AnyObject?)
  func changeDocumentBackgroundColor(_ sender: AnyObject?)
  func orderFrontSpacingPanel(_ sender: AnyObject?)
  func orderFrontLinkPanel(_ sender: AnyObject?)
  func orderFrontListPanel(_ sender: AnyObject?)
  func orderFrontTablePanel(_ sender: AnyObject?)
  func setNeedsDisplayInRect(_ rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPointInRect(_ rect: NSRect, color color: NSColor, turnedOn flag: Bool)
  func drawViewBackgroundInRect(_ rect: NSRect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRangeForProposedRange(_ proposedCharRange: NSRange, granularity granularity: NSSelectionGranularity) -> NSRange
  func clickedOnLink(_ link: AnyObject, atIndex charIndex: Int)
  func startSpeaking(_ sender: AnyObject?)
  func stopSpeaking(_ sender: AnyObject?)
  @available(OSX 10.7, *)
  func setLayoutOrientation(_ theOrientation: NSTextLayoutOrientation)
  @available(OSX 10.7, *)
  func changeLayoutOrientation(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  func characterIndexForInsertionAtPoint(_ point: NSPoint) -> Int
  func validateUserInterfaceItem(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(_ aString: AnyObject, replacementRange replacementRange: NSRange)
  func setMarkedText(_ aString: AnyObject, selectedRange selectedRange: NSRange, replacementRange replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringForProposedRange(_ aRange: NSRange, actualRange actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(_ aRange: NSRange, actualRange actualRange: NSRangePointer) -> NSRect
  func characterIndexForPoint(_ aPoint: NSPoint) -> Int
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func fractionOfDistanceThroughGlyphForPoint(_ aPoint: NSPoint) -> CGFloat
  func baselineDeltaForCharacterAtIndex(_ anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  @available(OSX 10.6, *)
  func drawsVerticallyForCharacterAtIndex(_ charIndex: Int) -> Bool
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysForDraggingSession(_ session: NSDraggingSession) -> Bool
}
extension NSTextView {
  var rangeForUserCompletion: NSRange { get }
  func completionsForPartialWordRange(_ charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(_ word: String, forPartialWordRange charRange: NSRange, movement movement: Int, isFinal flag: Bool)
}
extension NSTextView {
  var writablePasteboardTypes: [String] { get }
  func writeSelectionToPasteboard(_ pboard: NSPasteboard, type type: String) -> Bool
  func writeSelectionToPasteboard(_ pboard: NSPasteboard, types types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardTypeFromArray(_ availableTypes: [String], restrictedToTypesFromArray allowedTypes: [String]?) -> String?
  func readSelectionFromPasteboard(_ pboard: NSPasteboard, type type: String) -> Bool
  func readSelectionFromPasteboard(_ pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func pasteAsPlainText(_ sender: AnyObject?)
  func pasteAsRichText(_ sender: AnyObject?)
}
extension NSTextView {
  func dragSelectionWithEvent(_ event: NSEvent, offset mouseOffset: NSSize, slideBack slideBack: Bool) -> Bool
  func dragImageForSelectionWithEvent(_ event: NSEvent, origin origin: NSPointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperationForDraggingInfo(_ dragInfo: NSDraggingInfo, type type: String) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {
  var selectedRanges: [NSValue]
  func setSelectedRanges(_ ranges: [NSValue], affinity affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  func setSelectedRange(_ charRange: NSRange, affinity affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  var selectionAffinity: NSSelectionAffinity { get }
  var selectionGranularity: NSSelectionGranularity
  var selectedTextAttributes: [String : AnyObject]
  @NSCopying var insertionPointColor: NSColor
  func updateInsertionPointStateAndRestartTimer(_ restartFlag: Bool)
  var markedTextAttributes: [String : AnyObject]?
  var linkTextAttributes: [String : AnyObject]?
  @available(OSX 10.5, *)
  var displaysLinkToolTips: Bool
  var acceptsGlyphInfo: Bool
  var usesRuler: Bool
  @available(OSX 10.7, *)
  var usesInspectorBar: Bool
  var continuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(_ sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  @available(OSX 10.5, *)
  var grammarCheckingEnabled: Bool
  @available(OSX 10.5, *)
  func toggleGrammarChecking(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  func setSpellingState(_ value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeTextInRanges(_ affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeTextInRange(_ affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  func didChangeText()
  var rangeForUserTextChange: NSRange { get }
  var rangeForUserCharacterAttributeChange: NSRange { get }
  var rangeForUserParagraphAttributeChange: NSRange { get }
  var allowsDocumentBackgroundColorChange: Bool
  @NSCopying var defaultParagraphStyle: NSParagraphStyle?
  var allowsUndo: Bool
  func breakUndoCoalescing()
  @available(OSX 10.6, *)
  var coalescingUndo: Bool { get }
  @available(OSX 10.5, *)
  var allowsImageEditing: Bool
  @available(OSX 10.5, *)
  func showFindIndicatorForRange(_ charRange: NSRange)
  @available(OSX 10.10, *)
  var usesRolloverButtonForSelection: Bool
  func setSelectedRange(_ charRange: NSRange)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRangeForProposedRange(_ proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(_ sender: AnyObject?)
  func smartInsertForString(_ pasteString: String, replacingRange charRangeToReplace: NSRange, beforeString beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, afterString afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeStringForString(_ pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  func smartInsertAfterStringForString(_ pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  @available(OSX 10.5, *)
  var automaticQuoteSubstitutionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticQuoteSubstitution(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  var automaticLinkDetectionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticLinkDetection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticDataDetectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDataDetection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticDashSubstitutionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDashSubstitution(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticTextReplacementEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticTextReplacement(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticSpellingCorrectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticSpellingCorrection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  @available(OSX 10.6, *)
  func checkTextInRange(_ range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject])
  @available(OSX 10.6, *)
  func handleTextCheckingResults(_ results: [NSTextCheckingResult], forRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject], orthography orthography: NSOrthography, wordCount wordCount: Int)
  @available(OSX 10.6, *)
  func orderFrontSubstitutionsPanel(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInSelection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInDocument(_ sender: AnyObject?)
  var usesFindPanel: Bool
  @available(OSX 10.7, *)
  var usesFindBar: Bool
  @available(OSX 10.7, *)
  var incrementalSearchingEnabled: Bool
}
extension NSTextView {
  @available(OSX 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(_ sender: AnyObject?)
  @available(OSX 10.7, *)
  func quickLookPreviewableItemsInRanges(_ ranges: [NSValue]) -> [AnyObject]?
  @available(OSX 10.7, *)
  func updateQuickLookPreviewPanel()
}
extension NSTextView {
  @available(OSX 10.8, *)
  @IBAction func orderFrontSharingServicePicker(_ sender: AnyObject?)
}
extension NSTextView {
}
protocol NSTextViewDelegate : NSTextDelegate {
  optional func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  optional func textView(_ textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(_ textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event event: NSEvent, atIndex charIndex: Int)
  optional func textView(_ view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  optional func textView(_ view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type type: String) -> Bool
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  optional func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(_ notification: NSNotification)
  optional func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  optional func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  optional func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(_ textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  optional func textView(_ textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  optional func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  optional func textView(_ view: NSTextView, menu menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  optional func textView(_ view: NSTextView, willCheckTextInRange range: NSRange, options options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  optional func textView(_ view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  optional func textView(_ textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  optional func textView(_ textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  optional func undoManagerForTextView(_ view: NSTextView) -> NSUndoManager?
}
let NSTextViewWillChangeNotifyingTextViewNotification: String
let NSTextViewDidChangeSelectionNotification: String
let NSTextViewDidChangeTypingAttributesNotification: String
enum NSFindPanelAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ShowFindPanel
  case Next
  case Previous
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetFindString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
}
@available(OSX 10.5, *)
let NSFindPanelSearchOptionsPboardType: String
@available(OSX 10.5, *)
let NSFindPanelCaseInsensitiveSearch: String
@available(OSX 10.5, *)
let NSFindPanelSubstringMatch: String
enum NSFindPanelSubstringMatchType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
