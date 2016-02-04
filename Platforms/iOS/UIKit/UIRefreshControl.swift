
@available(iOS 6.0, *)
class UIRefreshControl : UIControl {
  init()
  var isRefreshing: Bool { get }
  var tintColor: UIColor!
  var attributedTitle: AttributedString?
  @available(iOS 6.0, *)
  func beginRefreshing()
  @available(iOS 6.0, *)
  func endRefreshing()
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
}
