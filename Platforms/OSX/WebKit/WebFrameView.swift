
class WebFrameView : NSView {
  var webFrame: WebFrame! { get }
  var documentView: NSView! { get }
  var allowsScrolling: Bool
  var canPrintHeadersAndFooters: Bool { get }
  func printOperationWithPrintInfo(printInfo: NSPrintInfo!) -> NSPrintOperation!
  var documentViewShouldHandlePrint: Bool { get }
  func printDocumentView()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
