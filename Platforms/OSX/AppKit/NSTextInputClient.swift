
protocol NSTextInputClient {
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommand(by aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstring(forProposedRange aRange: NSRange, actualRange: RangePointer) -> AttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRect(forCharacterRange aRange: NSRange, actualRange: RangePointer) -> Rect
  func characterIndex(forPoint aPoint: Point) -> Int
  @available(OSX 10.0, *)
  optional func attributedString() -> AttributedString
  optional func fractionOfDistanceThroughGlyph(forPoint aPoint: Point) -> CGFloat
  optional func baselineDeltaForCharacter(at anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacter(at charIndex: Int) -> Bool
}
