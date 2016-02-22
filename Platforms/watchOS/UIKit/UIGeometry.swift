
struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top top: CGFloat, left left: CGFloat, bottom bottom: CGFloat, right right: CGFloat)
}

extension UIEdgeInsets : Equatable {
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal horizontal: CGFloat, vertical vertical: CGFloat)
}

extension UIOffset : Equatable {
}
@available(watchOS 2.0, *)
struct UIRectEdge : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: UIRectEdge { get }
  static var top: UIRectEdge { get }
  static var left: UIRectEdge { get }
  static var bottom: UIRectEdge { get }
  static var right: UIRectEdge { get }
  static var all: UIRectEdge { get }
}
func UIEdgeInsetsMake(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
func UIEdgeInsetsInsetRect(_ rect: CGRect, _ insets: UIEdgeInsets) -> CGRect
func UIOffsetMake(_ horizontal: CGFloat, _ vertical: CGFloat) -> UIOffset
func UIEdgeInsetsEqualToEdgeInsets(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
func UIOffsetEqualToOffset(_ offset1: UIOffset, _ offset2: UIOffset) -> Bool
let UIEdgeInsetsZero: UIEdgeInsets
let UIOffsetZero: UIOffset
func NSStringFromCGPoint(_ point: CGPoint) -> String
func NSStringFromCGVector(_ vector: CGVector) -> String
func NSStringFromCGSize(_ size: CGSize) -> String
func NSStringFromCGRect(_ rect: CGRect) -> String
func NSStringFromCGAffineTransform(_ transform: CGAffineTransform) -> String
func NSStringFromUIEdgeInsets(_ insets: UIEdgeInsets) -> String
func NSStringFromUIOffset(_ offset: UIOffset) -> String
func CGPointFromString(_ string: String) -> CGPoint
func CGVectorFromString(_ string: String) -> CGVector
func CGSizeFromString(_ string: String) -> CGSize
func CGRectFromString(_ string: String) -> CGRect
func CGAffineTransformFromString(_ string: String) -> CGAffineTransform
func UIEdgeInsetsFromString(_ string: String) -> UIEdgeInsets
func UIOffsetFromString(_ string: String) -> UIOffset
extension NSValue {
  /*not inherited*/ init(cgPoint point: CGPoint)
  /*not inherited*/ init(cgVector vector: CGVector)
  /*not inherited*/ init(cgSize size: CGSize)
  /*not inherited*/ init(cgRect rect: CGRect)
  /*not inherited*/ init(cgAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(uiEdgeInsets insets: UIEdgeInsets)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  func cgPointValue() -> CGPoint
  func cgVectorValue() -> CGVector
  func cgSizeValue() -> CGSize
  func cgRectValue() -> CGRect
  func cgAffineTransform() -> CGAffineTransform
  func uiEdgeInsetsValue() -> UIEdgeInsets
  @available(watchOS 2.0, *)
  func uiOffsetValue() -> UIOffset
}
extension NSCoder {
  func encode(_ point: CGPoint, forKey key: String)
  func encode(_ vector: CGVector, forKey key: String)
  func encode(_ size: CGSize, forKey key: String)
  func encode(_ rect: CGRect, forKey key: String)
  func encode(_ transform: CGAffineTransform, forKey key: String)
  func encode(_ insets: UIEdgeInsets, forKey key: String)
  @available(watchOS 2.0, *)
  func encode(_ offset: UIOffset, forKey key: String)
  func decodeCGPoint(forKey key: String) -> CGPoint
  func decodeCGVector(forKey key: String) -> CGVector
  func decodeCGSize(forKey key: String) -> CGSize
  func decodeCGRect(forKey key: String) -> CGRect
  func decodeCGAffineTransform(forKey key: String) -> CGAffineTransform
  func decodeUIEdgeInsets(forKey key: String) -> UIEdgeInsets
  @available(watchOS 2.0, *)
  func decodeUIOffset(forKey key: String) -> UIOffset
}
