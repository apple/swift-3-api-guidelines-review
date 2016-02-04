
class CTTextTab {
}
@available(*, deprecated, renamed="CTTextTab")
typealias CTTextTabRef = CTTextTab
@available(OSX 10.5, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(OSX 10.5, *)
func CTTextTabCreate(alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(OSX 10.5, *)
func CTTextTabGetAlignment(tab: CTTextTab) -> CTTextAlignment
@available(OSX 10.5, *)
func CTTextTabGetLocation(tab: CTTextTab) -> Double
@available(OSX 10.5, *)
func CTTextTabGetOptions(tab: CTTextTab) -> CFDictionary?
