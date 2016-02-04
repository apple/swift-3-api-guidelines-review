
@available(OSX 10.5, *)
class NSPathComponentCell : NSTextFieldCell {
  @NSCopying var image: NSImage?
  @NSCopying var URL: NSURL?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
