
@available(OSX 10.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(OSX 10.11, *)
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
}
@available(OSX 10.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {
  @available(OSX 10.11, *)
  init(data contentData: NSData?, ofType uti: String?)
  convenience init(fileWrapper: NSFileWrapper?)
  @available(OSX 10.11, *)
  @NSCopying var contents: NSData?
  @available(OSX 10.11, *)
  var fileType: String?
  @available(OSX 10.11, *)
  var image: NSImage?
  @available(OSX 10.11, *)
  var bounds: NSRect
  var fileWrapper: NSFileWrapper?
  var attachmentCell: NSTextAttachmentCellProtocol?
  convenience init()
  @available(OSX 10.11, *)
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
extension NSMutableAttributedString {
  func updateAttachmentsFromPath(path: String)
}
protocol NSTextAttachmentCellProtocol : NSObjectProtocol {
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, inView controlView: NSView?)
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment? { get set }
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseForEvent(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameForTextContainer(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextAttachmentCell : NSCell, NSTextAttachmentCellProtocol {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, inView controlView: NSView?)
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment?
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func drawWithFrame(cellFrame: NSRect, inView controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseForEvent(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, inRect cellFrame: NSRect, ofView controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameForTextContainer(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
