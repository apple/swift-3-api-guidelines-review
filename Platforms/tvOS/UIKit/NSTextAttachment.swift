
@available(tvOS 7.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(tvOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(tvOS 7.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {
  @available(tvOS 7.0, *)
  init(data contentData: NSData?, ofType uti: String?)
  @available(tvOS 7.0, *)
  @NSCopying var contents: NSData?
  @available(tvOS 7.0, *)
  var fileType: String?
  @available(tvOS 7.0, *)
  var image: UIImage?
  @available(tvOS 7.0, *)
  var bounds: CGRect
  var fileWrapper: NSFileWrapper?
  convenience init()
  @available(tvOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  @available(tvOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
