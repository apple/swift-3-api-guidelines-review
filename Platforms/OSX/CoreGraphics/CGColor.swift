
class CGColor {
}
@available(*, deprecated, renamed="CGColor")
typealias CGColorRef = CGColor
@available(OSX 10.3, *)
func CGColorCreate(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.5, *)
func CGColorCreateGenericGray(gray: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericRGB(red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericCMYK(cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorGetConstantColor(colorName: CFString?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateWithPattern(space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopy(color: CGColor?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopyWithAlpha(color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(OSX 10.11, *)
func CGColorCreateCopyByMatchingToColorSpace(_: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(OSX 10.3, *)
func CGColorEqualToColor(color1: CGColor?, _ color2: CGColor?) -> Bool
@available(OSX 10.3, *)
func CGColorGetNumberOfComponents(color: CGColor?) -> Int
@available(OSX 10.3, *)
func CGColorGetComponents(color: CGColor?) -> UnsafePointer<CGFloat>
@available(OSX 10.3, *)
func CGColorGetAlpha(color: CGColor?) -> CGFloat
@available(OSX 10.3, *)
func CGColorGetColorSpace(color: CGColor?) -> CGColorSpace?
@available(OSX 10.3, *)
func CGColorGetPattern(color: CGColor?) -> CGPattern?
@available(OSX 10.3, *)
func CGColorGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCGColorWhite: CFString
@available(OSX 10.5, *)
let kCGColorBlack: CFString
@available(OSX 10.5, *)
let kCGColorClear: CFString
