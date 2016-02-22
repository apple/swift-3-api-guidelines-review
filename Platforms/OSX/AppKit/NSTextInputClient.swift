
protocol NSTextInputClient {
  func insertText(_ aString: AnyObject, replacementRange replacementRange: NSRange)
  func doCommand(by aSelector: Selector)
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
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyph(for aPoint: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacter(at anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacter(at charIndex: Int) -> Bool
}
