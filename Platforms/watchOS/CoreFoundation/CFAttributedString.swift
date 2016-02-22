
class CFAttributedString {
}
class CFMutableAttributedString {
}
func CFAttributedStringGetTypeID() -> CFTypeID
func CFAttributedStringCreate(_ alloc: CFAllocator!, _ str: CFString!, _ attributes: CFDictionary!) -> CFAttributedString!
func CFAttributedStringCreateWithSubstring(_ alloc: CFAllocator!, _ aStr: CFAttributedString!, _ range: CFRange) -> CFAttributedString!
func CFAttributedStringCreateCopy(_ alloc: CFAllocator!, _ aStr: CFAttributedString!) -> CFAttributedString!
func CFAttributedStringGetString(_ aStr: CFAttributedString!) -> CFString!
func CFAttributedStringGetLength(_ aStr: CFAttributedString!) -> CFIndex
func CFAttributedStringGetAttributes(_ aStr: CFAttributedString!, _ loc: CFIndex, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttribute(_ aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFTypeRef!
func CFAttributedStringGetAttributesAndLongestEffectiveRange(_ aStr: CFAttributedString!, _ loc: CFIndex, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!
func CFAttributedStringGetAttributeAndLongestEffectiveRange(_ aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFTypeRef!
func CFAttributedStringCreateMutableCopy(_ alloc: CFAllocator!, _ maxLength: CFIndex, _ aStr: CFAttributedString!) -> CFMutableAttributedString!
func CFAttributedStringCreateMutable(_ alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableAttributedString!
func CFAttributedStringReplaceString(_ aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFString!)
func CFAttributedStringGetMutableString(_ aStr: CFMutableAttributedString!) -> CFMutableString!
func CFAttributedStringSetAttributes(_ aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFDictionary!, _ clearOtherAttributes: Bool)
func CFAttributedStringSetAttribute(_ aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!, _ value: CFTypeRef!)
func CFAttributedStringRemoveAttribute(_ aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!)
func CFAttributedStringReplaceAttributedString(_ aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFAttributedString!)
func CFAttributedStringBeginEditing(_ aStr: CFMutableAttributedString!)
func CFAttributedStringEndEditing(_ aStr: CFMutableAttributedString!)
