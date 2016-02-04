
class CFAttributedString {
}
@available(*, deprecated, renamed="CFAttributedString")
typealias CFAttributedStringRef = CFAttributedString
@available(*, deprecated, renamed="CFMutableAttributedString")
typealias CFMutableAttributedStringRef = CFMutableAttributedString
class CFMutableAttributedString {
}
func CFAttributedStringGetTypeID() -> CFTypeID
func CFAttributedStringCreate(alloc: CFAllocator!, _ str: CFString!, _ attributes: CFDictionary!) -> CFAttributedString!
func CFAttributedStringCreateWithSubstring(alloc: CFAllocator!, _ aStr: CFAttributedString!, _ range: CFRange) -> CFAttributedString!
func CFAttributedStringCreateCopy(alloc: CFAllocator!, _ aStr: CFAttributedString!) -> CFAttributedString!
func CFAttributedStringGetString(aStr: CFAttributedString!) -> CFString!
func CFAttributedStringGetLength(aStr: CFAttributedString!) -> CFIndex
func CFAttributedStringGetAttributes(aStr: CFAttributedString!, _ loc: CFIndex, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttribute(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFTypeRef!
func CFAttributedStringGetAttributesAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttributeAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFTypeRef!
func CFAttributedStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ aStr: CFAttributedString!) -> CFMutableAttributedString!
func CFAttributedStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableAttributedString!
func CFAttributedStringReplaceString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFString!)
func CFAttributedStringGetMutableString(aStr: CFMutableAttributedString!) -> CFMutableString!
func CFAttributedStringSetAttributes(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFDictionary!, _ clearOtherAttributes: Bool)
func CFAttributedStringSetAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!, _ value: CFTypeRef!)
func CFAttributedStringRemoveAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!)
func CFAttributedStringReplaceAttributedString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFAttributedString!)
func CFAttributedStringBeginEditing(aStr: CFMutableAttributedString!)
func CFAttributedStringEndEditing(aStr: CFMutableAttributedString!)
