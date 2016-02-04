
@available(iOS 2.0, *)
let kCFHTTPVersion1_0: CFString
@available(iOS 2.0, *)
let kCFHTTPVersion1_1: CFString
@available(iOS 8.0, *)
let kCFHTTPVersion2_0: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeBasic: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeDigest: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeNTLM: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeKerberos: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationSchemeNegotiate: CFString
@available(iOS 3.0, *)
let kCFHTTPAuthenticationSchemeNegotiate2: CFString
@available(iOS 4.3, *)
let kCFHTTPAuthenticationSchemeXMobileMeAuthToken: CFString
@available(iOS 7.0, *)
let kCFHTTPAuthenticationSchemeOAuth1: CFString
class CFHTTPMessage {
}
@available(iOS 2.0, *)
func CFHTTPMessageGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHTTPMessageCreateRequest(alloc: CFAllocator?, _ requestMethod: CFString, _ url: CFURL, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateResponse(alloc: CFAllocator?, _ statusCode: CFIndex, _ statusDescription: CFString?, _ httpVersion: CFString) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateEmpty(alloc: CFAllocator?, _ isRequest: Bool) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageCreateCopy(alloc: CFAllocator?, _ message: CFHTTPMessage) -> Unmanaged<CFHTTPMessage>
@available(iOS 2.0, *)
func CFHTTPMessageIsRequest(message: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageCopyVersion(message: CFHTTPMessage) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPMessageCopyBody(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFHTTPMessageSetBody(message: CFHTTPMessage, _ bodyData: CFData)
@available(iOS 2.0, *)
func CFHTTPMessageCopyHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFHTTPMessageCopyAllHeaderFields(message: CFHTTPMessage) -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFHTTPMessageSetHeaderFieldValue(message: CFHTTPMessage, _ headerField: CFString, _ value: CFString?)
@available(iOS 2.0, *)
func CFHTTPMessageAppendBytes(message: CFHTTPMessage, _ newBytes: UnsafePointer<UInt8>, _ numBytes: CFIndex) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageIsHeaderComplete(message: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageCopySerializedMessage(message: CFHTTPMessage) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFHTTPMessageCopyRequestURL(request: CFHTTPMessage) -> Unmanaged<CFURL>?
@available(iOS 2.0, *)
func CFHTTPMessageCopyRequestMethod(request: CFHTTPMessage) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFHTTPMessageAddAuthentication(request: CFHTTPMessage, _ authenticationFailureResponse: CFHTTPMessage?, _ username: CFString, _ password: CFString, _ authenticationScheme: CFString?, _ forProxy: Bool) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageGetResponseStatusCode(response: CFHTTPMessage) -> CFIndex
@available(iOS 2.0, *)
func CFHTTPMessageCopyResponseStatusLine(response: CFHTTPMessage) -> Unmanaged<CFString>?
