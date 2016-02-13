
@available(iOS 7.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : ObjectProtocol {
  @available(iOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(iOS 7.0, *)
class NSTextAttachment : Object, NSTextAttachmentContainer, Coding {
  @available(iOS 7.0, *)
  init(data contentData: Data?, ofType uti: String?)
  @available(iOS 7.0, *)
  @NSCopying var contents: Data?
  @available(iOS 7.0, *)
  var fileType: String?
  @available(iOS 7.0, *)
  var image: UIImage?
  @available(iOS 7.0, *)
  var bounds: CGRect
  var fileWrapper: FileWrapper?
  convenience init()
  @available(iOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 7.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  @available(iOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
