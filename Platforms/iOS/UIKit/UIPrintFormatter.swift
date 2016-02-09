
@available(iOS 4.2, *)
class UIPrintFormatter : Object, Copying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPageAt(pageIndex: Int) -> CGRect
  func draw(in rect: CGRect, forPageAt pageIndex: Int)
  init()
  @available(iOS 4.2, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 4.2, *)
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  @available(iOS 7.0, *)
  init(attributedText: AttributedString)
  var text: String?
  @available(iOS 7.0, *)
  @NSCopying var attributedText: AttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
  init()
}
@available(iOS 4.2, *)
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
  init()
}
@available(iOS 4.2, *)
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
  init()
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func draw(rect: CGRect, forViewPrintFormatter formatter: UIViewPrintFormatter)
}
