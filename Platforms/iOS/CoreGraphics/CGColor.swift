
class CGColor {
}
@available(iOS 2.0, *)
func CGColorCreate(_ space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(iOS 2.0, *)
func CGColorCreateWithPattern(_ space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(iOS 2.0, *)
func CGColorCreateCopy(_ color: CGColor?) -> CGColor?
@available(iOS 2.0, *)
func CGColorCreateCopyWithAlpha(_ color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(iOS 9.0, *)
func CGColorCreateCopyByMatchingToColorSpace(_ _: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(iOS 2.0, *)
func CGColorEqualToColor(_ color1: CGColor?, _ color2: CGColor?) -> Bool
@available(iOS 2.0, *)
func CGColorGetNumberOfComponents(_ color: CGColor?) -> Int
@available(iOS 2.0, *)
func CGColorGetComponents(_ color: CGColor?) -> UnsafePointer<CGFloat>
@available(iOS 2.0, *)
func CGColorGetAlpha(_ color: CGColor?) -> CGFloat
@available(iOS 2.0, *)
func CGColorGetColorSpace(_ color: CGColor?) -> CGColorSpace?
@available(iOS 2.0, *)
func CGColorGetPattern(_ color: CGColor?) -> CGPattern?
@available(iOS 2.0, *)
func CGColorGetTypeID() -> CFTypeID
