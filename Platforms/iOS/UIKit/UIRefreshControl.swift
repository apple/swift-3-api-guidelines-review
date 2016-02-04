
@available(iOS 6.0, *)
class UIRefreshControl : UIControl {
  init()
  var refreshing: Bool { get }
  var tintColor: UIColor!
  var attributedTitle: NSAttributedString?
  @available(iOS 6.0, *)
  func beginRefreshing()
  @available(iOS 6.0, *)
  func endRefreshing()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
}
