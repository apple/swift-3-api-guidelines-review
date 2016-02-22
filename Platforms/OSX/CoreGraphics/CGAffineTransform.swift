
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
@available(OSX 10.0, *)
let CGAffineTransformIdentity: CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMake(_ a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeTranslation(_ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeScale(_ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeRotation(_ angle: CGFloat) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformIsIdentity(_ t: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGAffineTransformTranslate(_ t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformScale(_ t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformRotate(_ t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformInvert(_ t: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformConcat(_ t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformEqualToTransform(_ t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGPointApplyAffineTransform(_ point: CGPoint, _ t: CGAffineTransform) -> CGPoint
@available(OSX 10.0, *)
func CGSizeApplyAffineTransform(_ size: CGSize, _ t: CGAffineTransform) -> CGSize
@available(OSX 10.4, *)
func CGRectApplyAffineTransform(_ rect: CGRect, _ t: CGAffineTransform) -> CGRect
func __CGAffineTransformMake(_ a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(_ point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(_ size: CGSize, _ t: CGAffineTransform) -> CGSize
