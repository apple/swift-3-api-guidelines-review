
@available(iOS 2.0, *)
let kCFStreamErrorDomainHTTP: Int32
enum CFStreamErrorHTTP : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case ParseFailure
  case RedirectionLoop
  case BadURL
}
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPResponseHeader: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalURL: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPFinalRequest: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxy: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyHost: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPProxyPort: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyHost: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPSProxyPort: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPShouldAutoredirect: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPAttemptPersistentConnection: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
let kCFStreamPropertyHTTPRequestBytesWrittenCount: CFString
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForHTTPRequest(alloc: CFAllocator?, _ request: CFHTTPMessage) -> Unmanaged<CFReadStream>
@available(iOS, introduced=2.0, deprecated=9.0, message="Use NSURLSession API for http requests")
func CFReadStreamCreateForStreamedHTTPRequest(alloc: CFAllocator?, _ requestHeaders: CFHTTPMessage, _ requestBody: CFReadStream) -> Unmanaged<CFReadStream>
