
class CTTextTab {
}
@available(tvOS 3.2, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(tvOS 3.2, *)
func CTTextTabCreate(_ alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(tvOS 3.2, *)
func CTTextTabGetAlignment(_ tab: CTTextTab) -> CTTextAlignment
@available(tvOS 3.2, *)
func CTTextTabGetLocation(_ tab: CTTextTab) -> Double
@available(tvOS 3.2, *)
func CTTextTabGetOptions(_ tab: CTTextTab) -> CFDictionary?
