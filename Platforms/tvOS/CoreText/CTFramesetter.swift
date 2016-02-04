
class CTFramesetter {
}
@available(*, deprecated, renamed="CTFramesetter")
typealias CTFramesetterRef = CTFramesetter
@available(tvOS 3.2, *)
func CTFramesetterGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
func CTFramesetterCreateWithAttributedString(string: CFAttributedString) -> CTFramesetter
@available(tvOS 3.2, *)
func CTFramesetterCreateFrame(framesetter: CTFramesetter, _ stringRange: CFRange, _ path: CGPath, _ frameAttributes: CFDictionary?) -> CTFrame
@available(tvOS 3.2, *)
func CTFramesetterGetTypesetter(framesetter: CTFramesetter) -> CTTypesetter
@available(tvOS 3.2, *)
func CTFramesetterSuggestFrameSizeWithConstraints(framesetter: CTFramesetter, _ stringRange: CFRange, _ frameAttributes: CFDictionary?, _ constraints: CGSize, _ fitRange: UnsafeMutablePointer<CFRange>) -> CGSize
