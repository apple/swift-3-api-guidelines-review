
class DCSDictionary {
}
@available(*, deprecated, renamed="DCSDictionary")
typealias DCSDictionaryRef = DCSDictionary
@available(OSX 10.5, *)
func DCSGetTermRangeInString(dictionary: DCSDictionary?, _ textString: CFString, _ offset: CFIndex) -> CFRange
@available(OSX 10.5, *)
func DCSCopyTextDefinition(dictionary: DCSDictionary?, _ textString: CFString, _ range: CFRange) -> Unmanaged<CFString>?
