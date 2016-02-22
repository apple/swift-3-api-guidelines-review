
@available(tvOS 2.0, *)
let kCFHTTPVersion1_0: CFString
@available(tvOS 2.0, *)
let kCFHTTPVersion1_1: CFString
@available(tvOS 8.0, *)
let kCFHTTPVersion2_0: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationSchemeBasic: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationSchemeDigest: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationSchemeNTLM: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationSchemeKerberos: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationSchemeNegotiate: CFString
@available(tvOS 3.0, *)
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
@available(tvOS 4.3, *)
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
@available(tvOS 7.0, *)
let kCFHTTPAuthenticationSchemeOAuth1: CFString
class CFHTTPMessage {
}
@available(tvOS 2.0, *)
func CFHTTPMessageGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CFHTTPMessageCreateRequest(_ alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(tvOS 2.0, *)
func CFHTTPMessageCreateResponse(_ alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(tvOS 2.0, *)
func CFHTTPMessageCreateEmpty(_ alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
@available(tvOS 2.0, *)
func CFHTTPMessageCreateCopy(_ alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
@available(tvOS 2.0, *)
func CFHTTPMessageIsRequest(_ message: CFHTTPMessage) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageCopyVersion(_ message: CFHTTPMessage) -> Unmanaged<CFString>
@available(tvOS 2.0, *)
func CFHTTPMessageCopyBody(_ message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(tvOS 2.0, *)
func CFHTTPMessageSetBody(_ message: CFHTTPMessage, _ bodyData: CFData)
@available(tvOS 2.0, *)
func CFHTTPMessageCopyHeaderFieldValue(_ message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
@available(tvOS 2.0, *)
func CFHTTPMessageCopyAllHeaderFields(_ message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
@available(tvOS 2.0, *)
func CFHTTPMessageSetHeaderFieldValue(_ message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
@available(tvOS 2.0, *)
func CFHTTPMessageAppendBytes(_ message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageIsHeaderComplete(_ message: CFHTTPMessage) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageCopySerializedMessage(_ message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(tvOS 2.0, *)
func CFHTTPMessageCopyRequestURL(_ request: CFHTTPMessage) -> Unmanaged<CFURL>?
@available(tvOS 2.0, *)
func CFHTTPMessageCopyRequestMethod(_ request: CFHTTPMessage) -> Unmanaged<CFString>?
@available(tvOS 2.0, *)
func CFHTTPMessageAddAuthentication(_ request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageGetResponseStatusCode(_ response: CFHTTPMessage) -> CFIndex
@available(tvOS 2.0, *)
func CFHTTPMessageCopyResponseStatusLine(_ response: CFHTTPMessage) -> Unmanaged<CFString>?
