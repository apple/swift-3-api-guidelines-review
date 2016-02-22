
class CTFramesetter {
}
@available(tvOS 3.2, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
func CTFramesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTFramesetter
@available(tvOS 3.2, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(tvOS 3.2, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(tvOS 3.2, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
