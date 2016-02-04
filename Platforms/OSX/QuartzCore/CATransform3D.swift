
struct CATransform3D {
  var m11: CGFloat
  var m12: CGFloat
  var m13: CGFloat
  var m14: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var m23: CGFloat
  var m24: CGFloat
  var m31: CGFloat
  var m32: CGFloat
  var m33: CGFloat
  var m34: CGFloat
  var m41: CGFloat
  var m42: CGFloat
  var m43: CGFloat
  var m44: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m13: CGFloat, m14: CGFloat, m21: CGFloat, m22: CGFloat, m23: CGFloat, m24: CGFloat, m31: CGFloat, m32: CGFloat, m33: CGFloat, m34: CGFloat, m41: CGFloat, m42: CGFloat, m43: CGFloat, m44: CGFloat)
}
@available(OSX 10.5, *)
let CATransform3DIdentity: CATransform3D
@available(OSX 10.5, *)
func CATransform3DIsIdentity(t: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DEqualToTransform(a: CATransform3D, _ b: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DMakeTranslation(tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DTranslate(t: CATransform3D, _ tx: CGFloat, _ ty: CGFloat, _ tz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DScale(t: CATransform3D, _ sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DRotate(t: CATransform3D, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DConcat(a: CATransform3D, _ b: CATransform3D) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DInvert(t: CATransform3D) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DMakeAffineTransform(m: CGAffineTransform) -> CATransform3D
@available(OSX 10.5, *)
func CATransform3DIsAffine(t: CATransform3D) -> Bool
@available(OSX 10.5, *)
func CATransform3DGetAffineTransform(t: CATransform3D) -> CGAffineTransform
extension Value {
  /*not inherited*/ init(caTransform3D t: CATransform3D)
  var caTransform3DValue: CATransform3D { get }
}
