
@available(iOS 4.2, *)
class UIPrintPageRenderer : NSObject {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPageAtIndex(_ pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(_ formatter: UIPrintFormatter, startingAtPageAtIndex pageIndex: Int)
  func numberOfPages() -> Int
  func prepareForDrawingPages(_ range: NSRange)
  func drawPageAtIndex(_ pageIndex: Int, inRect printableRect: CGRect)
  func drawPrintFormatter(_ printFormatter: UIPrintFormatter, forPageAtIndex pageIndex: Int)
  func drawHeaderForPageAtIndex(_ pageIndex: Int, inRect headerRect: CGRect)
  func drawContentForPageAtIndex(_ pageIndex: Int, inRect contentRect: CGRect)
  func drawFooterForPageAtIndex(_ pageIndex: Int, inRect footerRect: CGRect)
}
