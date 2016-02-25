
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
@available(tvOS 7.0, *)
struct UIRectEdge : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: UIRectEdge { get }
  static var Top: UIRectEdge { get }
  static var Left: UIRectEdge { get }
  static var Bottom: UIRectEdge { get }
  static var Right: UIRectEdge { get }
  static var All: UIRectEdge { get }
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
  func encodeCGPoint(_ point: CGPoint, forKey key: String)
  func encodeCGVector(_ vector: CGVector, forKey key: String)
  func encodeCGSize(_ size: CGSize, forKey key: String)
  func encodeCGRect(_ rect: CGRect, forKey key: String)
  func encodeCGAffineTransform(_ transform: CGAffineTransform, forKey key: String)
  func encodeUIEdgeInsets(_ insets: UIEdgeInsets, forKey key: String)
  @available(tvOS 5.0, *)
  func encodeUIOffset(_ offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(_ key: String) -> CGPoint
  func decodeCGVectorForKey(_ key: String) -> CGVector
  func decodeCGSizeForKey(_ key: String) -> CGSize
  func decodeCGRectForKey(_ key: String) -> CGRect
  func decodeCGAffineTransformForKey(_ key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(_ key: String) -> UIEdgeInsets
  @available(tvOS 5.0, *)
  func decodeUIOffsetForKey(_ key: String) -> UIOffset
}
