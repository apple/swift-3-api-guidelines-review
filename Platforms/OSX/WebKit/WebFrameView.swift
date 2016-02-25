
class WebFrameView : NSView {
  var documentView: NSView! { get }
  var allowsScrolling: Bool
  var canPrintHeadersAndFooters: Bool { get }
  func printOperation(_ printInfo: NSPrintInfo!) -> NSPrintOperation!
  var documentViewShouldHandlePrint: Bool { get }
  func printDocumentView()
}
