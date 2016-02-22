
class CTFramesetter {
}
@available(OSX 10.5, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CTFramesetterCreateWithAttributedString(_ string: CFAttributedString) -> CTFramesetter
@available(OSX 10.5, *)
func CTFramesetterCreateFrame(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(OSX 10.5, *)
func CTFramesetterGetTypesetter(_ framesetter: CTFramesetter) -> CTTypesetter
@available(OSX 10.5, *)
func CTFramesetterSuggestFrameSizeWithConstraints(_ framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
