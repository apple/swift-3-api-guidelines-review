
class WebFrameView : NSView {
  var webFrame: WebFrame! { get }
  var documentView: NSView! { get }
  var allowsScrolling: Bool
  var canPrintHeadersAndFooters: Bool { get }
  func printOperation(_ printInfo: NSPrintInfo!) -> NSPrintOperation!
  var documentViewShouldHandlePrint: Bool { get }
  func printDocumentView()
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
}
