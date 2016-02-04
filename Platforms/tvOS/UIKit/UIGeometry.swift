
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
@available(tvOS 7.0, *)
struct UIRectEdge : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRectEdge { get }
  static var Top: UIRectEdge { get }
  static var Left: UIRectEdge { get }
  static var Bottom: UIRectEdge { get }
  static var Right: UIRectEdge { get }
  static var All: UIRectEdge { get }
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
extension NSValue {
  /*not inherited*/ init(CGPoint point: CGPoint)
  /*not inherited*/ init(CGVector vector: CGVector)
  /*not inherited*/ init(CGSize size: CGSize)
  /*not inherited*/ init(CGRect rect: CGRect)
  /*not inherited*/ init(CGAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(UIEdgeInsets insets: UIEdgeInsets)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(UIOffset insets: UIOffset)
  func CGPointValue() -> CGPoint
  func CGVectorValue() -> CGVector
  func CGSizeValue() -> CGSize
  func CGRectValue() -> CGRect
  func CGAffineTransformValue() -> CGAffineTransform
  func UIEdgeInsetsValue() -> UIEdgeInsets
  @available(tvOS 5.0, *)
  func UIOffsetValue() -> UIOffset
}
extension NSCoder {
  func encodeCGPoint(point: CGPoint, forKey key: String)
  func encodeCGVector(vector: CGVector, forKey key: String)
  func encodeCGSize(size: CGSize, forKey key: String)
  func encodeCGRect(rect: CGRect, forKey key: String)
  func encodeCGAffineTransform(transform: CGAffineTransform, forKey key: String)
  func encodeUIEdgeInsets(insets: UIEdgeInsets, forKey key: String)
  @available(tvOS 5.0, *)
  func encodeUIOffset(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  @available(tvOS 5.0, *)
  func decodeUIOffsetForKey(key: String) -> UIOffset
}
