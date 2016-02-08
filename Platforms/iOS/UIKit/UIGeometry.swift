
struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}

extension UIEdgeInsets : Equatable {
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal: CGFloat, vertical: CGFloat)
}

extension UIOffset : Equatable {
}
@available(iOS 7.0, *)
struct UIRectEdge : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: UIRectEdge { get }
  static var top: UIRectEdge { get }
  static var left: UIRectEdge { get }
  static var bottom: UIRectEdge { get }
  static var right: UIRectEdge { get }
  static var all: UIRectEdge { get }
}
func UIEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
func UIEdgeInsetsInsetRect(rect: CGRect, _ insets: UIEdgeInsets) -> CGRect
func UIOffsetMake(horizontal: CGFloat, _ vertical: CGFloat) -> UIOffset
func UIEdgeInsetsEqualToEdgeInsets(insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
func UIOffsetEqualToOffset(offset1: UIOffset, _ offset2: UIOffset) -> Bool
let UIEdgeInsetsZero: UIEdgeInsets
let UIOffsetZero: UIOffset
func NSStringFromCGPoint(point: CGPoint) -> String
func NSStringFromCGVector(vector: CGVector) -> String
func NSStringFromCGSize(size: CGSize) -> String
func NSStringFromCGRect(rect: CGRect) -> String
func NSStringFromCGAffineTransform(transform: CGAffineTransform) -> String
func NSStringFromUIEdgeInsets(insets: UIEdgeInsets) -> String
func NSStringFromUIOffset(offset: UIOffset) -> String
func CGPointFromString(string: String) -> CGPoint
func CGVectorFromString(string: String) -> CGVector
func CGSizeFromString(string: String) -> CGSize
func CGRectFromString(string: String) -> CGRect
func CGAffineTransformFromString(string: String) -> CGAffineTransform
func UIEdgeInsetsFromString(string: String) -> UIEdgeInsets
func UIOffsetFromString(string: String) -> UIOffset
extension Value {
  /*not inherited*/ init(cgPoint point: CGPoint)
  /*not inherited*/ init(cgVector vector: CGVector)
  /*not inherited*/ init(cgSize size: CGSize)
  /*not inherited*/ init(cgRect rect: CGRect)
  /*not inherited*/ init(cgAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(uiEdgeInsets insets: UIEdgeInsets)
  @available(iOS 5.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  func cgPointValue() -> CGPoint
  func cgVectorValue() -> CGVector
  func cgSizeValue() -> CGSize
  func cgRectValue() -> CGRect
  func cgAffineTransform() -> CGAffineTransform
  func uiEdgeInsetsValue() -> UIEdgeInsets
  @available(iOS 5.0, *)
  func uiOffsetValue() -> UIOffset
}
extension Coder {
  func encode(point: CGPoint, forKey key: String)
  func encode(vector: CGVector, forKey key: String)
  func encode(size: CGSize, forKey key: String)
  func encode(rect: CGRect, forKey key: String)
  func encode(transform: CGAffineTransform, forKey key: String)
  func encode(insets: UIEdgeInsets, forKey key: String)
  @available(iOS 5.0, *)
  func encode(offset: UIOffset, forKey key: String)
  func decodeCGPointFor(key key: String) -> CGPoint
  func decodeCGVectorFor(key key: String) -> CGVector
  func decodeCGSizeFor(key key: String) -> CGSize
  func decodeCGRectFor(key key: String) -> CGRect
  func decodeCGAffineTransformFor(key key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsFor(key key: String) -> UIEdgeInsets
  @available(iOS 5.0, *)
  func decodeUIOffsetFor(key key: String) -> UIOffset
}
