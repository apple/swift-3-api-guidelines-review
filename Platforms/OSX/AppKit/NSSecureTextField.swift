
class NSSecureTextField : NSTextField {
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
}
class NSSecureTextFieldCell : NSTextFieldCell {
  var echosBullets: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
