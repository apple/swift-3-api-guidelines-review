
@available(watchOS, introduced=2.0, deprecated=2.0, message="For resource data, use the CFReadStream API. For file resource properties, use CFURLCopyResourcePropertiesForKeys.")
func CFURLCreateDataAndPropertiesFromResource(_ alloc: CFAllocator!, _ url: CFURL!, _ resourceData: UnsafeMutablePointer<Unmanaged<CFData>?>, _ properties: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ desiredProperties: CFArray!, _ errorCode: UnsafeMutablePointer<Int32>) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0, message="For resource data, use the CFWriteStream API. For file resource properties, use CFURLSetResourcePropertiesForKeys.")
func CFURLWriteDataAndPropertiesToResource(_ url: CFURL!, _ dataToWrite: CFData!, _ propertiesToWrite: CFDictionary!, _ errorCode: UnsafeMutablePointer<Int32>) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLGetFileSystemRepresentation and removefile(3) instead.")
func CFURLDestroyResource(_ url: CFURL!, _ errorCode: UnsafeMutablePointer<Int32>) -> Bool
@available(watchOS, introduced=2.0, deprecated=2.0, message="For file resource properties, use CFURLCopyResourcePropertyForKey.")
func CFURLCreatePropertyFromResource(_ alloc: CFAllocator!, _ url: CFURL!, _ property: CFString!, _ errorCode: UnsafeMutablePointer<Int32>) -> CFTypeRef!
@available(watchOS, introduced=2.0, deprecated=2.0)
enum CFURLError : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case unknownError
  case unknownSchemeError
  case resourceNotFoundError
  case resourceAccessViolationError
  case remoteHostUnavailableError
  case improperArgumentsError
  case unknownPropertyKeyError
  case propertyKeyUnavailableError
  case timeoutError
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLResourceIsReachable instead.")
let kCFURLFileExists: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use the CFURLEnumerator API instead.")
let kCFURLFileDirectoryContents: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLCopyResourcePropertyForKey with kCFURLFileSizeKey instead.")
let kCFURLFileLength: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLCopyResourcePropertyForKey with kCFURLContentModificationDateKey instead.")
let kCFURLFileLastModificationTime: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLCopyResourcePropertyForKey with kCFURLFileSecurityKey and then the CFFileSecurity API instead.")
let kCFURLFilePOSIXMode: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use CFURLCopyResourcePropertyForKey with kCFURLFileSecurityKey and then the CFFileSecurity API instead.")
let kCFURLFileOwnerID: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSHTTPURLResponse methods instead.")
let kCFURLHTTPStatusCode: CFString!
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSHTTPURLResponse methods instead.")
let kCFURLHTTPStatusLine: CFString!
