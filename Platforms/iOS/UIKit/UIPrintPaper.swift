
@available(iOS 4.2, *)
class UIPrintPaper : NSObject {
  class func bestPaper(forPageSize contentSize: CGSize, withPapersFrom paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
