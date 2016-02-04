
struct CGAffineTransform {
  var a: CGFloat
  var b: CGFloat
  var c: CGFloat
  var d: CGFloat
  var tx: CGFloat
  var ty: CGFloat
  init()
  init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat, tx: CGFloat, ty: CGFloat)
}
@available(OSX 10.0, *)
let CGAffineTransformIdentity: CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeTranslation(tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeScale(sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeRotation(angle: CGFloat) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformIsIdentity(t: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGAffineTransformTranslate(t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformScale(t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformRotate(t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformInvert(t: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformConcat(t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformEqualToTransform(t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
@available(OSX 10.0, *)
func CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
@available(OSX 10.4, *)
func CGRectApplyAffineTransform(rect: CGRect, _ t: CGAffineTransform) -> CGRect
func __CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
