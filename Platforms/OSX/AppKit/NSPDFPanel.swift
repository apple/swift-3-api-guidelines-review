
@available(OSX 10.9, *)
struct NSPDFPanelOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var ShowsPaperSize: NSPDFPanelOptions { get }
  static var ShowsOrientation: NSPDFPanelOptions { get }
  static var RequestsParentDirectory: NSPDFPanelOptions { get }
}
@available(OSX 10.9, *)
class NSPDFPanel : Object {
  var accessoryController: NSViewController?
  var options: NSPDFPanelOptions
  var defaultFileName: String
  func beginSheetWith(pdfInfo: NSPDFInfo, modalFor docWindow: NSWindow?, completionHandler: (Int) -> Void)
  init()
}
