
typealias JSChar = UInt16
func JSStringCreateWithCharacters(chars: UnsafePointer<JSChar>, _ numChars: Int) -> JSStringRef
func JSStringCreateWithUTF8CString(string: UnsafePointer<Int8>) -> JSStringRef
func JSStringRetain(string: JSStringRef) -> JSStringRef
func JSStringRelease(string: JSStringRef)
func JSStringGetLength(string: JSStringRef) -> Int
func JSStringGetCharactersPtr(string: JSStringRef) -> UnsafePointer<JSChar>
func JSStringGetMaximumUTF8CStringSize(string: JSStringRef) -> Int
func JSStringGetUTF8CString(string: JSStringRef, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: Int) -> Int
func JSStringIsEqual(a: JSStringRef, _ b: JSStringRef) -> Bool
func JSStringIsEqualToUTF8CString(a: JSStringRef, _ b: UnsafePointer<Int8>) -> Bool
