
protocol NSTextInputClient {
  func insertText(_ aString: AnyObject, replacementRange replacementRange: NSRange)
  func doCommandBySelector(_ aSelector: Selector)
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
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyphForPoint(_ aPoint: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacterAtIndex(_ anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacterAtIndex(_ charIndex: Int) -> Bool
}
