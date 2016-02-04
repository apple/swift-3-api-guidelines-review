
protocol NSTextInputClient {
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
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyphForPoint(aPoint: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacterAtIndex(anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacterAtIndex(charIndex: Int) -> Bool
}
