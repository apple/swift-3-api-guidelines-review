
enum NSPathStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case PopUp
}
@available(OSX 10.5, *)
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var URL: NSURL?
  func setObjectValue(_ obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rectOfPathComponentCell(_ cell: NSPathComponentCell, withFrame frame: NSRect, inView view: NSView) -> NSRect
  func pathComponentCellAtPoint(_ point: NSPoint, withFrame frame: NSRect, inView view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(_ event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  func mouseExited(_ event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @available(OSX 10.6, *)
  func panel(_ sender: AnyObject, shouldEnableURL url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func panel(_ sender: AnyObject, validateURL url: NSURL) throws
  @available(OSX 10.6, *)
  func panel(_ sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  @available(OSX 10.5, *)
  func panel(_ sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  @available(OSX 10.5, *)
  func panel(_ sender: AnyObject, willExpand expanding: Bool)
  @available(OSX 10.5, *)
  func panelSelectionDidChange(_ sender: AnyObject?)
}
protocol NSPathCellDelegate : NSObjectProtocol {
  @available(OSX 10.5, *)
  optional func pathCell(_ pathCell: NSPathCell, willDisplayOpenPanel openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathCell(_ pathCell: NSPathCell, willPopUpMenu menu: NSMenu)
}
