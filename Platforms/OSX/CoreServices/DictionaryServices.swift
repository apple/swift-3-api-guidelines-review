
class DCSDictionary {
}
@available(OSX 10.5, *)
func DCSGetTermRangeInString(_ dictionary: DCSDictionary?, _ textString: CFString, _ offset: CFIndex) -> CFRange
@available(OSX 10.5, *)
func DCSCopyTextDefinition(_ dictionary: DCSDictionary?, _ textString: CFString, _ range: CFRange) -> Unmanaged<CFString>?
