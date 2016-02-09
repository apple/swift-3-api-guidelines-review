
@available(iOS 4.2, *)
class UIPrintPageRenderer : Object {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPageAt(pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(formatter: UIPrintFormatter, startingAtPageAt pageIndex: Int)
  func numberOfPages() -> Int
  func prepareForDrawingPages(range: NSRange)
  func drawPage(at pageIndex: Int, in printableRect: CGRect)
  func drawPrintFormatter(printFormatter: UIPrintFormatter, forPageAt pageIndex: Int)
  func drawHeaderForPage(at pageIndex: Int, in headerRect: CGRect)
  func drawContentForPage(at pageIndex: Int, in contentRect: CGRect)
  func drawFooterForPage(at pageIndex: Int, in footerRect: CGRect)
  init()
}
