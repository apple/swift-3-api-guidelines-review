
enum NSSelectionGranularity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectByCharacter
  case SelectByWord
  case SelectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Upstream
  case Downstream
}
@available(OSX 10.5, *)
let NSAllRomanInputSourcesLocaleIdentifier: String
class NSTextView : NSText, NSUserInterfaceValidations, NSTextInputClient, NSTextLayoutOrientationProvider, NSDraggingSource, NSTextInput, NSAccessibilityNavigableStaticText {
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  init?(coder: NSCoder)
  convenience init(frame frameRect: NSRect)
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(newContainer: NSTextContainer)
  var textContainerInset: NSSize
  var textContainerOrigin: NSPoint { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -insertText:replacementRange: from NSTextInputClient instead. Since the method is designed to be used solely by the input system, the message should never be sent to a text view from applications. Any content modifications should be via either NSTextStorage or NSText methods.")
  func insertText(insertString: AnyObject)
  func setConstrainedFrameSize(desiredSize: NSSize)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
  func turnOffKerning(sender: AnyObject?)
  func tightenKerning(sender: AnyObject?)
  func loosenKerning(sender: AnyObject?)
  func useStandardKerning(sender: AnyObject?)
  func turnOffLigatures(sender: AnyObject?)
  func useStandardLigatures(sender: AnyObject?)
  func useAllLigatures(sender: AnyObject?)
  func raiseBaseline(sender: AnyObject?)
  func lowerBaseline(sender: AnyObject?)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use the traditional shaped characters encoded in the Unicode standard. Access the characters via the character palette.")
  func toggleTraditionalCharacterShape(sender: AnyObject?)
  func outline(sender: AnyObject?)
  func performFindPanelAction(sender: AnyObject?)
  func alignJustified(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func orderFrontSpacingPanel(sender: AnyObject?)
  func orderFrontLinkPanel(sender: AnyObject?)
  func orderFrontListPanel(sender: AnyObject?)
  func orderFrontTablePanel(sender: AnyObject?)
  func rulerView(ruler: NSRulerView, didMoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didRemoveMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didAddMarker marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldMoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, shouldAddMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMoveMarker marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, shouldRemoveMarker marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAddMarker marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func setNeedsDisplayInRect(rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPointInRect(rect: NSRect, color: NSColor, turnedOn flag: Bool)
  func drawViewBackgroundInRect(rect: NSRect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRangeForProposedRange(proposedCharRange: NSRange, granularity: NSSelectionGranularity) -> NSRange
  func clickedOnLink(link: AnyObject, atIndex charIndex: Int)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  @available(OSX 10.7, *)
  func setLayoutOrientation(theOrientation: NSTextLayoutOrientation)
  @available(OSX 10.7, *)
  func changeLayoutOrientation(sender: AnyObject?)
  @available(OSX 10.5, *)
  func characterIndexForInsertionAtPoint(point: NSPoint) -> Int
  convenience init()
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBySelector(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: NSRangePointer) -> NSRect
  func characterIndexForPoint(aPoint: NSPoint) -> Int
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func fractionOfDistanceThroughGlyphForPoint(aPoint: NSPoint) -> CGFloat
  func baselineDeltaForCharacterAtIndex(anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  @available(OSX 10.6, *)
  func drawsVerticallyForCharacterAtIndex(charIndex: Int) -> Bool
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskForDraggingContext context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAtPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedToPoint screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAtPoint screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysForDraggingSession(session: NSDraggingSession) -> Bool
  func accessibilityStringForRange(range: NSRange) -> String?
  func accessibilityLineForIndex(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextView {
  func complete(sender: AnyObject?)
  var rangeForUserCompletion: NSRange { get }
  func completionsForPartialWordRange(charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(word: String, forPartialWordRange charRange: NSRange, movement: Int, isFinal flag: Bool)
}
extension NSTextView {
  var writablePasteboardTypes: [String] { get }
  func writeSelectionToPasteboard(pboard: NSPasteboard, type: String) -> Bool
  func writeSelectionToPasteboard(pboard: NSPasteboard, types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardTypeFromArray(availableTypes: [String], restrictedToTypesFromArray allowedTypes: [String]?) -> String?
  func readSelectionFromPasteboard(pboard: NSPasteboard, type: String) -> Bool
  func readSelectionFromPasteboard(pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
}
extension NSTextView {
  func dragSelectionWithEvent(event: NSEvent, offset mouseOffset: NSSize, slideBack: Bool) -> Bool
  func dragImageForSelectionWithEvent(event: NSEvent, origin: NSPointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperationForDraggingInfo(dragInfo: NSDraggingInfo, type: String) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {
  var selectedRanges: [NSValue]
  func setSelectedRanges(ranges: [NSValue], affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  func setSelectedRange(charRange: NSRange, affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  var selectionAffinity: NSSelectionAffinity { get }
  var selectionGranularity: NSSelectionGranularity
  var selectedTextAttributes: [String : AnyObject]
  @NSCopying var insertionPointColor: NSColor
  func updateInsertionPointStateAndRestartTimer(restartFlag: Bool)
  var markedTextAttributes: [String : AnyObject]?
  var linkTextAttributes: [String : AnyObject]?
  @available(OSX 10.5, *)
  var displaysLinkToolTips: Bool
  var acceptsGlyphInfo: Bool
  var usesRuler: Bool
  @available(OSX 10.7, *)
  var usesInspectorBar: Bool
  var continuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  @available(OSX 10.5, *)
  var grammarCheckingEnabled: Bool
  @available(OSX 10.5, *)
  func toggleGrammarChecking(sender: AnyObject?)
  @available(OSX 10.5, *)
  func setSpellingState(value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeTextInRanges(affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeTextInRange(affectedCharRange: NSRange, replacementString: String?) -> Bool
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
  func showFindIndicatorForRange(charRange: NSRange)
  @available(OSX 10.10, *)
  var usesRolloverButtonForSelection: Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextViewDelegate?
  var editable: Bool
  var selectable: Bool
  var richText: Bool
  var importsGraphics: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  var fieldEditor: Bool
  var usesFontPanel: Bool
  var rulerVisible: Bool
  func setSelectedRange(charRange: NSRange)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRangeForProposedRange(proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(sender: AnyObject?)
  func smartInsertForString(pasteString: String, replacingRange charRangeToReplace: NSRange, beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeStringForString(pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  func smartInsertAfterStringForString(pasteString: String, replacingRange charRangeToReplace: NSRange) -> String?
  @available(OSX 10.5, *)
  var automaticQuoteSubstitutionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticQuoteSubstitution(sender: AnyObject?)
  @available(OSX 10.5, *)
  var automaticLinkDetectionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticLinkDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticDataDetectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDataDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticDashSubstitutionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDashSubstitution(sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticTextReplacementEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticTextReplacement(sender: AnyObject?)
  @available(OSX 10.6, *)
  var automaticSpellingCorrectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticSpellingCorrection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  @available(OSX 10.6, *)
  func checkTextInRange(range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject])
  @available(OSX 10.6, *)
  func handleTextCheckingResults(results: [NSTextCheckingResult], forRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], orthography: NSOrthography, wordCount: Int)
  @available(OSX 10.6, *)
  func orderFrontSubstitutionsPanel(sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInSelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInDocument(sender: AnyObject?)
  var usesFindPanel: Bool
  @available(OSX 10.7, *)
  var usesFindBar: Bool
  @available(OSX 10.7, *)
  var incrementalSearchingEnabled: Bool
}
extension NSTextView {
  @available(OSX 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(sender: AnyObject?)
  @available(OSX 10.7, *)
  func quickLookPreviewableItemsInRanges(ranges: [NSValue]) -> [AnyObject]?
  @available(OSX 10.7, *)
  func updateQuickLookPreviewPanel()
}
extension NSTextView {
  @available(OSX 10.8, *)
  @IBAction func orderFrontSharingServicePicker(sender: AnyObject?)
}
extension NSTextView {
}
protocol NSTextViewDelegate : NSTextDelegate {
  optional func textView(textView: NSTextView, clickedOnLink link: AnyObject, atIndex charIndex: Int) -> Bool
  optional func textView(textView: NSTextView, clickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(textView: NSTextView, doubleClickedOnCell cell: NSTextAttachmentCellProtocol, inRect cellFrame: NSRect, atIndex charIndex: Int)
  optional func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, inRect rect: NSRect, event: NSEvent, atIndex charIndex: Int)
  optional func textView(view: NSTextView, writablePasteboardTypesForCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int) -> [String]
  optional func textView(view: NSTextView, writeCell cell: NSTextAttachmentCellProtocol, atIndex charIndex: Int, toPasteboard pboard: NSPasteboard, type: String) -> Bool
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  optional func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(notification: NSNotification)
  optional func textViewDidChangeTypingAttributes(notification: NSNotification)
  optional func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAtIndex characterIndex: Int) -> String?
  optional func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(textView: NSTextView, shouldChangeTextInRange affectedCharRange: NSRange, replacementString: String?) -> Bool
  optional func textView(textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  optional func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  optional func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, atIndex charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, willCheckTextInRange range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, didCheckTextInRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  optional func textView(textView: NSTextView, URLForContentsOfTextAttachment textAttachment: NSTextAttachment, atIndex charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  optional func textView(textView: NSTextView, willShowSharingServicePicker servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  optional func undoManagerForTextView(view: NSTextView) -> NSUndoManager?
}
let NSTextViewWillChangeNotifyingTextViewNotification: String
let NSTextViewDidChangeSelectionNotification: String
let NSTextViewDidChangeTypingAttributesNotification: String
enum NSFindPanelAction : UInt {
  init?(rawValue: UInt)
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
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
