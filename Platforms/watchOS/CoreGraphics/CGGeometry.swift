
struct CGPoint {
  var x: CGFloat
  var y: CGFloat
  init()
  init(x x: CGFloat, y y: CGFloat)
}

extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x x: Int, y y: Int)
  @_transparent init(x x: Double, y y: Double)
}

extension CGPoint : CustomReflectable, CustomPlaygroundQuickLookable {
}

extension CGPoint : CustomDebugStringConvertible {
}

extension CGPoint : Equatable {
}
struct CGSize {
  var width: CGFloat
  var height: CGFloat
  init()
  init(width width: CGFloat, height height: CGFloat)
}

extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width width: Int, height height: Int)
  @_transparent init(width width: Double, height height: Double)
}

extension CGSize : CustomReflectable, CustomPlaygroundQuickLookable {
}

extension CGSize : CustomDebugStringConvertible {
}

extension CGSize : Equatable {
}
struct CGVector {
  var dx: CGFloat
  var dy: CGFloat
  init()
  init(dx dx: CGFloat, dy dy: CGFloat)
}

extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx dx: Int, dy dy: Int)
  @_transparent init(dx dx: Double, dy dy: Double)
}

extension CGVector : Equatable {
}
struct CGRect {
  var origin: CGPoint
  var size: CGSize
  init()
  init(origin origin: CGPoint, size size: CGSize)
}

extension CGRect {
  static var zero: CGRect { get }
  static var null: CGRect { get }
  static var infinite: CGRect { get }
  @_transparent init(x x: CGFloat, y y: CGFloat, width width: CGFloat, height height: CGFloat)
  @_transparent init(x x: Double, y y: Double, width width: Double, height height: Double)
  @_transparent init(x x: Int, y y: Int, width width: Int, height height: Int)
  var width: CGFloat { get }
  var height: CGFloat { get }
  var minX: CGFloat { get }
  var midX: CGFloat { get }
  var maxX: CGFloat { get }
  var minY: CGFloat { get }
  var midY: CGFloat { get }
  var maxY: CGFloat { get }
  var isNull: Bool { get }
  var isEmpty: Bool { get }
  var isInfinite: Bool { get }
  var standardized: CGRect { get }
  var integral: CGRect { get }
  @_transparent mutating func standardizeInPlace()
  @_transparent mutating func makeIntegralInPlace()
  @warn_unused_result(mutable_variant="insetInPlace")
  @_transparent func insetBy(dx dx: CGFloat, dy dy: CGFloat) -> CGRect
  @_transparent mutating func insetInPlace(dx dx: CGFloat, dy dy: CGFloat)
  @warn_unused_result(mutable_variant="offsetInPlace")
  @_transparent func offsetBy(dx dx: CGFloat, dy dy: CGFloat) -> CGRect
  @_transparent mutating func offsetInPlace(dx dx: CGFloat, dy dy: CGFloat)
  @warn_unused_result(mutable_variant="unionInPlace")
  @_transparent func union(_ rect: CGRect) -> CGRect
  @_transparent mutating func unionInPlace(_ rect: CGRect)
  @warn_unused_result(mutable_variant="intersectInPlace")
  @_transparent func intersect(_ rect: CGRect) -> CGRect
  @_transparent mutating func intersectInPlace(_ rect: CGRect)
  @warn_unused_result
  @_transparent func divide(_ atDistance: CGFloat, fromEdge fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
  @warn_unused_result
  @_transparent func contains(_ rect: CGRect) -> Bool
  @warn_unused_result
  @_transparent func contains(_ point: CGPoint) -> Bool
  @warn_unused_result
  @_transparent func intersects(_ rect: CGRect) -> Bool
}

extension CGRect : CustomReflectable, CustomPlaygroundQuickLookable {
}

extension CGRect : CustomDebugStringConvertible {
}

extension CGRect : Equatable {
}
enum CGRectEdge : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case minXEdge
  case minYEdge
  case maxXEdge
  case maxYEdge
}
@available(watchOS 2.0, *)
let CGPointZero: CGPoint
@available(watchOS 2.0, *)
let CGSizeZero: CGSize
@available(watchOS 2.0, *)
let CGRectZero: CGRect
@available(watchOS 2.0, *)
let CGRectNull: CGRect
@available(watchOS 2.0, *)
let CGRectInfinite: CGRect
@available(watchOS 2.0, *)
func CGRectGetMinX(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMidX(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMaxX(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMinY(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMidY(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMaxY(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetWidth(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetHeight(_ rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGPointEqualToPoint(_ point1: CGPoint, _ point2: CGPoint) -> Bool
@available(watchOS 2.0, *)
func CGSizeEqualToSize(_ size1: CGSize, _ size2: CGSize) -> Bool
@available(watchOS 2.0, *)
func CGRectEqualToRect(_ rect1: CGRect, _ rect2: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectStandardize(_ rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectIsEmpty(_ rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIsNull(_ rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIsInfinite(_ rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectInset(_ rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(watchOS 2.0, *)
func CGRectIntegral(_ rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectUnion(_ r1: CGRect, _ r2: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectIntersection(_ r1: CGRect, _ r2: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectOffset(_ rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(watchOS 2.0, *)
func CGRectDivide(_ rect: CGRect, _ slice: UnsafeMutablePointer<CGRect>, _ remainder: UnsafeMutablePointer<CGRect>, _ amount: CGFloat, _ edge: CGRectEdge)
@available(watchOS 2.0, *)
func CGRectContainsPoint(_ rect: CGRect, _ point: CGPoint) -> Bool
@available(watchOS 2.0, *)
func CGRectContainsRect(_ rect1: CGRect, _ rect2: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIntersectsRect(_ rect1: CGRect, _ rect2: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGPointCreateDictionaryRepresentation(_ point: CGPoint) -> CFDictionary
@available(watchOS 2.0, *)
func CGPointMakeWithDictionaryRepresentation(_ dict: CFDictionary?, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
@available(watchOS 2.0, *)
func CGSizeCreateDictionaryRepresentation(_ size: CGSize) -> CFDictionary
@available(watchOS 2.0, *)
func CGSizeMakeWithDictionaryRepresentation(_ dict: CFDictionary?, _ size: UnsafeMutablePointer<CGSize>) -> Bool
@available(watchOS 2.0, *)
func CGRectCreateDictionaryRepresentation(_ _: CGRect) -> CFDictionary
@available(watchOS 2.0, *)
func CGRectMakeWithDictionaryRepresentation(_ dict: CFDictionary?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
func CGPointMake(_ x: CGFloat, _ y: CGFloat) -> CGPoint
func CGSizeMake(_ width: CGFloat, _ height: CGFloat) -> CGSize
func CGVectorMake(_ dx: CGFloat, _ dy: CGFloat) -> CGVector
func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect
func __CGPointEqualToPoint(_ point1: CGPoint, _ point2: CGPoint) -> Bool
func __CGSizeEqualToSize(_ size1: CGSize, _ size2: CGSize) -> Bool
