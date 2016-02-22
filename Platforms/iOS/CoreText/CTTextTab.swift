
class CTTextTab {
}
@available(iOS 3.2, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(iOS 3.2, *)
func CTTextTabCreate(_ alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(iOS 3.2, *)
func CTTextTabGetAlignment(_ tab: CTTextTab) -> CTTextAlignment
@available(iOS 3.2, *)
func CTTextTabGetLocation(_ tab: CTTextTab) -> Double
@available(iOS 3.2, *)
func CTTextTabGetOptions(_ tab: CTTextTab) -> CFDictionary?
