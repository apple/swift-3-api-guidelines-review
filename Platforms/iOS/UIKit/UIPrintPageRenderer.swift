
@available(iOS 4.2, *)
class UIPrintPageRenderer : NSObject {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPageAtIndex(pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(formatter: UIPrintFormatter, startingAtPageAtIndex pageIndex: Int)
  func numberOfPages() -> Int
  func prepareForDrawingPages(range: NSRange)
  func drawPageAtIndex(pageIndex: Int, inRect printableRect: CGRect)
  func drawPrintFormatter(printFormatter: UIPrintFormatter, forPageAtIndex pageIndex: Int)
  func drawHeaderForPageAtIndex(pageIndex: Int, inRect headerRect: CGRect)
  func drawContentForPageAtIndex(pageIndex: Int, inRect contentRect: CGRect)
  func drawFooterForPageAtIndex(pageIndex: Int, inRect footerRect: CGRect)
  init()
}
