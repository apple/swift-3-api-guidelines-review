
class NSFormCell : NSActionCell {
  init(textCell aString: String?)
  func titleWidth(aSize: NSSize) -> CGFloat
  var titleWidth: CGFloat
  var title: String
  var titleFont: NSFont
  var titleAlignment: NSTextAlignment
  var isOpaque: Bool { get }
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  var titleBaseWritingDirection: NSWritingDirection
  @available(OSX 10.8, *)
  var preferredTextFieldWidth: CGFloat
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSFormCell {
}
extension NSFormCell {
  @NSCopying var attributedTitle: NSAttributedString
}
