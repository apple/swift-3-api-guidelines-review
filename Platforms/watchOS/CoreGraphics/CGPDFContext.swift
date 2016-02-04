
@available(watchOS 2.0, *)
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(watchOS 2.0, *)
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(watchOS 2.0, *)
func CGPDFContextClose(context: CGContext?)
@available(watchOS 2.0, *)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGPDFContextEndPage(context: CGContext?)
@available(watchOS 2.0, *)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
@available(watchOS 2.0, *)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
@available(watchOS 2.0, *)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
@available(watchOS 2.0, *)
let kCGPDFContextMediaBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextCropBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextBleedBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextTrimBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextArtBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextTitle: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAuthor: CFString
@available(watchOS 2.0, *)
let kCGPDFContextSubject: CFString
@available(watchOS 2.0, *)
let kCGPDFContextKeywords: CFString
@available(watchOS 2.0, *)
let kCGPDFContextCreator: CFString
@available(watchOS 2.0, *)
let kCGPDFContextOwnerPassword: CFString
@available(watchOS 2.0, *)
let kCGPDFContextUserPassword: CFString
@available(watchOS 2.0, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAllowsPrinting: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAllowsCopying: CFString
