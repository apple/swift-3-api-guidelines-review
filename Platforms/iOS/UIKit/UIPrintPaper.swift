
@available(iOS 4.2, *)
class UIPrintPaper : NSObject {
  class func bestPaperForPageSize(contentSize: CGSize, withPapersFromArray paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
  init()
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
