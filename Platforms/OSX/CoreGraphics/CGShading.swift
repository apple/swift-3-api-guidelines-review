
class CGShading {
}
@available(OSX 10.2, *)
func CGShadingGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CGShadingCreateAxial(_ space: CGColorSpace?, _ start: CGPoint, _ end: CGPoint, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
@available(OSX 10.2, *)
func CGShadingCreateRadial(_ space: CGColorSpace?, _ start: CGPoint, _ startRadius: CGFloat, _ end: CGPoint, _ endRadius: CGFloat, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
