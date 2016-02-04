
class CTTextTab {
}
@available(*, deprecated, renamed="CTTextTab")
typealias CTTextTabRef = CTTextTab
@available(tvOS 3.2, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(tvOS 3.2, *)
func CTTextTabCreate(alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(tvOS 3.2, *)
func CTTextTabGetAlignment(tab: CTTextTab) -> CTTextAlignment
@available(tvOS 3.2, *)
func CTTextTabGetLocation(tab: CTTextTab) -> Double
@available(tvOS 3.2, *)
func CTTextTabGetOptions(tab: CTTextTab) -> CFDictionary?
