
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
  init(frame frameRect: Rect, textContainer container: NSTextContainer?)
  init?(coder: Coder)
  convenience init(frame frameRect: Rect)
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(newContainer: NSTextContainer)
  var textContainerInset: Size
  var textContainerOrigin: Point { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -insertText:replacementRange: from NSTextInputClient instead. Since the method is designed to be used solely by the input system, the message should never be sent to a text view from applications. Any content modifications should be via either NSTextStorage or NSText methods.")
  func insertText(insertString: AnyObject)
  func setConstrainedFrameSize(desiredSize: Size)
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
  func rulerView(ruler: NSRulerView, didMove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didRemove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didAdd marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldMove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, shouldAdd marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMove marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, shouldRemove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAdd marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func setNeedsDisplayIn(rect: Rect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPointIn(rect: Rect, color: NSColor, turnedOn flag: Bool)
  func drawBackgroundIn(rect: Rect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRangeForProposedRange(proposedCharRange: NSRange, granularity: NSSelectionGranularity) -> NSRange
  func clickedOnLink(link: AnyObject, at charIndex: Int)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  @available(OSX 10.7, *)
  func setLayoutOrientation(theOrientation: NSTextLayoutOrientation)
  @available(OSX 10.7, *)
  func changeLayoutOrientation(sender: AnyObject?)
  @available(OSX 10.5, *)
  func characterIndexForInsertionAt(point: Point) -> Int
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBy(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: RangePointer) -> AttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: RangePointer) -> Rect
  func characterIndexFor(aPoint: Point) -> Int
  @available(OSX 10.0, *)
  func attributedString() -> AttributedString
  func fractionOfDistanceThroughGlyphFor(aPoint: Point) -> CGFloat
  func baselineDeltaForCharacterAt(anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  @available(OSX 10.6, *)
  func drawsVerticallyForCharacterAt(charIndex: Int) -> Bool
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: Point)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: Point)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: Point, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
  func accessibilityStringFor(range: NSRange) -> String?
  func accessibilityLineFor(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameFor(range: NSRange) -> Rect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedStringFor(range: NSRange) -> AttributedString?
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
  func writeSelectionTo(pboard: NSPasteboard, type: String) -> Bool
  func writeSelectionTo(pboard: NSPasteboard, types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardTypeFrom(availableTypes: [String], restrictedToTypesFrom allowedTypes: [String]?) -> String?
  func readSelectionFrom(pboard: NSPasteboard, type: String) -> Bool
  func readSelectionFrom(pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
}
extension NSTextView {
  func dragSelectionWith(event: NSEvent, offset mouseOffset: Size, slideBack: Bool) -> Bool
  func dragImageForSelectionWith(event: NSEvent, origin: PointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperationFor(dragInfo: NSDraggingInfo, type: String) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {
  var selectedRanges: [Value]
  func setSelectedRanges(ranges: [Value], affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
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
  var isContinuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  @available(OSX 10.5, *)
  var isGrammarCheckingEnabled: Bool
  @available(OSX 10.5, *)
  func toggleGrammarChecking(sender: AnyObject?)
  @available(OSX 10.5, *)
  func setSpellingState(value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeTextInRanges(affectedRanges: [Value], replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [Value]? { get }
  var rangesForUserCharacterAttributeChange: [Value]? { get }
  var rangesForUserParagraphAttributeChange: [Value]? { get }
  func shouldChangeTextIn(affectedCharRange: NSRange, replacementString: String?) -> Bool
  func didChangeText()
  var rangeForUserTextChange: NSRange { get }
  var rangeForUserCharacterAttributeChange: NSRange { get }
  var rangeForUserParagraphAttributeChange: NSRange { get }
  var allowsDocumentBackgroundColorChange: Bool
  @NSCopying var defaultParagraphStyle: NSParagraphStyle?
  var allowsUndo: Bool
  func breakUndoCoalescing()
  @available(OSX 10.6, *)
  var isCoalescingUndo: Bool { get }
  @available(OSX 10.5, *)
  var allowsImageEditing: Bool
  @available(OSX 10.5, *)
  func showFindIndicatorFor(charRange: NSRange)
  @available(OSX 10.10, *)
  var usesRolloverButtonForSelection: Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextViewDelegate?
  var isEditable: Bool
  var isSelectable: Bool
  var isRichText: Bool
  var importsGraphics: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  var isFieldEditor: Bool
  var usesFontPanel: Bool
  var isRulerVisible: Bool
  func setSelectedRange(charRange: NSRange)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRangeForProposedRange(proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(sender: AnyObject?)
  func smartInsertFor(pasteString: String, replacing charRangeToReplace: NSRange, before beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, after afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeStringFor(pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  func smartInsertAfterStringFor(pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  @available(OSX 10.5, *)
  var isAutomaticQuoteSubstitutionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticQuoteSubstitution(sender: AnyObject?)
  @available(OSX 10.5, *)
  var isAutomaticLinkDetectionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticLinkDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDataDetectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDataDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDashSubstitutionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDashSubstitution(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticTextReplacementEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticTextReplacement(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticSpellingCorrectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticSpellingCorrection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var enabledTextCheckingTypes: TextCheckingTypes
  @available(OSX 10.6, *)
  func checkTextIn(range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:])
  @available(OSX 10.6, *)
  func handle(results: [TextCheckingResult], forRange range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:], orthography: Orthography, wordCount: Int)
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
  var isIncrementalSearchingEnabled: Bool
}
extension NSTextView {
  @available(OSX 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(sender: AnyObject?)
  @available(OSX 10.7, *)
  func quickLookPreviewableItemsInRanges(ranges: [Value]) -> [AnyObject]?
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
  optional func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  optional func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  optional func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: Rect, at charIndex: Int)
  optional func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: Rect, event: NSEvent, at charIndex: Int)
  optional func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  optional func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [Value], toCharacterRanges newSelectedCharRanges: [Value]) -> [Value]
  optional func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [Value], replacementStrings: [String]?) -> Bool
  optional func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(notification: Notification)
  optional func textViewDidChangeTypingAttributes(notification: Notification)
  optional func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  optional func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  optional func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  optional func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  optional func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<TextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: TextCheckingTypes, options: [String : AnyObject] = [:], results: [TextCheckingResult], orthography: Orthography, wordCount: Int) -> [TextCheckingResult]
  @available(OSX 10.7, *)
  optional func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> URL?
  @available(OSX 10.8, *)
  optional func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  optional func undoManagerFor(view: NSTextView) -> UndoManager?
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
