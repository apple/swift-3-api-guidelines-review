
class NSSecureTextField : NSTextField {
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
class NSSecureTextFieldCell : NSTextFieldCell {
  var echosBullets: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
