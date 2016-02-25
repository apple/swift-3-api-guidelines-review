
@available(tvOS 9.0, *)
enum UIStackViewDistribution : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case FillEqually
  case FillProportionally
  case EqualSpacing
  case EqualCentering
}
@available(tvOS 9.0, *)
enum UIStackViewAlignment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case Leading
  static var Top: UIStackViewAlignment { get }
  case FirstBaseline
  case Center
  case Trailing
  static var Bottom: UIStackViewAlignment { get }
  case LastBaseline
}
@available(tvOS 9.0, *)
class UIStackView : UIView {
  init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(_ view: UIView)
  func removeArrangedSubview(_ view: UIView)
  func insertArrangedSubview(_ view: UIView, atIndex stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var baselineRelativeArrangement: Bool
  var layoutMarginsRelativeArrangement: Bool
}
