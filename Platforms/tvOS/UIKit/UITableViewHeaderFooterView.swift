
@available(tvOS 6.0, *)
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  var tintColor: UIColor!
  var textLabel: UILabel? { get }
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  convenience init(frame: CGRect)
  convenience init()
}
