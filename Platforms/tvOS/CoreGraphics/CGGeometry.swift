
struct CGPoint {
  var x: CGFloat
  var y: CGFloat
  init()
  init(x: CGFloat, y: CGFloat)
}

extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x: Int, y: Int)
  @_transparent init(x: Double, y: Double)
}

extension CGPoint : CustomReflectable, CustomPlaygroundQuickLookable {
  func customMirror() -> Mirror
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}

extension CGPoint : CustomDebugStringConvertible {
  var debugDescription: String { get }
}

extension CGPoint : Equatable {
}
struct CGSize {
  var width: CGFloat
  var height: CGFloat
  init()
  init(width: CGFloat, height: CGFloat)
}

extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width: Int, height: Int)
  @_transparent init(width: Double, height: Double)
}

extension CGSize : CustomReflectable, CustomPlaygroundQuickLookable {
  func customMirror() -> Mirror
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}

extension CGSize : CustomDebugStringConvertible {
  var debugDescription: String { get }
}

extension CGSize : Equatable {
}
struct CGVector {
  var dx: CGFloat
  var dy: CGFloat
  init()
  init(dx: CGFloat, dy: CGFloat)
}

extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx: Int, dy: Int)
  @_transparent init(dx: Double, dy: Double)
}

extension CGVector : Equatable {
}
struct CGRect {
  var origin: CGPoint
  var size: CGSize
  init()
  init(origin: CGPoint, size: CGSize)
}

extension CGRect {
  static var zero: CGRect { get }
  static var null: CGRect { get }
  static var infinite: CGRect { get }
  @_transparent init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)
  @_transparent init(x: Double, y: Double, width: Double, height: Double)
  @_transparent init(x: Int, y: Int, width: Int, height: Int)
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
  @_transparent func insetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func insetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="offsetInPlace")
  @_transparent func offsetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func offsetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="unionInPlace")
  @_transparent func union(rect: CGRect) -> CGRect
  @_transparent mutating func unionInPlace(rect: CGRect)
  @warn_unused_result(mutable_variant="intersectInPlace")
  @_transparent func intersect(rect: CGRect) -> CGRect
  @_transparent mutating func intersectInPlace(rect: CGRect)
  @warn_unused_result
  @_transparent func divide(atDistance: CGFloat, fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
  @warn_unused_result
  @_transparent func contains(rect: CGRect) -> Bool
  @warn_unused_result
  @_transparent func contains(point: CGPoint) -> Bool
  @warn_unused_result
  @_transparent func intersects(rect: CGRect) -> Bool
}

extension CGRect : CustomReflectable, CustomPlaygroundQuickLookable {
  func customMirror() -> Mirror
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}

extension CGRect : CustomDebugStringConvertible {
  var debugDescription: String { get }
}

extension CGRect : Equatable {
}
enum CGRectEdge : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case minXEdge
  case minYEdge
  case maxXEdge
  case maxYEdge
}
@available(tvOS 2.0, *)
let CGPointZero: CGPoint
@available(tvOS 2.0, *)
let CGSizeZero: CGSize
@available(tvOS 2.0, *)
let CGRectZero: CGRect
@available(tvOS 2.0, *)
let CGRectNull: CGRect
@available(tvOS 2.0, *)
let CGRectInfinite: CGRect
@available(tvOS 2.0, *)
func CGRectGetMinX(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetMidX(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetMaxX(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetMinY(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetMidY(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetMaxY(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetWidth(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGRectGetHeight(rect: CGRect) -> CGFloat
@available(tvOS 2.0, *)
func CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
@available(tvOS 2.0, *)
func CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
@available(tvOS 2.0, *)
func CGRectEqualToRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGRectStandardize(rect: CGRect) -> CGRect
@available(tvOS 2.0, *)
func CGRectIsEmpty(rect: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGRectIsNull(rect: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGRectIsInfinite(rect: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGRectInset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(tvOS 2.0, *)
func CGRectIntegral(rect: CGRect) -> CGRect
@available(tvOS 2.0, *)
func CGRectUnion(r1: CGRect, _ r2: CGRect) -> CGRect
@available(tvOS 2.0, *)
func CGRectIntersection(r1: CGRect, _ r2: CGRect) -> CGRect
@available(tvOS 2.0, *)
func CGRectOffset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(tvOS 2.0, *)
func CGRectDivide(rect: CGRect, _ slice: UnsafeMutablePointer<CGRect>, _ remainder: UnsafeMutablePointer<CGRect>, _ amount: CGFloat, _ edge: CGRectEdge)
@available(tvOS 2.0, *)
func CGRectContainsPoint(rect: CGRect, _ point: CGPoint) -> Bool
@available(tvOS 2.0, *)
func CGRectContainsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGRectIntersectsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(tvOS 2.0, *)
func CGPointCreateDictionaryRepresentation(point: CGPoint) -> CFDictionary
@available(tvOS 2.0, *)
func CGPointMakeWithDictionaryRepresentation(dict: CFDictionary?, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
@available(tvOS 2.0, *)
func CGSizeCreateDictionaryRepresentation(size: CGSize) -> CFDictionary
@available(tvOS 2.0, *)
func CGSizeMakeWithDictionaryRepresentation(dict: CFDictionary?, _ size: UnsafeMutablePointer<CGSize>) -> Bool
@available(tvOS 2.0, *)
func CGRectCreateDictionaryRepresentation(_: CGRect) -> CFDictionary
@available(tvOS 2.0, *)
func CGRectMakeWithDictionaryRepresentation(dict: CFDictionary?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
func CGPointMake(x: CGFloat, _ y: CGFloat) -> CGPoint
func CGSizeMake(width: CGFloat, _ height: CGFloat) -> CGSize
func CGVectorMake(dx: CGFloat, _ dy: CGFloat) -> CGVector
func CGRectMake(x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect
func __CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
func __CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
