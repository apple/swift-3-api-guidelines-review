
@available(OSX 10.1, *)
let kCFHTTPVersion1_0: CFString
@available(OSX 10.1, *)
let kCFHTTPVersion1_1: CFString
@available(OSX 10.10, *)
let kCFHTTPVersion2_0: CFString
@available(OSX 10.2, *)
let kCFHTTPAuthenticationSchemeBasic: CFString
@available(OSX 10.2, *)
let kCFHTTPAuthenticationSchemeDigest: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeNTLM: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeKerberos: CFString
@available(OSX 10.5, *)
let kCFHTTPAuthenticationSchemeNegotiate: CFString
@available(OSX 10.6, *)
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
@available(OSX 10.6, *)
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
@available(OSX 10.9, *)
let kCFHTTPAuthenticationSchemeOAuth1: CFString
class CFHTTPMessage {
}
@available(*, deprecated, renamed="CFHTTPMessage")
typealias CFHTTPMessageRef = CFHTTPMessage
@available(OSX 10.1, *)
func CFHTTPMessageGetTypeID() -> CFTypeID
@available(OSX 10.1, *)
func CFHTTPMessageCreateRequest(alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateResponse(alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateEmpty(alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageCreateCopy(alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
@available(OSX 10.1, *)
func CFHTTPMessageIsRequest(message: CFHTTPMessage) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageCopyVersion(message: CFHTTPMessage) -> Unmanaged<CFString>
@available(OSX 10.1, *)
func CFHTTPMessageCopyBody(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(OSX 10.1, *)
func CFHTTPMessageSetBody(message: CFHTTPMessage, _ bodyData: CFData)
@available(OSX 10.1, *)
func CFHTTPMessageCopyHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
@available(OSX 10.1, *)
func CFHTTPMessageCopyAllHeaderFields(message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
@available(OSX 10.1, *)
func CFHTTPMessageSetHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
@available(OSX 10.1, *)
func CFHTTPMessageAppendBytes(message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageIsHeaderComplete(message: CFHTTPMessage) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageCopySerializedMessage(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(OSX 10.1, *)
func CFHTTPMessageCopyRequestURL(request: CFHTTPMessage) -> Unmanaged<CFURL>?
@available(OSX 10.1, *)
func CFHTTPMessageCopyRequestMethod(request: CFHTTPMessage) -> Unmanaged<CFString>?
@available(OSX 10.1, *)
func CFHTTPMessageAddAuthentication(request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool
@available(OSX 10.1, *)
func CFHTTPMessageGetResponseStatusCode(response: CFHTTPMessage) -> CFIndex
@available(OSX 10.1, *)
func CFHTTPMessageCopyResponseStatusLine(response: CFHTTPMessage) -> Unmanaged<CFString>?
