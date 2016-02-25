
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSTextField directly instead, and consider NSStackView for layout assistance")
class NSForm : NSMatrix {
  func indexOfSelectedItem() -> Int
  func setEntryWidth(_ width: CGFloat)
  func setInterlineSpacing(_ spacing: CGFloat)
  func setBordered(_ flag: Bool)
  func setBezeled(_ flag: Bool)
  func setTitleAlignment(_ mode: NSTextAlignment)
  func setTextAlignment(_ mode: NSTextAlignment)
  func setTitleFont(_ fontObj: NSFont)
  func setTextFont(_ fontObj: NSFont)
  func cell(at index: Int) -> AnyObject!
  func drawCell(at index: Int)
  func addEntry(_ title: String) -> NSFormCell
  func insertEntry(_ title: String, at index: Int) -> NSFormCell!
  func removeEntry(at index: Int)
  func indexOfCell(withTag aTag: Int) -> Int
  func selectText(at index: Int)
  func setTitleBaseWritingDirection(_ writingDirection: NSWritingDirection)
  func setTextBaseWritingDirection(_ writingDirection: NSWritingDirection)
  @available(OSX 10.8, *)
  func setPreferredTextFieldWidth(_ preferredWidth: CGFloat)
  @available(OSX 10.8, *)
  func preferredTextFieldWidth() -> CGFloat
}
