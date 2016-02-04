
enum NSPathStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case PopUp
}
@available(OSX 10.5, *)
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var URL: NSURL?
  func setObjectValue(obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rectOfPathComponentCell(cell: NSPathComponentCell, withFrame frame: NSRect, inView view: NSView) -> NSRect
  func pathComponentCellAtPoint(point: NSPoint, withFrame frame: NSRect, inView view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  func mouseExited(event: NSEvent, withFrame frame: NSRect, inView view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, shouldEnableURL url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, validateURL url: NSURL) throws
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, willExpand expanding: Bool)
  @available(OSX 10.5, *)
  func panelSelectionDidChange(sender: AnyObject?)
}
protocol NSPathCellDelegate : NSObjectProtocol {
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willDisplayOpenPanel openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willPopUpMenu menu: NSMenu)
}
