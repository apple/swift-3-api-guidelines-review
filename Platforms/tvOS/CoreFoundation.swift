
var __COREFOUNDATION__: Int32 { get }
@noreturn func __assert_rtn(_: UnsafePointer<Int8>, _: UnsafePointer<Int8>, _: Int32, _: UnsafePointer<Int8>)

/*!
	@typedef CFArrayCallBacks
	Structure containing the callbacks of a CFArray.
	@field version The version number of the structure type being passed
		in as a parameter to the CFArray creation functions. This
		structure is version 0.
	@field retain The callback used to add a retain for the array on
		values as they are put into the array. This callback returns
		the value to store in the array, which is usually the value
		parameter passed to this callback, but may be a different
		value if a different value should be stored in the array.
		The array's allocator is passed as the first argument.
	@field release The callback used to remove a retain previously added
		for the array from values as they are removed from the
		array. The array's allocator is passed as the first
		argument.
	@field copyDescription The callback used to create a descriptive
		string representation of each value in the array. This is
		used by the CFCopyDescription() function.
	@field equal The callback used to compare values in the array for
		equality for some operations.
*/
typealias CFArrayRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFArrayReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFArrayCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFArrayEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
struct CFArrayCallBacks {
  var version: CFIndex
  var retain: CFArrayRetainCallBack!
  var release: CFArrayReleaseCallBack!
  var copyDescription: CFArrayCopyDescriptionCallBack!
  var equal: CFArrayEqualCallBack!
  init()
  init(version: CFIndex, retain: CFArrayRetainCallBack!, release: CFArrayReleaseCallBack!, copyDescription: CFArrayCopyDescriptionCallBack!, equal: CFArrayEqualCallBack!)
}

/*!
	@constant kCFTypeArrayCallBacks
	Predefined CFArrayCallBacks structure containing a set of callbacks
	appropriate for use when the values in a CFArray are all CFTypes.
*/
let kCFTypeArrayCallBacks: CFArrayCallBacks

/*!
	@typedef CFArrayApplierFunction
	Type of the callback function used by the apply functions of
		CFArrays.
	@param value The current value from the array.
	@param context The user-defined context parameter given to the apply
		function.
*/
typealias CFArrayApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef CFArrayRef
	This is the type of a reference to immutable CFArrays.
*/
typealias CFArrayRef = CFArray

/*!
	@typedef CFMutableArrayRef
	This is the type of a reference to mutable CFArrays.
*/
typealias CFMutableArrayRef = CFMutableArray

/*!
	@function CFArrayGetTypeID
	Returns the type identifier of all CFArray instances.
*/
func CFArrayGetTypeID() -> CFTypeID

/*!
	@function CFArrayCreate
	Creates a new immutable array with the given values.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param values A C array of the pointer-sized values to be in the
		array. The values in the array are ordered in the same order
		in which they appear in this C array. This parameter may be
		NULL if the numValues parameter is 0. This C array is not
		changed or freed by this function. If this parameter is not
		a valid pointer to a C array of at least numValues pointers,
		the behavior is undefined.
	@param numValues The number of values to copy from the values C
		array into the CFArray. This number will be the count of the
		array.
		If this parameter is negative, or greater than the number of
		values actually in the value's C array, the behavior is
		undefined.
	@param callBacks A pointer to a CFArrayCallBacks structure
		initialized with the callbacks for the array to use on each
		value in the array. The retain callback will be used within
		this function, for example, to retain all of the new values
		from the values C array. A copy of the contents of the
		callbacks structure is made, so that a pointer to a
		structure on the stack can be passed in, or can be reused
		for multiple array creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFArray, the behavior is undefined. The retain field may be
		NULL, in which case the CFArray will do nothing to add a
		retain to the contained values for the array. The release
		field may be NULL, in which case the CFArray will do nothing
		to remove the array's retain (if any) on the values when the
		array is destroyed. If the copyDescription field is NULL,
		the array will create a simple description for the value. If
		the equal field is NULL, the array will use pointer equality
		to test for equality of values. This callbacks parameter
		itself may be NULL, which is treated as if a valid structure
		of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a  CFArrayCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		array is not one understood by one of the callback functions
		the behavior when that callback function is used is
		undefined.
	@result A reference to the new immutable CFArray.
*/
func CFArrayCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFArray!

/*!
	@function CFArrayCreateCopy
	Creates a new immutable array with the values from the given array.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theArray The array which is to be copied. The values from the
		array are copied as pointers into the new array (that is,
		the values themselves are copied, not that which the values
		point to, if anything). However, the values are also
		retained by the new array. The count of the new array will
		be the same as the given array. The new array uses the same
		callbacks as the array to be copied. If this parameter is
		not a valid CFArray, the behavior is undefined.
	@result A reference to the new immutable CFArray.
*/
func CFArrayCreateCopy(allocator: CFAllocator!, _ theArray: CFArray!) -> CFArray!

/*!
	@function CFArrayCreateMutable
	Creates a new empty mutable array.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param capacity A hint about the number of values that will be held
		by the CFArray. Pass 0 for no hint. The implementation may
		ignore this hint, or may use it to optimize various
		operations. An array's actual capacity is only limited by
		address space and available memory constraints). If this
		parameter is negative, the behavior is undefined.
	@param callBacks A pointer to a CFArrayCallBacks structure
		initialized with the callbacks for the array to use on each
		value in the array. A copy of the contents of the
		callbacks structure is made, so that a pointer to a
		structure on the stack can be passed in, or can be reused
		for multiple array creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFArray, the behavior is undefined. The retain field may be
		NULL, in which case the CFArray will do nothing to add a
		retain to the contained values for the array. The release
		field may be NULL, in which case the CFArray will do nothing
		to remove the array's retain (if any) on the values when the
		array is destroyed. If the copyDescription field is NULL,
		the array will create a simple description for the value. If
		the equal field is NULL, the array will use pointer equality
		to test for equality of values. This callbacks parameter
		itself may be NULL, which is treated as if a valid structure
		of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a  CFArrayCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		array is not one understood by one of the callback functions
		the behavior when that callback function is used is
		undefined.
	@result A reference to the new mutable CFArray.
*/
func CFArrayCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>) -> CFMutableArray!

/*!
	@function CFArrayCreateMutableCopy
	Creates a new mutable array with the values from the given array.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFArray. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. An array's actual capacity is only limited by 
                address space and available memory constraints).
		This parameter must be greater than or equal
		to the count of the array which is to be copied, or the
		behavior is undefined. If this parameter is negative, the
		behavior is undefined.
	@param theArray The array which is to be copied. The values from the
		array are copied as pointers into the new array (that is,
		the values themselves are copied, not that which the values
		point to, if anything). However, the values are also
		retained by the new array. The count of the new array will
		be the same as the given array. The new array uses the same
		callbacks as the array to be copied. If this parameter is
		not a valid CFArray, the behavior is undefined.
	@result A reference to the new mutable CFArray.
*/
func CFArrayCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theArray: CFArray!) -> CFMutableArray!

/*!
	@function CFArrayGetCount
	Returns the number of values currently in the array.
	@param theArray The array to be queried. If this parameter is not a valid
		CFArray, the behavior is undefined.
	@result The number of values in the array.
*/
func CFArrayGetCount(theArray: CFArray!) -> CFIndex

/*!
	@function CFArrayGetCountOfValue
	Counts the number of times the given value occurs in the array.
	@param theArray The array to be searched. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param range The range within the array to search. If the range
		location or end point (defined by the location plus length
		minus 1) is outside the index space of the array (0 to
		N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
	@param value The value for which to find matches in the array. The
		equal() callback provided when the array was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the array, are not understood by the equal() callback,
		the behavior is undefined.
	@result The number of times the given value occurs in the array,
		within the specified range.
*/
func CFArrayGetCountOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFArrayContainsValue
	Reports whether or not the value is in the array.
	@param theArray The array to be searched. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param range The range within the array to search. If the range
		location or end point (defined by the location plus length
		minus 1) is outside the index space of the array (0 to
		N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
	@param value The value for which to find matches in the array. The
		equal() callback provided when the array was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the array, are not understood by the equal() callback,
		the behavior is undefined.
	@result true, if the value is in the specified range of the array,
		otherwise false.
*/
func CFArrayContainsValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> Bool

/*!
	@function CFArrayGetValueAtIndex
	Retrieves the value at the given index.
	@param theArray The array to be queried. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param idx The index of the value to retrieve. If the index is
		outside the index space of the array (0 to N-1 inclusive,
		where N is the count of the array), the behavior is
		undefined.
	@result The value with the given index in the array.
*/
func CFArrayGetValueAtIndex(theArray: CFArray!, _ idx: CFIndex) -> UnsafePointer<Void>

/*!
	@function CFArrayGetValues
	Fills the buffer with values from the array.
	@param theArray The array to be queried. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param range The range of values within the array to retrieve. If
		the range location or end point (defined by the location
		plus length minus 1) is outside the index space of the
		array (0 to N-1 inclusive, where N is the count of the
		array), the behavior is undefined. If the range length is
		negative, the behavior is undefined. The range may be empty
		(length 0), in which case no values are put into the buffer.
	@param values A C array of pointer-sized values to be filled with
		values from the array. The values in the C array are ordered
		in the same order in which they appear in the array. If this
		parameter is not a valid pointer to a C array of at least
		range.length pointers, the behavior is undefined.
*/
func CFArrayGetValues(theArray: CFArray!, _ range: CFRange, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)

/*!
	@function CFArrayApplyFunction
	Calls a function once for each value in the array.
	@param theArray The array to be operated upon. If this parameter is not
		a valid CFArray, the behavior is undefined.
	@param range The range of values within the array to which to apply
		the function. If the range location or end point (defined by
		the location plus length minus 1) is outside the index
		space of the array (0 to N-1 inclusive, where N is the count
		of the array), the behavior is undefined. If the range
		length is negative, the behavior is undefined. The range may
		be empty (length 0).
	@param applier The callback function to call once for each value in
		the given range in the array. If this parameter is not a
		pointer to a function of the correct prototype, the behavior
		is undefined. If there are values in the range which the
		applier function does not expect or cannot properly apply
		to, the behavior is undefined. 
	@param context A pointer-sized user-defined value, which is passed
		as the second parameter to the applier function, but is
		otherwise unused by this function. If the context is not
		what is expected by the applier function, the behavior is
		undefined.
*/
func CFArrayApplyFunction(theArray: CFArray!, _ range: CFRange, _ applier: CFArrayApplierFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
	@function CFArrayGetFirstIndexOfValue
	Searches the array for the value.
	@param theArray The array to be searched. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param range The range within the array to search. If the range
		location or end point (defined by the location plus length
		minus 1) is outside the index space of the array (0 to
		N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
		The search progresses from the smallest index defined by
		the range to the largest.
	@param value The value for which to find a match in the array. The
		equal() callback provided when the array was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the array, are not understood by the equal() callback,
		the behavior is undefined.
	@result The lowest index of the matching values in the range, or
		kCFNotFound if no value in the range matched.
*/
func CFArrayGetFirstIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFArrayGetLastIndexOfValue
	Searches the array for the value.
	@param theArray The array to be searched. If this parameter is not a
		valid CFArray, the behavior is undefined.
	@param range The range within the array to search. If the range
		location or end point (defined by the location plus length
		minus 1) is outside the index space of the array (0 to
		N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
		The search progresses from the largest index defined by the
		range to the smallest.
	@param value The value for which to find a match in the array. The
		equal() callback provided when the array was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the array, are not understood by the equal() callback,
		the behavior is undefined.
	@result The highest index of the matching values in the range, or
		kCFNotFound if no value in the range matched.
*/
func CFArrayGetLastIndexOfValue(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFArrayBSearchValues
	Searches the array for the value using a binary search algorithm.
	@param theArray The array to be searched. If this parameter is not a
		valid CFArray, the behavior is undefined. If the array is
		not sorted from least to greatest according to the
		comparator function, the behavior is undefined.
	@param range The range within the array to search. If the range
		location or end point (defined by the location plus length
		minus 1) is outside the index space of the array (0 to
		N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
	@param value The value for which to find a match in the array. If
		value, or any of the values in the array, are not understood
		by the comparator callback, the behavior is undefined.
	@param comparator The function with the comparator function type
		signature which is used in the binary search operation to
		compare values in the array with the given value. If this
		parameter is not a pointer to a function of the correct
		prototype, the behavior is undefined. If there are values
		in the range which the comparator function does not expect
		or cannot properly compare, the behavior is undefined.
	@param context A pointer-sized user-defined value, which is passed
		as the third parameter to the comparator function, but is
		otherwise unused by this function. If the context is not
		what is expected by the comparator function, the behavior is
		undefined.
	@result The return value is either 1) the index of a value that
		matched, if the target value matches one or more in the
		range, 2) greater than or equal to the end point of the
		range, if the value is greater than all the values in the
		range, or 3) the index of the value greater than the target
		value, if the value lies between two of (or less than all
		of) the values in the range.
*/
func CFArrayBSearchValues(theArray: CFArray!, _ range: CFRange, _ value: UnsafePointer<Void>, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>) -> CFIndex

/*!
	@function CFArrayAppendValue
	Adds the value to the array giving it a new largest index.
	@param theArray The array to which the value is to be added. If this
		parameter is not a valid mutable CFArray, the behavior is
		undefined.
	@param value The value to add to the array. The value is retained by
		the array using the retain callback provided when the array
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The value is
		assigned to the index one larger than the previous largest
		index, and the count of the array is increased by one.
*/
func CFArrayAppendValue(theArray: CFMutableArray!, _ value: UnsafePointer<Void>)

/*!
	@function CFArrayInsertValueAtIndex
	Adds the value to the array, giving it the given index.
	@param theArray The array to which the value is to be added. If this
		parameter is not a valid mutable CFArray, the behavior is
		undefined.
	@param idx The index to which to add the new value. If the index is
		outside the index space of the array (0 to N inclusive,
		where N is the count of the array before the operation), the
		behavior is undefined. If the index is the same as N, this
		function has the same effect as CFArrayAppendValue().
	@param value The value to add to the array. The value is retained by
		the array using the retain callback provided when the array
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The value is
		assigned to the given index, and all values with equal and
		larger indices have their indexes increased by one.
*/
func CFArrayInsertValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)

/*!
	@function CFArraySetValueAtIndex
	Changes the value with the given index in the array.
	@param theArray The array in which the value is to be changed. If this
		parameter is not a valid mutable CFArray, the behavior is
		undefined.
	@param idx The index to which to set the new value. If the index is
		outside the index space of the array (0 to N inclusive,
		where N is the count of the array before the operation), the
		behavior is undefined. If the index is the same as N, this
		function has the same effect as CFArrayAppendValue().
	@param value The value to set in the array. The value is retained by
		the array using the retain callback provided when the array
		was created, and the previous value with that index is
		released. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The indices of
		other values is not affected.
*/
func CFArraySetValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafePointer<Void>)

/*!
	@function CFArrayRemoveValueAtIndex
	Removes the value with the given index from the array.
	@param theArray The array from which the value is to be removed. If
		this parameter is not a valid mutable CFArray, the behavior
		is undefined.
	@param idx The index from which to remove the value. If the index is
		outside the index space of the array (0 to N-1 inclusive,
		where N is the count of the array before the operation), the
		behavior is undefined.
*/
func CFArrayRemoveValueAtIndex(theArray: CFMutableArray!, _ idx: CFIndex)

/*!
	@function CFArrayRemoveAllValues
	Removes all the values from the array, making it empty.
	@param theArray The array from which all of the values are to be
		removed. If this parameter is not a valid mutable CFArray,
		the behavior is undefined.
*/
func CFArrayRemoveAllValues(theArray: CFMutableArray!)

/*!
	@function CFArrayReplaceValues
	Replaces a range of values in the array.
	@param theArray The array from which all of the values are to be
		removed. If this parameter is not a valid mutable CFArray,
		the behavior is undefined.
	@param range The range of values within the array to replace. If the
		range location or end point (defined by the location plus
		length minus 1) is outside the index space of the array (0
		to N inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0),
		in which case the new values are merely inserted at the
		range location.
	@param newValues A C array of the pointer-sized values to be placed
		into the array. The new values in the array are ordered in
		the same order in which they appear in this C array. This
		parameter may be NULL if the newCount parameter is 0. This
		C array is not changed or freed by this function. If this
		parameter is not a valid pointer to a C array of at least
		newCount pointers, the behavior is undefined.
	@param newCount The number of values to copy from the values C
		array into the CFArray. If this parameter is different than
		the range length, the excess newCount values will be
		inserted after the range, or the excess range values will be
		deleted. This parameter may be 0, in which case no new
		values are replaced into the array and the values in the
		range are simply removed. If this parameter is negative, or
		greater than the number of values actually in the newValues
		C array, the behavior is undefined.
*/
func CFArrayReplaceValues(theArray: CFMutableArray!, _ range: CFRange, _ newValues: UnsafeMutablePointer<UnsafePointer<Void>>, _ newCount: CFIndex)

/*!
	@function CFArrayExchangeValuesAtIndices
	Exchanges the values at two indices of the array.
	@param theArray The array of which the values are to be swapped. If
		this parameter is not a valid mutable CFArray, the behavior
		is undefined.
	@param idx1 The first index whose values should be swapped. If the
		index is outside the index space of the array (0 to N-1
		inclusive, where N is the count of the array before the
		operation), the behavior is undefined.
	@param idx2 The second index whose values should be swapped. If the
		index is outside the index space of the array (0 to N-1
		inclusive, where N is the count of the array before the
		operation), the behavior is undefined.
*/
func CFArrayExchangeValuesAtIndices(theArray: CFMutableArray!, _ idx1: CFIndex, _ idx2: CFIndex)

/*!
	@function CFArraySortValues
	Sorts the values in the array using the given comparison function.
	@param theArray The array whose values are to be sorted. If this
		parameter is not a valid mutable CFArray, the behavior is
		undefined.
	@param range The range of values within the array to sort. If the
		range location or end point (defined by the location plus
		length minus 1) is outside the index space of the array (0
		to N-1 inclusive, where N is the count of the array), the
		behavior is undefined. If the range length is negative, the
		behavior is undefined. The range may be empty (length 0).
	@param comparator The function with the comparator function type
		signature which is used in the sort operation to compare
		values in the array with the given value. If this parameter
		is not a pointer to a function of the correct prototype, the
		the behavior is undefined. If there are values in the array
		which the comparator function does not expect or cannot
		properly compare, the behavior is undefined. The values in
		the range are sorted from least to greatest according to
		this function.
	@param context A pointer-sized user-defined value, which is passed
		as the third parameter to the comparator function, but is
		otherwise unused by this function. If the context is not
		what is expected by the comparator function, the behavior is
		undefined.
*/
func CFArraySortValues(theArray: CFMutableArray!, _ range: CFRange, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
	@function CFArrayAppendArray
	Adds the values from an array to another array.
	@param theArray The array to which values from the otherArray are to
		be added. If this parameter is not a valid mutable CFArray,
		the behavior is undefined.
	@param otherArray The array providing the values to be added to the
		array. If this parameter is not a valid CFArray, the
		behavior is undefined.
	@param otherRange The range within the otherArray from which to add
		the values to the array. If the range location or end point
		(defined by the location plus length minus 1) is outside
		the index space of the otherArray (0 to N-1 inclusive, where
		N is the count of the otherArray), the behavior is
		undefined. The new values are retained by the array using
		the retain callback provided when the array was created. If
		the values are not of the sort expected by the retain
		callback, the behavior is undefined. The values are assigned
		to the indices one larger than the previous largest index
		in the array, and beyond, and the count of the array is
		increased by range.length. The values are assigned new
		indices in the array from smallest to largest index in the
		order in which they appear in the otherArray.
*/
func CFArrayAppendArray(theArray: CFMutableArray!, _ otherArray: CFArray!, _ otherRange: CFRange)
typealias CFAttributedStringRef = CFAttributedString
typealias CFMutableAttributedStringRef = CFMutableAttributedString

/*! @function CFAttributedStringGetTypeID
Returns the type identifier of all CFAttributedString instances.
*/
func CFAttributedStringGetTypeID() -> CFTypeID

/*! @function CFAttributedStringCreate
Creates an attributed string with the specified string and attributes (both copied).
*/
func CFAttributedStringCreate(alloc: CFAllocator!, _ str: CFString!, _ attributes: CFDictionary!) -> CFAttributedString!

/*! @function CFAttributedStringCreateWithSubstring
Creates a sub-attributed string from the specified range. It's a programming error for range to specify characters outside the bounds of aStr.
*/
func CFAttributedStringCreateWithSubstring(alloc: CFAllocator!, _ aStr: CFAttributedString!, _ range: CFRange) -> CFAttributedString!

/*! @function CFAttributedStringCreateCopy
Creates an immutable attributed string copy.
*/
func CFAttributedStringCreateCopy(alloc: CFAllocator!, _ aStr: CFAttributedString!) -> CFAttributedString!

/*! @function CFAttributedStringGetString
Returns the string for the attributed string. For performance reasons, this will often point at the backing store of the attributed string, and it might change if the attributed string is edited.  However, this is an implementation detail, and definitely not something that should be counted on.
*/
func CFAttributedStringGetString(aStr: CFAttributedString!) -> CFString!

/*! @function CFAttributedStringGetLength
Returns the length of the attributed string in characters; same as CFStringGetLength(CFAttributedStringGetString(aStr))
*/
func CFAttributedStringGetLength(aStr: CFAttributedString!) -> CFIndex

/*! @function CFAttributedStringGetAttributes
Returns the attributes at the specified location. If effectiveRange is not NULL, upon return *effectiveRange contains a range over which the exact same set of attributes apply. Note that for performance reasons, the returned effectiveRange is not necessarily the maximal range - for that, use CFAttributedStringGetAttributesAndLongestEffectiveRange().  It's a programming error for loc to specify a location outside the bounds of the attributed string.

Note that the returned attribute dictionary might change in unpredictable ways from under the caller if the attributed string is edited after this call. If you wish to hang on to the dictionary long-term, you should make an actual copy of it rather than just retaining it.  Also, no assumptions should be made about the relationship of the actual CFDictionaryRef returned by this call and the dictionary originally used to set the attributes, other than the fact that the values stored in the dictionary will be identical (that is, ==) to those originally specified.
*/
func CFAttributedStringGetAttributes(aStr: CFAttributedString!, _ loc: CFIndex, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!

/*! @function CFAttributedStringGetAttribute
Returns the value of a single attribute at the specified location. If the specified attribute doesn't exist at the location, returns NULL. If effectiveRange is not NULL, upon return *effectiveRange contains a range over which the exact same attribute value applies. Note that for performance reasons, the returned effectiveRange is not necessarily the maximal range - for that, use CFAttributedStringGetAttributeAndLongestEffectiveRange(). It's a programming error for loc to specify a location outside the bounds of the attributed string.
*/
func CFAttributedStringGetAttribute(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ effectiveRange: UnsafeMutablePointer<CFRange>) -> AnyObject!

/*! @function CFAttributedStringGetAttributesAndLongestEffectiveRange
Returns the attributes at the specified location. If longestEffectiveRange is not NULL, upon return *longestEffectiveRange contains the maximal range within inRange over which the exact same set of attributes apply. The returned range is clipped to inRange. It's a programming error for loc or inRange to specify locations outside the bounds of the attributed string.
*/
func CFAttributedStringGetAttributesAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> CFDictionary!

/*! @function CFAttributedStringGetAttributeAndLongestEffectiveRange
Returns the value of a single attribute at the specified location. If longestEffectiveRange is not NULL, upon return *longestEffectiveRange contains the maximal range within inRange over which the exact same attribute value applies. The returned range is clipped to inRange. It's a programming error for loc or inRange to specify locations outside the bounds of the attributed string.
*/
func CFAttributedStringGetAttributeAndLongestEffectiveRange(aStr: CFAttributedString!, _ loc: CFIndex, _ attrName: CFString!, _ inRange: CFRange, _ longestEffectiveRange: UnsafeMutablePointer<CFRange>) -> AnyObject!

/*! @function CFAttributedStringCreateMutableCopy
Creates a mutable attributed string copy. maxLength, if not 0, is a hard bound on the length of the attributed string; exceeding this size limit during any editing operation is a programming error. If 0, there is no limit on the length.
*/
func CFAttributedStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ aStr: CFAttributedString!) -> CFMutableAttributedString!

/*! @function CFAttributedStringCreateMutable
Creates a mutable empty attributed string. maxLength, if not 0, is a hard bound on the length of the attributed string; exceeding this size limit during any editing operation is a programming error. If 0, there is no limit on the length.
*/
func CFAttributedStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableAttributedString!

/*! @function CFAttributedStringReplaceString
Modifies the string for the attributed string, much like CFStringReplace().  It's an error for range to specify characters outside the bounds of aStr. 

(Note: This function is a convenience on CFAttributedStringGetMutableString(); however, until CFAttributedStringGetMutableString() is implemented, it remains the only way to edit the string of the attributed string.)
*/
func CFAttributedStringReplaceString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFString!)

/*! @function CFAttributedStringGetMutableString
Gets the string for the attributed string as a mutable string, allowing editing the character contents of the string as if it were an CFMutableString. Attributes corresponding to the edited range are appropriately modified. If, as a result of the edit, new characters are introduced into the string, they inherit the attributes of the first replaced character from range. If no existing characters are replaced by the edit, the new characters inherit the attributes of the character preceding range if it has any, otherwise of the character following range. If the initial string is empty, the attributes for the new characters are also empty.

(Note: This function is not yet implemented and will return NULL except for toll-free bridged instances.)
*/
func CFAttributedStringGetMutableString(aStr: CFMutableAttributedString!) -> CFMutableString!

/*! @function CFAttributedStringSetAttributes
Sets the value of multiple attributes over the specified range, which should be valid. If clearOtherAttributes is false, existing attributes (which aren't being replaced) are left alone; otherwise they are cleared. The dictionary should be setup for "usual" CF type usage --- CFString keys, and arbitrary CFType values. Note that after this call, further mutations to the replacement dictionary argument by the caller will not affect the contents of the attributed string.
*/
func CFAttributedStringSetAttributes(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFDictionary!, _ clearOtherAttributes: Bool)

/*! @function CFAttributedStringSetAttribute
Sets the value of a single attribute over the specified range, which should be valid. value should not be NULL. 
*/
func CFAttributedStringSetAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!, _ value: AnyObject!)

/*! @function CFAttributedStringRemoveAttribute
Removes the value of a single attribute over the specified range, which should be valid. It's OK for the attribute not the exist over the specified range.
*/
func CFAttributedStringRemoveAttribute(aStr: CFMutableAttributedString!, _ range: CFRange, _ attrName: CFString!)

/*! @function CFAttributedStringReplaceAttributedString
Replaces the attributed substring over the specified range with the attributed string specified in replacement. range should be valid. To delete a range of the attributed string, call CFAttributedStringReplaceString() with empty string and specified range. 
*/
func CFAttributedStringReplaceAttributedString(aStr: CFMutableAttributedString!, _ range: CFRange, _ replacement: CFAttributedString!)

/*! @function CFAttributedStringBeginEditing
In cases where attributed string might do a bunch of work to assure self-consistency, CFAttributedStringBeginEditing/CFAttributedStringEndEditing allow disabling that to allow deferring and coalescing any work. It's a good idea to call these around a set of related mutation calls which don't require the string to be in consistent state in between. These calls can be nested. 
*/
func CFAttributedStringBeginEditing(aStr: CFMutableAttributedString!)

/*! @function CFAttributedStringEndEditing
In cases where attributed string might do a bunch of work to assure self-consistency, CFAttributedStringBeginEditing/CFAttributedStringEndEditing allow disabling that to allow deferring and coalescing any work. It's a good idea to call these around a set of related mutation calls which don't require the string to be in consistent state in between. These calls can be nested. 
*/
func CFAttributedStringEndEditing(aStr: CFMutableAttributedString!)
typealias CFBagRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFBagReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFBagCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFBagEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFBagHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFBagCallBacks {
  var version: CFIndex
  var retain: CFBagRetainCallBack!
  var release: CFBagReleaseCallBack!
  var copyDescription: CFBagCopyDescriptionCallBack!
  var equal: CFBagEqualCallBack!
  var hash: CFBagHashCallBack!
  init()
  init(version: CFIndex, retain: CFBagRetainCallBack!, release: CFBagReleaseCallBack!, copyDescription: CFBagCopyDescriptionCallBack!, equal: CFBagEqualCallBack!, hash: CFBagHashCallBack!)
}
let kCFTypeBagCallBacks: CFBagCallBacks
let kCFCopyStringBagCallBacks: CFBagCallBacks
typealias CFBagApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFBagRef = CFBag
typealias CFMutableBagRef = CFMutableBag
func CFBagGetTypeID() -> CFTypeID
func CFBagCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFBag!
func CFBagCreateCopy(allocator: CFAllocator!, _ theBag: CFBag!) -> CFBag!
func CFBagCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>) -> CFMutableBag!
func CFBagCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theBag: CFBag!) -> CFMutableBag!
func CFBagGetCount(theBag: CFBag!) -> CFIndex
func CFBagGetCountOfValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> CFIndex
func CFBagContainsValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> Bool
func CFBagGetValue(theBag: CFBag!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>
func CFBagGetValueIfPresent(theBag: CFBag!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool
func CFBagGetValues(theBag: CFBag!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)
func CFBagApplyFunction(theBag: CFBag!, _ applier: CFBagApplierFunction!, _ context: UnsafeMutablePointer<Void>)
func CFBagAddValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagReplaceValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagSetValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveValue(theBag: CFMutableBag!, _ value: UnsafePointer<Void>)
func CFBagRemoveAllValues(theBag: CFMutableBag!)
var kCFCoreFoundationVersionNumber: Double
var kCFCoreFoundationVersionNumber10_0: Double { get }
var kCFCoreFoundationVersionNumber10_0_3: Double { get }
var kCFCoreFoundationVersionNumber10_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_1: Double { get }
var kCFCoreFoundationVersionNumber10_1_2: Double { get }
var kCFCoreFoundationVersionNumber10_1_3: Double { get }
var kCFCoreFoundationVersionNumber10_1_4: Double { get }
var kCFCoreFoundationVersionNumber10_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_1: Double { get }
var kCFCoreFoundationVersionNumber10_2_2: Double { get }
var kCFCoreFoundationVersionNumber10_2_3: Double { get }
var kCFCoreFoundationVersionNumber10_2_4: Double { get }
var kCFCoreFoundationVersionNumber10_2_5: Double { get }
var kCFCoreFoundationVersionNumber10_2_6: Double { get }
var kCFCoreFoundationVersionNumber10_2_7: Double { get }
var kCFCoreFoundationVersionNumber10_2_8: Double { get }
var kCFCoreFoundationVersionNumber10_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_1: Double { get }
var kCFCoreFoundationVersionNumber10_3_2: Double { get }
var kCFCoreFoundationVersionNumber10_3_3: Double { get }
var kCFCoreFoundationVersionNumber10_3_4: Double { get }
var kCFCoreFoundationVersionNumber10_3_5: Double { get }
var kCFCoreFoundationVersionNumber10_3_6: Double { get }
var kCFCoreFoundationVersionNumber10_3_7: Double { get }
var kCFCoreFoundationVersionNumber10_3_8: Double { get }
var kCFCoreFoundationVersionNumber10_3_9: Double { get }
var kCFCoreFoundationVersionNumber10_4: Double { get }
var kCFCoreFoundationVersionNumber10_4_1: Double { get }
var kCFCoreFoundationVersionNumber10_4_2: Double { get }
var kCFCoreFoundationVersionNumber10_4_3: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_4_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_5_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_Intel: Double { get }
var kCFCoreFoundationVersionNumber10_4_6_PowerPC: Double { get }
var kCFCoreFoundationVersionNumber10_4_7: Double { get }
var kCFCoreFoundationVersionNumber10_4_8: Double { get }
var kCFCoreFoundationVersionNumber10_4_9: Double { get }
var kCFCoreFoundationVersionNumber10_4_10: Double { get }
var kCFCoreFoundationVersionNumber10_4_11: Double { get }
var kCFCoreFoundationVersionNumber10_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_1: Double { get }
var kCFCoreFoundationVersionNumber10_5_2: Double { get }
var kCFCoreFoundationVersionNumber10_5_3: Double { get }
var kCFCoreFoundationVersionNumber10_5_4: Double { get }
var kCFCoreFoundationVersionNumber10_5_5: Double { get }
var kCFCoreFoundationVersionNumber10_5_6: Double { get }
var kCFCoreFoundationVersionNumber10_5_7: Double { get }
var kCFCoreFoundationVersionNumber10_5_8: Double { get }
var kCFCoreFoundationVersionNumber10_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_1: Double { get }
var kCFCoreFoundationVersionNumber10_6_2: Double { get }
var kCFCoreFoundationVersionNumber10_6_3: Double { get }
var kCFCoreFoundationVersionNumber10_6_4: Double { get }
var kCFCoreFoundationVersionNumber10_6_5: Double { get }
var kCFCoreFoundationVersionNumber10_6_6: Double { get }
var kCFCoreFoundationVersionNumber10_6_7: Double { get }
var kCFCoreFoundationVersionNumber10_6_8: Double { get }
var kCFCoreFoundationVersionNumber10_7: Double { get }
var kCFCoreFoundationVersionNumber10_7_1: Double { get }
var kCFCoreFoundationVersionNumber10_7_2: Double { get }
var kCFCoreFoundationVersionNumber10_7_3: Double { get }
var kCFCoreFoundationVersionNumber10_7_4: Double { get }
var kCFCoreFoundationVersionNumber10_7_5: Double { get }
var kCFCoreFoundationVersionNumber10_8: Double { get }
var kCFCoreFoundationVersionNumber10_8_1: Double { get }
var kCFCoreFoundationVersionNumber10_8_2: Double { get }
var kCFCoreFoundationVersionNumber10_8_3: Double { get }
var kCFCoreFoundationVersionNumber10_8_4: Double { get }
var kCFCoreFoundationVersionNumber10_9: Double { get }
var kCFCoreFoundationVersionNumber10_9_1: Double { get }
var kCFCoreFoundationVersionNumber10_9_2: Double { get }
var kCFCoreFoundationVersionNumber10_10: Double { get }
var kCFCoreFoundationVersionNumber10_10_1: Double { get }
var kCFCoreFoundationVersionNumber10_10_2: Int32 { get }
var kCFCoreFoundationVersionNumber10_10_3: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_2_0: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_2_1: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_2_2: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_3_0: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_3_1: Double { get }
var kCFCoreFoundationVersionNumber_iPhoneOS_3_2: Double { get }
var kCFCoreFoundationVersionNumber_iOS_4_0: Double { get }
var kCFCoreFoundationVersionNumber_iOS_4_1: Double { get }
var kCFCoreFoundationVersionNumber_iOS_4_2: Double { get }
var kCFCoreFoundationVersionNumber_iOS_4_3: Double { get }
var kCFCoreFoundationVersionNumber_iOS_5_0: Double { get }
var kCFCoreFoundationVersionNumber_iOS_5_1: Double { get }
var kCFCoreFoundationVersionNumber_iOS_6_0: Double { get }
var kCFCoreFoundationVersionNumber_iOS_6_1: Double { get }
var kCFCoreFoundationVersionNumber_iOS_7_0: Double { get }
var kCFCoreFoundationVersionNumber_iOS_7_1: Double { get }
var kCFCoreFoundationVersionNumber_iOS_8_0: Double { get }
var kCFCoreFoundationVersionNumber_iOS_8_1: Double { get }
var kCFCoreFoundationVersionNumber_iOS_8_2: Double { get }
typealias CFTypeID = UInt
typealias CFOptionFlags = UInt
typealias CFHashCode = UInt
typealias CFIndex = Int
typealias CFTypeRef = AnyObject
typealias CFStringRef = CFString
typealias CFMutableStringRef = CFMutableString
typealias CFPropertyListRef = CFPropertyList
enum CFComparisonResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CompareLessThan
  case CompareEqualTo
  case CompareGreaterThan
}
typealias CFComparatorFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult
let kCFNotFound: CFIndex
struct CFRange {
  var location: CFIndex
  var length: CFIndex
  init()
  init(location: CFIndex, length: CFIndex)
}
func CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
func __CFRangeMake(loc: CFIndex, _ len: CFIndex) -> CFRange
typealias CFNullRef = CFNull
func CFNullGetTypeID() -> CFTypeID
let kCFNull: CFNull!
typealias CFAllocatorRef = CFAllocator
let kCFAllocatorDefault: CFAllocator!
let kCFAllocatorSystemDefault: CFAllocator!
let kCFAllocatorMalloc: CFAllocator!
let kCFAllocatorMallocZone: CFAllocator!
let kCFAllocatorNull: CFAllocator!
let kCFAllocatorUseContext: CFAllocator!
typealias CFAllocatorRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFAllocatorReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFAllocatorCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFAllocatorAllocateCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorReallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFAllocatorDeallocateCallBack = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFAllocatorPreferredSizeCallBack = @convention(c) (CFIndex, CFOptionFlags, UnsafeMutablePointer<Void>) -> CFIndex
struct CFAllocatorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack!
  var release: CFAllocatorReleaseCallBack!
  var copyDescription: CFAllocatorCopyDescriptionCallBack!
  var allocate: CFAllocatorAllocateCallBack!
  var reallocate: CFAllocatorReallocateCallBack!
  var deallocate: CFAllocatorDeallocateCallBack!
  var preferredSize: CFAllocatorPreferredSizeCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack!, release: CFAllocatorReleaseCallBack!, copyDescription: CFAllocatorCopyDescriptionCallBack!, allocate: CFAllocatorAllocateCallBack!, reallocate: CFAllocatorReallocateCallBack!, deallocate: CFAllocatorDeallocateCallBack!, preferredSize: CFAllocatorPreferredSizeCallBack!)
}
func CFAllocatorGetTypeID() -> CFTypeID
func CFAllocatorSetDefault(allocator: CFAllocator!)
func CFAllocatorGetDefault() -> Unmanaged<CFAllocator>!
func CFAllocatorCreate(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>) -> Unmanaged<CFAllocator>!
func CFAllocatorAllocate(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorReallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>, _ newsize: CFIndex, _ hint: CFOptionFlags) -> UnsafeMutablePointer<Void>
func CFAllocatorDeallocate(allocator: CFAllocator!, _ ptr: UnsafeMutablePointer<Void>)
func CFAllocatorGetPreferredSizeForSize(allocator: CFAllocator!, _ size: CFIndex, _ hint: CFOptionFlags) -> CFIndex
func CFAllocatorGetContext(allocator: CFAllocator!, _ context: UnsafeMutablePointer<CFAllocatorContext>)
func CFGetTypeID(cf: AnyObject!) -> CFTypeID
func CFCopyTypeIDDescription(type_id: CFTypeID) -> CFString!
func CFGetRetainCount(cf: AnyObject!) -> CFIndex
func CFEqual(cf1: AnyObject!, _ cf2: AnyObject!) -> Bool
func CFHash(cf: AnyObject!) -> CFHashCode
func CFCopyDescription(cf: AnyObject!) -> CFString!
func CFGetAllocator(cf: AnyObject!) -> CFAllocator!
struct CFBinaryHeapCompareContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}

/*!
        @typedef CFBinaryHeapCallBacks
	Structure containing the callbacks for values of a CFBinaryHeap.
        @field version The version number of the structure type being passed
                in as a parameter to the CFBinaryHeap creation functions.
                This structure is version 0.
	@field retain The callback used to add a retain for the binary heap
		on values as they are put into the binary heap.
		This callback returns the value to use as the value in the
		binary heap, which is usually the value parameter passed to
		this callback, but may be a different value if a different
		value should be added to the binary heap. The binary heap's
		allocator is passed as the first argument.
	@field release The callback used to remove a retain previously added
		for the binary heap from values as they are removed from
		the binary heap. The binary heap's allocator is passed as the
		first argument.
	@field copyDescription The callback used to create a descriptive
		string representation of each value in the binary heap. This
		is used by the CFCopyDescription() function.
	@field compare The callback used to compare values in the binary heap for
		equality in some operations.
*/
struct CFBinaryHeapCallBacks {
  var version: CFIndex
  var retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!
  init()
  init(version: CFIndex, retain: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, compare: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> CFComparisonResult)!)
}

/*!
	@constant kCFStringBinaryHeapCallBacks
	Predefined CFBinaryHeapCallBacks structure containing a set
	of callbacks appropriate for use when the values in a CFBinaryHeap
	are all CFString types.
*/
let kCFStringBinaryHeapCallBacks: CFBinaryHeapCallBacks

/*!
	@typedef CFBinaryHeapApplierFunction
	Type of the callback function used by the apply functions of
		CFBinaryHeap.
	@param value The current value from the binary heap.
	@param context The user-defined context parameter given to the apply
		function.
*/
typealias CFBinaryHeapApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef CFBinaryHeapRef
	This is the type of a reference to CFBinaryHeaps.
*/
typealias CFBinaryHeapRef = CFBinaryHeap

/*!
	@function CFBinaryHeapGetTypeID
	Returns the type identifier of all CFBinaryHeap instances.
*/
func CFBinaryHeapGetTypeID() -> CFTypeID

/*!
	@function CFBinaryHeapCreate
	Creates a new mutable binary heap with the given values.
	@param allocator The CFAllocator which should be used to allocate
		memory for the binary heap and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFBinaryHeap. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A heap's actual capacity is only limited by 
                address space and available memory constraints). If this 
                parameter is negative, the behavior is undefined.
	@param callBacks A pointer to a CFBinaryHeapCallBacks structure
		initialized with the callbacks for the binary heap to use on
		each value in the binary heap. A copy of the contents of the
		callbacks structure is made, so that a pointer to a structure
		on the stack can be passed in, or can be reused for multiple
		binary heap creations. If the version field of this callbacks
		structure is not one of the defined ones for CFBinaryHeap, the
		behavior is undefined. The retain field may be NULL, in which
		case the CFBinaryHeap will do nothing to add a retain to values
		as they are put into the binary heap. The release field may be
		NULL, in which case the CFBinaryHeap will do nothing to remove
		the binary heap's retain (if any) on the values when the
		heap is destroyed or a key-value pair is removed. If the
		copyDescription field is NULL, the binary heap will create a
		simple description for a value. If the equal field is NULL, the
		binary heap will use pointer equality to test for equality of
		values. This callbacks parameter itself may be NULL, which is
		treated as if a valid structure of version 0 with all fields
		NULL had been passed in. Otherwise,
		if any of the fields are not valid pointers to functions
		of the correct type, or this parameter is not a valid
		pointer to a CFBinaryHeapCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		binary heap is not one understood by one of the callback functions
		the behavior when that callback function is used is undefined.
        @param compareContext A pointer to a CFBinaryHeapCompareContext structure.
	@result A reference to the new CFBinaryHeap.
*/
func CFBinaryHeapCreate(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBinaryHeapCallBacks>, _ compareContext: UnsafePointer<CFBinaryHeapCompareContext>) -> CFBinaryHeap!

/*!
	@function CFBinaryHeapCreateCopy
	Creates a new mutable binary heap with the values from the given binary heap.
	@param allocator The CFAllocator which should be used to allocate
		memory for the binary heap and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFBinaryHeap. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A heap's actual capacity is only limited by
                address space and available memory constraints). 
                This parameter must be greater than or equal
                to the count of the heap which is to be copied, or the
                behavior is undefined. If this parameter is negative, the
                behavior is undefined.
	@param heap The binary heap which is to be copied. The values from the
		binary heap are copied as pointers into the new binary heap (that is,
		the values themselves are copied, not that which the values
		point to, if anything). However, the values are also
		retained by the new binary heap. The count of the new binary will
		be the same as the given binary heap. The new binary heap uses the same
		callbacks as the binary heap to be copied. If this parameter is
		not a valid CFBinaryHeap, the behavior is undefined.
	@result A reference to the new mutable binary heap.
*/
func CFBinaryHeapCreateCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ heap: CFBinaryHeap!) -> CFBinaryHeap!

/*!
	@function CFBinaryHeapGetCount
	Returns the number of values currently in the binary heap.
	@param heap The binary heap to be queried. If this parameter is not a valid
		CFBinaryHeap, the behavior is undefined.
	@result The number of values in the binary heap.
*/
func CFBinaryHeapGetCount(heap: CFBinaryHeap!) -> CFIndex

/*!
	@function CFBinaryHeapGetCountOfValue
	Counts the number of times the given value occurs in the binary heap.
	@param heap The binary heap to be searched. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
	@param value The value for which to find matches in the binary heap. The
		compare() callback provided when the binary heap was created is
		used to compare. If the compare() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the binary heap, are not understood by the compare() callback,
		the behavior is undefined.
	@result The number of times the given value occurs in the binary heap.
*/
func CFBinaryHeapGetCountOfValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFBinaryHeapContainsValue
	Reports whether or not the value is in the binary heap.
	@param heap The binary heap to be searched. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
	@param value The value for which to find matches in the binary heap. The
		compare() callback provided when the binary heap was created is
		used to compare. If the compare() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the binary heap, are not understood by the compare() callback,
		the behavior is undefined.
	@result true, if the value is in the specified binary heap, otherwise false.
*/
func CFBinaryHeapContainsValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>) -> Bool

/*!
	@function CFBinaryHeapGetMinimum
	Returns the minimum value is in the binary heap.  If the heap contains several equal
                minimum values, any one may be returned.
	@param heap The binary heap to be searched. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
	@result A reference to the minimum value in the binary heap, or NULL if the
                binary heap contains no values.
*/
func CFBinaryHeapGetMinimum(heap: CFBinaryHeap!) -> UnsafePointer<Void>

/*!
	@function CFBinaryHeapGetMinimumIfPresent
	Returns the minimum value is in the binary heap, if present.  If the heap contains several equal
                minimum values, any one may be returned.
	@param heap The binary heap to be searched. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
        @param value A C pointer to pointer-sized storage to be filled with the minimum value in 
                the binary heap.  If this value is not a valid C pointer to a pointer-sized block
                of storage, the result is undefined.  If the result of the function is false, the value
                stored at this address is undefined.
	@result true, if a minimum value was found in the specified binary heap, otherwise false.
*/
func CFBinaryHeapGetMinimumIfPresent(heap: CFBinaryHeap!, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool

/*!
	@function CFBinaryHeapGetValues
	Fills the buffer with values from the binary heap.
	@param heap The binary heap to be queried. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
	@param values A C array of pointer-sized values to be filled with
		values from the binary heap. The values in the C array are ordered
		from least to greatest. If this parameter is not a valid pointer to a 
                C array of at least CFBinaryHeapGetCount() pointers, the behavior is undefined.
*/
func CFBinaryHeapGetValues(heap: CFBinaryHeap!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)

/*!
	@function CFBinaryHeapApplyFunction
	Calls a function once for each value in the binary heap.
	@param heap The binary heap to be operated upon. If this parameter is not a
		valid CFBinaryHeap, the behavior is undefined.
	@param applier The callback function to call once for each value in
		the given binary heap. If this parameter is not a
		pointer to a function of the correct prototype, the behavior
		is undefined. If there are values in the binary heap which the
		applier function does not expect or cannot properly apply
		to, the behavior is undefined. 
	@param context A pointer-sized user-defined value, which is passed
		as the second parameter to the applier function, but is
		otherwise unused by this function. If the context is not
		what is expected by the applier function, the behavior is
		undefined.
*/
func CFBinaryHeapApplyFunction(heap: CFBinaryHeap!, _ applier: CFBinaryHeapApplierFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
	@function CFBinaryHeapAddValue
	Adds the value to the binary heap.
	@param heap The binary heap to which the value is to be added. If this parameter is not a
		valid mutable CFBinaryHeap, the behavior is undefined.
	@param value The value to add to the binary heap. The value is retained by
		the binary heap using the retain callback provided when the binary heap
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined.
*/
func CFBinaryHeapAddValue(heap: CFBinaryHeap!, _ value: UnsafePointer<Void>)

/*!
	@function CFBinaryHeapRemoveMinimumValue
	Removes the minimum value from the binary heap.
	@param heap The binary heap from which the minimum value is to be removed. If this 
                parameter is not a valid mutable CFBinaryHeap, the behavior is undefined.
*/
func CFBinaryHeapRemoveMinimumValue(heap: CFBinaryHeap!)

/*!
	@function CFBinaryHeapRemoveAllValues
	Removes all the values from the binary heap, making it empty.
	@param heap The binary heap from which all of the values are to be
		removed. If this parameter is not a valid mutable CFBinaryHeap,
		the behavior is undefined.
*/
func CFBinaryHeapRemoveAllValues(heap: CFBinaryHeap!)
typealias CFBit = UInt32
typealias CFBitVectorRef = CFBitVector
typealias CFMutableBitVectorRef = CFMutableBitVector
func CFBitVectorGetTypeID() -> CFTypeID
func CFBitVectorCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBits: CFIndex) -> CFBitVector!
func CFBitVectorCreateCopy(allocator: CFAllocator!, _ bv: CFBitVector!) -> CFBitVector!
func CFBitVectorCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableBitVector!
func CFBitVectorCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ bv: CFBitVector!) -> CFMutableBitVector!
func CFBitVectorGetCount(bv: CFBitVector!) -> CFIndex
func CFBitVectorGetCountOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorContainsBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> Bool
func CFBitVectorGetBitAtIndex(bv: CFBitVector!, _ idx: CFIndex) -> CFBit
func CFBitVectorGetBits(bv: CFBitVector!, _ range: CFRange, _ bytes: UnsafeMutablePointer<UInt8>)
func CFBitVectorGetFirstIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorGetLastIndexOfBit(bv: CFBitVector!, _ range: CFRange, _ value: CFBit) -> CFIndex
func CFBitVectorSetCount(bv: CFMutableBitVector!, _ count: CFIndex)
func CFBitVectorFlipBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex)
func CFBitVectorFlipBits(bv: CFMutableBitVector!, _ range: CFRange)
func CFBitVectorSetBitAtIndex(bv: CFMutableBitVector!, _ idx: CFIndex, _ value: CFBit)
func CFBitVectorSetBits(bv: CFMutableBitVector!, _ range: CFRange, _ value: CFBit)
func CFBitVectorSetAllBits(bv: CFMutableBitVector!, _ value: CFBit)
typealias CFBundleRef = CFBundle
typealias CFPlugInRef = CFPlugIn
let kCFBundleInfoDictionaryVersionKey: CFString!
let kCFBundleExecutableKey: CFString!
let kCFBundleIdentifierKey: CFString!
let kCFBundleVersionKey: CFString!
let kCFBundleDevelopmentRegionKey: CFString!
let kCFBundleNameKey: CFString!
let kCFBundleLocalizationsKey: CFString!
func CFBundleGetMainBundle() -> CFBundle!
func CFBundleGetBundleWithIdentifier(bundleID: CFString!) -> CFBundle!
func CFBundleGetAllBundles() -> CFArray!
func CFBundleGetTypeID() -> CFTypeID
func CFBundleCreate(allocator: CFAllocator!, _ bundleURL: CFURL!) -> CFBundle!
func CFBundleCreateBundlesFromDirectory(allocator: CFAllocator!, _ directoryURL: CFURL!, _ bundleType: CFString!) -> CFArray!
func CFBundleCopyBundleURL(bundle: CFBundle!) -> CFURL!
func CFBundleGetValueForInfoDictionaryKey(bundle: CFBundle!, _ key: CFString!) -> AnyObject!
func CFBundleGetInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetLocalInfoDictionary(bundle: CFBundle!) -> CFDictionary!
func CFBundleGetPackageInfo(bundle: CFBundle!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>)
func CFBundleGetIdentifier(bundle: CFBundle!) -> CFString!
func CFBundleGetVersionNumber(bundle: CFBundle!) -> UInt32
func CFBundleGetDevelopmentRegion(bundle: CFBundle!) -> CFString!
func CFBundleCopySupportFilesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyResourcesDirectoryURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyPrivateFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedFrameworksURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopySharedSupportURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyBuiltInPlugInsURL(bundle: CFBundle!) -> CFURL!
func CFBundleCopyInfoDictionaryInDirectory(bundleURL: CFURL!) -> CFDictionary!
func CFBundleGetPackageInfoInDirectory(url: CFURL!, _ packageType: UnsafeMutablePointer<UInt32>, _ packageCreator: UnsafeMutablePointer<UInt32>) -> Bool
func CFBundleCopyResourceURL(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfType(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyLocalizedString(bundle: CFBundle!, _ key: CFString!, _ value: CFString!, _ tableName: CFString!) -> CFString!
func CFBundleCopyResourceURLInDirectory(bundleURL: CFURL!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeInDirectory(bundleURL: CFURL!, _ resourceType: CFString!, _ subDirName: CFString!) -> CFArray!
func CFBundleCopyBundleLocalizations(bundle: CFBundle!) -> CFArray!
func CFBundleCopyPreferredLocalizationsFromArray(locArray: CFArray!) -> CFArray!
func CFBundleCopyLocalizationsForPreferences(locArray: CFArray!, _ prefArray: CFArray!) -> CFArray!
func CFBundleCopyResourceURLForLocalization(bundle: CFBundle!, _ resourceName: CFString!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFURL!
func CFBundleCopyResourceURLsOfTypeForLocalization(bundle: CFBundle!, _ resourceType: CFString!, _ subDirName: CFString!, _ localizationName: CFString!) -> CFArray!
func CFBundleCopyInfoDictionaryForURL(url: CFURL!) -> CFDictionary!
func CFBundleCopyLocalizationsForURL(url: CFURL!) -> CFArray!
@available(tvOS 2.0, *)
func CFBundleCopyExecutableArchitecturesForURL(url: CFURL!) -> CFArray!
func CFBundleCopyExecutableURL(bundle: CFBundle!) -> CFURL!
var kCFBundleExecutableArchitectureI386: Int { get }
var kCFBundleExecutableArchitecturePPC: Int { get }
var kCFBundleExecutableArchitectureX86_64: Int { get }
var kCFBundleExecutableArchitecturePPC64: Int { get }
@available(tvOS 2.0, *)
func CFBundleCopyExecutableArchitectures(bundle: CFBundle!) -> CFArray!
@available(tvOS 2.0, *)
func CFBundlePreflightExecutable(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 2.0, *)
func CFBundleLoadExecutableAndReturnError(bundle: CFBundle!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
func CFBundleLoadExecutable(bundle: CFBundle!) -> Bool
func CFBundleIsExecutableLoaded(bundle: CFBundle!) -> Bool
func CFBundleUnloadExecutable(bundle: CFBundle!)
func CFBundleGetFunctionPointerForName(bundle: CFBundle!, _ functionName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetFunctionPointersForNames(bundle: CFBundle!, _ functionNames: CFArray!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleGetDataPointerForName(bundle: CFBundle!, _ symbolName: CFString!) -> UnsafeMutablePointer<Void>
func CFBundleGetDataPointersForNames(bundle: CFBundle!, _ symbolNames: CFArray!, _ stbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func CFBundleCopyAuxiliaryExecutableURL(bundle: CFBundle!, _ executableName: CFString!) -> CFURL!
func CFBundleGetPlugIn(bundle: CFBundle!) -> CFPlugIn!
typealias CFBundleRefNum = Int32
func CFBundleOpenBundleResourceMap(bundle: CFBundle!) -> CFBundleRefNum
func CFBundleOpenBundleResourceFiles(bundle: CFBundle!, _ refNum: UnsafeMutablePointer<CFBundleRefNum>, _ localizedRefNum: UnsafeMutablePointer<CFBundleRefNum>) -> Int32
func CFBundleCloseBundleResourceMap(bundle: CFBundle!, _ refNum: CFBundleRefNum)
struct __CFByteOrder : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var CFByteOrderUnknown: __CFByteOrder { get }
var CFByteOrderLittleEndian: __CFByteOrder { get }
var CFByteOrderBigEndian: __CFByteOrder { get }
typealias CFByteOrder = CFIndex
func CFByteOrderGetCurrent() -> CFByteOrder
func CFSwapInt16(arg: UInt16) -> UInt16
func CFSwapInt32(arg: UInt32) -> UInt32
func CFSwapInt64(arg: UInt64) -> UInt64
func CFSwapInt16BigToHost(arg: UInt16) -> UInt16
func CFSwapInt32BigToHost(arg: UInt32) -> UInt32
func CFSwapInt64BigToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToBig(arg: UInt16) -> UInt16
func CFSwapInt32HostToBig(arg: UInt32) -> UInt32
func CFSwapInt64HostToBig(arg: UInt64) -> UInt64
func CFSwapInt16LittleToHost(arg: UInt16) -> UInt16
func CFSwapInt32LittleToHost(arg: UInt32) -> UInt32
func CFSwapInt64LittleToHost(arg: UInt64) -> UInt64
func CFSwapInt16HostToLittle(arg: UInt16) -> UInt16
func CFSwapInt32HostToLittle(arg: UInt32) -> UInt32
func CFSwapInt64HostToLittle(arg: UInt64) -> UInt64
struct CFSwappedFloat32 {
  var v: UInt32
  init()
  init(v: UInt32)
}
struct CFSwappedFloat64 {
  var v: UInt64
  init()
  init(v: UInt64)
}
func CFConvertFloat32HostToSwapped(arg: Float32) -> CFSwappedFloat32
func CFConvertFloat32SwappedToHost(arg: CFSwappedFloat32) -> Float32
func CFConvertFloat64HostToSwapped(arg: Float64) -> CFSwappedFloat64
func CFConvertFloat64SwappedToHost(arg: CFSwappedFloat64) -> Float64
func CFConvertFloatHostToSwapped(arg: Float) -> CFSwappedFloat32
func CFConvertFloatSwappedToHost(arg: CFSwappedFloat32) -> Float
func CFConvertDoubleHostToSwapped(arg: Double) -> CFSwappedFloat64
func CFConvertDoubleSwappedToHost(arg: CFSwappedFloat64) -> Double
typealias CFCalendarRef = CFCalendar
func CFCalendarGetTypeID() -> CFTypeID
func CFCalendarCopyCurrent() -> CFCalendar!
func CFCalendarCreateWithIdentifier(allocator: CFAllocator!, _ identifier: CFString!) -> CFCalendar!
func CFCalendarGetIdentifier(calendar: CFCalendar!) -> CFString!
func CFCalendarCopyLocale(calendar: CFCalendar!) -> CFLocale!
func CFCalendarSetLocale(calendar: CFCalendar!, _ locale: CFLocale!)
func CFCalendarCopyTimeZone(calendar: CFCalendar!) -> CFTimeZone!
func CFCalendarSetTimeZone(calendar: CFCalendar!, _ tz: CFTimeZone!)
func CFCalendarGetFirstWeekday(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetFirstWeekday(calendar: CFCalendar!, _ wkdy: CFIndex)
func CFCalendarGetMinimumDaysInFirstWeek(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetMinimumDaysInFirstWeek(calendar: CFCalendar!, _ mwd: CFIndex)
struct CFCalendarUnit : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Era: CFCalendarUnit { get }
  static var Year: CFCalendarUnit { get }
  static var Month: CFCalendarUnit { get }
  static var Day: CFCalendarUnit { get }
  static var Hour: CFCalendarUnit { get }
  static var Minute: CFCalendarUnit { get }
  static var Second: CFCalendarUnit { get }
  @available(tvOS, introduced=2.0, deprecated=8.0)
  static var Week: CFCalendarUnit { get }
  static var Weekday: CFCalendarUnit { get }
  static var WeekdayOrdinal: CFCalendarUnit { get }
  @available(tvOS 4.0, *)
  static var Quarter: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var WeekOfMonth: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var WeekOfYear: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var YearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
@available(tvOS 2.0, *)
func CFCalendarGetTimeRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>, _ tip: UnsafeMutablePointer<CFTimeInterval>) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }

/*!
	@typedef CFCharacterSetRef
	This is the type of a reference to immutable CFCharacterSets.
*/
typealias CFCharacterSetRef = CFCharacterSet

/*!
	@typedef CFMutableCharacterSetRef
	This is the type of a reference to mutable CFMutableCharacterSets.
*/
typealias CFMutableCharacterSetRef = CFMutableCharacterSet

/*!
	@typedef CFCharacterSetPredefinedSet
        Type of the predefined CFCharacterSet selector values.
*/
enum CFCharacterSetPredefinedSet : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Control
  case Whitespace
  case WhitespaceAndNewline
  case DecimalDigit
  case Letter
  case LowercaseLetter
  case UppercaseLetter
  case NonBase
  case Decomposable
  case AlphaNumeric
  case Punctuation
  case CapitalizedLetter
  case Symbol
  @available(tvOS 2.0, *)
  case Newline
  case Illegal
}

/*!
	@function CFCharacterSetGetTypeID
	Returns the type identifier of all CFCharacterSet instances.
*/
func CFCharacterSetGetTypeID() -> CFTypeID

/*!
	@function CFCharacterSetGetPredefined
	Returns a predefined CFCharacterSet instance.
	@param theSetIdentifier The CFCharacterSetPredefinedSet selector
                which specifies the predefined character set.  If the
                value is not in CFCharacterSetPredefinedSet, the behavior
                is undefined.
	@result A reference to the predefined immutable CFCharacterSet.
                This instance is owned by CF.
*/
func CFCharacterSetGetPredefined(theSetIdentifier: CFCharacterSetPredefinedSet) -> CFCharacterSet!

/*!
	@function CFCharacterSetCreateWithCharactersInRange
	Creates a new immutable character set with the values from the given range.
	@param alloc The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theRange The CFRange which should be used to specify the
                Unicode range the character set is filled with.  It
                accepts the range in 32-bit in the UTF-32 format.  The
                valid character point range is from 0x00000 to 0x10FFFF.
                If the range is outside of the valid Unicode character
                point, the behavior is undefined.
	@result A reference to the new immutable CFCharacterSet.
*/
func CFCharacterSetCreateWithCharactersInRange(alloc: CFAllocator!, _ theRange: CFRange) -> CFCharacterSet!

/*!
	@function CFCharacterSetCreateWithCharactersInString
	Creates a new immutable character set with the values in the given string.
	@param alloc The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theString The CFString which should be used to specify
                the Unicode characters the character set is filled with.
                If this parameter is not a valid CFString, the behavior
                is undefined.
        @result A reference to the new immutable CFCharacterSet.
*/
func CFCharacterSetCreateWithCharactersInString(alloc: CFAllocator!, _ theString: CFString!) -> CFCharacterSet!

/*!
	@function CFCharacterSetCreateWithBitmapRepresentation
	Creates a new immutable character set with the bitmap representtion in the given data.
	@param alloc The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theData The CFData which should be used to specify the
                bitmap representation of the Unicode character points
                the character set is filled with.  The bitmap
                representation could contain all the Unicode character
                range starting from BMP to Plane 16.  The first 8192 bytes
                of the data represent the BMP range.  The BMP range 8192
                bytes can be followed by zero to sixteen 8192 byte
                bitmaps, each one with the plane index byte prepended.
                For example, the bitmap representing the BMP and Plane 2
                has the size of 16385 bytes (8192 bytes for BMP, 1 byte
                index + 8192 bytes bitmap for Plane 2).  The plane index
                byte, in this case, contains the integer value two.  If
                this parameter is not a valid CFData or it contains a
                Plane index byte outside of the valid Plane range
                (1 to 16), the behavior is undefined.
        @result A reference to the new immutable CFCharacterSet.
*/
func CFCharacterSetCreateWithBitmapRepresentation(alloc: CFAllocator!, _ theData: CFData!) -> CFCharacterSet!

/*!
	@function CFCharacterSetCreateInvertedSet
	Creates a new immutable character set that is the invert of the specified character set.
	@param alloc The CFAllocator which should be used to allocate
			memory for the array and its storage for values. This
			parameter may be NULL in which case the current default
			CFAllocator is used. If this reference is not a valid
			CFAllocator, the behavior is undefined.
	@param theSet The CFCharacterSet which is to be inverted.  If this
                		parameter is not a valid CFCharacterSet, the behavior is
              		undefined.
	@result A reference to the new immutable CFCharacterSet.
*/
func CFCharacterSetCreateInvertedSet(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!

/*!
	@function CFCharacterSetIsSupersetOfSet
	Reports whether or not the character set is a superset of the character set specified as the second parameter.
	@param theSet  The character set to be checked for the membership of theOtherSet.
		If this parameter is not a valid CFCharacterSet, the behavior is undefined.
	@param theOtherset  The character set to be checked whether or not it is a subset of theSet.
		If this parameter is not a valid CFCharacterSet, the behavior is undefined.
*/
func CFCharacterSetIsSupersetOfSet(theSet: CFCharacterSet!, _ theOtherset: CFCharacterSet!) -> Bool

/*!
	@function CFCharacterSetHasMemberInPlane
	Reports whether or not the character set contains at least one member character in the specified plane.
	@param theSet  The character set to be checked for the membership.  If this
		parameter is not a valid CFCharacterSet, the behavior is undefined.
	@param thePlane  The plane number to be checked for the membership.
		The valid value range is from 0 to 16.  If the value is outside of the valid
		plane number range, the behavior is undefined.
*/
func CFCharacterSetHasMemberInPlane(theSet: CFCharacterSet!, _ thePlane: CFIndex) -> Bool

/*!
	@function CFCharacterSetCreateMutable
	Creates a new empty mutable character set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@result A reference to the new mutable CFCharacterSet.
*/
func CFCharacterSetCreateMutable(alloc: CFAllocator!) -> CFMutableCharacterSet!

/*!
	@function CFCharacterSetCreateCopy
	Creates a new character set with the values from the given character set.  This function tries to compact the backing store where applicable.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theSet The CFCharacterSet which is to be copied.  If this
                parameter is not a valid CFCharacterSet, the behavior is
                undefined.
	@result A reference to the new CFCharacterSet.
*/
func CFCharacterSetCreateCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFCharacterSet!

/*!
	@function CFCharacterSetCreateMutableCopy
	Creates a new mutable character set with the values from the given character set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theSet The CFCharacterSet which is to be copied.  If this
                parameter is not a valid CFCharacterSet, the behavior is
                undefined.
	@result A reference to the new mutable CFCharacterSet.
*/
func CFCharacterSetCreateMutableCopy(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFMutableCharacterSet!

/*!
	@function CFCharacterSetIsCharacterMember
	Reports whether or not the Unicode character is in the character set.
	@param theSet The character set to be searched. If this parameter
                is not a valid CFCharacterSet, the behavior is undefined.
	@param theChar The Unicode character for which to test against the
                character set.  Note that this function takes 16-bit Unicode
                character value; hence, it does not support access to the
                non-BMP planes.  
        @result true, if the value is in the character set, otherwise false.
*/
func CFCharacterSetIsCharacterMember(theSet: CFCharacterSet!, _ theChar: UniChar) -> Bool

/*!
	@function CFCharacterSetIsLongCharacterMember
	Reports whether or not the UTF-32 character is in the character set.
	@param theSet The character set to be searched. If this parameter
               		 is not a valid CFCharacterSet, the behavior is undefined.
	@param theChar The UTF-32 character for which to test against the
			character set.
        @result true, if the value is in the character set, otherwise false.
*/
func CFCharacterSetIsLongCharacterMember(theSet: CFCharacterSet!, _ theChar: UTF32Char) -> Bool

/*!
	@function CFCharacterSetCreateBitmapRepresentation
	Creates a new immutable data with the bitmap representation from the given character set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the array and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theSet The CFCharacterSet which is to be used create the
                bitmap representation from.  Refer to the comments for
                CFCharacterSetCreateWithBitmapRepresentation for the
                detailed discussion of the bitmap representation format.
                If this parameter is not a valid CFCharacterSet, the
                behavior is undefined.
	@result A reference to the new immutable CFData.
*/
func CFCharacterSetCreateBitmapRepresentation(alloc: CFAllocator!, _ theSet: CFCharacterSet!) -> CFData!

/*!
	@function CFCharacterSetAddCharactersInRange
	Adds the given range to the charaacter set.
	@param theSet The character set to which the range is to be added.
                If this parameter is not a valid mutable CFCharacterSet,
                the behavior is undefined.
        @param theRange The range to add to the character set.  It accepts
                the range in 32-bit in the UTF-32 format.  The valid
                character point range is from 0x00000 to 0x10FFFF.  If the
                range is outside of the valid Unicode character point,
                the behavior is undefined.
*/
func CFCharacterSetAddCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)

/*!
	@function CFCharacterSetRemoveCharactersInRange
	Removes the given range from the charaacter set.
	@param theSet The character set from which the range is to be
                removed.  If this parameter is not a valid mutable
                CFCharacterSet, the behavior is undefined.
        @param theRange The range to remove from the character set.
                It accepts the range in 32-bit in the UTF-32 format.
                The valid character point range is from 0x00000 to 0x10FFFF.
                If the range is outside of the valid Unicode character point,
                the behavior is undefined.
*/
func CFCharacterSetRemoveCharactersInRange(theSet: CFMutableCharacterSet!, _ theRange: CFRange)

/*!
	@function CFCharacterSetAddCharactersInString
	Adds the characters in the given string to the charaacter set.
	@param theSet The character set to which the characters in the
                string are to be added.  If this parameter is not a
                valid mutable CFCharacterSet, the behavior is undefined.
        @param theString The string to add to the character set.
                If this parameter is not a valid CFString, the behavior
                is undefined.
*/
func CFCharacterSetAddCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)

/*!
	@function CFCharacterSetRemoveCharactersInString
	Removes the characters in the given string from the charaacter set.
	@param theSet The character set from which the characters in the
                string are to be remove.  If this parameter is not a
                valid mutable CFCharacterSet, the behavior is undefined.
        @param theString The string to remove from the character set.
                If this parameter is not a valid CFString, the behavior
                is undefined.
*/
func CFCharacterSetRemoveCharactersInString(theSet: CFMutableCharacterSet!, _ theString: CFString!)

/*!
	@function CFCharacterSetUnion
	Forms the union with the given character set.
	@param theSet The destination character set into which the
                union of the two character sets is stored.  If this
                parameter is not a valid mutable CFCharacterSet, the
                behavior is undefined.
	@param theOtherSet The character set with which the union is
                formed.  If this parameter is not a valid CFCharacterSet,
                the behavior is undefined.
*/
func CFCharacterSetUnion(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)

/*!
	@function CFCharacterSetIntersect
	Forms the intersection with the given character set.
	@param theSet The destination character set into which the
                intersection of the two character sets is stored.
                If this parameter is not a valid mutable CFCharacterSet,
                the behavior is undefined.
	@param theOtherSet The character set with which the intersection
                is formed.  If this parameter is not a valid CFCharacterSet,
                the behavior is undefined.
*/
func CFCharacterSetIntersect(theSet: CFMutableCharacterSet!, _ theOtherSet: CFCharacterSet!)

/*!
	@function CFCharacterSetInvert
	Inverts the content of the given character set.
	@param theSet The character set to be inverted.
                If this parameter is not a valid mutable CFCharacterSet,
                the behavior is undefined.
*/
func CFCharacterSetInvert(theSet: CFMutableCharacterSet!)
typealias CFDataRef = CFData
typealias CFMutableDataRef = CFMutableData
func CFDataGetTypeID() -> CFTypeID
func CFDataCreate(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> CFData!
func CFDataCreateWithBytesNoCopy(allocator: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFData!
func CFDataCreateCopy(allocator: CFAllocator!, _ theData: CFData!) -> CFData!
func CFDataCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex) -> CFMutableData!
func CFDataCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theData: CFData!) -> CFMutableData!
func CFDataGetLength(theData: CFData!) -> CFIndex
func CFDataGetBytePtr(theData: CFData!) -> UnsafePointer<UInt8>
func CFDataGetMutableBytePtr(theData: CFMutableData!) -> UnsafeMutablePointer<UInt8>
func CFDataGetBytes(theData: CFData!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UInt8>)
func CFDataSetLength(theData: CFMutableData!, _ length: CFIndex)
func CFDataIncreaseLength(theData: CFMutableData!, _ extraLength: CFIndex)
func CFDataAppendBytes(theData: CFMutableData!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex)
func CFDataReplaceBytes(theData: CFMutableData!, _ range: CFRange, _ newBytes: UnsafePointer<UInt8>, _ newLength: CFIndex)
func CFDataDeleteBytes(theData: CFMutableData!, _ range: CFRange)
@available(tvOS 4.0, *)
struct CFDataSearchFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Backwards: CFDataSearchFlags { get }
  static var Anchored: CFDataSearchFlags { get }
}
@available(tvOS 4.0, *)
func CFDataFind(theData: CFData!, _ dataToFind: CFData!, _ searchRange: CFRange, _ compareOptions: CFDataSearchFlags) -> CFRange
typealias CFTimeInterval = Double
typealias CFAbsoluteTime = CFTimeInterval
func CFAbsoluteTimeGetCurrent() -> CFAbsoluteTime
let kCFAbsoluteTimeIntervalSince1970: CFTimeInterval
let kCFAbsoluteTimeIntervalSince1904: CFTimeInterval
typealias CFDateRef = CFDate
func CFDateGetTypeID() -> CFTypeID
func CFDateCreate(allocator: CFAllocator!, _ at: CFAbsoluteTime) -> CFDate!
func CFDateGetAbsoluteTime(theDate: CFDate!) -> CFAbsoluteTime
func CFDateGetTimeIntervalSinceDate(theDate: CFDate!, _ otherDate: CFDate!) -> CFTimeInterval
func CFDateCompare(theDate: CFDate!, _ otherDate: CFDate!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
typealias CFTimeZoneRef = CFTimeZone
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianDate {
  var year: Int32
  var month: Int8
  var day: Int8
  var hour: Int8
  var minute: Int8
  var second: Double
  init()
  init(year: Int32, month: Int8, day: Int8, hour: Int8, minute: Int8, second: Double)
}
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianUnits {
  var years: Int32
  var months: Int32
  var days: Int32
  var hours: Int32
  var minutes: Int32
  var seconds: Double
  init()
  init(years: Int32, months: Int32, days: Int32, hours: Int32, minutes: Int32, seconds: Double)
}
struct CFGregorianUnitFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsYears: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsMonths: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsDays: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsHours: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsMinutes: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var UnitsSeconds: CFGregorianUnitFlags { get }
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
  static var AllUnits: CFGregorianUnitFlags { get }
}
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateIsValid(gdate: CFGregorianDate, _ unitFlags: CFOptionFlags) -> Bool
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateGetAbsoluteTime(gdate: CFGregorianDate, _ tz: CFTimeZone!) -> CFAbsoluteTime
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetGregorianDate(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> CFGregorianDate
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeAddGregorianUnits(at: CFAbsoluteTime, _ tz: CFTimeZone!, _ units: CFGregorianUnits) -> CFAbsoluteTime
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDifferenceAsGregorianUnits(at1: CFAbsoluteTime, _ at2: CFAbsoluteTime, _ tz: CFTimeZone!, _ unitFlags: CFOptionFlags) -> CFGregorianUnits
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfWeek(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetWeekOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
typealias CFDateFormatterRef = CFDateFormatter
@available(tvOS 4.0, *)
func CFDateFormatterCreateDateFormatFromTemplate(allocator: CFAllocator!, _ tmplate: CFString!, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFString!
func CFDateFormatterGetTypeID() -> CFTypeID
enum CFDateFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
func CFDateFormatterCreate(allocator: CFAllocator!, _ locale: CFLocale!, _ dateStyle: CFDateFormatterStyle, _ timeStyle: CFDateFormatterStyle) -> CFDateFormatter!
func CFDateFormatterGetLocale(formatter: CFDateFormatter!) -> CFLocale!
func CFDateFormatterGetDateStyle(formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetTimeStyle(formatter: CFDateFormatter!) -> CFDateFormatterStyle
func CFDateFormatterGetFormat(formatter: CFDateFormatter!) -> CFString!
func CFDateFormatterSetFormat(formatter: CFDateFormatter!, _ formatString: CFString!)
func CFDateFormatterCreateStringWithDate(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ date: CFDate!) -> CFString!
func CFDateFormatterCreateStringWithAbsoluteTime(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ at: CFAbsoluteTime) -> CFString!
func CFDateFormatterCreateDateFromString(allocator: CFAllocator!, _ formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>) -> CFDate!
func CFDateFormatterGetAbsoluteTimeFromString(formatter: CFDateFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ atp: UnsafeMutablePointer<CFAbsoluteTime>) -> Bool
func CFDateFormatterSetProperty(formatter: CFDateFormatter!, _ key: CFString!, _ value: AnyObject!)
func CFDateFormatterCopyProperty(formatter: CFDateFormatter!, _ key: CFString!) -> AnyObject!
let kCFDateFormatterIsLenient: CFString!
let kCFDateFormatterTimeZone: CFString!
let kCFDateFormatterCalendarName: CFString!
let kCFDateFormatterDefaultFormat: CFString!
let kCFDateFormatterTwoDigitStartDate: CFString!
let kCFDateFormatterDefaultDate: CFString!
let kCFDateFormatterCalendar: CFString!
let kCFDateFormatterEraSymbols: CFString!
let kCFDateFormatterMonthSymbols: CFString!
let kCFDateFormatterShortMonthSymbols: CFString!
let kCFDateFormatterWeekdaySymbols: CFString!
let kCFDateFormatterShortWeekdaySymbols: CFString!
let kCFDateFormatterAMSymbol: CFString!
let kCFDateFormatterPMSymbol: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterLongEraSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterVeryShortMonthSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterStandaloneMonthSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterShortStandaloneMonthSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterVeryShortStandaloneMonthSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterVeryShortWeekdaySymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterStandaloneWeekdaySymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterShortStandaloneWeekdaySymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterVeryShortStandaloneWeekdaySymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterQuarterSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterShortQuarterSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterStandaloneQuarterSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterShortStandaloneQuarterSymbols: CFString!
@available(tvOS 2.0, *)
let kCFDateFormatterGregorianStartDate: CFString!
@available(tvOS 4.0, *)
let kCFDateFormatterDoesRelativeDateFormattingKey: CFString!

/*!
	@typedef CFDictionaryKeyCallBacks
	Structure containing the callbacks for keys of a CFDictionary.
	@field version The version number of the structure type being passed
		in as a parameter to the CFDictionary creation functions.
		This structure is version 0.
	@field retain The callback used to add a retain for the dictionary
		on keys as they are used to put values into the dictionary.
		This callback returns the value to use as the key in the
		dictionary, which is usually the value parameter passed to
		this callback, but may be a different value if a different
		value should be used as the key. The dictionary's allocator
		is passed as the first argument.
	@field release The callback used to remove a retain previously added
		for the dictionary from keys as their values are removed from
		the dictionary. The dictionary's allocator is passed as the
		first argument.
	@field copyDescription The callback used to create a descriptive
		string representation of each key in the dictionary. This
		is used by the CFCopyDescription() function.
	@field equal The callback used to compare keys in the dictionary for
		equality.
	@field hash The callback used to compute a hash code for keys as they
		are used to access, add, or remove values in the dictionary.
*/
typealias CFDictionaryRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFDictionaryReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void
typealias CFDictionaryCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
typealias CFDictionaryEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean
typealias CFDictionaryHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode
struct CFDictionaryKeyCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  var hash: CFDictionaryHashCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!, hash: CFDictionaryHashCallBack!)
}

/*!
	@constant kCFTypeDictionaryKeyCallBacks
	Predefined CFDictionaryKeyCallBacks structure containing a
	set of callbacks appropriate for use when the keys of a
	CFDictionary are all CFTypes.
*/
let kCFTypeDictionaryKeyCallBacks: CFDictionaryKeyCallBacks

/*!
	@constant kCFCopyStringDictionaryKeyCallBacks
	Predefined CFDictionaryKeyCallBacks structure containing a
	set of callbacks appropriate for use when the keys of a
	CFDictionary are all CFStrings, which may be mutable and
	need to be copied in order to serve as constant keys for
	the values in the dictionary.
*/
let kCFCopyStringDictionaryKeyCallBacks: CFDictionaryKeyCallBacks

/*!
	@typedef CFDictionaryValueCallBacks
	Structure containing the callbacks for values of a CFDictionary.
	@field version The version number of the structure type being passed
		in as a parameter to the CFDictionary creation functions.
		This structure is version 0.
	@field retain The callback used to add a retain for the dictionary
		on values as they are put into the dictionary.
		This callback returns the value to use as the value in the
		dictionary, which is usually the value parameter passed to
		this callback, but may be a different value if a different
		value should be added to the dictionary. The dictionary's
		allocator is passed as the first argument.
	@field release The callback used to remove a retain previously added
		for the dictionary from values as they are removed from
		the dictionary. The dictionary's allocator is passed as the
		first argument.
	@field copyDescription The callback used to create a descriptive
		string representation of each value in the dictionary. This
		is used by the CFCopyDescription() function.
	@field equal The callback used to compare values in the dictionary for
		equality in some operations.
*/
struct CFDictionaryValueCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!)
}

/*!
	@constant kCFTypeDictionaryValueCallBacks
	Predefined CFDictionaryValueCallBacks structure containing a set
	of callbacks appropriate for use when the values in a CFDictionary
	are all CFTypes.
*/
let kCFTypeDictionaryValueCallBacks: CFDictionaryValueCallBacks

/*!
	@typedef CFDictionaryApplierFunction
	Type of the callback function used by the apply functions of
		CFDictionarys.
	@param key The current key for the value.
	@param value The current value from the dictionary.
	@param context The user-defined context parameter given to the apply
		function.
*/
typealias CFDictionaryApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
	@typedef CFDictionaryRef
	This is the type of a reference to immutable CFDictionarys.
*/
typealias CFDictionaryRef = CFDictionary

/*!
	@typedef CFMutableDictionaryRef
	This is the type of a reference to mutable CFDictionarys.
*/
typealias CFMutableDictionaryRef = CFMutableDictionary

/*!
	@function CFDictionaryGetTypeID
	Returns the type identifier of all CFDictionary instances.
*/
func CFDictionaryGetTypeID() -> CFTypeID

/*!
	@function CFDictionaryCreate
	Creates a new immutable dictionary with the given values.
	@param allocator The CFAllocator which should be used to allocate
		memory for the dictionary and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param keys A C array of the pointer-sized keys to be used for
		the parallel C array of values to be put into the dictionary.
		This parameter may be NULL if the numValues parameter is 0.
		This C array is not changed or freed by this function. If
		this parameter is not a valid pointer to a C array of at
		least numValues pointers, the behavior is undefined.
	@param values A C array of the pointer-sized values to be in the
		dictionary. This parameter may be NULL if the numValues
		parameter is 0. This C array is not changed or freed by
		this function. If this parameter is not a valid pointer to
		a C array of at least numValues pointers, the behavior is
		undefined.
	@param numValues The number of values to copy from the keys and
		values C arrays into the CFDictionary. This number will be
		the count of the dictionary. If this parameter is
		negative, or greater than the number of values actually
		in the keys or values C arrays, the behavior is undefined.
	@param keyCallBacks A pointer to a CFDictionaryKeyCallBacks structure
		initialized with the callbacks for the dictionary to use on
		each key in the dictionary. The retain callback will be used
		within this function, for example, to retain all of the new
		keys from the keys C array. A copy of the contents of the
		callbacks structure is made, so that a pointer to a structure
		on the stack can be passed in, or can be reused for multiple
		dictionary creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFDictionary, the behavior is undefined. The retain field may
		be NULL, in which case the CFDictionary will do nothing to add
		a retain to the keys of the contained values. The release field
		may be NULL, in which case the CFDictionary will do nothing
		to remove the dictionary's retain (if any) on the keys when the
		dictionary is destroyed or a key-value pair is removed. If the
		copyDescription field is NULL, the dictionary will create a
		simple description for a key. If the equal field is NULL, the
		dictionary will use pointer equality to test for equality of
		keys. If the hash field is NULL, a key will be converted from
		a pointer to an integer to compute the hash code. This callbacks
		parameter itself may be NULL, which is treated as if a valid
		structure of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a CFDictionaryKeyCallBacks callbacks structure,
		the behavior is undefined. If any of the keys put into the
		dictionary is not one understood by one of the callback functions
		the behavior when that callback function is used is undefined.
	@param valueCallBacks A pointer to a CFDictionaryValueCallBacks structure
		initialized with the callbacks for the dictionary to use on
		each value in the dictionary. The retain callback will be used
		within this function, for example, to retain all of the new
		values from the values C array. A copy of the contents of the
		callbacks structure is made, so that a pointer to a structure
		on the stack can be passed in, or can be reused for multiple
		dictionary creations. If the version field of this callbacks
		structure is not one of the defined ones for CFDictionary, the
		behavior is undefined. The retain field may be NULL, in which
		case the CFDictionary will do nothing to add a retain to values
		as they are put into the dictionary. The release field may be
		NULL, in which case the CFDictionary will do nothing to remove
		the dictionary's retain (if any) on the values when the
		dictionary is destroyed or a key-value pair is removed. If the
		copyDescription field is NULL, the dictionary will create a
		simple description for a value. If the equal field is NULL, the
		dictionary will use pointer equality to test for equality of
		values. This callbacks parameter itself may be NULL, which is
		treated as if a valid structure of version 0 with all fields
		NULL had been passed in. Otherwise,
		if any of the fields are not valid pointers to functions
		of the correct type, or this parameter is not a valid
		pointer to a CFDictionaryValueCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		dictionary is not one understood by one of the callback functions
		the behavior when that callback function is used is undefined.
	@result A reference to the new immutable CFDictionary.
*/
func CFDictionaryCreate(allocator: CFAllocator!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFDictionary!

/*!
	@function CFDictionaryCreateCopy
	Creates a new immutable dictionary with the key-value pairs from
		the given dictionary.
	@param allocator The CFAllocator which should be used to allocate
		memory for the dictionary and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theDict The dictionary which is to be copied. The keys and values
		from the dictionary are copied as pointers into the new
		dictionary (that is, the values themselves are copied, not
		that which the values point to, if anything). However, the
		keys and values are also retained by the new dictionary using
		the retain function of the original dictionary.
		The count of the new dictionary will be the same as the
		given dictionary. The new dictionary uses the same callbacks
		as the dictionary to be copied. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@result A reference to the new immutable CFDictionary.
*/
func CFDictionaryCreateCopy(allocator: CFAllocator!, _ theDict: CFDictionary!) -> CFDictionary!

/*!
	@function CFDictionaryCreateMutable
	Creates a new mutable dictionary.
	@param allocator The CFAllocator which should be used to allocate
		memory for the dictionary and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFDictionary. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A dictionary's actual capacity is only limited by 
                address space and available memory constraints). If this 
                parameter is negative, the behavior is undefined.
	@param keyCallBacks A pointer to a CFDictionaryKeyCallBacks structure
		initialized with the callbacks for the dictionary to use on
		each key in the dictionary. A copy of the contents of the
		callbacks structure is made, so that a pointer to a structure
		on the stack can be passed in, or can be reused for multiple
		dictionary creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFDictionary, the behavior is undefined. The retain field may
		be NULL, in which case the CFDictionary will do nothing to add
		a retain to the keys of the contained values. The release field
		may be NULL, in which case the CFDictionary will do nothing
		to remove the dictionary's retain (if any) on the keys when the
		dictionary is destroyed or a key-value pair is removed. If the
		copyDescription field is NULL, the dictionary will create a
		simple description for a key. If the equal field is NULL, the
		dictionary will use pointer equality to test for equality of
		keys. If the hash field is NULL, a key will be converted from
		a pointer to an integer to compute the hash code. This callbacks
		parameter itself may be NULL, which is treated as if a valid
		structure of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a CFDictionaryKeyCallBacks callbacks structure,
		the behavior is undefined. If any of the keys put into the
		dictionary is not one understood by one of the callback functions
		the behavior when that callback function is used is undefined.
	@param valueCallBacks A pointer to a CFDictionaryValueCallBacks structure
		initialized with the callbacks for the dictionary to use on
		each value in the dictionary. The retain callback will be used
		within this function, for example, to retain all of the new
		values from the values C array. A copy of the contents of the
		callbacks structure is made, so that a pointer to a structure
		on the stack can be passed in, or can be reused for multiple
		dictionary creations. If the version field of this callbacks
		structure is not one of the defined ones for CFDictionary, the
		behavior is undefined. The retain field may be NULL, in which
		case the CFDictionary will do nothing to add a retain to values
		as they are put into the dictionary. The release field may be
		NULL, in which case the CFDictionary will do nothing to remove
		the dictionary's retain (if any) on the values when the
		dictionary is destroyed or a key-value pair is removed. If the
		copyDescription field is NULL, the dictionary will create a
		simple description for a value. If the equal field is NULL, the
		dictionary will use pointer equality to test for equality of
		values. This callbacks parameter itself may be NULL, which is
		treated as if a valid structure of version 0 with all fields
		NULL had been passed in. Otherwise,
		if any of the fields are not valid pointers to functions
		of the correct type, or this parameter is not a valid
		pointer to a CFDictionaryValueCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		dictionary is not one understood by one of the callback functions
		the behavior when that callback function is used is undefined.
	@result A reference to the new mutable CFDictionary.
*/
func CFDictionaryCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>) -> CFMutableDictionary!

/*!
	@function CFDictionaryCreateMutableCopy
	Creates a new mutable dictionary with the key-value pairs from
		the given dictionary.
	@param allocator The CFAllocator which should be used to allocate
		memory for the dictionary and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFDictionary. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A dictionary's actual capacity is only limited by
                address space and available memory constraints). 
                This parameter must be greater than or equal
                to the count of the dictionary which is to be copied, or the
                behavior is undefined. If this parameter is negative, the
                behavior is undefined.
	@param theDict The dictionary which is to be copied. The keys and values
		from the dictionary are copied as pointers into the new
		dictionary (that is, the values themselves are copied, not
		that which the values point to, if anything). However, the
		keys and values are also retained by the new dictionary using
		the retain function of the original dictionary.
		The count of the new dictionary will be the same as the
		given dictionary. The new dictionary uses the same callbacks
		as the dictionary to be copied. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@result A reference to the new mutable CFDictionary.
*/
func CFDictionaryCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theDict: CFDictionary!) -> CFMutableDictionary!

/*!
	@function CFDictionaryGetCount
	Returns the number of values currently in the dictionary.
	@param theDict The dictionary to be queried. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@result The number of values in the dictionary.
*/
func CFDictionaryGetCount(theDict: CFDictionary!) -> CFIndex

/*!
	@function CFDictionaryGetCountOfKey
	Counts the number of times the given key occurs in the dictionary.
	@param theDict The dictionary to be searched. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param key The key for which to find matches in the dictionary. The
		hash() and equal() key callbacks provided when the dictionary
		was created are used to compare. If the hash() key callback
		was NULL, the key is treated as a pointer and converted to
		an integer. If the equal() key callback was NULL, pointer
		equality (in C, ==) is used. If key, or any of the keys in
		the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@result Returns 1 if a matching key is used by the dictionary,
		0 otherwise.
*/
func CFDictionaryGetCountOfKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFDictionaryGetCountOfValue
	Counts the number of times the given value occurs in the dictionary.
	@param theDict The dictionary to be searched. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param value The value for which to find matches in the dictionary. The
		equal() callback provided when the dictionary was created is
		used to compare. If the equal() value callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values in
		the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@result The number of times the given value occurs in the dictionary.
*/
func CFDictionaryGetCountOfValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFDictionaryContainsKey
	Reports whether or not the key is in the dictionary.
	@param theDict The dictionary to be searched. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param key The key for which to find matches in the dictionary. The
		hash() and equal() key callbacks provided when the dictionary
		was created are used to compare. If the hash() key callback
		was NULL, the key is treated as a pointer and converted to
		an integer. If the equal() key callback was NULL, pointer
		equality (in C, ==) is used. If key, or any of the keys in
		the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@result true, if the key is in the dictionary, otherwise false.
*/
func CFDictionaryContainsKey(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> Bool

/*!
	@function CFDictionaryContainsValue
	Reports whether or not the value is in the dictionary.
	@param theDict The dictionary to be searched. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param value The value for which to find matches in the dictionary. The
		equal() callback provided when the dictionary was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@result true, if the value is in the dictionary, otherwise false.
*/
func CFDictionaryContainsValue(theDict: CFDictionary!, _ value: UnsafePointer<Void>) -> Bool

/*!
	@function CFDictionaryGetValue
	Retrieves the value associated with the given key.
	@param theDict The dictionary to be queried. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param key The key for which to find a match in the dictionary. The
		hash() and equal() key callbacks provided when the dictionary
		was created are used to compare. If the hash() key callback
		was NULL, the key is treated as a pointer and converted to
		an integer. If the equal() key callback was NULL, pointer
		equality (in C, ==) is used. If key, or any of the keys in
		the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@result The value with the given key in the dictionary, or NULL if
		no key-value pair with a matching key exists. Since NULL
		can be a valid value in some dictionaries, the function
		CFDictionaryGetValueIfPresent() must be used to distinguish
		NULL-no-found from NULL-is-the-value.
*/
func CFDictionaryGetValue(theDict: CFDictionary!, _ key: UnsafePointer<Void>) -> UnsafePointer<Void>

/*!
	@function CFDictionaryGetValueIfPresent
	Retrieves the value associated with the given key.
	@param theDict The dictionary to be queried. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param key The key for which to find a match in the dictionary. The
		hash() and equal() key callbacks provided when the dictionary
		was created are used to compare. If the hash() key callback
		was NULL, the key is treated as a pointer and converted to
		an integer. If the equal() key callback was NULL, pointer
		equality (in C, ==) is used. If key, or any of the keys in
		the dictionary, are not understood by the equal() callback,
		the behavior is undefined.
	@param value A pointer to memory which should be filled with the
		pointer-sized value if a matching key is found. If no key
		match is found, the contents of the storage pointed to by
		this parameter are undefined. This parameter may be NULL,
		in which case the value from the dictionary is not returned
		(but the return value of this function still indicates
		whether or not the key-value pair was present).
	@result true, if a matching key was found, false otherwise.
*/
func CFDictionaryGetValueIfPresent(theDict: CFDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool

/*!
	@function CFDictionaryGetKeysAndValues
	Fills the two buffers with the keys and values from the dictionary.
	@param theDict The dictionary to be queried. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param keys A C array of pointer-sized values to be filled with keys
		from the dictionary. The keys and values C arrays are parallel
		to each other (that is, the items at the same indices form a
		key-value pair from the dictionary). This parameter may be NULL
		if the keys are not desired. If this parameter is not a valid
		pointer to a C array of at least CFDictionaryGetCount() pointers,
		or NULL, the behavior is undefined.
	@param values A C array of pointer-sized values to be filled with values
		from the dictionary. The keys and values C arrays are parallel
		to each other (that is, the items at the same indices form a
		key-value pair from the dictionary). This parameter may be NULL
		if the values are not desired. If this parameter is not a valid
		pointer to a C array of at least CFDictionaryGetCount() pointers,
		or NULL, the behavior is undefined.
*/
func CFDictionaryGetKeysAndValues(theDict: CFDictionary!, _ keys: UnsafeMutablePointer<UnsafePointer<Void>>, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)

/*!
	@function CFDictionaryApplyFunction
	Calls a function once for each value in the dictionary.
	@param theDict The dictionary to be queried. If this parameter is
		not a valid CFDictionary, the behavior is undefined.
	@param applier The callback function to call once for each value in
		the dictionary. If this parameter is not a
		pointer to a function of the correct prototype, the behavior
		is undefined. If there are keys or values which the
		applier function does not expect or cannot properly apply
		to, the behavior is undefined. 
	@param context A pointer-sized user-defined value, which is passed
		as the third parameter to the applier function, but is
		otherwise unused by this function. If the context is not
		what is expected by the applier function, the behavior is
		undefined.
*/
func CFDictionaryApplyFunction(theDict: CFDictionary!, _ applier: CFDictionaryApplierFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
	@function CFDictionaryAddValue
	Adds the key-value pair to the dictionary if no such key already exists.
	@param theDict The dictionary to which the value is to be added. If this
		parameter is not a valid mutable CFDictionary, the behavior is
		undefined.
	@param key The key of the value to add to the dictionary. The key is
		retained by the dictionary using the retain callback provided
		when the dictionary was created. If the key is not of the sort
		expected by the retain callback, the behavior is undefined. If
		a key which matches this key is already present in the dictionary,
		this function does nothing ("add if absent").
	@param value The value to add to the dictionary. The value is retained
		by the dictionary using the retain callback provided when the
		dictionary was created. If the value is not of the sort expected
		by the retain callback, the behavior is undefined.
*/
func CFDictionaryAddValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)

/*!
	@function CFDictionarySetValue
	Sets the value of the key in the dictionary.
	@param theDict The dictionary to which the value is to be set. If this
		parameter is not a valid mutable CFDictionary, the behavior is
		undefined.
	@param key The key of the value to set into the dictionary. If a key 
		which matches this key is already present in the dictionary, only
		the value is changed ("add if absent, replace if present"). If
		no key matches the given key, the key-value pair is added to the
		dictionary. If added, the key is retained by the dictionary,
		using the retain callback provided
		when the dictionary was created. If the key is not of the sort
		expected by the key retain callback, the behavior is undefined.
	@param value The value to add to or replace into the dictionary. The value
		is retained by the dictionary using the retain callback provided
		when the dictionary was created, and the previous value if any is
		released. If the value is not of the sort expected by the
		retain or release callbacks, the behavior is undefined.
*/
func CFDictionarySetValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)

/*!
	@function CFDictionaryReplaceValue
	Replaces the value of the key in the dictionary.
	@param theDict The dictionary to which the value is to be replaced. If this
		parameter is not a valid mutable CFDictionary, the behavior is
		undefined.
	@param key The key of the value to replace in the dictionary. If a key 
		which matches this key is present in the dictionary, the value
		is changed to the given value, otherwise this function does
		nothing ("replace if present").
	@param value The value to replace into the dictionary. The value
		is retained by the dictionary using the retain callback provided
		when the dictionary was created, and the previous value is
		released. If the value is not of the sort expected by the
		retain or release callbacks, the behavior is undefined.
*/
func CFDictionaryReplaceValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>, _ value: UnsafePointer<Void>)

/*!
	@function CFDictionaryRemoveValue
	Removes the value of the key from the dictionary.
	@param theDict The dictionary from which the value is to be removed. If this
		parameter is not a valid mutable CFDictionary, the behavior is
		undefined.
	@param key The key of the value to remove from the dictionary. If a key 
		which matches this key is present in the dictionary, the key-value
		pair is removed from the dictionary, otherwise this function does
		nothing ("remove if present").
*/
func CFDictionaryRemoveValue(theDict: CFMutableDictionary!, _ key: UnsafePointer<Void>)

/*!
	@function CFDictionaryRemoveAllValues
	Removes all the values from the dictionary, making it empty.
	@param theDict The dictionary from which all of the values are to be
		removed. If this parameter is not a valid mutable
		CFDictionary, the behavior is undefined.
*/
func CFDictionaryRemoveAllValues(theDict: CFMutableDictionary!)

/*!
	@typedef CFErrorRef
	    This is the type of a reference to CFErrors.  CFErrorRef is toll-free bridged with NSError.
*/
typealias CFErrorRef = CFError

/*!
	@function CFErrorGetTypeID
	    Returns the type identifier of all CFError instances.
*/
@available(tvOS 2.0, *)
func CFErrorGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
let kCFErrorDomainPOSIX: CFString!
@available(tvOS 2.0, *)
let kCFErrorDomainOSStatus: CFString!
@available(tvOS 2.0, *)
let kCFErrorDomainMach: CFString!
@available(tvOS 2.0, *)
let kCFErrorDomainCocoa: CFString!
@available(tvOS 2.0, *)
let kCFErrorLocalizedDescriptionKey: CFString!
@available(tvOS 2.0, *)
let kCFErrorLocalizedFailureReasonKey: CFString!
@available(tvOS 2.0, *)
let kCFErrorLocalizedRecoverySuggestionKey: CFString!
@available(tvOS 2.0, *)
let kCFErrorDescriptionKey: CFString!
@available(tvOS 2.0, *)
let kCFErrorUnderlyingErrorKey: CFString!
@available(tvOS 5.0, *)
let kCFErrorURLKey: CFString!
@available(tvOS 5.0, *)
let kCFErrorFilePathKey: CFString!

/*!
	@function CFErrorCreate
	@abstract Creates a new CFError.
	@param allocator The CFAllocator which should be used to allocate memory for the error. This parameter may be NULL in which case the 
	    current default CFAllocator is used. If this reference is not a valid CFAllocator, the behavior is undefined.
	@param domain A CFString identifying the error domain. If this reference is NULL or is otherwise not a valid CFString, the behavior is undefined.
	@param code A CFIndex identifying the error code. The code is interpreted within the context of the error domain.
	@param userInfo A CFDictionary created with kCFCopyStringDictionaryKeyCallBacks and kCFTypeDictionaryValueCallBacks. It will be copied with CFDictionaryCreateCopy(). 
	    If no userInfo dictionary is desired, NULL may be passed in as a convenience, in which case an empty userInfo dictionary will be assigned.
	@result A reference to the new CFError.
*/
@available(tvOS 2.0, *)
func CFErrorCreate(allocator: CFAllocator!, _ domain: CFString!, _ code: CFIndex, _ userInfo: CFDictionary!) -> CFError!

/*!
	@function CFErrorCreateWithUserInfoKeysAndValues
	@abstract Creates a new CFError without having to create an intermediate userInfo dictionary.
	@param allocator The CFAllocator which should be used to allocate memory for the error. This parameter may be NULL in which case the 
	    current default CFAllocator is used. If this reference is not a valid CFAllocator, the behavior is undefined.
	@param domain A CFString identifying the error domain. If this reference is NULL or is otherwise not a valid CFString, the behavior is undefined.
	@param code A CFIndex identifying the error code. The code is interpreted within the context of the error domain.
	@param userInfoKeys An array of numUserInfoValues CFStrings used as keys in creating the userInfo dictionary. NULL is valid only if numUserInfoValues is 0.
	@param userInfoValues An array of numUserInfoValues CF types used as values in creating the userInfo dictionary.  NULL is valid only if numUserInfoValues is 0.
	@param numUserInfoValues CFIndex representing the number of keys and values in the userInfoKeys and userInfoValues arrays.
	@result A reference to the new CFError. numUserInfoValues CF types are gathered from each of userInfoKeys and userInfoValues to create the userInfo dictionary.
*/
@available(tvOS 2.0, *)
func CFErrorCreateWithUserInfoKeysAndValues(allocator: CFAllocator!, _ domain: CFString!, _ code: CFIndex, _ userInfoKeys: UnsafePointer<UnsafePointer<Void>>, _ userInfoValues: UnsafePointer<UnsafePointer<Void>>, _ numUserInfoValues: CFIndex) -> CFError!

/*!
	@function CFErrorGetDomain
	@abstract Returns the error domain the CFError was created with.
	@param err The CFError whose error domain is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result The error domain of the CFError. Since this is a "Get" function, the caller shouldn't CFRelease the return value.
*/
@available(tvOS 2.0, *)
func CFErrorGetDomain(err: CFError!) -> CFString!

/*!
	@function CFErrorGetCode
	@abstract Returns the error code the CFError was created with.
	@param err The CFError whose error code is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result The error code of the CFError (not an error return for the current call).
*/
@available(tvOS 2.0, *)
func CFErrorGetCode(err: CFError!) -> CFIndex

/*!
	@function CFErrorCopyUserInfo
        @abstract Returns CFError userInfo dictionary.
	@discussion Returns a dictionary containing the same keys and values as in the userInfo dictionary the CFError was created with. Returns an empty dictionary if NULL was supplied to CFErrorCreate().
	@param err The CFError whose error user info is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result The user info of the CFError.
*/
@available(tvOS 2.0, *)
func CFErrorCopyUserInfo(err: CFError!) -> CFDictionary!

/*!
	@function CFErrorCopyDescription
	@abstract Returns a human-presentable description for the error. CFError creators should strive to make sure the return value is human-presentable and localized by providing a value for kCFErrorLocalizedDescriptionKey at the time of CFError creation.
        @discussion This is a complete sentence or two which says what failed and why it failed. Rules for computing the return value:
            - Look for kCFErrorLocalizedDescriptionKey in the user info and if not NULL, returns that as-is.  
            - Otherwise, if there is a kCFErrorLocalizedFailureReasonKey in the user info, generate an error from that. Something like: "Operation code not be completed. " + kCFErrorLocalizedFailureReasonKey
            - Otherwise, generate a semi-user presentable string from kCFErrorDescriptionKey, the domain, and code. Something like: "Operation could not be completed. Error domain/code occurred. " or "Operation could not be completed. " + kCFErrorDescriptionKey + " (Error domain/code)"
            Toll-free bridged NSError instances might provide additional behaviors for manufacturing a description string.  Do not count on the exact contents or format of the returned string, it might change.
	@param err The CFError whose description is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result A CFString with human-presentable description of the CFError. Never NULL.
*/
@available(tvOS 2.0, *)
func CFErrorCopyDescription(err: CFError!) -> CFString!

/*!
	@function CFErrorCopyFailureReason
        @abstract Returns a human-presentable failure reason for the error.  May return NULL.  CFError creators should strive to make sure the return value is human-presentable and localized by providing a value for kCFErrorLocalizedFailureReasonKey at the time of CFError creation.
        @discussion This is a complete sentence which describes why the operation failed. In many cases this will be just the "because" part of the description (but as a complete sentence, which makes localization easier). By default this looks for kCFErrorLocalizedFailureReasonKey in the user info. Toll-free bridged NSError instances might provide additional behaviors for manufacturing this value. If no user-presentable string is available, returns NULL.
            Example Description: "Could not save file 'Letter' in folder 'Documents' because the volume 'MyDisk' doesn't have enough space."
            Corresponding FailureReason: "The volume 'MyDisk' doesn't have enough space."
	@param err The CFError whose failure reason is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result A CFString with the localized, end-user presentable failure reason of the CFError, or NULL. 
*/
@available(tvOS 2.0, *)
func CFErrorCopyFailureReason(err: CFError!) -> CFString!

/*!
	@function CFErrorCopyRecoverySuggestion
        @abstract Returns a human presentable recovery suggestion for the error.  May return NULL.  CFError creators should strive to make sure the return value is human-presentable and localized by providing a value for kCFErrorLocalizedRecoverySuggestionKey at the time of CFError creation.
        @discussion This is the string that can be displayed as the "informative" (aka "secondary") message on an alert panel. By default this looks for kCFErrorLocalizedRecoverySuggestionKey in the user info. Toll-free bridged NSError instances might provide additional behaviors for manufacturing this value. If no user-presentable string is available, returns NULL.
            Example Description: "Could not save file 'Letter' in folder 'Documents' because the volume 'MyDisk' doesn't have enough space."
            Corresponding RecoverySuggestion: "Remove some files from the volume and try again."
	@param err The CFError whose recovery suggestion is to be returned. If this reference is not a valid CFError, the behavior is undefined.
	@result A CFString with the localized, end-user presentable recovery suggestion of the CFError, or NULL. 
*/
@available(tvOS 2.0, *)
func CFErrorCopyRecoverySuggestion(err: CFError!) -> CFString!
typealias CFFileDescriptorNativeDescriptor = Int32
typealias CFFileDescriptorRef = CFFileDescriptor
var kCFFileDescriptorReadCallBack: CFOptionFlags { get }
var kCFFileDescriptorWriteCallBack: CFOptionFlags { get }
typealias CFFileDescriptorCallBack = @convention(c) (CFFileDescriptor!, CFOptionFlags, UnsafeMutablePointer<Void>) -> Void
struct CFFileDescriptorContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
@available(tvOS 2.0, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CFFileDescriptorCreate(allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>) -> CFFileDescriptor!
@available(tvOS 2.0, *)
func CFFileDescriptorGetNativeDescriptor(f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(tvOS 2.0, *)
func CFFileDescriptorGetContext(f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>)
@available(tvOS 2.0, *)
func CFFileDescriptorEnableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(tvOS 2.0, *)
func CFFileDescriptorDisableCallBacks(f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(tvOS 2.0, *)
func CFFileDescriptorInvalidate(f: CFFileDescriptor!)
@available(tvOS 2.0, *)
func CFFileDescriptorIsValid(f: CFFileDescriptor!) -> Bool
@available(tvOS 2.0, *)
func CFFileDescriptorCreateRunLoopSource(allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
typealias CFFileSecurityRef = CFFileSecurity
@available(tvOS 5.0, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(tvOS 5.0, *)
func CFFileSecurityCreate(allocator: CFAllocator!) -> CFFileSecurity!
@available(tvOS 5.0, *)
func CFFileSecurityCreateCopy(allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(tvOS 5.0, *)
func CFFileSecurityCopyOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityCopyGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityCopyAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetOwner(fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetOwner(fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetGroup(fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetGroup(fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetMode(fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetMode(fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(tvOS 6.0, *)
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Owner: CFFileSecurityClearOptions { get }
  static var Group: CFFileSecurityClearOptions { get }
  static var Mode: CFFileSecurityClearOptions { get }
  static var OwnerUUID: CFFileSecurityClearOptions { get }
  static var GroupUUID: CFFileSecurityClearOptions { get }
  static var AccessControlList: CFFileSecurityClearOptions { get }
}
@available(tvOS 6.0, *)
func CFFileSecurityClearProperties(fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
typealias CFLocaleRef = CFLocale
func CFLocaleGetTypeID() -> CFTypeID
func CFLocaleGetSystem() -> CFLocale!
func CFLocaleCopyCurrent() -> CFLocale!
func CFLocaleCopyAvailableLocaleIdentifiers() -> CFArray!
func CFLocaleCopyISOLanguageCodes() -> CFArray!
func CFLocaleCopyISOCountryCodes() -> CFArray!
func CFLocaleCopyISOCurrencyCodes() -> CFArray!
@available(tvOS 2.0, *)
func CFLocaleCopyCommonISOCurrencyCodes() -> CFArray!
@available(tvOS 2.0, *)
func CFLocaleCopyPreferredLanguages() -> CFArray!
func CFLocaleCreateCanonicalLanguageIdentifierFromString(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromString(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFString!
func CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(allocator: CFAllocator!, _ lcode: LangCode, _ rcode: RegionCode) -> CFString!
@available(tvOS 4.0, *)
func CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(allocator: CFAllocator!, _ lcid: UInt32) -> CFString!
@available(tvOS 4.0, *)
func CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(localeIdentifier: CFString!) -> UInt32
enum CFLocaleLanguageDirection : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Unknown
  case LeftToRight
  case RightToLeft
  case TopToBottom
  case BottomToTop
}
@available(tvOS 4.0, *)
func CFLocaleGetLanguageCharacterDirection(isoLangCode: CFString!) -> CFLocaleLanguageDirection
@available(tvOS 4.0, *)
func CFLocaleGetLanguageLineDirection(isoLangCode: CFString!) -> CFLocaleLanguageDirection
func CFLocaleCreateComponentsFromLocaleIdentifier(allocator: CFAllocator!, _ localeID: CFString!) -> CFDictionary!
func CFLocaleCreateLocaleIdentifierFromComponents(allocator: CFAllocator!, _ dictionary: CFDictionary!) -> CFString!
func CFLocaleCreate(allocator: CFAllocator!, _ localeIdentifier: CFString!) -> CFLocale!
func CFLocaleCreateCopy(allocator: CFAllocator!, _ locale: CFLocale!) -> CFLocale!
func CFLocaleGetIdentifier(locale: CFLocale!) -> CFString!
func CFLocaleGetValue(locale: CFLocale!, _ key: CFString!) -> AnyObject!
func CFLocaleCopyDisplayNameForPropertyValue(displayLocale: CFLocale!, _ key: CFString!, _ value: CFString!) -> CFString!
@available(tvOS 2.0, *)
let kCFLocaleCurrentLocaleDidChangeNotification: CFString!
let kCFLocaleIdentifier: CFString!
let kCFLocaleLanguageCode: CFString!
let kCFLocaleCountryCode: CFString!
let kCFLocaleScriptCode: CFString!
let kCFLocaleVariantCode: CFString!
let kCFLocaleExemplarCharacterSet: CFString!
let kCFLocaleCalendarIdentifier: CFString!
let kCFLocaleCalendar: CFString!
let kCFLocaleCollationIdentifier: CFString!
let kCFLocaleUsesMetricSystem: CFString!
let kCFLocaleMeasurementSystem: CFString!
let kCFLocaleDecimalSeparator: CFString!
let kCFLocaleGroupingSeparator: CFString!
let kCFLocaleCurrencySymbol: CFString!
let kCFLocaleCurrencyCode: CFString!
@available(tvOS 4.0, *)
let kCFLocaleCollatorIdentifier: CFString!
@available(tvOS 4.0, *)
let kCFLocaleQuotationBeginDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleQuotationEndDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleAlternateQuotationBeginDelimiterKey: CFString!
@available(tvOS 4.0, *)
let kCFLocaleAlternateQuotationEndDelimiterKey: CFString!
let kCFGregorianCalendar: CFString!
let kCFBuddhistCalendar: CFString!
let kCFChineseCalendar: CFString!
let kCFHebrewCalendar: CFString!
let kCFIslamicCalendar: CFString!
let kCFIslamicCivilCalendar: CFString!
let kCFJapaneseCalendar: CFString!
@available(tvOS 4.0, *)
let kCFRepublicOfChinaCalendar: CFString!
@available(tvOS 4.0, *)
let kCFPersianCalendar: CFString!
@available(tvOS 4.0, *)
let kCFIndianCalendar: CFString!
@available(tvOS 4.0, *)
let kCFISO8601Calendar: CFString!
@available(tvOS 8.0, *)
let kCFIslamicTabularCalendar: CFString!
@available(tvOS 8.0, *)
let kCFIslamicUmmAlQuraCalendar: CFString!
typealias CFMachPortRef = CFMachPort
struct CFMachPortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMachPortCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>, CFIndex, UnsafeMutablePointer<Void>) -> Void
typealias CFMachPortInvalidationCallBack = @convention(c) (CFMachPort!, UnsafeMutablePointer<Void>) -> Void
func CFMachPortGetTypeID() -> CFTypeID
func CFMachPortCreate(allocator: CFAllocator!, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortCreateWithPort(allocator: CFAllocator!, _ portNum: mach_port_t, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMachPort!
func CFMachPortGetPort(port: CFMachPort!) -> mach_port_t
func CFMachPortGetContext(port: CFMachPort!, _ context: UnsafeMutablePointer<CFMachPortContext>)
func CFMachPortInvalidate(port: CFMachPort!)
func CFMachPortIsValid(port: CFMachPort!) -> Bool
func CFMachPortGetInvalidationCallBack(port: CFMachPort!) -> CFMachPortInvalidationCallBack!
func CFMachPortSetInvalidationCallBack(port: CFMachPort!, _ callout: CFMachPortInvalidationCallBack!)
func CFMachPortCreateRunLoopSource(allocator: CFAllocator!, _ port: CFMachPort!, _ order: CFIndex) -> CFRunLoopSource!
typealias CFMessagePortRef = CFMessagePort
var kCFMessagePortSuccess: Int32 { get }
var kCFMessagePortSendTimeout: Int32 { get }
var kCFMessagePortReceiveTimeout: Int32 { get }
var kCFMessagePortIsInvalid: Int32 { get }
var kCFMessagePortTransportError: Int32 { get }
var kCFMessagePortBecameInvalidError: Int32 { get }
struct CFMessagePortContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFMessagePortCallBack = @convention(c) (CFMessagePort!, Int32, CFData!, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFMessagePortInvalidationCallBack = @convention(c) (CFMessagePort!, UnsafeMutablePointer<Void>) -> Void
func CFMessagePortGetTypeID() -> CFTypeID
func CFMessagePortCreateLocal(allocator: CFAllocator!, _ name: CFString!, _ callout: CFMessagePortCallBack!, _ context: UnsafeMutablePointer<CFMessagePortContext>, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>) -> CFMessagePort!
func CFMessagePortCreateRemote(allocator: CFAllocator!, _ name: CFString!) -> CFMessagePort!
func CFMessagePortIsRemote(ms: CFMessagePort!) -> Bool
func CFMessagePortGetName(ms: CFMessagePort!) -> CFString!
func CFMessagePortSetName(ms: CFMessagePort!, _ newName: CFString!) -> Bool
func CFMessagePortGetContext(ms: CFMessagePort!, _ context: UnsafeMutablePointer<CFMessagePortContext>)
func CFMessagePortInvalidate(ms: CFMessagePort!)
func CFMessagePortIsValid(ms: CFMessagePort!) -> Bool
func CFMessagePortGetInvalidationCallBack(ms: CFMessagePort!) -> CFMessagePortInvalidationCallBack!
func CFMessagePortSetInvalidationCallBack(ms: CFMessagePort!, _ callout: CFMessagePortInvalidationCallBack!)
func CFMessagePortSendRequest(remote: CFMessagePort!, _ msgid: Int32, _ data: CFData!, _ sendTimeout: CFTimeInterval, _ rcvTimeout: CFTimeInterval, _ replyMode: CFString!, _ returnData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> Int32
func CFMessagePortCreateRunLoopSource(allocator: CFAllocator!, _ local: CFMessagePort!, _ order: CFIndex) -> CFRunLoopSource!
@available(tvOS 4.0, *)
func CFMessagePortSetDispatchQueue(ms: CFMessagePort!, _ queue: dispatch_queue_t!)
typealias CFNotificationCenterRef = CFNotificationCenter
typealias CFNotificationCallback = @convention(c) (CFNotificationCenter!, UnsafeMutablePointer<Void>, CFString!, UnsafePointer<Void>, CFDictionary!) -> Void
enum CFNotificationSuspensionBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
func CFNotificationCenterGetTypeID() -> CFTypeID
func CFNotificationCenterGetLocalCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDarwinNotifyCenter() -> CFNotificationCenter!
func CFNotificationCenterAddObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ callBack: CFNotificationCallback!, _ name: CFString!, _ object: UnsafePointer<Void>, _ suspensionBehavior: CFNotificationSuspensionBehavior)
func CFNotificationCenterRemoveObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ name: CFString!, _ object: UnsafePointer<Void>)
func CFNotificationCenterRemoveEveryObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>)
func CFNotificationCenterPostNotification(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ deliverImmediately: Bool)
var kCFNotificationDeliverImmediately: CFOptionFlags { get }
var kCFNotificationPostToAllSessions: CFOptionFlags { get }
func CFNotificationCenterPostNotificationWithOptions(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ options: CFOptionFlags)
typealias CFBooleanRef = CFBoolean
let kCFBooleanTrue: CFBoolean!
let kCFBooleanFalse: CFBoolean!
func CFBooleanGetTypeID() -> CFTypeID
func CFBooleanGetValue(boolean: CFBoolean!) -> Bool
enum CFNumberType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case SInt8Type
  case SInt16Type
  case SInt32Type
  case SInt64Type
  case Float32Type
  case Float64Type
  case CharType
  case ShortType
  case IntType
  case LongType
  case LongLongType
  case FloatType
  case DoubleType
  case CFIndexType
  @available(tvOS 2.0, *)
  case NSIntegerType
  @available(tvOS 2.0, *)
  case CGFloatType
  static var MaxType: CFNumberType { get }
}
typealias CFNumberRef = CFNumber
let kCFNumberPositiveInfinity: CFNumber!
let kCFNumberNegativeInfinity: CFNumber!
let kCFNumberNaN: CFNumber!
func CFNumberGetTypeID() -> CFTypeID
func CFNumberCreate(allocator: CFAllocator!, _ theType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFNumber!
func CFNumberGetType(number: CFNumber!) -> CFNumberType
func CFNumberGetByteSize(number: CFNumber!) -> CFIndex
func CFNumberIsFloatType(number: CFNumber!) -> Bool
func CFNumberGetValue(number: CFNumber!, _ theType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberCompare(number: CFNumber!, _ otherNumber: CFNumber!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
typealias CFNumberFormatterRef = CFNumberFormatter
func CFNumberFormatterGetTypeID() -> CFTypeID
enum CFNumberFormatterStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NoStyle
  case DecimalStyle
  case CurrencyStyle
  case PercentStyle
  case ScientificStyle
  case SpellOutStyle
  @available(tvOS 9.0, *)
  case OrdinalStyle
  @available(tvOS 9.0, *)
  case CurrencyISOCodeStyle
  @available(tvOS 9.0, *)
  case CurrencyPluralStyle
  @available(tvOS 9.0, *)
  case CurrencyAccountingStyle
}
func CFNumberFormatterCreate(allocator: CFAllocator!, _ locale: CFLocale!, _ style: CFNumberFormatterStyle) -> CFNumberFormatter!
func CFNumberFormatterGetLocale(formatter: CFNumberFormatter!) -> CFLocale!
func CFNumberFormatterGetStyle(formatter: CFNumberFormatter!) -> CFNumberFormatterStyle
func CFNumberFormatterGetFormat(formatter: CFNumberFormatter!) -> CFString!
func CFNumberFormatterSetFormat(formatter: CFNumberFormatter!, _ formatString: CFString!)
func CFNumberFormatterCreateStringWithNumber(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ number: CFNumber!) -> CFString!
func CFNumberFormatterCreateStringWithValue(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ numberType: CFNumberType, _ valuePtr: UnsafePointer<Void>) -> CFString!
struct CFNumberFormatterOptionFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ParseIntegersOnly: CFNumberFormatterOptionFlags { get }
}
func CFNumberFormatterCreateNumberFromString(allocator: CFAllocator!, _ formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ options: CFOptionFlags) -> CFNumber!
func CFNumberFormatterGetValueFromString(formatter: CFNumberFormatter!, _ string: CFString!, _ rangep: UnsafeMutablePointer<CFRange>, _ numberType: CFNumberType, _ valuePtr: UnsafeMutablePointer<Void>) -> Bool
func CFNumberFormatterSetProperty(formatter: CFNumberFormatter!, _ key: CFString!, _ value: AnyObject!)
func CFNumberFormatterCopyProperty(formatter: CFNumberFormatter!, _ key: CFString!) -> AnyObject!
let kCFNumberFormatterCurrencyCode: CFString!
let kCFNumberFormatterDecimalSeparator: CFString!
let kCFNumberFormatterCurrencyDecimalSeparator: CFString!
let kCFNumberFormatterAlwaysShowDecimalSeparator: CFString!
let kCFNumberFormatterGroupingSeparator: CFString!
let kCFNumberFormatterUseGroupingSeparator: CFString!
let kCFNumberFormatterPercentSymbol: CFString!
let kCFNumberFormatterZeroSymbol: CFString!
let kCFNumberFormatterNaNSymbol: CFString!
let kCFNumberFormatterInfinitySymbol: CFString!
let kCFNumberFormatterMinusSign: CFString!
let kCFNumberFormatterPlusSign: CFString!
let kCFNumberFormatterCurrencySymbol: CFString!
let kCFNumberFormatterExponentSymbol: CFString!
let kCFNumberFormatterMinIntegerDigits: CFString!
let kCFNumberFormatterMaxIntegerDigits: CFString!
let kCFNumberFormatterMinFractionDigits: CFString!
let kCFNumberFormatterMaxFractionDigits: CFString!
let kCFNumberFormatterGroupingSize: CFString!
let kCFNumberFormatterSecondaryGroupingSize: CFString!
let kCFNumberFormatterRoundingMode: CFString!
let kCFNumberFormatterRoundingIncrement: CFString!
let kCFNumberFormatterFormatWidth: CFString!
let kCFNumberFormatterPaddingPosition: CFString!
let kCFNumberFormatterPaddingCharacter: CFString!
let kCFNumberFormatterDefaultFormat: CFString!
let kCFNumberFormatterMultiplier: CFString!
let kCFNumberFormatterPositivePrefix: CFString!
let kCFNumberFormatterPositiveSuffix: CFString!
let kCFNumberFormatterNegativePrefix: CFString!
let kCFNumberFormatterNegativeSuffix: CFString!
let kCFNumberFormatterPerMillSymbol: CFString!
let kCFNumberFormatterInternationalCurrencySymbol: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterCurrencyGroupingSeparator: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterIsLenient: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterUseSignificantDigits: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterMinSignificantDigits: CFString!
@available(tvOS 2.0, *)
let kCFNumberFormatterMaxSignificantDigits: CFString!
enum CFNumberFormatterRoundingMode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case RoundCeiling
  case RoundFloor
  case RoundDown
  case RoundUp
  case RoundHalfEven
  case RoundHalfDown
  case RoundHalfUp
}
enum CFNumberFormatterPadPosition : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case BeforePrefix
  case AfterPrefix
  case BeforeSuffix
  case AfterSuffix
}
func CFNumberFormatterGetDecimalInfoForCurrencyCode(currencyCode: CFString!, _ defaultFractionDigits: UnsafeMutablePointer<Int32>, _ roundingIncrement: UnsafeMutablePointer<Double>) -> Bool
var COREFOUNDATION_CFPLUGINCOM_SEPARATE: Int32 { get }
let kCFPlugInDynamicRegistrationKey: CFString!
let kCFPlugInDynamicRegisterFunctionKey: CFString!
let kCFPlugInUnloadFunctionKey: CFString!
let kCFPlugInFactoriesKey: CFString!
let kCFPlugInTypesKey: CFString!
typealias CFPlugInDynamicRegisterFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInUnloadFunction = @convention(c) (CFPlugIn!) -> Void
typealias CFPlugInFactoryFunction = @convention(c) (CFAllocator!, CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInGetTypeID() -> CFTypeID
func CFPlugInCreate(allocator: CFAllocator!, _ plugInURL: CFURL!) -> CFPlugIn!
func CFPlugInGetBundle(plugIn: CFPlugIn!) -> CFBundle!
func CFPlugInSetLoadOnDemand(plugIn: CFPlugIn!, _ flag: Bool)
func CFPlugInIsLoadOnDemand(plugIn: CFPlugIn!) -> Bool
func CFPlugInFindFactoriesForPlugInType(typeUUID: CFUUID!) -> CFArray!
func CFPlugInFindFactoriesForPlugInTypeInPlugIn(typeUUID: CFUUID!, _ plugIn: CFPlugIn!) -> CFArray!
func CFPlugInInstanceCreate(allocator: CFAllocator!, _ factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> UnsafeMutablePointer<Void>
func CFPlugInRegisterFactoryFunction(factoryUUID: CFUUID!, _ `func`: CFPlugInFactoryFunction!) -> Bool
func CFPlugInRegisterFactoryFunctionByName(factoryUUID: CFUUID!, _ plugIn: CFPlugIn!, _ functionName: CFString!) -> Bool
func CFPlugInUnregisterFactory(factoryUUID: CFUUID!) -> Bool
func CFPlugInRegisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInUnregisterPlugInType(factoryUUID: CFUUID!, _ typeUUID: CFUUID!) -> Bool
func CFPlugInAddInstanceForFactory(factoryID: CFUUID!)
func CFPlugInRemoveInstanceForFactory(factoryID: CFUUID!)
typealias CFPlugInInstanceRef = CFPlugInInstance
typealias CFPlugInInstanceGetInterfaceFunction = @convention(c) (CFPlugInInstance!, CFString!, UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> DarwinBoolean
typealias CFPlugInInstanceDeallocateInstanceDataFunction = @convention(c) (UnsafeMutablePointer<Void>) -> Void
func CFPlugInInstanceGetInterfaceFunctionTable(instance: CFPlugInInstance!, _ interfaceName: CFString!, _ ftbl: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> Bool
func CFPlugInInstanceGetFactoryName(instance: CFPlugInInstance!) -> CFString!
func CFPlugInInstanceGetInstanceData(instance: CFPlugInInstance!) -> UnsafeMutablePointer<Void>
func CFPlugInInstanceGetTypeID() -> CFTypeID
func CFPlugInInstanceCreateWithInstanceDataSize(allocator: CFAllocator!, _ instanceDataSize: CFIndex, _ deallocateInstanceFunction: CFPlugInInstanceDeallocateInstanceDataFunction!, _ factoryName: CFString!, _ getInterfaceFunction: CFPlugInInstanceGetInterfaceFunction!) -> CFPlugInInstance!
let kCFPreferencesAnyApplication: CFString!
let kCFPreferencesCurrentApplication: CFString!
let kCFPreferencesAnyHost: CFString!
let kCFPreferencesCurrentHost: CFString!
let kCFPreferencesAnyUser: CFString!
let kCFPreferencesCurrentUser: CFString!
func CFPreferencesCopyAppValue(key: CFString!, _ applicationID: CFString!) -> CFPropertyList!
func CFPreferencesGetAppBooleanValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> Bool
func CFPreferencesGetAppIntegerValue(key: CFString!, _ applicationID: CFString!, _ keyExistsAndHasValidFormat: UnsafeMutablePointer<DarwinBoolean>) -> CFIndex
func CFPreferencesSetAppValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!)
func CFPreferencesAddSuitePreferencesToApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesRemoveSuitePreferencesFromApp(applicationID: CFString!, _ suiteID: CFString!)
func CFPreferencesAppSynchronize(applicationID: CFString!) -> Bool
func CFPreferencesCopyValue(key: CFString!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFPropertyList!
func CFPreferencesCopyMultiple(keysToFetch: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFDictionary!
func CFPreferencesSetValue(key: CFString!, _ value: CFPropertyList!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSetMultiple(keysToSet: CFDictionary!, _ keysToRemove: CFArray!, _ applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!)
func CFPreferencesSynchronize(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> Bool
func CFPreferencesCopyKeyList(applicationID: CFString!, _ userName: CFString!, _ hostName: CFString!) -> CFArray!
func CFPreferencesAppValueIsForced(key: CFString!, _ applicationID: CFString!) -> Bool
struct CFPropertyListMutabilityOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Immutable: CFPropertyListMutabilityOptions { get }
  static var MutableContainers: CFPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: CFPropertyListMutabilityOptions { get }
}
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFPropertyListCreateWithData instead.")
func CFPropertyListCreateFromXMLData(allocator: CFAllocator!, _ xmlData: CFData!, _ mutabilityOption: CFOptionFlags, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFPropertyListCreateData instead.")
func CFPropertyListCreateXMLData(allocator: CFAllocator!, _ propertyList: CFPropertyList!) -> Unmanaged<CFData>!
func CFPropertyListCreateDeepCopy(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ mutabilityOption: CFOptionFlags) -> CFPropertyList!
enum CFPropertyListFormat : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
func CFPropertyListIsValid(plist: CFPropertyList!, _ format: CFPropertyListFormat) -> Bool
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFPropertyListWrite instead.")
func CFPropertyListWriteToStream(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFIndex
@available(tvOS, introduced=2.0, deprecated=8.0, message="Use CFPropertyListCreateWithStream instead.")
func CFPropertyListCreateFromStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ mutabilityOption: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ errorString: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Unmanaged<CFPropertyList>!
var kCFPropertyListReadCorruptError: CFIndex { get }
var kCFPropertyListReadUnknownVersionError: CFIndex { get }
var kCFPropertyListReadStreamError: CFIndex { get }
var kCFPropertyListWriteStreamError: CFIndex { get }
@available(tvOS 4.0, *)
func CFPropertyListCreateWithData(allocator: CFAllocator!, _ data: CFData!, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
@available(tvOS 4.0, *)
func CFPropertyListCreateWithStream(allocator: CFAllocator!, _ stream: CFReadStream!, _ streamLength: CFIndex, _ options: CFOptionFlags, _ format: UnsafeMutablePointer<CFPropertyListFormat>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFPropertyList>!
@available(tvOS 4.0, *)
func CFPropertyListWrite(propertyList: CFPropertyList!, _ stream: CFWriteStream!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFIndex
@available(tvOS 4.0, *)
func CFPropertyListCreateData(allocator: CFAllocator!, _ propertyList: CFPropertyList!, _ format: CFPropertyListFormat, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
typealias CFRunLoopRef = CFRunLoop
typealias CFRunLoopSourceRef = CFRunLoopSource
typealias CFRunLoopObserverRef = CFRunLoopObserver
typealias CFRunLoopTimerRef = CFRunLoopTimer
enum CFRunLoopRunResult : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Finished
  case Stopped
  case TimedOut
  case HandledSource
}
struct CFRunLoopActivity : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Entry: CFRunLoopActivity { get }
  static var BeforeTimers: CFRunLoopActivity { get }
  static var BeforeSources: CFRunLoopActivity { get }
  static var BeforeWaiting: CFRunLoopActivity { get }
  static var AfterWaiting: CFRunLoopActivity { get }
  static var Exit: CFRunLoopActivity { get }
  static var AllActivities: CFRunLoopActivity { get }
}
let kCFRunLoopDefaultMode: CFString!
let kCFRunLoopCommonModes: CFString!
func CFRunLoopGetTypeID() -> CFTypeID
func CFRunLoopGetCurrent() -> CFRunLoop!
func CFRunLoopGetMain() -> CFRunLoop!
func CFRunLoopCopyCurrentMode(rl: CFRunLoop!) -> CFString!
func CFRunLoopCopyAllModes(rl: CFRunLoop!) -> CFArray!
func CFRunLoopAddCommonMode(rl: CFRunLoop!, _ mode: CFString!)
func CFRunLoopGetNextTimerFireDate(rl: CFRunLoop!, _ mode: CFString!) -> CFAbsoluteTime
func CFRunLoopRun()
func CFRunLoopRunInMode(mode: CFString!, _ seconds: CFTimeInterval, _ returnAfterSourceHandled: Bool) -> CFRunLoopRunResult
func CFRunLoopIsWaiting(rl: CFRunLoop!) -> Bool
func CFRunLoopWakeUp(rl: CFRunLoop!)
func CFRunLoopStop(rl: CFRunLoop!)
@available(tvOS 4.0, *)
func CFRunLoopPerformBlock(rl: CFRunLoop!, _ mode: AnyObject!, _ block: (() -> Void)!)
func CFRunLoopContainsSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!) -> Bool
func CFRunLoopAddSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopRemoveSource(rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFString!)
func CFRunLoopContainsObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!) -> Bool
func CFRunLoopAddObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopRemoveObserver(rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFString!)
func CFRunLoopContainsTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!) -> Bool
func CFRunLoopAddTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
func CFRunLoopRemoveTimer(rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFString!)
struct CFRunLoopSourceContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, schedule: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, cancel: (@convention(c) (UnsafeMutablePointer<Void>, CFRunLoop!, CFString!) -> Void)!, perform: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!)
}
struct CFRunLoopSourceContext1 {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  var equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!
  var getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!
  var perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!, equal: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean)!, hash: (@convention(c) (UnsafePointer<Void>) -> CFHashCode)!, getPort: (@convention(c) (UnsafeMutablePointer<Void>) -> mach_port_t)!, perform: (@convention(c) (UnsafeMutablePointer<Void>, CFIndex, CFAllocator!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!)
}
func CFRunLoopSourceGetTypeID() -> CFTypeID
func CFRunLoopSourceCreate(allocator: CFAllocator!, _ order: CFIndex, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>) -> CFRunLoopSource!
func CFRunLoopSourceGetOrder(source: CFRunLoopSource!) -> CFIndex
func CFRunLoopSourceInvalidate(source: CFRunLoopSource!)
func CFRunLoopSourceIsValid(source: CFRunLoopSource!) -> Bool
func CFRunLoopSourceGetContext(source: CFRunLoopSource!, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>)
func CFRunLoopSourceSignal(source: CFRunLoopSource!)
struct CFRunLoopObserverContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopObserverCallBack = @convention(c) (CFRunLoopObserver!, CFRunLoopActivity, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopObserverGetTypeID() -> CFTypeID
func CFRunLoopObserverCreate(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ callout: CFRunLoopObserverCallBack!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>) -> CFRunLoopObserver!
@available(tvOS 5.0, *)
func CFRunLoopObserverCreateWithHandler(allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ block: ((CFRunLoopObserver!, CFRunLoopActivity) -> Void)!) -> CFRunLoopObserver!
func CFRunLoopObserverGetActivities(observer: CFRunLoopObserver!) -> CFOptionFlags
func CFRunLoopObserverDoesRepeat(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetOrder(observer: CFRunLoopObserver!) -> CFIndex
func CFRunLoopObserverInvalidate(observer: CFRunLoopObserver!)
func CFRunLoopObserverIsValid(observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetContext(observer: CFRunLoopObserver!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>)
struct CFRunLoopTimerContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFRunLoopTimerCallBack = @convention(c) (CFRunLoopTimer!, UnsafeMutablePointer<Void>) -> Void
func CFRunLoopTimerGetTypeID() -> CFTypeID
func CFRunLoopTimerCreate(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ callout: CFRunLoopTimerCallBack!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>) -> CFRunLoopTimer!
@available(tvOS 5.0, *)
func CFRunLoopTimerCreateWithHandler(allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ block: ((CFRunLoopTimer!) -> Void)!) -> CFRunLoopTimer!
func CFRunLoopTimerGetNextFireDate(timer: CFRunLoopTimer!) -> CFAbsoluteTime
func CFRunLoopTimerSetNextFireDate(timer: CFRunLoopTimer!, _ fireDate: CFAbsoluteTime)
func CFRunLoopTimerGetInterval(timer: CFRunLoopTimer!) -> CFTimeInterval
func CFRunLoopTimerDoesRepeat(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetOrder(timer: CFRunLoopTimer!) -> CFIndex
func CFRunLoopTimerInvalidate(timer: CFRunLoopTimer!)
func CFRunLoopTimerIsValid(timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetContext(timer: CFRunLoopTimer!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>)
@available(tvOS 7.0, *)
func CFRunLoopTimerGetTolerance(timer: CFRunLoopTimer!) -> CFTimeInterval
@available(tvOS 7.0, *)
func CFRunLoopTimerSetTolerance(timer: CFRunLoopTimer!, _ tolerance: CFTimeInterval)

/*!
	@typedef CFSetRetainCallBack
	Type of the callback function used by CFSets for retaining values.
        @param allocator The allocator of the CFSet.
	@param value The value to retain.
        @result The value to store in the set, which is usually the value
		parameter passed to this callback, but may be a different
		value if a different value should be stored in the set.
*/
typealias CFSetRetainCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> UnsafePointer<Void>

/*!
	@typedef CFSetReleaseCallBack
	Type of the callback function used by CFSets for releasing a retain on values.
        @param allocator The allocator of the CFSet.
	@param value The value to release.
*/
typealias CFSetReleaseCallBack = @convention(c) (CFAllocator!, UnsafePointer<Void>) -> Void

/*!
	@typedef CFSetCopyDescriptionCallBack
	Type of the callback function used by CFSets for describing values.
	@param value The value to describe.
        @result A description of the specified value.
*/
typealias CFSetCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!

/*!
	@typedef CFSetEqualCallBack
	Type of the callback function used by CFSets for comparing values.
	@param value1 The first value to compare.
	@param value2 The second value to compare.
        @result True if the values are equal, otherwise false.
*/
typealias CFSetEqualCallBack = @convention(c) (UnsafePointer<Void>, UnsafePointer<Void>) -> DarwinBoolean

/*!
	@typedef CFSetHashCallBack
	Type of the callback function used by CFSets for hashing values.
	@param value The value to hash.
        @result The hash of the value.
*/
typealias CFSetHashCallBack = @convention(c) (UnsafePointer<Void>) -> CFHashCode

/*!
	@typedef CFSetCallBacks
	Structure containing the callbacks of a CFSet.
	@field version The version number of the structure type being passed
		in as a parameter to the CFSet creation functions. This
		structure is version 0.
	@field retain The callback used to add a retain for the set on
		values as they are put into the set. This callback returns
		the value to store in the set, which is usually the value
		parameter passed to this callback, but may be a different
		value if a different value should be stored in the set.
		The set's allocator is passed as the first argument.
	@field release The callback used to remove a retain previously added
		for the set from values as they are removed from the
		set. The set's allocator is passed as the first
		argument.
	@field copyDescription The callback used to create a descriptive
		string representation of each value in the set. This is
		used by the CFCopyDescription() function.
	@field equal The callback used to compare values in the set for
		equality for some operations.
	@field hash The callback used to compare values in the set for
		uniqueness for some operations.
*/
struct CFSetCallBacks {
  var version: CFIndex
  var retain: CFSetRetainCallBack!
  var release: CFSetReleaseCallBack!
  var copyDescription: CFSetCopyDescriptionCallBack!
  var equal: CFSetEqualCallBack!
  var hash: CFSetHashCallBack!
  init()
  init(version: CFIndex, retain: CFSetRetainCallBack!, release: CFSetReleaseCallBack!, copyDescription: CFSetCopyDescriptionCallBack!, equal: CFSetEqualCallBack!, hash: CFSetHashCallBack!)
}

/*!
	@constant kCFTypeSetCallBacks
	Predefined CFSetCallBacks structure containing a set of callbacks
	appropriate for use when the values in a CFSet are all CFTypes.
*/
let kCFTypeSetCallBacks: CFSetCallBacks

/*!
	@constant kCFCopyStringSetCallBacks
	Predefined CFSetCallBacks structure containing a set of callbacks
	appropriate for use when the values in a CFSet should be copies
        of a CFString.
*/
let kCFCopyStringSetCallBacks: CFSetCallBacks

/*!
	@typedef CFSetApplierFunction
	Type of the callback function used by the apply functions of
		CFSets.
	@param value The current value from the set.
	@param context The user-defined context parameter given to the apply
		function.
*/
typealias CFSetApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
        @typedef CFSetRef
	This is the type of a reference to immutable CFSets.
*/
typealias CFSetRef = CFSet

/*!
        @typedef CFMutableSetRef
	This is the type of a reference to mutable CFSets.
*/
typealias CFMutableSetRef = CFMutableSet

/*!
        @function CFSetGetTypeID
        Returns the type identifier of all CFSet instances.
*/
func CFSetGetTypeID() -> CFTypeID

/*!
        @function CFSetCreate
        Creates a new immutable set with the given values.
	@param allocator The CFAllocator which should be used to allocate
		memory for the set and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param values A C array of the pointer-sized values to be in the
		set.  This C array is not changed or freed by this function. 
                If this parameter is not a valid pointer to a C array of at
                least numValues pointers, the behavior is undefined.
	@param numValues The number of values to copy from the values C
		array into the CFSet. This number will be the count of the
		set.  If this parameter is zero, negative, or greater than 
                the number of values actually in the values C array, the 
                behavior is undefined.
	@param callBacks A C pointer to a CFSetCallBacks structure
		initialized with the callbacks for the set to use on each
		value in the set. A copy of the contents of the
		callbacks structure is made, so that a pointer to a
		structure on the stack can be passed in, or can be reused
		for multiple set creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFSet, the behavior is undefined. The retain field may be
		NULL, in which case the CFSet will do nothing to add a
		retain to the contained values for the set. The release
		field may be NULL, in which case the CFSet will do nothing
		to remove the set's retain (if any) on the values when the
		set is destroyed. If the copyDescription field is NULL,
		the set will create a simple description for the value. If
		the equal field is NULL, the set will use pointer equality
		to test for equality of values. The hash field may be NULL,
                in which case the CFSet will determine uniqueness by pointer
                equality. This callbacks parameter
		itself may be NULL, which is treated as if a valid structure
		of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a  CFSetCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		set is not one understood by one of the callback functions
		the behavior when that callback function is used is
		undefined.
	@result A reference to the new immutable CFSet.
*/
func CFSetCreate(allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFSet!

/*!
	@function CFSetCreateCopy
	Creates a new immutable set with the values from the given set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the set and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
	@param theSet The set which is to be copied. The values from the
		set are copied as pointers into the new set (that is,
		the values themselves are copied, not that which the values
		point to, if anything). However, the values are also
		retained by the new set. The count of the new set will
		be the same as the copied set. The new set uses the same
		callbacks as the set to be copied. If this parameter is
		not a valid CFSet, the behavior is undefined.
	@result A reference to the new immutable CFSet.
*/
func CFSetCreateCopy(allocator: CFAllocator!, _ theSet: CFSet!) -> CFSet!

/*!
	@function CFSetCreateMutable
	Creates a new empty mutable set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the set and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFSet. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A set's actual capacity is only limited by 
                address space and available memory constraints). If this 
                parameter is negative, the behavior is undefined.
	@param callBacks A C pointer to a CFSetCallBacks structure
		initialized with the callbacks for the set to use on each
		value in the set. A copy of the contents of the
		callbacks structure is made, so that a pointer to a
		structure on the stack can be passed in, or can be reused
		for multiple set creations. If the version field of this
		callbacks structure is not one of the defined ones for
		CFSet, the behavior is undefined. The retain field may be
		NULL, in which case the CFSet will do nothing to add a
		retain to the contained values for the set. The release
		field may be NULL, in which case the CFSet will do nothing
		to remove the set's retain (if any) on the values when the
		set is destroyed. If the copyDescription field is NULL,
		the set will create a simple description for the value. If
		the equal field is NULL, the set will use pointer equality
		to test for equality of values. The hash field may be NULL,
                in which case the CFSet will determine uniqueness by pointer
                equality. This callbacks parameter
		itself may be NULL, which is treated as if a valid structure
		of version 0 with all fields NULL had been passed in.
		Otherwise, if any of the fields are not valid pointers to
		functions of the correct type, or this parameter is not a
		valid pointer to a  CFSetCallBacks callbacks structure,
		the behavior is undefined. If any of the values put into the
		set is not one understood by one of the callback functions
		the behavior when that callback function is used is
		undefined.
	@result A reference to the new mutable CFSet.
*/
func CFSetCreateMutable(allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>) -> CFMutableSet!

/*!
	@function CFSetCreateMutableCopy
	Creates a new immutable set with the values from the given set.
	@param allocator The CFAllocator which should be used to allocate
		memory for the set and its storage for values. This
		parameter may be NULL in which case the current default
		CFAllocator is used. If this reference is not a valid
		CFAllocator, the behavior is undefined.
        @param capacity A hint about the number of values that will be held
                by the CFSet. Pass 0 for no hint. The implementation may
                ignore this hint, or may use it to optimize various
                operations. A set's actual capacity is only limited by
                address space and available memory constraints). 
                This parameter must be greater than or equal
                to the count of the set which is to be copied, or the
                behavior is undefined. If this parameter is negative, the
                behavior is undefined.
	@param theSet The set which is to be copied. The values from the
		set are copied as pointers into the new set (that is,
		the values themselves are copied, not that which the values
		point to, if anything). However, the values are also
		retained by the new set. The count of the new set will
		be the same as the copied set. The new set uses the same
		callbacks as the set to be copied. If this parameter is
		not a valid CFSet, the behavior is undefined.
	@result A reference to the new mutable CFSet.
*/
func CFSetCreateMutableCopy(allocator: CFAllocator!, _ capacity: CFIndex, _ theSet: CFSet!) -> CFMutableSet!

/*!
	@function CFSetGetCount
	Returns the number of values currently in the set.
	@param theSet The set to be queried. If this parameter is not a valid
		CFSet, the behavior is undefined.
	@result The number of values in the set.
*/
func CFSetGetCount(theSet: CFSet!) -> CFIndex

/*!
	@function CFSetGetCountOfValue
	Counts the number of times the given value occurs in the set. Since 
        sets by definition contain only one instance of a value, this function
        is synonymous to CFSetContainsValue.
	@param theSet The set to be searched. If this parameter is not a
		valid CFSet, the behavior is undefined.
	@param value The value for which to find matches in the set. The
		equal() callback provided when the set was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the set, are not understood by the equal() callback,
		the behavior is undefined.
	@result The number of times the given value occurs in the set.
*/
func CFSetGetCountOfValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> CFIndex

/*!
	@function CFSetContainsValue
	Reports whether or not the value is in the set.
	@param theSet The set to be searched. If this parameter is not a
		valid CFSet, the behavior is undefined.
	@param value The value for which to find matches in the set. The
		equal() callback provided when the set was created is
		used to compare. If the equal() callback was NULL, pointer
		equality (in C, ==) is used. If value, or any of the values
		in the set, are not understood by the equal() callback,
		the behavior is undefined.
	@result true, if the value is in the set, otherwise false.
*/
func CFSetContainsValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> Bool

/*!
	@function CFSetGetValue
	Retrieves a value in the set which hashes the same as the specified value.
	@param theSet The set to be queried. If this parameter is not a
		valid CFSet, the behavior is undefined.
	@param value The value to retrieve. The equal() callback provided when
                the set was created is used to compare. If the equal() callback
                was NULL, pointer equality (in C, ==) is used. If a value, or
                any of the values in the set, are not understood by the equal()
                callback, the behavior is undefined.
        @result The value in the set with the given hash.
*/
func CFSetGetValue(theSet: CFSet!, _ value: UnsafePointer<Void>) -> UnsafePointer<Void>

/*!
	@function CFSetGetValueIfPresent
	Retrieves a value in the set which hashes the same as the specified value,
        if present.
	@param theSet The set to be queried. If this parameter is not a
		valid CFSet, the behavior is undefined.
	@param candidate This value is hashed and compared with values in the
                set to determine which value to retrieve. The equal() callback provided when
                the set was created is used to compare. If the equal() callback
                was NULL, pointer equality (in C, ==) is used. If a value, or
                any of the values in the set, are not understood by the equal()
                callback, the behavior is undefined.
	@param value A pointer to memory which should be filled with the
		pointer-sized value if a matching value is found. If no
		match is found, the contents of the storage pointed to by
		this parameter are undefined. This parameter may be NULL,
		in which case the value from the dictionary is not returned
		(but the return value of this function still indicates
		whether or not the value was present).
        @result True if the value was present in the set, otherwise false.
*/
func CFSetGetValueIfPresent(theSet: CFSet!, _ candidate: UnsafePointer<Void>, _ value: UnsafeMutablePointer<UnsafePointer<Void>>) -> Bool

/*!
	@function CFSetGetValues
	Fills the buffer with values from the set.
	@param theSet The set to be queried. If this parameter is not a
		valid CFSet, the behavior is undefined.
	@param values A C array of pointer-sized values to be filled with
		values from the set. The values in the C array are ordered
		in the same order in which they appear in the set. If this
		parameter is not a valid pointer to a C array of at least
		CFSetGetCount() pointers, the behavior is undefined.
*/
func CFSetGetValues(theSet: CFSet!, _ values: UnsafeMutablePointer<UnsafePointer<Void>>)

/*!
	@function CFSetApplyFunction
	Calls a function once for each value in the set.
	@param theSet The set to be operated upon. If this parameter is not
		a valid CFSet, the behavior is undefined.
	@param applier The callback function to call once for each value in
		the given set. If this parameter is not a
		pointer to a function of the correct prototype, the behavior
		is undefined. If there are values in the set which the
		applier function does not expect or cannot properly apply
		to, the behavior is undefined. 
	@param context A pointer-sized user-defined value, which is passed
		as the second parameter to the applier function, but is
		otherwise unused by this function. If the context is not
		what is expected by the applier function, the behavior is
		undefined.
*/
func CFSetApplyFunction(theSet: CFSet!, _ applier: CFSetApplierFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
	@function CFSetAddValue
	Adds the value to the set if it is not already present.
	@param theSet The set to which the value is to be added. If this
		parameter is not a valid mutable CFSet, the behavior is
		undefined.
	@param value The value to add to the set. The value is retained by
		the set using the retain callback provided when the set
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The count of the 
                set is increased by one.
*/
func CFSetAddValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)

/*!
	@function CFSetReplaceValue
	Replaces the value in the set if it is present.
	@param theSet The set to which the value is to be replaced. If this
		parameter is not a valid mutable CFSet, the behavior is
		undefined.
        @param value The value to replace in the set. The equal() callback provided when
                the set was created is used to compare. If the equal() callback
                was NULL, pointer equality (in C, ==) is used. If a value, or
                any of the values in the set, are not understood by the equal()
                callback, the behavior is undefined. The value is retained by
		the set using the retain callback provided when the set
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The count of the 
                set is increased by one.
*/
func CFSetReplaceValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)

/*!
	@function CFSetSetValue
	Replaces the value in the set if it is present, or adds the value to 
        the set if it is absent.
	@param theSet The set to which the value is to be replaced. If this
		parameter is not a valid mutable CFSet, the behavior is
		undefined.
        @param value The value to set in the CFSet. The equal() callback provided when
                the set was created is used to compare. If the equal() callback
                was NULL, pointer equality (in C, ==) is used. If a value, or
                any of the values in the set, are not understood by the equal()
                callback, the behavior is undefined. The value is retained by
		the set using the retain callback provided when the set
		was created. If the value is not of the sort expected by the
		retain callback, the behavior is undefined. The count of the 
                set is increased by one.
*/
func CFSetSetValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)

/*!
	@function CFSetRemoveValue
	Removes the specified value from the set.
	@param theSet The set from which the value is to be removed.
                If this parameter is not a valid mutable CFSet,
		the behavior is undefined.
        @param value The value to remove. The equal() callback provided when
                the set was created is used to compare. If the equal() callback
                was NULL, pointer equality (in C, ==) is used. If a value, or
                any of the values in the set, are not understood by the equal()
                callback, the behavior is undefined.
*/
func CFSetRemoveValue(theSet: CFMutableSet!, _ value: UnsafePointer<Void>)

/*!
	@function CFSetRemoveAllValues
	Removes all the values from the set, making it empty.
	@param theSet The set from which all of the values are to be
		removed. If this parameter is not a valid mutable CFSet,
		the behavior is undefined.
*/
func CFSetRemoveAllValues(theSet: CFMutableSet!)
typealias CFSocketRef = CFSocket
enum CFSocketError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case Error
  case Timeout
}
struct CFSocketSignature {
  var protocolFamily: Int32
  var socketType: Int32
  var `protocol`: Int32
  var address: Unmanaged<CFData>!
  init()
  init(protocolFamily: Int32, socketType: Int32, `protocol`: Int32, address: Unmanaged<CFData>!)
}
struct CFSocketCallBackType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var NoCallBack: CFSocketCallBackType { get }
  static var ReadCallBack: CFSocketCallBackType { get }
  static var AcceptCallBack: CFSocketCallBackType { get }
  static var DataCallBack: CFSocketCallBackType { get }
  static var ConnectCallBack: CFSocketCallBackType { get }
  static var WriteCallBack: CFSocketCallBackType { get }
}
var kCFSocketAutomaticallyReenableReadCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableAcceptCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableDataCallBack: CFOptionFlags { get }
var kCFSocketAutomaticallyReenableWriteCallBack: CFOptionFlags { get }
@available(tvOS 2.0, *)
var kCFSocketLeaveErrors: CFOptionFlags { get }
var kCFSocketCloseOnInvalidate: CFOptionFlags { get }
typealias CFSocketCallBack = @convention(c) (CFSocket!, CFSocketCallBackType, CFData!, UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
struct CFSocketContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)!, release: (@convention(c) (UnsafePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFSocketNativeHandle = Int32
func CFSocketGetTypeID() -> CFTypeID
func CFSocketCreate(allocator: CFAllocator!, _ protocolFamily: Int32, _ socketType: Int32, _ `protocol`: Int32, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithNative(allocator: CFAllocator!, _ sock: CFSocketNativeHandle, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateWithSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>) -> CFSocket!
func CFSocketCreateConnectedToSocketSignature(allocator: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ callBackTypes: CFOptionFlags, _ callout: CFSocketCallBack!, _ context: UnsafePointer<CFSocketContext>, _ timeout: CFTimeInterval) -> CFSocket!
func CFSocketSetAddress(s: CFSocket!, _ address: CFData!) -> CFSocketError
func CFSocketConnectToAddress(s: CFSocket!, _ address: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketInvalidate(s: CFSocket!)
func CFSocketIsValid(s: CFSocket!) -> Bool
func CFSocketCopyAddress(s: CFSocket!) -> CFData!
func CFSocketCopyPeerAddress(s: CFSocket!) -> CFData!
func CFSocketGetContext(s: CFSocket!, _ context: UnsafeMutablePointer<CFSocketContext>)
func CFSocketGetNative(s: CFSocket!) -> CFSocketNativeHandle
func CFSocketCreateRunLoopSource(allocator: CFAllocator!, _ s: CFSocket!, _ order: CFIndex) -> CFRunLoopSource!
func CFSocketGetSocketFlags(s: CFSocket!) -> CFOptionFlags
func CFSocketSetSocketFlags(s: CFSocket!, _ flags: CFOptionFlags)
func CFSocketDisableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketEnableCallBacks(s: CFSocket!, _ callBackTypes: CFOptionFlags)
func CFSocketSendData(s: CFSocket!, _ address: CFData!, _ data: CFData!, _ timeout: CFTimeInterval) -> CFSocketError
func CFSocketRegisterValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: CFPropertyList!) -> CFSocketError
func CFSocketCopyRegisteredValue(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ value: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketRegisterSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafePointer<CFSocketSignature>) -> CFSocketError
func CFSocketCopyRegisteredSocketSignature(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!, _ signature: UnsafeMutablePointer<CFSocketSignature>, _ nameServerAddress: UnsafeMutablePointer<Unmanaged<CFData>?>) -> CFSocketError
func CFSocketUnregister(nameServerSignature: UnsafePointer<CFSocketSignature>, _ timeout: CFTimeInterval, _ name: CFString!) -> CFSocketError
func CFSocketSetDefaultNameRegistryPortNumber(port: UInt16)
func CFSocketGetDefaultNameRegistryPortNumber() -> UInt16
let kCFSocketCommandKey: CFString!
let kCFSocketNameKey: CFString!
let kCFSocketValueKey: CFString!
let kCFSocketResultKey: CFString!
let kCFSocketErrorKey: CFString!
let kCFSocketRegisterCommand: CFString!
let kCFSocketRetrieveCommand: CFString!
enum CFStreamStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NotOpen
  case Opening
  case Open
  case Reading
  case Writing
  case AtEnd
  case Closed
  case Error
}
struct CFStreamEventType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStreamEventType { get }
  static var OpenCompleted: CFStreamEventType { get }
  static var HasBytesAvailable: CFStreamEventType { get }
  static var CanAcceptBytes: CFStreamEventType { get }
  static var ErrorOccurred: CFStreamEventType { get }
  static var EndEncountered: CFStreamEventType { get }
}
struct CFStreamClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!
  var release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>)!, release: (@convention(c) (UnsafeMutablePointer<Void>) -> Void)!, copyDescription: (@convention(c) (UnsafeMutablePointer<Void>) -> Unmanaged<CFString>!)!)
}
typealias CFReadStreamRef = CFReadStream
typealias CFWriteStreamRef = CFWriteStream
typealias CFReadStreamClientCallBack = @convention(c) (CFReadStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
typealias CFWriteStreamClientCallBack = @convention(c) (CFWriteStream!, CFStreamEventType, UnsafeMutablePointer<Void>) -> Void
func CFReadStreamGetTypeID() -> CFTypeID
func CFWriteStreamGetTypeID() -> CFTypeID
let kCFStreamPropertyDataWritten: CFString!
func CFReadStreamCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex, _ bytesDeallocator: CFAllocator!) -> CFReadStream!
func CFWriteStreamCreateWithBuffer(alloc: CFAllocator!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferCapacity: CFIndex) -> CFWriteStream!
func CFWriteStreamCreateWithAllocatedBuffers(alloc: CFAllocator!, _ bufferAllocator: CFAllocator!) -> CFWriteStream!
func CFReadStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFReadStream!
func CFWriteStreamCreateWithFile(alloc: CFAllocator!, _ fileURL: CFURL!) -> CFWriteStream!
func CFStreamCreateBoundPair(alloc: CFAllocator!, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>, _ transferBufferSize: CFIndex)
let kCFStreamPropertyAppendToFile: CFString!
let kCFStreamPropertyFileCurrentOffset: CFString!
let kCFStreamPropertySocketNativeHandle: CFString!
let kCFStreamPropertySocketRemoteHostName: CFString!
let kCFStreamPropertySocketRemotePortNumber: CFString!
func CFStreamCreatePairWithSocket(alloc: CFAllocator!, _ sock: CFSocketNativeHandle, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithSocketToHost(alloc: CFAllocator!, _ host: CFString!, _ port: UInt32, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFStreamCreatePairWithPeerSocketSignature(alloc: CFAllocator!, _ signature: UnsafePointer<CFSocketSignature>, _ readStream: UnsafeMutablePointer<Unmanaged<CFReadStream>?>, _ writeStream: UnsafeMutablePointer<Unmanaged<CFWriteStream>?>)
func CFReadStreamGetStatus(stream: CFReadStream!) -> CFStreamStatus
func CFWriteStreamGetStatus(stream: CFWriteStream!) -> CFStreamStatus
@available(tvOS 2.0, *)
func CFReadStreamCopyError(stream: CFReadStream!) -> CFError!
@available(tvOS 2.0, *)
func CFWriteStreamCopyError(stream: CFWriteStream!) -> CFError!
func CFReadStreamOpen(stream: CFReadStream!) -> Bool
func CFWriteStreamOpen(stream: CFWriteStream!) -> Bool
func CFReadStreamClose(stream: CFReadStream!)
func CFWriteStreamClose(stream: CFWriteStream!)
func CFReadStreamHasBytesAvailable(stream: CFReadStream!) -> Bool
func CFReadStreamRead(stream: CFReadStream!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamGetBuffer(stream: CFReadStream!, _ maxBytesToRead: CFIndex, _ numBytesRead: UnsafeMutablePointer<CFIndex>) -> UnsafePointer<UInt8>
func CFWriteStreamCanAcceptBytes(stream: CFWriteStream!) -> Bool
func CFWriteStreamWrite(stream: CFWriteStream!, _ buffer: UnsafePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
func CFReadStreamCopyProperty(stream: CFReadStream!, _ propertyName: CFString!) -> AnyObject!
func CFWriteStreamCopyProperty(stream: CFWriteStream!, _ propertyName: CFString!) -> AnyObject!
func CFReadStreamSetProperty(stream: CFReadStream!, _ propertyName: CFString!, _ propertyValue: AnyObject!) -> Bool
func CFWriteStreamSetProperty(stream: CFWriteStream!, _ propertyName: CFString!, _ propertyValue: AnyObject!) -> Bool
func CFReadStreamSetClient(stream: CFReadStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFReadStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFWriteStreamSetClient(stream: CFWriteStream!, _ streamEvents: CFOptionFlags, _ clientCB: CFWriteStreamClientCallBack!, _ clientContext: UnsafeMutablePointer<CFStreamClientContext>) -> Bool
func CFReadStreamScheduleWithRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamScheduleWithRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFReadStreamUnscheduleFromRunLoop(stream: CFReadStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
func CFWriteStreamUnscheduleFromRunLoop(stream: CFWriteStream!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)
@available(tvOS 7.0, *)
func CFReadStreamSetDispatchQueue(stream: CFReadStream!, _ q: dispatch_queue_t!)
@available(tvOS 7.0, *)
func CFWriteStreamSetDispatchQueue(stream: CFWriteStream!, _ q: dispatch_queue_t!)
@available(tvOS 7.0, *)
func CFReadStreamCopyDispatchQueue(stream: CFReadStream!) -> dispatch_queue_t!
@available(tvOS 7.0, *)
func CFWriteStreamCopyDispatchQueue(stream: CFWriteStream!) -> dispatch_queue_t!
enum CFStreamErrorDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Custom
  case POSIX
  case MacOSStatus
}
struct CFStreamError {
  var domain: CFIndex
  var error: Int32
  init()
  init(domain: CFIndex, error: Int32)
}
func CFReadStreamGetError(stream: CFReadStream!) -> CFStreamError
func CFWriteStreamGetError(stream: CFWriteStream!) -> CFStreamError
typealias CFStringEncoding = UInt32
var kCFStringEncodingInvalidId: UInt32 { get }
enum CFStringBuiltInEncodings : CFStringEncoding {
  init?(rawValue: CFStringEncoding)
  var rawValue: CFStringEncoding { get }
  case MacRoman
  case WindowsLatin1
  case ISOLatin1
  case NextStepLatin
  case ASCII
  case Unicode
  case UTF8
  case NonLossyASCII
  static var UTF16: CFStringBuiltInEncodings { get }
  case UTF16BE
  case UTF16LE
  case UTF32
  case UTF32BE
  case UTF32LE
}
func CFStringGetTypeID() -> CFTypeID

/*** Immutable string creation functions ***/
func CFStringCreateWithPascalString(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithCString(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateWithBytes(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool) -> CFString!
func CFStringCreateWithCharacters(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex) -> CFString!
func CFStringCreateWithPascalStringNoCopy(alloc: CFAllocator!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCStringNoCopy(alloc: CFAllocator!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithBytesNoCopy(alloc: CFAllocator!, _ bytes: UnsafePointer<UInt8>, _ numBytes: CFIndex, _ encoding: CFStringEncoding, _ isExternalRepresentation: Bool, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex, _ contentsDeallocator: CFAllocator!) -> CFString!
func CFStringCreateWithSubstring(alloc: CFAllocator!, _ str: CFString!, _ range: CFRange) -> CFString!
func CFStringCreateCopy(alloc: CFAllocator!, _ theString: CFString!) -> CFString!
func CFStringCreateWithFormatAndArguments(alloc: CFAllocator!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer) -> CFString!
func CFStringCreateMutable(alloc: CFAllocator!, _ maxLength: CFIndex) -> CFMutableString!
func CFStringCreateMutableCopy(alloc: CFAllocator!, _ maxLength: CFIndex, _ theString: CFString!) -> CFMutableString!
func CFStringCreateMutableWithExternalCharactersNoCopy(alloc: CFAllocator!, _ chars: UnsafeMutablePointer<UniChar>, _ numChars: CFIndex, _ capacity: CFIndex, _ externalCharactersAllocator: CFAllocator!) -> CFMutableString!

/*** Basic accessors for the contents ***/
func CFStringGetLength(theString: CFString!) -> CFIndex
func CFStringGetCharacterAtIndex(theString: CFString!, _ idx: CFIndex) -> UniChar
func CFStringGetCharacters(theString: CFString!, _ range: CFRange, _ buffer: UnsafeMutablePointer<UniChar>)
func CFStringGetPascalString(theString: CFString!, _ buffer: StringPtr, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetCString(theString: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: CFIndex, _ encoding: CFStringEncoding) -> Bool
func CFStringGetPascalStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> ConstStringPtr
func CFStringGetCStringPtr(theString: CFString!, _ encoding: CFStringEncoding) -> UnsafePointer<Int8>
func CFStringGetCharactersPtr(theString: CFString!) -> UnsafePointer<UniChar>
func CFStringGetBytes(theString: CFString!, _ range: CFRange, _ encoding: CFStringEncoding, _ lossByte: UInt8, _ isExternalRepresentation: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex, _ usedBufLen: UnsafeMutablePointer<CFIndex>) -> CFIndex
func CFStringCreateFromExternalRepresentation(alloc: CFAllocator!, _ data: CFData!, _ encoding: CFStringEncoding) -> CFString!
func CFStringCreateExternalRepresentation(alloc: CFAllocator!, _ theString: CFString!, _ encoding: CFStringEncoding, _ lossByte: UInt8) -> CFData!
func CFStringGetSmallestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetFastestEncoding(theString: CFString!) -> CFStringEncoding
func CFStringGetSystemEncoding() -> CFStringEncoding
func CFStringGetMaximumSizeForEncoding(length: CFIndex, _ encoding: CFStringEncoding) -> CFIndex

/*** FileSystem path conversion functions ***/
func CFStringGetFileSystemRepresentation(string: CFString!, _ buffer: UnsafeMutablePointer<Int8>, _ maxBufLen: CFIndex) -> Bool
func CFStringGetMaximumSizeOfFileSystemRepresentation(string: CFString!) -> CFIndex
func CFStringCreateWithFileSystemRepresentation(alloc: CFAllocator!, _ buffer: UnsafePointer<Int8>) -> CFString!
struct CFStringCompareFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CompareCaseInsensitive: CFStringCompareFlags { get }
  static var CompareBackwards: CFStringCompareFlags { get }
  static var CompareAnchored: CFStringCompareFlags { get }
  static var CompareNonliteral: CFStringCompareFlags { get }
  static var CompareLocalized: CFStringCompareFlags { get }
  static var CompareNumerically: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var CompareDiacriticInsensitive: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var CompareWidthInsensitive: CFStringCompareFlags { get }
  @available(tvOS 2.0, *)
  static var CompareForcedOrdering: CFStringCompareFlags { get }
}
@available(tvOS 2.0, *)
func CFStringCompareWithOptionsAndLocale(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags, _ locale: CFLocale!) -> CFComparisonResult
func CFStringCompareWithOptions(theString1: CFString!, _ theString2: CFString!, _ rangeToCompare: CFRange, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
func CFStringCompare(theString1: CFString!, _ theString2: CFString!, _ compareOptions: CFStringCompareFlags) -> CFComparisonResult
@available(tvOS 2.0, *)
func CFStringFindWithOptionsAndLocale(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ locale: CFLocale!, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringFindWithOptions(theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringCreateArrayWithFindResults(alloc: CFAllocator!, _ theString: CFString!, _ stringToFind: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFArray!
func CFStringFind(theString: CFString!, _ stringToFind: CFString!, _ compareOptions: CFStringCompareFlags) -> CFRange
func CFStringHasPrefix(theString: CFString!, _ prefix: CFString!) -> Bool
func CFStringHasSuffix(theString: CFString!, _ suffix: CFString!) -> Bool

/*!
	@function CFStringGetRangeOfComposedCharactersAtIndex
	Returns the range of the composed character sequence at the specified index.
	@param theString The CFString which is to be searched.  If this
                		parameter is not a valid CFString, the behavior is
              		undefined.
	@param theIndex The index of the character contained in the
			composed character sequence.  If the index is
			outside the index space of the string (0 to N-1 inclusive,
			where N is the length of the string), the behavior is
			undefined.
	@result The range of the composed character sequence.
*/
func CFStringGetRangeOfComposedCharactersAtIndex(theString: CFString!, _ theIndex: CFIndex) -> CFRange

/*!
	@function CFStringFindCharacterFromSet
	Query the range of the first character contained in the specified character set.
	@param theString The CFString which is to be searched.  If this
                		parameter is not a valid CFString, the behavior is
              		undefined.
	@param theSet The CFCharacterSet against which the membership
			of characters is checked.  If this parameter is not a valid
			CFCharacterSet, the behavior is undefined.
	@param range The range of characters within the string to search. If
			the range location or end point (defined by the location
			plus length minus 1) are outside the index space of the
			string (0 to N-1 inclusive, where N is the length of the
			string), the behavior is undefined. If the range length is
			negative, the behavior is undefined. The range may be empty
			(length 0), in which case no search is performed.
	@param searchOptions The bitwise-or'ed option flags to control
			the search behavior.  The supported options are
			kCFCompareBackwards andkCFCompareAnchored.
			If other option flags are specified, the behavior
                        is undefined.
	@param result The pointer to a CFRange supplied by the caller in
			which the search result is stored.  Note that the length
			of this range can be more than 1, if for instance the 
			result is a composed character. If a pointer to an invalid
			memory is specified, the behavior is undefined.
	@result true, if at least a character which is a member of the character
			set is found and result is filled, otherwise, false.
*/
func CFStringFindCharacterFromSet(theString: CFString!, _ theSet: CFCharacterSet!, _ rangeToSearch: CFRange, _ searchOptions: CFStringCompareFlags, _ result: UnsafeMutablePointer<CFRange>) -> Bool
func CFStringGetLineBounds(theString: CFString!, _ range: CFRange, _ lineBeginIndex: UnsafeMutablePointer<CFIndex>, _ lineEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)
@available(tvOS 2.0, *)
func CFStringGetParagraphBounds(string: CFString!, _ range: CFRange, _ parBeginIndex: UnsafeMutablePointer<CFIndex>, _ parEndIndex: UnsafeMutablePointer<CFIndex>, _ contentsEndIndex: UnsafeMutablePointer<CFIndex>)

/*!
	@function CFStringGetHyphenationLocationBeforeIndex
	Retrieve the first potential hyphenation location found before the specified location.
	@param string The CFString which is to be hyphenated.  If this
                		parameter is not a valid CFString, the behavior is
              		undefined.
	@param location An index in the string.  If a valid hyphen index is returned, it 
	                will be before this index.
	@param limitRange The range of characters within the string to search. If
			the range location or end point (defined by the location
			plus length minus 1) are outside the index space of the
			string (0 to N-1 inclusive, where N is the length of the
			string), the behavior is undefined. If the range length is
			negative, the behavior is undefined. The range may be empty
			(length 0), in which case no hyphen location is generated.
	@param options Reserved for future use.
	@param locale Specifies which language's hyphenation conventions to use.
			This must be a valid locale.  Hyphenation data is not available
			for all locales.  You can use CFStringIsHyphenationAvailableForLocale
			to test for availability of hyphenation data.
	@param character The suggested hyphen character to insert.  Pass NULL if you
			do not need this information.
	@result an index in the string where it is appropriate to insert a hyphen, if
			one exists; else kCFNotFound
*/
@available(tvOS 4.2, *)
func CFStringGetHyphenationLocationBeforeIndex(string: CFString!, _ location: CFIndex, _ limitRange: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!, _ character: UnsafeMutablePointer<UTF32Char>) -> CFIndex
@available(tvOS 4.3, *)
func CFStringIsHyphenationAvailableForLocale(locale: CFLocale!) -> Bool

/*** Exploding and joining strings with a separator string ***/
func CFStringCreateByCombiningStrings(alloc: CFAllocator!, _ theArray: CFArray!, _ separatorString: CFString!) -> CFString!
func CFStringCreateArrayBySeparatingStrings(alloc: CFAllocator!, _ theString: CFString!, _ separatorString: CFString!) -> CFArray!

/*** Parsing non-localized numbers from strings ***/
func CFStringGetIntValue(str: CFString!) -> Int32
func CFStringGetDoubleValue(str: CFString!) -> Double

/*** MutableString functions ***/
func CFStringAppend(theString: CFMutableString!, _ appendedString: CFString!)
func CFStringAppendCharacters(theString: CFMutableString!, _ chars: UnsafePointer<UniChar>, _ numChars: CFIndex)
func CFStringAppendPascalString(theString: CFMutableString!, _ pStr: ConstStr255Param, _ encoding: CFStringEncoding)
func CFStringAppendCString(theString: CFMutableString!, _ cStr: UnsafePointer<Int8>, _ encoding: CFStringEncoding)
func CFStringAppendFormatAndArguments(theString: CFMutableString!, _ formatOptions: CFDictionary!, _ format: CFString!, _ arguments: CVaListPointer)
func CFStringInsert(str: CFMutableString!, _ idx: CFIndex, _ insertedStr: CFString!)
func CFStringDelete(theString: CFMutableString!, _ range: CFRange)
func CFStringReplace(theString: CFMutableString!, _ range: CFRange, _ replacement: CFString!)
func CFStringReplaceAll(theString: CFMutableString!, _ replacement: CFString!)
func CFStringFindAndReplace(theString: CFMutableString!, _ stringToFind: CFString!, _ replacementString: CFString!, _ rangeToSearch: CFRange, _ compareOptions: CFStringCompareFlags) -> CFIndex
func CFStringSetExternalCharactersNoCopy(theString: CFMutableString!, _ chars: UnsafeMutablePointer<UniChar>, _ length: CFIndex, _ capacity: CFIndex)
func CFStringPad(theString: CFMutableString!, _ padString: CFString!, _ length: CFIndex, _ indexIntoPad: CFIndex)
func CFStringTrim(theString: CFMutableString!, _ trimString: CFString!)
func CFStringTrimWhitespace(theString: CFMutableString!)
func CFStringLowercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringUppercase(theString: CFMutableString!, _ locale: CFLocale!)
func CFStringCapitalize(theString: CFMutableString!, _ locale: CFLocale!)

/*!
	@typedef CFStringNormalizationForm
	This is the type of Unicode normalization forms as described in
	Unicode Technical Report #15. To normalize for use with file
	system calls, use CFStringGetFileSystemRepresentation().
*/
enum CFStringNormalizationForm : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case D
  case KD
  case C
  case KC
}

/*!
	@function CFStringNormalize
	Normalizes the string into the specified form as described in
	Unicode Technical Report #15.
	@param theString  The string which is to be normalized.  If this
		parameter is not a valid mutable CFString, the behavior is
		undefined.
	@param theForm  The form into which the string is to be normalized.
		If this parameter is not a valid CFStringNormalizationForm value,
		the behavior is undefined.
*/
func CFStringNormalize(theString: CFMutableString!, _ theForm: CFStringNormalizationForm)

/*!
	@function CFStringFold
	Folds the string into the form specified by the flags.
		Character foldings are operations that convert any of a set of characters
		sharing similar semantics into a single representative from that set.
		This function can be used to preprocess strings that are to be compared,
		searched, or indexed.
		Note that folding does not include normalization, so it is necessary
		to use CFStringNormalize in addition to CFStringFold in order to obtain
		the effect of kCFCompareNonliteral.
	@param theString  The string which is to be folded.  If this parameter is not
		a valid mutable CFString, the behavior is undefined.
	@param theFlag  The equivalency flags which describes the character folding form.
		Only those flags containing the word "insensitive" are recognized here; other flags are ignored.		
		Folding with kCFCompareCaseInsensitive removes case distinctions in accordance with the mapping
		specified by ftp://ftp.unicode.org/Public/UNIDATA/CaseFolding.txt.  Folding with
		kCFCompareDiacriticInsensitive removes distinctions of accents and other diacritics.  Folding
		with kCFCompareWidthInsensitive removes character width distinctions by mapping characters in
		the range U+FF00-U+FFEF to their ordinary equivalents.
	@param theLocale The locale tailoring the character folding behavior. If NULL,
		it's considered to be the system locale returned from CFLocaleGetSystem().
		If non-NULL and not a valid CFLocale object, the behavior is undefined.
*/
@available(tvOS 2.0, *)
func CFStringFold(theString: CFMutableString!, _ theFlags: CFStringCompareFlags, _ theLocale: CFLocale!)
func CFStringTransform(string: CFMutableString!, _ range: UnsafeMutablePointer<CFRange>, _ transform: CFString!, _ reverse: Bool) -> Bool
let kCFStringTransformStripCombiningMarks: CFString!
let kCFStringTransformToLatin: CFString!
let kCFStringTransformFullwidthHalfwidth: CFString!
let kCFStringTransformLatinKatakana: CFString!
let kCFStringTransformLatinHiragana: CFString!
let kCFStringTransformHiraganaKatakana: CFString!
let kCFStringTransformMandarinLatin: CFString!
let kCFStringTransformLatinHangul: CFString!
let kCFStringTransformLatinArabic: CFString!
let kCFStringTransformLatinHebrew: CFString!
let kCFStringTransformLatinThai: CFString!
let kCFStringTransformLatinCyrillic: CFString!
let kCFStringTransformLatinGreek: CFString!
let kCFStringTransformToXMLHex: CFString!
let kCFStringTransformToUnicodeName: CFString!
@available(tvOS 2.0, *)
let kCFStringTransformStripDiacritics: CFString!

/*** General encoding related functionality ***/
func CFStringIsEncodingAvailable(encoding: CFStringEncoding) -> Bool
func CFStringGetListOfAvailableEncodings() -> UnsafePointer<CFStringEncoding>
func CFStringGetNameOfEncoding(encoding: CFStringEncoding) -> CFString!
func CFStringConvertEncodingToNSStringEncoding(encoding: CFStringEncoding) -> UInt
func CFStringConvertNSStringEncodingToEncoding(encoding: UInt) -> CFStringEncoding
func CFStringConvertEncodingToWindowsCodepage(encoding: CFStringEncoding) -> UInt32
func CFStringConvertWindowsCodepageToEncoding(codepage: UInt32) -> CFStringEncoding
func CFStringConvertIANACharSetNameToEncoding(theString: CFString!) -> CFStringEncoding
func CFStringConvertEncodingToIANACharSetName(encoding: CFStringEncoding) -> CFString!
func CFStringGetMostCompatibleMacStringEncoding(encoding: CFStringEncoding) -> CFStringEncoding
var __kCFStringInlineBufferLength: Int32 { get }
struct CFStringInlineBuffer {
  var buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar)
  var theString: Unmanaged<CFString>!
  var directUniCharBuffer: UnsafePointer<UniChar>
  var directCStringBuffer: UnsafePointer<Int8>
  var rangeToBuffer: CFRange
  var bufferedRangeStart: CFIndex
  var bufferedRangeEnd: CFIndex
  init()
  init(buffer: (UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar, UniChar), theString: Unmanaged<CFString>!, directUniCharBuffer: UnsafePointer<UniChar>, directCStringBuffer: UnsafePointer<Int8>, rangeToBuffer: CFRange, bufferedRangeStart: CFIndex, bufferedRangeEnd: CFIndex)
}
func CFStringInitInlineBuffer(str: CFString!, _ buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ range: CFRange)
func CFStringGetCharacterFromInlineBuffer(buf: UnsafeMutablePointer<CFStringInlineBuffer>, _ idx: CFIndex) -> UniChar
func CFStringIsSurrogateHighCharacter(character: UniChar) -> Bool
func CFStringIsSurrogateLowCharacter(character: UniChar) -> Bool
func CFStringGetLongCharacterForSurrogatePair(surrogateHigh: UniChar, _ surrogateLow: UniChar) -> UTF32Char
func CFStringGetSurrogatePairForLongCharacter(character: UTF32Char, _ surrogates: UnsafeMutablePointer<UniChar>) -> Bool
func CFShow(obj: AnyObject!)
func CFShowStr(str: CFString!)
func __CFStringMakeConstantString(cStr: UnsafePointer<Int8>) -> CFString!
enum CFStringEncodings : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case MacJapanese
  case MacChineseTrad
  case MacKorean
  case MacArabic
  case MacHebrew
  case MacGreek
  case MacCyrillic
  case MacDevanagari
  case MacGurmukhi
  case MacGujarati
  case MacOriya
  case MacBengali
  case MacTamil
  case MacTelugu
  case MacKannada
  case MacMalayalam
  case MacSinhalese
  case MacBurmese
  case MacKhmer
  case MacThai
  case MacLaotian
  case MacGeorgian
  case MacArmenian
  case MacChineseSimp
  case MacTibetan
  case MacMongolian
  case MacEthiopic
  case MacCentralEurRoman
  case MacVietnamese
  case MacExtArabic
  case MacSymbol
  case MacDingbats
  case MacTurkish
  case MacCroatian
  case MacIcelandic
  case MacRomanian
  case MacCeltic
  case MacGaelic
  case MacFarsi
  case MacUkrainian
  case MacInuit
  case MacVT100
  case MacHFS
  case ISOLatin2
  case ISOLatin3
  case ISOLatin4
  case ISOLatinCyrillic
  case ISOLatinArabic
  case ISOLatinGreek
  case ISOLatinHebrew
  case ISOLatin5
  case ISOLatin6
  case ISOLatinThai
  case ISOLatin7
  case ISOLatin8
  case ISOLatin9
  case ISOLatin10
  case DOSLatinUS
  case DOSGreek
  case DOSBalticRim
  case DOSLatin1
  case DOSGreek1
  case DOSLatin2
  case DOSCyrillic
  case DOSTurkish
  case DOSPortuguese
  case DOSIcelandic
  case DOSHebrew
  case DOSCanadianFrench
  case DOSArabic
  case DOSNordic
  case DOSRussian
  case DOSGreek2
  case DOSThai
  case DOSJapanese
  case DOSChineseSimplif
  case DOSKorean
  case DOSChineseTrad
  case WindowsLatin2
  case WindowsCyrillic
  case WindowsGreek
  case WindowsLatin5
  case WindowsHebrew
  case WindowsArabic
  case WindowsBalticRim
  case WindowsVietnamese
  case WindowsKoreanJohab
  case ANSEL
  case JIS_X0201_76
  case JIS_X0208_83
  case JIS_X0208_90
  case JIS_X0212_90
  case JIS_C6226_78
  @available(tvOS 2.0, *)
  case ShiftJIS_X0213
  case ShiftJIS_X0213_MenKuTen
  case GB_2312_80
  case GBK_95
  case GB_18030_2000
  case KSC_5601_87
  case KSC_5601_92_Johab
  case CNS_11643_92_P1
  case CNS_11643_92_P2
  case CNS_11643_92_P3
  case ISO_2022_JP
  case ISO_2022_JP_2
  case ISO_2022_JP_1
  case ISO_2022_JP_3
  case ISO_2022_CN
  case ISO_2022_CN_EXT
  case ISO_2022_KR
  case EUC_JP
  case EUC_CN
  case EUC_TW
  case EUC_KR
  case ShiftJIS
  case KOI8_R
  case Big5
  case MacRomanLatin1
  case HZ_GB_2312
  case Big5_HKSCS_1999
  case VISCII
  case KOI8_U
  case Big5_E
  case NextStepJapanese
  case EBCDIC_US
  case EBCDIC_CP037
  @available(tvOS 4.0, *)
  case UTF7
  @available(tvOS 4.0, *)
  case UTF7_IMAP
  static var ShiftJIS_X0213_00: CFStringEncodings { get }
}

/*!
	@function CFStringTokenizerCopyBestStringLanguage
	@abstract Guesses the language of a string and returns the BCP 47 string of the
		language.
	@param string The string whose language is to be guessed.
	@param range The range of characters in string whose language to be
		guessed. The specified range must not exceed the bounds of the string.
		If the range is empty (length 0), the first few hundred characters in
		the string are used.
	@result A language represented in BCP 47 string, or NULL if the
		language of the string cannot be guessed. 
	@discussion The result is not guaranteed to be accurate. Typically 200-400
		characters are required to reliably guess the language of a string.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerCopyBestStringLanguage(string: CFString!, _ range: CFRange) -> CFString!
typealias CFStringTokenizerRef = CFStringTokenizer

/*!
  Tokenization Unit
  Use one of tokenization unit options with CFStringTokenizerCreate to
  specify how the string should be tokenized. 
*/
var kCFStringTokenizerUnitWord: CFOptionFlags { get }

/*!
  Tokenization Unit
  Use one of tokenization unit options with CFStringTokenizerCreate to
  specify how the string should be tokenized. 
*/
var kCFStringTokenizerUnitSentence: CFOptionFlags { get }

/*!
  Tokenization Unit
  Use one of tokenization unit options with CFStringTokenizerCreate to
  specify how the string should be tokenized. 
*/
var kCFStringTokenizerUnitParagraph: CFOptionFlags { get }

/*!
  Tokenization Unit
  Use one of tokenization unit options with CFStringTokenizerCreate to
  specify how the string should be tokenized. 
*/
var kCFStringTokenizerUnitLineBreak: CFOptionFlags { get }

/*!
  Tokenization Unit
  Use one of tokenization unit options with CFStringTokenizerCreate to
  specify how the string should be tokenized. 
*/
var kCFStringTokenizerUnitWordBoundary: CFOptionFlags { get }

/*!
  Attribute Specifier
  Use attribute specifier to tell tokenizer to prepare the specified attribute
  when it tokenizes the given string. The attribute value can be retrieved by
  calling CFStringTokenizerCopyCurrentTokenAttribute with one of the attribute
  option. 
*/
var kCFStringTokenizerAttributeLatinTranscription: CFOptionFlags { get }

/*!
  Attribute Specifier
  Use attribute specifier to tell tokenizer to prepare the specified attribute
  when it tokenizes the given string. The attribute value can be retrieved by
  calling CFStringTokenizerCopyCurrentTokenAttribute with one of the attribute
  option. 
*/
var kCFStringTokenizerAttributeLanguage: CFOptionFlags { get }

/*!
	Token type
	CFStringTokenizerGoToTokenAtIndex / CFStringTokenizerAdvanceToNextToken returns
	the type of current token.
*/
struct CFStringTokenizerTokenType : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var None: CFStringTokenizerTokenType { get }
  static var Normal: CFStringTokenizerTokenType { get }

  /*!
      Compound token which may contain subtokens but with no derived subtokens.
      Its subtokens can be obtained by calling CFStringTokenizerGetCurrentSubTokens.
  */
  static var HasSubTokensMask: CFStringTokenizerTokenType { get }

  /*!
      Compound token which may contain derived subtokens.
      Its subtokens and derived subtokens can be obtained by calling
      CFStringTokenizerGetCurrentSubTokens.
  */
  static var HasDerivedSubTokensMask: CFStringTokenizerTokenType { get }

  /*!
      Compound token which may contain derived subtokens.
      Its subtokens and derived subtokens can be obtained by calling
      CFStringTokenizerGetCurrentSubTokens.
  */
  static var HasHasNumbersMask: CFStringTokenizerTokenType { get }

  /*!
      Compound token which may contain derived subtokens.
      Its subtokens and derived subtokens can be obtained by calling
      CFStringTokenizerGetCurrentSubTokens.
  */
  static var HasNonLettersMask: CFStringTokenizerTokenType { get }

  /*!
      Compound token which may contain derived subtokens.
      Its subtokens and derived subtokens can be obtained by calling
      CFStringTokenizerGetCurrentSubTokens.
  */
  static var IsCJWordMask: CFStringTokenizerTokenType { get }
}

/*!
	@function CFStringTokenizerGetTypeID
	@abstract Get the type identifier.
	@result the type identifier of all CFStringTokenizer instances.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerGetTypeID() -> CFTypeID

/*!
	@function CFStringTokenizerCreate
	@abstract Creates a tokenizer instance.
	@param alloc The CFAllocator which should be used to allocate memory for the
		tokenizer and its storage for values. This parameter may be NULL in which 
		case the current default CFAllocator is used. 	
	@param string The string to tokenize.
	@param range The range of characters within the string to be tokenized. The
		specified range must not exceed the length of the string.
	@param options Use one of the Tokenization Unit options to specify how the 
		string should be tokenized. Optionally specify one or more attribute
		specifiers to tell the tokenizer to prepare specified attributes when it
		tokenizes the string.
	@param locale The locale to specify language or region specific behavior. Pass
               NULL if you want tokenizer to identify the locale automatically.
	@result A reference to the new CFStringTokenizer.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerCreate(alloc: CFAllocator!, _ string: CFString!, _ range: CFRange, _ options: CFOptionFlags, _ locale: CFLocale!) -> CFStringTokenizer!

/*!
	@function CFStringTokenizerSetString
	@abstract Set the string to tokenize.
	@param tokenizer The reference to CFStringTokenizer returned by
		CFStringTokenizerCreate.
	@param string The string to tokenize.
	@param range The range of characters within the string to be tokenized. The
		specified range must not exceed the length of the string.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerSetString(tokenizer: CFStringTokenizer!, _ string: CFString!, _ range: CFRange)

/*!
	@function CFStringTokenizerGoToTokenAtIndex
	@abstract Random access to a token. Find a token that includes the character specified
		by character index, and set it as the current token.
	@param tokenizer The reference to CFStringTokenizer returned by
		CFStringTokenizerCreate.
	@param index The index of the Unicode character in the CFString.
	@result Type of the token if succeeded in finding a token and setting it as
		current token. kCFStringTokenizerTokenNone if failed in finding a token.
	@discussion The range and attribute of the token can be obtained by calling
		CFStringTokenizerGetCurrentTokenRange and CFStringTokenizerCopyCurrentTokenAttribute.
		If the token is a compound (with type kCFStringTokenizerTokenHasSubTokensMask or
		kCFStringTokenizerTokenHasDerivedSubTokensMask), its subtokens and
		(or) derived subtokens can be obtained by calling CFStringTokenizerGetCurrentSubTokens. 
*/
@available(tvOS 3.0, *)
func CFStringTokenizerGoToTokenAtIndex(tokenizer: CFStringTokenizer!, _ index: CFIndex) -> CFStringTokenizerTokenType

/*!
	@function CFStringTokenizerAdvanceToNextToken
	@abstract Token enumerator.
	@param tokenizer The reference to CFStringTokenizer returned by
		CFStringTokenizerCreate.
	@result Type of the token if succeeded in finding a token and setting it as
		current token. kCFStringTokenizerTokenNone if failed in finding a token.
	@discussion If there is no preceding call to CFStringTokenizerGoToTokenAtIndex 
		or CFStringTokenizerAdvanceToNextToken, it finds the first token in the range
		specified to CFStringTokenizerCreate. If there is a current token after successful
		call to CFStringTokenizerGoToTokenAtIndex or CFStringTokenizerAdvanceToNextToken,
		it proceeds to the next token. If succeeded in finding a token, set it as current 
		token and return its token type. Otherwise invalidate current token and return
		kCFStringTokenizerTokenNone.
		The range and attribute of the token can be obtained by calling
		CFStringTokenizerGetCurrentTokenRange and 
        CFStringTokenizerCopyCurrentTokenAttribute. If the token is a compound
		(with type kCFStringTokenizerTokenHasSubTokensMask or
		kCFStringTokenizerTokenHasDerivedSubTokensMask), its subtokens and
		(or) derived subtokens can be obtained by calling CFStringTokenizerGetCurrentSubTokens. 
*/
@available(tvOS 3.0, *)
func CFStringTokenizerAdvanceToNextToken(tokenizer: CFStringTokenizer!) -> CFStringTokenizerTokenType

/*!
	@function CFStringTokenizerGetCurrentTokenRange
	@abstract Returns the range of current token.
	@param tokenizer The reference to CFStringTokenizer returned by
		CFStringTokenizerCreate.
	@result Range of current token, or {kCFNotFound,0} if there is no current token.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerGetCurrentTokenRange(tokenizer: CFStringTokenizer!) -> CFRange

/*!
	@function CFStringTokenizerCopyCurrentTokenAttribute
	@abstract Copies the specified attribute of current token.
	@param tokenizer The reference to CFStringTokenizer returned by
		CFStringTokenizerCreate.
	@param attribute Specify a token attribute you want to obtain. The value is
		one of kCFStringTokenizerAttributeLatinTranscription or
		kCFStringTokenizerAttributeLanguage.
	@result Token attribute, or NULL if current token does not have the specified
		attribute or if there is no current token.
*/
@available(tvOS 3.0, *)
func CFStringTokenizerCopyCurrentTokenAttribute(tokenizer: CFStringTokenizer!, _ attribute: CFOptionFlags) -> AnyObject!

/*!
	@function CFStringTokenizerGetCurrentSubTokens
	@abstract Retrieves the subtokens or derived subtokens contained in the compound token.
	@param tokenizer The reference to CFStringTokenizer returned by CFStringTokenizerCreate.
	@param ranges An array of CFRange to fill in with the ranges of subtokens. The filled in 
		ranges are relative to the string specified to CFStringTokenizerCreate. This parameter
		can be NULL.
	@param maxRangeLength The maximum number of ranges to return.
	@param derivedSubTokens An array of CFMutableArray to which the derived subtokens are to
		be added. This parameter can be NULL.
	@result number of subtokens.
	@discussion If token type is kCFStringTokenizerTokenNone, the ranges array and 
		derivedSubTokens array are untouched and the return value is 0.
        If token type is kCFStringTokenizerTokenNormal, the ranges array has one item
        filled in with the entire range of the token (if maxRangeLength >= 1) and a string
		taken from the entire token range is added to the derivedSubTokens array and the 
		return value is 1.
		If token type is kCFStringTokenizerTokenHasSubTokensMask or
        kCFStringTokenizerTokenHasDerivedSubTokensMask, the ranges array is filled
        in with as many items as there are subtokens (up to a limit of maxRangeLength).
		The derivedSubTokens array will have sub tokens added even when the sub token is a 
		substring of the token. If token type is kCFStringTokenizerTokenHasSubTokensMask,
		the ordinary non-derived subtokens are added to the derivedSubTokens array. 
*/
@available(tvOS 3.0, *)
func CFStringTokenizerGetCurrentSubTokens(tokenizer: CFStringTokenizer!, _ ranges: UnsafeMutablePointer<CFRange>, _ maxRangeLength: CFIndex, _ derivedSubTokens: CFMutableArray!) -> CFIndex
func CFTimeZoneGetTypeID() -> CFTypeID
func CFTimeZoneCopySystem() -> CFTimeZone!
func CFTimeZoneResetSystem()
func CFTimeZoneCopyDefault() -> CFTimeZone!
func CFTimeZoneSetDefault(tz: CFTimeZone!)
func CFTimeZoneCopyKnownNames() -> CFArray!
func CFTimeZoneCopyAbbreviationDictionary() -> CFDictionary!
func CFTimeZoneSetAbbreviationDictionary(dict: CFDictionary!)
func CFTimeZoneCreate(allocator: CFAllocator!, _ name: CFString!, _ data: CFData!) -> CFTimeZone!
func CFTimeZoneCreateWithTimeIntervalFromGMT(allocator: CFAllocator!, _ ti: CFTimeInterval) -> CFTimeZone!
func CFTimeZoneCreateWithName(allocator: CFAllocator!, _ name: CFString!, _ tryAbbrev: Bool) -> CFTimeZone!
func CFTimeZoneGetName(tz: CFTimeZone!) -> CFString!
func CFTimeZoneGetData(tz: CFTimeZone!) -> CFData!
func CFTimeZoneGetSecondsFromGMT(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
func CFTimeZoneCopyAbbreviation(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFString!
func CFTimeZoneIsDaylightSavingTime(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> Bool
@available(tvOS 2.0, *)
func CFTimeZoneGetDaylightSavingTimeOffset(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFTimeInterval
@available(tvOS 2.0, *)
func CFTimeZoneGetNextDaylightSavingTimeTransition(tz: CFTimeZone!, _ at: CFAbsoluteTime) -> CFAbsoluteTime
@available(tvOS 2.0, *)
enum CFTimeZoneNameStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
@available(tvOS 2.0, *)
func CFTimeZoneCopyLocalizedName(tz: CFTimeZone!, _ style: CFTimeZoneNameStyle, _ locale: CFLocale!) -> CFString!
@available(tvOS 2.0, *)
let kCFTimeZoneSystemTimeZoneDidChangeNotification: CFString!

/*!
        @typedef CFTreeRetainCallBack
        Type of the callback function used to add a retain to the user-specified
        info parameter.  This callback may returns the value to use whenever the
        info parameter is retained, which is usually the value parameter passed
        to this callback, but may be a different value if a different value
        should be used.
        @param info A user-supplied info parameter provided in a CFTreeContext.
        @result The retained info parameter.
*/
typealias CFTreeRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>

/*!
        @typedef CFTreeReleaseCallBack
        Type of the callback function used to remove a retain previously
        added to the user-specified info parameter.
        @param info A user-supplied info parameter provided in a CFTreeContext.
*/
typealias CFTreeReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void

/*!
        @typedef CFTreeCopyDescriptionCallBack
        Type of the callback function used to provide a description of the
        user-specified info parameter.
        @param info A user-supplied info parameter provided in a CFTreeContext.
        @result A description of the info parameter.
*/
typealias CFTreeCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!

/*!
        @typedef CFTreeContext
        Structure containing user-specified data and callbacks for a CFTree.
        @field version The version number of the structure type being passed
                in as a parameter to the CFTree creation function.
                This structure is version 0.
        @field info A C pointer to a user-specified block of data.
        @field retain The callback used to add a retain for the info field.
                If this parameter is not a pointer to a function of the correct
                prototype, the behavior is undefined.  The value may be NULL.
        @field release The calllback used to remove a retain previously added
                for the info field.  If this parameter is not a pointer to a 
                function of the correct prototype, the behavior is undefined.
                The value may be NULL.
        @field copyDescription The callback used to provide a description of
                the info field.
*/
struct CFTreeContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFTreeRetainCallBack!
  var release: CFTreeReleaseCallBack!
  var copyDescription: CFTreeCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFTreeRetainCallBack!, release: CFTreeReleaseCallBack!, copyDescription: CFTreeCopyDescriptionCallBack!)
}

/*!
        @typedef CFTreeApplierFunction
        Type of the callback function used by the apply functions of
                CFTree.
        @param value The current value from the CFTree
        @param context The user-defined context parameter give to the apply
                function.
*/
typealias CFTreeApplierFunction = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void

/*!
        @typedef CFTreeRef
        This is the type of a reference to CFTrees.
*/
typealias CFTreeRef = CFTree

/*!
        @function CFTreeGetTypeID
        Returns the type identifier of all CFTree instances.
*/
func CFTreeGetTypeID() -> CFTypeID

/*!
        @function CFTreeCreate
        Creates a new mutable tree.
        @param allocator The CFAllocator which should be used to allocate
                memory for the tree and storage for its children.  This
                parameter may be NULL in which case the current default
                CFAllocator is used.  If this reference is not a valid
                CFAllocator, the behavior is undefined.
        @param context A C pointer to a CFTreeContext structure to be copied 
                and used as the context of the new tree.  The info parameter
                will be retained by the tree if a retain function is provided.
                If this value is not a valid C pointer to a CFTreeContext 
                structure-sized block of storage, the result is undefined. 
                If the version number of the storage is not a valid CFTreeContext
                version number, the result is undefined.
        @result A reference to the new CFTree.
*/
func CFTreeCreate(allocator: CFAllocator!, _ context: UnsafePointer<CFTreeContext>) -> CFTree!

/*!
        @function CFTreeGetParent
        Returns the parent of the specified tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @result The parent of the tree.
*/
func CFTreeGetParent(tree: CFTree!) -> CFTree!

/*!
        @function CFTreeGetNextSibling
        Returns the sibling after the specified tree in the parent tree's list.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @result The next sibling of the tree.
*/
func CFTreeGetNextSibling(tree: CFTree!) -> CFTree!

/*!
        @function CFTreeGetFirstChild
        Returns the first child of the tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @result The first child of the tree.
*/
func CFTreeGetFirstChild(tree: CFTree!) -> CFTree!

/*!
        @function CFTreeGetContext
        Returns the context of the specified tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @param context A C pointer to a CFTreeContext structure to be filled in with
                the context of the specified tree.  If this value is not a valid C
                pointer to a CFTreeContext structure-sized block of storage, the
                result is undefined.  If the version number of the storage is not
                a valid CFTreeContext version number, the result is undefined.
*/
func CFTreeGetContext(tree: CFTree!, _ context: UnsafeMutablePointer<CFTreeContext>)

/*!
        @function CFTreeGetChildCount
        Returns the number of children of the specified tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @result The number of children.
*/
func CFTreeGetChildCount(tree: CFTree!) -> CFIndex

/*!
        @function CFTreeGetChildAtIndex
        Returns the nth child of the specified tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @param idx The index of the child tree to be returned.  If this parameter
                is less than zero or greater than the number of children of the
                tree, the result is undefined.
        @result A reference to the specified child tree.
*/
func CFTreeGetChildAtIndex(tree: CFTree!, _ idx: CFIndex) -> CFTree!

/*!
        @function CFTreeGetChildren
        Fills the buffer with children from the tree.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
	@param children A C array of pointer-sized values to be filled with
		children from the tree.  If this parameter is not a valid pointer to a 
                C array of at least CFTreeGetChildCount() pointers, the behavior is undefined.
        @result A reference to the specified child tree.
*/
func CFTreeGetChildren(tree: CFTree!, _ children: UnsafeMutablePointer<Unmanaged<CFTree>?>)

/*!
	@function CFTreeApplyFunctionToChildren
	Calls a function once for each child of the tree.  Note that the applier
        only operates one level deep, and does not operate on descendents further
        removed than the immediate children of the tree.
        @param heap The tree to be operated upon.  If this parameter is not a
		valid CFTree, the behavior is undefined.
	@param applier The callback function to call once for each child of
		the given tree.  If this parameter is not a pointer to a 
                function of the correct prototype, the behavior is undefined.
                If there are values in the tree which the applier function does
                not expect or cannot properly apply to, the behavior is undefined.
	@param context A pointer-sized user-defined value, which is passed
		as the second parameter to the applier function, but is
		otherwise unused by this function.  If the context is not
		what is expected by the applier function, the behavior is
		undefined.
*/
func CFTreeApplyFunctionToChildren(tree: CFTree!, _ applier: CFTreeApplierFunction!, _ context: UnsafeMutablePointer<Void>)

/*!
        @function CFTreeFindRoot
        Returns the root tree of which the specified tree is a descendent.
        @param tree The tree to be queried.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @result A reference to the root of the tree.
*/
func CFTreeFindRoot(tree: CFTree!) -> CFTree!

/*!
        @function CFTreeSetContext
        Replaces the context of a tree.  The tree releases its retain on the
        info of the previous context, and retains the info of the new context.
        @param tree The tree to be operated on.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @param context A C pointer to a CFTreeContext structure to be copied 
                and used as the context of the new tree.  The info parameter
                will be retained by the tree if a retain function is provided.
                If this value is not a valid C pointer to a CFTreeContext 
                structure-sized block of storage, the result is undefined. 
                If the version number of the storage is not a valid CFTreeContext
                version number, the result is undefined.
*/
func CFTreeSetContext(tree: CFTree!, _ context: UnsafePointer<CFTreeContext>)

/*!
        @function CFTreePrependChild
        Adds the newChild to the specified tree as the first in its list of children.
        @param tree The tree to be operated on.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @param newChild The child to be added.
                If this parameter is not a valid CFTree, the behavior is undefined.
                If this parameter is a tree which is already a child of any tree,
                the behavior is undefined.
*/
func CFTreePrependChild(tree: CFTree!, _ newChild: CFTree!)

/*!
        @function CFTreeAppendChild
        Adds the newChild to the specified tree as the last in its list of children.
        @param tree The tree to be operated on.  If this parameter is not a valid
                CFTree, the behavior is undefined.
        @param newChild The child to be added.
                If this parameter is not a valid CFTree, the behavior is undefined.
                If this parameter is a tree which is already a child of any tree,
                the behavior is undefined.
*/
func CFTreeAppendChild(tree: CFTree!, _ newChild: CFTree!)

/*!
        @function CFTreeInsertSibling
        Inserts newSibling into the the parent tree's linked list of children after
        tree.  The newSibling will have the same parent as tree.
        @param tree The tree to insert newSibling after.  If this parameter is not a valid
                CFTree, the behavior is undefined.  If the tree does not have a
                parent, the behavior is undefined.
        @param newSibling The sibling to be added.
                If this parameter is not a valid CFTree, the behavior is undefined.
                If this parameter is a tree which is already a child of any tree,
                the behavior is undefined.  
*/
func CFTreeInsertSibling(tree: CFTree!, _ newSibling: CFTree!)

/*!
        @function CFTreeRemove
        Removes the tree from its parent.
        @param tree The tree to be removed.  If this parameter is not a valid
                CFTree, the behavior is undefined.
*/
func CFTreeRemove(tree: CFTree!)

/*!
        @function CFTreeRemoveAllChildren
        Removes all the children of the tree.
        @param tree The tree to remove all children from.  If this parameter is not a valid
                CFTree, the behavior is undefined.
*/
func CFTreeRemoveAllChildren(tree: CFTree!)

/*!
        @function CFTreeSortChildren
        Sorts the children of the specified tree using the specified comparator function.
        @param tree The tree to be operated on.  If this parameter is not a valid
                CFTree, the behavior is undefined.
	@param comparator The function with the comparator function type
		signature which is used in the sort operation to compare
		children of the tree with the given value. If this parameter
		is not a pointer to a function of the correct prototype, the
		the behavior is undefined. The children of the tree are sorted 
                from least to greatest according to this function.
	@param context A pointer-sized user-defined value, which is passed
		as the third parameter to the comparator function, but is
		otherwise unused by this function. If the context is not
		what is expected by the comparator function, the behavior is
		undefined.
*/
func CFTreeSortChildren(tree: CFTree!, _ comparator: CFComparatorFunction!, _ context: UnsafeMutablePointer<Void>)
enum CFURLPathStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case CFURLPOSIXPathStyle
  case CFURLWindowsPathStyle
}
typealias CFURLRef = CFURL
func CFURLGetTypeID() -> CFTypeID
func CFURLCreateWithBytes(allocator: CFAllocator!, _ URLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateData(allocator: CFAllocator!, _ url: CFURL!, _ encoding: CFStringEncoding, _ escapeWhitespace: Bool) -> CFData!
func CFURLCreateWithString(allocator: CFAllocator!, _ URLString: CFString!, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateAbsoluteURLWithBytes(alloc: CFAllocator!, _ relativeURLBytes: UnsafePointer<UInt8>, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!, _ useCompatibilityMode: Bool) -> CFURL!
func CFURLCreateWithFileSystemPath(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool) -> CFURL!
func CFURLCreateFromFileSystemRepresentation(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool) -> CFURL!
func CFURLCreateWithFileSystemPathRelativeToBase(allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateFromFileSystemRepresentationRelativeToBase(allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>, _ bufLen: CFIndex, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLGetFileSystemRepresentation(url: CFURL!, _ resolveAgainstBase: Bool, _ buffer: UnsafeMutablePointer<UInt8>, _ maxBufLen: CFIndex) -> Bool
func CFURLCopyAbsoluteURL(relativeURL: CFURL!) -> CFURL!
func CFURLGetString(anURL: CFURL!) -> CFString!
func CFURLGetBaseURL(anURL: CFURL!) -> CFURL!
func CFURLCanBeDecomposed(anURL: CFURL!) -> Bool
func CFURLCopyScheme(anURL: CFURL!) -> CFString!
func CFURLCopyNetLocation(anURL: CFURL!) -> CFString!
func CFURLCopyPath(anURL: CFURL!) -> CFString!
func CFURLCopyStrictPath(anURL: CFURL!, _ isAbsolute: UnsafeMutablePointer<DarwinBoolean>) -> CFString!
func CFURLCopyFileSystemPath(anURL: CFURL!, _ pathStyle: CFURLPathStyle) -> CFString!
func CFURLHasDirectoryPath(anURL: CFURL!) -> Bool
func CFURLCopyResourceSpecifier(anURL: CFURL!) -> CFString!
func CFURLCopyHostName(anURL: CFURL!) -> CFString!
func CFURLGetPortNumber(anURL: CFURL!) -> Int32
func CFURLCopyUserName(anURL: CFURL!) -> CFString!
func CFURLCopyPassword(anURL: CFURL!) -> CFString!
func CFURLCopyParameterString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyQueryString(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyFragment(anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyLastPathComponent(url: CFURL!) -> CFString!
func CFURLCopyPathExtension(url: CFURL!) -> CFString!
func CFURLCreateCopyAppendingPathComponent(allocator: CFAllocator!, _ url: CFURL!, _ pathComponent: CFString!, _ isDirectory: Bool) -> CFURL!
func CFURLCreateCopyDeletingLastPathComponent(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLCreateCopyAppendingPathExtension(allocator: CFAllocator!, _ url: CFURL!, _ `extension`: CFString!) -> CFURL!
func CFURLCreateCopyDeletingPathExtension(allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLGetBytes(url: CFURL!, _ buffer: UnsafeMutablePointer<UInt8>, _ bufferLength: CFIndex) -> CFIndex
enum CFURLComponentType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Scheme
  case NetLocation
  case Path
  case ResourceSpecifier
  case User
  case Password
  case UserInfo
  case Host
  case Port
  case ParameterString
  case Query
  case Fragment
}
func CFURLGetByteRangeForComponent(url: CFURL!, _ component: CFURLComponentType, _ rangeIncludingSeparators: UnsafeMutablePointer<CFRange>) -> CFRange
func CFURLCreateStringByReplacingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveEscaped: CFString!) -> CFString!
@available(tvOS, introduced=2.0, deprecated=9.0, message="Use [NSString stringByRemovingPercentEncoding] or CFURLCreateStringByReplacingPercentEscapes() instead, which always uses the recommended UTF-8 encoding.")
func CFURLCreateStringByReplacingPercentEscapesUsingEncoding(allocator: CFAllocator!, _ origString: CFString!, _ charsToLeaveEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(tvOS, introduced=2.0, deprecated=9.0, message="Use [NSString stringByAddingPercentEncodingWithAllowedCharacters:] instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent (since each URL component or subcomponent has different rules for what characters are valid).")
func CFURLCreateStringByAddingPercentEscapes(allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveUnescaped: CFString!, _ legalURLCharactersToBeEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(tvOS 7.0, *)
func CFURLIsFileReferenceURL(url: CFURL!) -> Bool
@available(tvOS 4.0, *)
func CFURLCreateFileReferenceURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(tvOS 4.0, *)
func CFURLCreateFilePathURL(allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(tvOS 4.0, *)
func CFURLCopyResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValueTypeRefPtr: UnsafeMutablePointer<Void>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.0, *)
func CFURLCopyResourcePropertiesForKeys(url: CFURL!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!
@available(tvOS 4.0, *)
func CFURLSetResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.0, *)
func CFURLSetResourcePropertiesForKeys(url: CFURL!, _ keyedPropertyValues: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 5.0, *)
let kCFURLKeysOfUnsetValuesKey: CFString!
@available(tvOS 4.0, *)
func CFURLClearResourcePropertyCacheForKey(url: CFURL!, _ key: CFString!)
@available(tvOS 4.0, *)
func CFURLClearResourcePropertyCache(url: CFURL!)
@available(tvOS 4.0, *)
func CFURLSetTemporaryResourcePropertyForKey(url: CFURL!, _ key: CFString!, _ propertyValue: AnyObject!)
@available(tvOS 4.0, *)
func CFURLResourceIsReachable(url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 4.0, *)
let kCFURLNameKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLocalizedNameKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsRegularFileKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsDirectoryKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsSymbolicLinkKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsVolumeKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsPackageKey: CFString!
@available(tvOS 9.0, *)
let kCFURLIsApplicationKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsSystemImmutableKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsUserImmutableKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsHiddenKey: CFString!
@available(tvOS 4.0, *)
let kCFURLHasHiddenExtensionKey: CFString!
@available(tvOS 4.0, *)
let kCFURLCreationDateKey: CFString!
@available(tvOS 4.0, *)
let kCFURLContentAccessDateKey: CFString!
@available(tvOS 4.0, *)
let kCFURLContentModificationDateKey: CFString!
@available(tvOS 4.0, *)
let kCFURLAttributeModificationDateKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLinkCountKey: CFString!
@available(tvOS 4.0, *)
let kCFURLParentDirectoryURLKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeURLKey: CFString!
@available(tvOS 4.0, *)
let kCFURLTypeIdentifierKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLocalizedTypeDescriptionKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLabelNumberKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLabelColorKey: CFString!
@available(tvOS 4.0, *)
let kCFURLLocalizedLabelKey: CFString!
@available(tvOS 4.0, *)
let kCFURLEffectiveIconKey: CFString!
@available(tvOS 4.0, *)
let kCFURLCustomIconKey: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceIdentifierKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIdentifierKey: CFString!
@available(tvOS 5.0, *)
let kCFURLPreferredIOBlockSizeKey: CFString!
@available(tvOS 5.0, *)
let kCFURLIsReadableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLIsWritableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLIsExecutableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLFileSecurityKey: CFString!
@available(tvOS 5.1, *)
let kCFURLIsExcludedFromBackupKey: CFString!
@available(tvOS 6.0, *)
let kCFURLPathKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsMountTriggerKey: CFString!
@available(tvOS 8.0, *)
let kCFURLGenerationIdentifierKey: CFString!
@available(tvOS 8.0, *)
let kCFURLDocumentIdentifierKey: CFString!
@available(tvOS 8.0, *)
let kCFURLAddedToDirectoryDateKey: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeKey: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeNamedPipe: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeCharacterSpecial: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeDirectory: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeBlockSpecial: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeRegular: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeSymbolicLink: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeSocket: CFString!
@available(tvOS 5.0, *)
let kCFURLFileResourceTypeUnknown: CFString!
@available(tvOS 4.0, *)
let kCFURLFileSizeKey: CFString!
@available(tvOS 4.0, *)
let kCFURLFileAllocatedSizeKey: CFString!
@available(tvOS 5.0, *)
let kCFURLTotalFileSizeKey: CFString!
@available(tvOS 5.0, *)
let kCFURLTotalFileAllocatedSizeKey: CFString!
@available(tvOS 4.0, *)
let kCFURLIsAliasFileKey: CFString!
@available(tvOS 9.0, *)
let kCFURLFileProtectionKey: CFString!
@available(tvOS 9.0, *)
let kCFURLFileProtectionNone: CFString!
@available(tvOS 9.0, *)
let kCFURLFileProtectionComplete: CFString!
@available(tvOS 9.0, *)
let kCFURLFileProtectionCompleteUnlessOpen: CFString!
@available(tvOS 9.0, *)
let kCFURLFileProtectionCompleteUntilFirstUserAuthentication: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeLocalizedFormatDescriptionKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeTotalCapacityKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeAvailableCapacityKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeResourceCountKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsPersistentIDsKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsSymbolicLinksKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsHardLinksKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsJournalingKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeIsJournalingKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsSparseFilesKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsZeroRunsKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsCaseSensitiveNamesKey: CFString!
@available(tvOS 4.0, *)
let kCFURLVolumeSupportsCasePreservedNamesKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeSupportsRootDirectoryDatesKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeSupportsVolumeSizesKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeSupportsRenamingKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeSupportsAdvisoryFileLockingKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeSupportsExtendedSecurityKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsBrowsableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeMaximumFileSizeKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsEjectableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsRemovableKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsInternalKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsAutomountedKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsLocalKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeIsReadOnlyKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeCreationDateKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeURLForRemountingKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeUUIDStringKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeNameKey: CFString!
@available(tvOS 5.0, *)
let kCFURLVolumeLocalizedNameKey: CFString!
@available(tvOS 5.0, *)
let kCFURLIsUbiquitousItemKey: CFString!
@available(tvOS 5.0, *)
let kCFURLUbiquitousItemHasUnresolvedConflictsKey: CFString!
@available(tvOS 5.0, *)
let kCFURLUbiquitousItemIsDownloadingKey: CFString!
@available(tvOS 5.0, *)
let kCFURLUbiquitousItemIsUploadedKey: CFString!
@available(tvOS 5.0, *)
let kCFURLUbiquitousItemIsUploadingKey: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemDownloadingStatusKey: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemDownloadingErrorKey: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemUploadingErrorKey: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemDownloadingStatusNotDownloaded: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemDownloadingStatusDownloaded: CFString!
@available(tvOS 7.0, *)
let kCFURLUbiquitousItemDownloadingStatusCurrent: CFString!
@available(tvOS 4.0, *)
struct CFURLBookmarkCreationOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var MinimalBookmarkMask: CFURLBookmarkCreationOptions { get }
  static var SuitableForBookmarkFile: CFURLBookmarkCreationOptions { get }
}
@available(tvOS 4.0, *)
struct CFURLBookmarkResolutionOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var CFURLBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFURLBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var CFBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
}
typealias CFURLBookmarkFileCreationOptions = CFOptionFlags
@available(tvOS 4.0, *)
func CFURLCreateBookmarkData(allocator: CFAllocator!, _ url: CFURL!, _ options: CFURLBookmarkCreationOptions, _ resourcePropertiesToInclude: CFArray!, _ relativeToURL: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(tvOS 4.0, *)
func CFURLCreateByResolvingBookmarkData(allocator: CFAllocator!, _ bookmark: CFData!, _ options: CFURLBookmarkResolutionOptions, _ relativeToURL: CFURL!, _ resourcePropertiesToInclude: CFArray!, _ isStale: UnsafeMutablePointer<DarwinBoolean>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFURL>!
@available(tvOS 4.0, *)
func CFURLCreateResourcePropertiesForKeysFromBookmarkData(allocator: CFAllocator!, _ resourcePropertiesToReturn: CFArray!, _ bookmark: CFData!) -> Unmanaged<CFDictionary>!
@available(tvOS 4.0, *)
func CFURLCreateResourcePropertyForKeyFromBookmarkData(allocator: CFAllocator!, _ resourcePropertyKey: CFString!, _ bookmark: CFData!) -> Unmanaged<AnyObject>!
@available(tvOS 5.0, *)
func CFURLCreateBookmarkDataFromFile(allocator: CFAllocator!, _ fileURL: CFURL!, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFData>!
@available(tvOS 5.0, *)
func CFURLWriteBookmarkDataToFile(bookmarkRef: CFData!, _ fileURL: CFURL!, _ options: CFURLBookmarkFileCreationOptions, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(tvOS 8.0, *)
func CFURLStartAccessingSecurityScopedResource(url: CFURL!) -> Bool
@available(tvOS 8.0, *)
func CFURLStopAccessingSecurityScopedResource(url: CFURL!)
var __COREFOUNDATION_CFURLENUMERATOR__: Int32 { get }
typealias CFURLEnumeratorRef = CFURLEnumerator
@available(tvOS 4.0, *)
func CFURLEnumeratorGetTypeID() -> CFTypeID
struct CFURLEnumeratorOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var DefaultBehavior: CFURLEnumeratorOptions { get }
  static var DescendRecursively: CFURLEnumeratorOptions { get }
  static var SkipInvisibles: CFURLEnumeratorOptions { get }
  static var GenerateFileReferenceURLs: CFURLEnumeratorOptions { get }
  static var SkipPackageContents: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPreOrder: CFURLEnumeratorOptions { get }
  static var IncludeDirectoriesPostOrder: CFURLEnumeratorOptions { get }
}
@available(tvOS 4.0, *)
func CFURLEnumeratorCreateForDirectoryURL(alloc: CFAllocator!, _ directoryURL: CFURL!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
@available(tvOS 4.0, *)
func CFURLEnumeratorCreateForMountedVolumes(alloc: CFAllocator!, _ option: CFURLEnumeratorOptions, _ propertyKeys: CFArray!) -> CFURLEnumerator!
enum CFURLEnumeratorResult : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Success
  case End
  case Error
  case DirectoryPostOrderSuccess
}
@available(tvOS 4.0, *)
func CFURLEnumeratorGetNextURL(enumerator: CFURLEnumerator!, _ url: UnsafeMutablePointer<Unmanaged<CFURL>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFURLEnumeratorResult
@available(tvOS 4.0, *)
func CFURLEnumeratorSkipDescendents(enumerator: CFURLEnumerator!)
@available(tvOS 4.0, *)
func CFURLEnumeratorGetDescendentLevel(enumerator: CFURLEnumerator!) -> CFIndex
typealias CFUUIDRef = CFUUID
struct CFUUIDBytes {
  var byte0: UInt8
  var byte1: UInt8
  var byte2: UInt8
  var byte3: UInt8
  var byte4: UInt8
  var byte5: UInt8
  var byte6: UInt8
  var byte7: UInt8
  var byte8: UInt8
  var byte9: UInt8
  var byte10: UInt8
  var byte11: UInt8
  var byte12: UInt8
  var byte13: UInt8
  var byte14: UInt8
  var byte15: UInt8
  init()
  init(byte0: UInt8, byte1: UInt8, byte2: UInt8, byte3: UInt8, byte4: UInt8, byte5: UInt8, byte6: UInt8, byte7: UInt8, byte8: UInt8, byte9: UInt8, byte10: UInt8, byte11: UInt8, byte12: UInt8, byte13: UInt8, byte14: UInt8, byte15: UInt8)
}
func CFUUIDGetTypeID() -> CFTypeID
func CFUUIDCreate(alloc: CFAllocator!) -> CFUUID!
func CFUUIDCreateWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDCreateFromString(alloc: CFAllocator!, _ uuidStr: CFString!) -> CFUUID!
func CFUUIDCreateString(alloc: CFAllocator!, _ uuid: CFUUID!) -> CFString!
func CFUUIDGetConstantUUIDWithBytes(alloc: CFAllocator!, _ byte0: UInt8, _ byte1: UInt8, _ byte2: UInt8, _ byte3: UInt8, _ byte4: UInt8, _ byte5: UInt8, _ byte6: UInt8, _ byte7: UInt8, _ byte8: UInt8, _ byte9: UInt8, _ byte10: UInt8, _ byte11: UInt8, _ byte12: UInt8, _ byte13: UInt8, _ byte14: UInt8, _ byte15: UInt8) -> CFUUID!
func CFUUIDGetUUIDBytes(uuid: CFUUID!) -> CFUUIDBytes
func CFUUIDCreateFromUUIDBytes(alloc: CFAllocator!, _ bytes: CFUUIDBytes) -> CFUUID!
@available(tvOS 5.0, *)
func CFCopyHomeDirectoryURL() -> CFURL!
