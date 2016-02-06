
protocol NSTextInputClient {
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBy(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringFor(proposedRange aRange: NSRange, actualRange: RangePointer) -> AttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectFor(characterRange aRange: NSRange, actualRange: RangePointer) -> Rect
  func characterIndexFor(aPoint: Point) -> Int
  @available(OSX 10.0, *)
  optional func attributedString() -> AttributedString
  optional func fractionOfDistanceThroughGlyphFor(aPoint: Point) -> CGFloat
  optional func baselineDeltaForCharacterAt(anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacterAt(charIndex: Int) -> Bool
}
