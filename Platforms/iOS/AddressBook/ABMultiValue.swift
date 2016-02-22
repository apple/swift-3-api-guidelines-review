
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSArray of CNLabeledValue")
typealias ABMultiValue = CFTypeRef
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabeledValue.identifier")
typealias ABMultiValueIdentifier = Int32
var kABMultiValueInvalidIdentifier: Int32 { get }
@available(iOS, introduced=2.0, deprecated=9.0)
func ABMultiValueGetPropertyType(_ multiValue: ABMultiValue!) -> ABPropertyType
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSArray.count with the labeled value property")
func ABMultiValueGetCount(_ multiValue: ABMultiValue!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] value] with the labeled value property")
func ABMultiValueCopyValueAtIndex(_ multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFTypeRef>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray enumerateObjectsUsingBlock:] with the labeled value property and collect the values")
func ABMultiValueCopyArrayOfAllValues(_ multiValue: ABMultiValue!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] label] with the labeled value property")
func ABMultiValueCopyLabelAtIndex(_ multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray indexOfObjectPassingTest:] with the labeled value property and find the identifier")
func ABMultiValueGetIndexForIdentifier(_ multiValue: ABMultiValue!, _ identifier: ABMultiValueIdentifier) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] identifier] with the labeled value property")
func ABMultiValueGetIdentifierAtIndex(_ multiValue: ABMultiValue!, _ index: CFIndex) -> ABMultiValueIdentifier
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray indexOfObjectPassingTest:] with the labeled value property and find the value")
func ABMultiValueGetFirstIndexOfValue(_ multiValue: ABMultiValue!, _ value: CFTypeRef!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSMutableArray of CNLabeledValue")
typealias ABMutableMultiValue = CFTypeRef
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSMutableArray alloc] init]")
func ABMultiValueCreateMutable(_ type: ABPropertyType) -> Unmanaged<ABMutableMultiValue>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray mutableCopy]")
func ABMultiValueCreateMutableCopy(_ multiValue: ABMultiValue!) -> Unmanaged<ABMutableMultiValue>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray addObject:[CNLabeledValue labeledValueWithLabel:value:]]")
func ABMultiValueAddValueAndLabel(_ multiValue: ABMutableMultiValue!, _ value: CFTypeRef!, _ label: CFString!, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray insertObject:[CNLabeledValue labeledValueWithLabel:value:] atIndex:]")
func ABMultiValueInsertValueAndLabelAtIndex(_ multiValue: ABMutableMultiValue!, _ value: CFTypeRef!, _ label: CFString!, _ index: CFIndex, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray removeObjectAtIndex:]")
func ABMultiValueRemoveValueAndLabelAtIndex(_ multiValue: ABMutableMultiValue!, _ index: CFIndex) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray replaceObjectAtIndex: withObject:[CNLabeledValue labeledValueBySettingValue:]]")
func ABMultiValueReplaceValueAtIndex(_ multiValue: ABMutableMultiValue!, _ value: CFTypeRef!, _ index: CFIndex) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray replaceObjectAtIndex: withObject:[CNLabeledValue labeledValueBySettingLabel:]]")
func ABMultiValueReplaceLabelAtIndex(_ multiValue: ABMutableMultiValue!, _ label: CFString!, _ index: CFIndex) -> Bool
