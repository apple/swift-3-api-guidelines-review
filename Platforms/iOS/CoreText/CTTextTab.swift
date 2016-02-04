
class CTTextTab {
}
@available(*, deprecated, renamed="CTTextTab")
typealias CTTextTabRef = CTTextTab
@available(iOS 3.2, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(iOS 3.2, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(iOS 3.2, *)
func CTTextTabCreate(alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(iOS 3.2, *)
func CTTextTabGetAlignment(tab: CTTextTab) -> CTTextAlignment
@available(iOS 3.2, *)
func CTTextTabGetLocation(tab: CTTextTab) -> Double
@available(iOS 3.2, *)
func CTTextTabGetOptions(tab: CTTextTab) -> CFDictionary?
