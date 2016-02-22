
class CTTextTab {
}
@available(OSX 10.5, *)
func CTTextTabGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
let kCTTabColumnTerminatorsAttributeName: CFString
@available(OSX 10.5, *)
func CTTextTabCreate(_ alignment: CTTextAlignment, _ location: Double, _ options: CFDictionary?) -> CTTextTab
@available(OSX 10.5, *)
func CTTextTabGetAlignment(_ tab: CTTextTab) -> CTTextAlignment
@available(OSX 10.5, *)
func CTTextTabGetLocation(_ tab: CTTextTab) -> Double
@available(OSX 10.5, *)
func CTTextTabGetOptions(_ tab: CTTextTab) -> CFDictionary?
