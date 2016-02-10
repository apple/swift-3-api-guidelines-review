
@available(iOS 4.2, *)
class UIPrintPaper : Object {
  class func bestPaperFor(pageSize contentSize: CGSize, withPapersFrom paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
  init()
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
