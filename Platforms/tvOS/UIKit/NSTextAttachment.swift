
@available(tvOS 7.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : ObjectProtocol {
  @available(tvOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBounds(forTextContainer textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(tvOS 7.0, *)
class NSTextAttachment : Object, NSTextAttachmentContainer, Coding {
  @available(tvOS 7.0, *)
  init(data contentData: Data?, ofType uti: String?)
  @available(tvOS 7.0, *)
  @NSCopying var contents: Data?
  @available(tvOS 7.0, *)
  var fileType: String?
  @available(tvOS 7.0, *)
  var image: UIImage?
  @available(tvOS 7.0, *)
  var bounds: CGRect
  var fileWrapper: FileWrapper?
  convenience init()
  @available(tvOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBounds(forTextContainer textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(tvOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  @available(tvOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
