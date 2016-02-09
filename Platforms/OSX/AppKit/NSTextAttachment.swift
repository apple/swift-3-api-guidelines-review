
@available(OSX 10.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : ObjectProtocol {
  @available(OSX 10.11, *)
  func imageFor(bounds imageBounds: Rect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: Rect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> Rect
}
@available(OSX 10.0, *)
class NSTextAttachment : Object, NSTextAttachmentContainer, Coding {
  @available(OSX 10.11, *)
  init(data contentData: Data?, ofType uti: String?)
  convenience init(fileWrapper: FileWrapper?)
  @available(OSX 10.11, *)
  @NSCopying var contents: Data?
  @available(OSX 10.11, *)
  var fileType: String?
  @available(OSX 10.11, *)
  var image: NSImage?
  @available(OSX 10.11, *)
  var bounds: Rect
  var fileWrapper: FileWrapper?
  var attachmentCell: NSTextAttachmentCellProtocol?
  convenience init()
  @available(OSX 10.11, *)
  func imageFor(bounds imageBounds: Rect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: Rect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> Rect
  @available(OSX 10.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension AttributedString {
  @available(OSX 10.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
extension MutableAttributedString {
  func updateAttachmentsFrom(path path: String)
}
protocol NSTextAttachmentCellProtocol : ObjectProtocol {
  func draw(frame cellFrame: Rect, in controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: Rect, in controlView: NSView?)
  func trackMouse(theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> Size
  func cellBaselineOffset() -> Point
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment? { get set }
  func draw(frame cellFrame: Rect, in controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func draw(frame cellFrame: Rect, in controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouse(forEvent theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameFor(textContainer: NSTextContainer, proposedLineFragment lineFrag: Rect, glyphPosition position: Point, characterIndex charIndex: Int) -> Rect
}
class NSTextAttachmentCell : NSCell, NSTextAttachmentCellProtocol {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
  func draw(frame cellFrame: Rect, in controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: Rect, in controlView: NSView?)
  func trackMouse(theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> Size
  func cellBaselineOffset() -> Point
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment?
  func draw(frame cellFrame: Rect, in controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func draw(frame cellFrame: Rect, in controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouse(forEvent theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, in cellFrame: Rect, of controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameFor(textContainer: NSTextContainer, proposedLineFragment lineFrag: Rect, glyphPosition position: Point, characterIndex charIndex: Int) -> Rect
}
