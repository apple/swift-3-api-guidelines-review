
struct CGAffineTransform {
  var a: CGFloat
  var b: CGFloat
  var c: CGFloat
  var d: CGFloat
  var tx: CGFloat
  var ty: CGFloat
  init()
  init(a a: CGFloat, b b: CGFloat, c c: CGFloat, d d: CGFloat, tx tx: CGFloat, ty ty: CGFloat)
}
@available(watchOS 2.0, *)
let CGAffineTransformIdentity: CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMake(_ a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeTranslation(_ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeScale(_ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeRotation(_ angle: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformIsIdentity(_ t: CGAffineTransform) -> Bool
@available(watchOS 2.0, *)
func CGAffineTransformTranslate(_ t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformScale(_ t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformRotate(_ t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformInvert(_ t: CGAffineTransform) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformConcat(_ t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformEqualToTransform(_ t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
@available(watchOS 2.0, *)
func CGPointApplyAffineTransform(_ point: CGPoint, _ t: CGAffineTransform) -> CGPoint
@available(watchOS 2.0, *)
func CGSizeApplyAffineTransform(_ size: CGSize, _ t: CGAffineTransform) -> CGSize
@available(watchOS 2.0, *)
func CGRectApplyAffineTransform(_ rect: CGRect, _ t: CGAffineTransform) -> CGRect
func __CGAffineTransformMake(_ a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(_ point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(_ size: CGSize, _ t: CGAffineTransform) -> CGSize
