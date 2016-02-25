
typealias JSChar = UInt16
func JSStringCreateWithCharacters(_ chars: UnsafePointer<JSChar>, _ numChars: Int) -> JSStringRef
func JSStringCreateWithUTF8CString(_ string: UnsafePointer<Int8>) -> JSStringRef
func JSStringRetain(_ string: JSStringRef) -> JSStringRef
func JSStringRelease(_ string: JSStringRef)
func JSStringGetLength(_ string: JSStringRef) -> Int
func JSStringGetCharactersPtr(_ string: JSStringRef) -> UnsafePointer<JSChar>
func JSStringGetMaximumUTF8CStringSize(_ string: JSStringRef) -> Int
func JSStringGetUTF8CString(_ string: JSStringRef, _ buffer: UnsafeMutablePointer<Int8>, _ bufferSize: Int) -> Int
func JSStringIsEqual(_ a: JSStringRef, _ b: JSStringRef) -> Bool
func JSStringIsEqualToUTF8CString(_ a: JSStringRef, _ b: UnsafePointer<Int8>) -> Bool
