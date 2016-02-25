
enum NSPathStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case standard
  case popUp
}
@available(OSX 10.5, *)
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var url: NSURL?
  func setObjectValue(_ obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rect(of cell: NSPathComponentCell, withFrame frame: NSRect, in view: NSView) -> NSRect
  func pathComponentCell(at point: NSPoint, withFrame frame: NSRect, in view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(_ event: NSEvent, withFrame frame: NSRect, in view: NSView)
  func mouseExited(_ event: NSEvent, withFrame frame: NSRect, in view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @available(OSX 10.6, *)
  func panel(_ sender: AnyObject, shouldEnable url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func panel(_ sender: AnyObject, validate url: NSURL) throws
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
  optional func pathCell(_ pathCell: NSPathCell, willDisplay openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathCell(_ pathCell: NSPathCell, willPopUp menu: NSMenu)
}
