
@available(tvOS 9.0, *)
enum UIStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case fillEqually
  case fillProportionally
  case equalSpacing
  case equalCentering
}
@available(tvOS 9.0, *)
enum UIStackViewAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fill
  case leading
  static var top: UIStackViewAlignment { get }
  case firstBaseline
  case center
  case trailing
  static var bottom: UIStackViewAlignment { get }
  case lastBaseline
}
@available(tvOS 9.0, *)
class UIStackView : UIView {
  init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(view: UIView)
  func removeArrangedSubview(view: UIView)
  func insertArrangedSubview(view: UIView, at stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var isBaselineRelativeArrangement: Bool
  var isLayoutMarginsRelativeArrangement: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
