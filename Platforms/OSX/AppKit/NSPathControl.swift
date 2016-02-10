
@available(OSX 10.5, *)
class NSPathControl : NSControl {
  @available(OSX 10.10, *)
  var isEditable: Bool
  @available(OSX 10.10, *)
  var allowedTypes: [String]?
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: AttributedString?
  @NSCopying var url: URL?
  var doubleAction: Selector
  var pathStyle: NSPathStyle
  @available(OSX 10.10, *)
  var clickedPathItem: NSPathControlItem? { get }
  @available(OSX 10.10, *)
  var pathItems: [NSPathControlItem]
  @NSCopying var backgroundColor: NSColor?
  weak var delegate: @sil_weak NSPathControlDelegate?
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  var menu: NSMenu?
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol NSPathControlDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func pathControl(pathControl: NSPathControl, shouldDrag pathItem: NSPathControlItem, with pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, shouldDrag pathComponentCell: NSPathComponentCell, with pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, validateDrop info: NSDraggingInfo) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, acceptDrop info: NSDraggingInfo) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willDisplay openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willPopUp menu: NSMenu)
}
extension NSPathControl {
  func clickedPathComponentCell() -> NSPathComponentCell?
  func pathComponentCells() -> [NSPathComponentCell]
  func setPathComponentCells(cells: [NSPathComponentCell])
}
