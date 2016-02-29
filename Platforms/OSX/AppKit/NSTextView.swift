
enum NSSelectionGranularity : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case selectByCharacter
  case selectByWord
  case selectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case upstream
  case downstream
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
  func setNeedsDisplayIn(_ rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPoint(in rect: NSRect, color color: NSColor, turnedOn flag: Bool)
  func drawBackground(in rect: NSRect)
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRange(forProposedRange proposedCharRange: NSRange, granularity granularity: NSSelectionGranularity) -> NSRange
  func clicked(onLink link: AnyObject, at charIndex: Int)
  func startSpeaking(_ sender: AnyObject?)
  func stopSpeaking(_ sender: AnyObject?)
  @available(OSX 10.7, *)
  func setLayoutOrientation(_ theOrientation: NSTextLayoutOrientation)
  @available(OSX 10.7, *)
  func changeLayoutOrientation(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  func characterIndexForInsertion(at point: NSPoint) -> Int
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(_ aString: AnyObject, replacementRange replacementRange: NSRange)
  func setMarkedText(_ aString: AnyObject, selectedRange selectedRange: NSRange, replacementRange replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstring(forProposedRange aRange: NSRange, actualRange actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRect(forCharacterRange aRange: NSRange, actualRange actualRange: NSRangePointer) -> NSRect
  func characterIndex(for aPoint: NSPoint) -> Int
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func fractionOfDistanceThroughGlyph(for aPoint: NSPoint) -> CGFloat
  func baselineDeltaForCharacter(at anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  @available(OSX 10.6, *)
  func drawsVerticallyForCharacter(at charIndex: Int) -> Bool
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(_ session: NSDraggingSession, endedAt screenPoint: NSPoint, operation operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeys(for session: NSDraggingSession) -> Bool
}
extension NSTextView {
  var rangeForUserCompletion: NSRange { get }
  func completions(forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(_ word: String, forPartialWordRange charRange: NSRange, movement movement: Int, isFinal flag: Bool)
}
extension NSTextView {
  var writablePasteboardTypes: [String] { get }
  func writeSelection(to pboard: NSPasteboard, type type: String) -> Bool
  func writeSelection(to pboard: NSPasteboard, types types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardType(from availableTypes: [String], restrictedToTypesFrom allowedTypes: [String]?) -> String?
  func readSelection(from pboard: NSPasteboard, type type: String) -> Bool
  func readSelection(from pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func pasteAsPlainText(_ sender: AnyObject?)
  func pasteAsRichText(_ sender: AnyObject?)
}
extension NSTextView {
  func dragSelection(with event: NSEvent, offset mouseOffset: NSSize, slideBack slideBack: Bool) -> Bool
  func dragImageForSelection(with event: NSEvent, origin origin: NSPointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperation(for dragInfo: NSDraggingInfo, type type: String) -> NSDragOperation
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
  var isContinuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(_ sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  @available(OSX 10.5, *)
  var isGrammarCheckingEnabled: Bool
  @available(OSX 10.5, *)
  func toggleGrammarChecking(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  func setSpellingState(_ value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeText(inRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeText(in affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
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
  func showFindIndicator(for charRange: NSRange)
  @available(OSX 10.10, *)
  var usesRolloverButtonForSelection: Bool
  func setSelectedRange(_ charRange: NSRange)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {
  var smartInsertDeleteEnabled: Bool
  func smartDeleteRange(forProposedRange proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(_ sender: AnyObject?)
  func smartInsert(for pasteString: String, replacing charRangeToReplace: NSRange, before beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, after afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeString(for pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  func smartInsertAfterString(for pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  @available(OSX 10.5, *)
  var isAutomaticQuoteSubstitutionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticQuoteSubstitution(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  var isAutomaticLinkDetectionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticLinkDetection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDataDetectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDataDetection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDashSubstitutionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDashSubstitution(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticTextReplacementEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticTextReplacement(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticSpellingCorrectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticSpellingCorrection(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  @available(OSX 10.6, *)
  func checkText(in range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject] = [:])
  @available(OSX 10.6, *)
  func handle(_ results: [NSTextCheckingResult], for range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject] = [:], orthography orthography: NSOrthography, wordCount wordCount: Int)
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
  var isIncrementalSearchingEnabled: Bool
}
extension NSTextView {
  @available(OSX 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(_ sender: AnyObject?)
  @available(OSX 10.7, *)
  func quickLookPreviewableItems(inRanges ranges: [NSValue]) -> [AnyObject]?
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
  optional func textView(_ textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  optional func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(_ textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event event: NSEvent, at charIndex: Int)
  optional func textView(_ view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  optional func textView(_ view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type type: String) -> Bool
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(_ textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(_ textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings replacementStrings: [String]?) -> Bool
  optional func textView(_ textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject] = [:], toAttributes newTypingAttributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(_ notification: NSNotification)
  optional func textViewDidChangeTypingAttributes(_ notification: NSNotification)
  optional func textView(_ textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  optional func textView(_ textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(_ textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString replacementString: String?) -> Bool
  optional func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  optional func textView(_ textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  optional func textView(_ view: NSTextView, menu menu: NSMenu, for event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  optional func textView(_ view: NSTextView, willCheckTextIn range: NSRange, options options: [String : AnyObject] = [:], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  optional func textView(_ view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options options: [String : AnyObject] = [:], results results: [NSTextCheckingResult], orthography orthography: NSOrthography, wordCount wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  optional func textView(_ textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  optional func textView(_ textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  optional func undoManager(for view: NSTextView) -> NSUndoManager?
}
let NSTextViewWillChangeNotifyingTextViewNotification: String
let NSTextViewDidChangeSelectionNotification: String
let NSTextViewDidChangeTypingAttributesNotification: String
enum NSFindPanelAction : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case showFindPanel
  case next
  case previous
  case replaceAll
  case replace
  case replaceAndFind
  case setFindString
  case replaceAllInSelection
  case selectAll
  case selectAllInSelection
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
  case contains
  case startsWith
  case fullWord
  case endsWith
}
