
class CGColor {
}
@available(OSX 10.3, *)
func CGColorCreate(_ space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.5, *)
func CGColorCreateGenericGray(_ gray: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericRGB(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericCMYK(_ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorGetConstantColor(_ colorName: CFString?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateWithPattern(_ space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopy(_ color: CGColor?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopyWithAlpha(_ color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(OSX 10.11, *)
func CGColorCreateCopyByMatchingToColorSpace(_ _: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(OSX 10.3, *)
func CGColorEqualToColor(_ color1: CGColor?, _ color2: CGColor?) -> Bool
@available(OSX 10.3, *)
func CGColorGetNumberOfComponents(_ color: CGColor?) -> Int
@available(OSX 10.3, *)
func CGColorGetComponents(_ color: CGColor?) -> UnsafePointer<CGFloat>
@available(OSX 10.3, *)
func CGColorGetAlpha(_ color: CGColor?) -> CGFloat
@available(OSX 10.3, *)
func CGColorGetColorSpace(_ color: CGColor?) -> CGColorSpace?
@available(OSX 10.3, *)
func CGColorGetPattern(_ color: CGColor?) -> CGPattern?
@available(OSX 10.3, *)
func CGColorGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCGColorWhite: CFString
@available(OSX 10.5, *)
let kCGColorBlack: CFString
@available(OSX 10.5, *)
let kCGColorClear: CFString
