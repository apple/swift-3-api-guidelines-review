
class GLKMatrixStack {
}
@available(*, deprecated, renamed="GLKMatrixStack")
typealias GLKMatrixStackRef = GLKMatrixStack
func GLKMatrixStackCreate(alloc: CFAllocator?) -> Unmanaged<GLKMatrixStack>?
func GLKMatrixStackGetTypeID() -> CFTypeID
func GLKMatrixStackPush(stack: GLKMatrixStack)
func GLKMatrixStackPop(stack: GLKMatrixStack)
func GLKMatrixStackSize(stack: GLKMatrixStack) -> Int32
func GLKMatrixStackLoadMatrix4(stack: GLKMatrixStack, _ matrix: GLKMatrix4)
func GLKMatrixStackGetMatrix4(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix3(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackGetMatrix2(stack: GLKMatrixStack) -> GLKMatrix2
func GLKMatrixStackGetMatrix4Inverse(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix4InverseTranspose(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix3Inverse(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackGetMatrix3InverseTranspose(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackMultiplyMatrix4(stack: GLKMatrixStack, _ matrix: GLKMatrix4)
func GLKMatrixStackMultiplyMatrixStack(stackLeft: GLKMatrixStack, _ stackRight: GLKMatrixStack)
func GLKMatrixStackTranslate(stack: GLKMatrixStack, _ tx: Float, _ ty: Float, _ tz: Float)
func GLKMatrixStackTranslateWithVector3(stack: GLKMatrixStack, _ translationVector: GLKVector3)
func GLKMatrixStackTranslateWithVector4(stack: GLKMatrixStack, _ translationVector: GLKVector4)
func GLKMatrixStackScale(stack: GLKMatrixStack, _ sx: Float, _ sy: Float, _ sz: Float)
func GLKMatrixStackScaleWithVector3(stack: GLKMatrixStack, _ scaleVector: GLKVector3)
func GLKMatrixStackScaleWithVector4(stack: GLKMatrixStack, _ scaleVector: GLKVector4)
func GLKMatrixStackRotate(stack: GLKMatrixStack, _ radians: Float, _ x: Float, _ y: Float, _ z: Float)
func GLKMatrixStackRotateWithVector3(stack: GLKMatrixStack, _ radians: Float, _ axisVector: GLKVector3)
func GLKMatrixStackRotateWithVector4(stack: GLKMatrixStack, _ radians: Float, _ axisVector: GLKVector4)
func GLKMatrixStackRotateX(stack: GLKMatrixStack, _ radians: Float)
func GLKMatrixStackRotateY(stack: GLKMatrixStack, _ radians: Float)
func GLKMatrixStackRotateZ(stack: GLKMatrixStack, _ radians: Float)
