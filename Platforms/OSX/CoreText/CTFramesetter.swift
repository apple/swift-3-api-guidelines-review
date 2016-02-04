
class CTFramesetter {
}
@available(*, deprecated, renamed="CTFramesetter")
typealias CTFramesetterRef = CTFramesetter
@available(OSX 10.5, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CTFramesetterCreateWithAttributedString(string: CFAttributedString) -> CTFramesetter
@available(OSX 10.5, *)
func CTFramesetterCreateFrame(framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(OSX 10.5, *)
func CTFramesetterGetTypesetter(framesetter: CTFramesetter) -> CTTypesetter
@available(OSX 10.5, *)
func CTFramesetterSuggestFrameSizeWithConstraints(framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
