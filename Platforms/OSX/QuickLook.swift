
var QUICKLOOK_VERSION: Int32 { get }
var kQLReturnMask: Int32 { get }

/*!
 *      @typedef QLThumbnailRequestRef
 *      @abstract This is the type of a reference to Thumbnail requests.
 */
typealias QLThumbnailRequestRef = QLThumbnailRequest

/*!
 *      @function QLThumbnailRequestGetTypeID
 *      @abstract Returns the CoreFoundation type ID for QLThumbnailRequests.
 */
func QLThumbnailRequestGetTypeID() -> CFTypeID

/*!
 *      @function QLThumbnailRequestCopyURL
 *      @abstract Returns the url of the file for the thumbnail request.
 *      @param thumbnail The thumbnail request.
 *      @result The url of the file for the thumbnail request.
 */
func QLThumbnailRequestCopyURL(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFURL>!

/*!
 *      @function QLThumbnailRequestCopyOptions
 *      @abstract Returns the desired options for the thumbnail request.
 *      @param thumbnail The thumbnail request.
 *      @result The desired options for the thumbnail request.
 */
func QLThumbnailRequestCopyOptions(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFDictionary>!

/*!
 *      @function QLThumbnailRequestCopyContentUTI
 *      @abstract Returns the UTI for the thumbnail request.
 *      @param thumbnail The thumbnail request.
 *      @result The UTI of the content being thumbnailed, NULL if not available.
 */
func QLThumbnailRequestCopyContentUTI(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFString>!

/*!
 *      @function QLThumbnailRequestGetMaximumSize
 *      @abstract Returns the maximum desired size (in points) for the thumbnail request.
 *      @param thumbnail The thumbnail request.
 *      @result The maximum desired size (in points) for the thumbnail request.
 */
func QLThumbnailRequestGetMaximumSize(thumbnail: QLThumbnailRequest!) -> CGSize

/*!
 *      @function QLThumbnailRequestGetGeneratorBundle
 *      @abstract Get the thumbnail request generator bundle.
 *      @param thumbnail The thumbnail request.
 */
func QLThumbnailRequestGetGeneratorBundle(thumbnail: QLThumbnailRequest!) -> Unmanaged<CFBundle>!

/*!
 *      @function QLThumbnailRequestSetDocumentObject
 *      @abstract Store some object in thumbnail request.
 *      @param thumbnail The thumbnail request.
 *      @param object The object representing the document
 *      @param callbacks Callbacks to retain/release/etc. the object.
 *      @discussion You can only call this function once per request.
 */
@available(OSX 10.6, *)
func QLThumbnailRequestSetDocumentObject(thumbnail: QLThumbnailRequest!, _ object: UnsafePointer<Void>, _ callbacks: UnsafePointer<CFArrayCallBacks>)

/*!
 *      @function QLThumbnailRequestGetDocumentObject
 *      @abstract Get the object previously stored with QLThumbnailRequestSetDocumentObject.
 *      @param thumbnail The thumbnail request.
 *      @result The object representing the document
 */
@available(OSX 10.6, *)
func QLThumbnailRequestGetDocumentObject(thumbnail: QLThumbnailRequest!) -> UnsafePointer<Void>

/*!
 *      @function QLThumbnailRequestSetImage
 *      @abstract Sets the thumbnail request response to image.
 *      @param thumbnail The thumbnail request.
 *      @param image The thumbnail image response.
 *      @param properties See possible properties below.
 */
func QLThumbnailRequestSetImage(thumbnail: QLThumbnailRequest!, _ image: CGImage!, _ properties: CFDictionary!)

/*!
 *      @function QLThumbnailRequestSetImageWithData
 *      @abstract Sets the thumbnail request response to image data.
 *      @param thumbnail The thumbnail request.
 *      @param data The thumbnail image response as data. The image format should be supported by ImageIO
 *      @param properties See possible properties below. Additional useful properties: kCGImageSourceTypeIdentifierHint (see ImageIO documentation).
 */
func QLThumbnailRequestSetImageWithData(thumbnail: QLThumbnailRequest!, _ data: CFData!, _ properties: CFDictionary!)

/*!
 *      @function QLThumbnailRequestCreateContext
 *      @abstract Creates a graphic context to draw the thumbnail response in.
 *      @param thumbnail The thumbnail request.
 *      @param size Size in points of the context for the thumbnail response.
 *      @param isBitmap True if thumbnail contents is based on bitmap. size will then be interpreted as pixels, not points.
 *      @param properties See possible properties below.
 *      @result A graphic context to draw to.
 *      @discussion Once the thumbnail is fully drawn, you should call QLThumbnailRequestFlushContext().
 */
func QLThumbnailRequestCreateContext(thumbnail: QLThumbnailRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!

/*!
 *      @function QLThumbnailRequestFlushContext
 *      @abstract Flushes the graphic context and creates the thumbnail image response.
 *      @param thumbnail The thumbnail request.
 *      @param context The graphic context created by QLThumbnailRequestCreateContext().
 */
func QLThumbnailRequestFlushContext(thumbnail: QLThumbnailRequest!, _ context: CGContext!)

/*!
 *      @function QLThumbnailRequestSetImageAtURL
 *      @abstract Sets the thumbnail request response to the image contained at url.
 *      @param thumbnail The thumbnail request.
 *      @param url The url to the thumbnail image response.
 *      @param properties Currently unused.
 */
func QLThumbnailRequestSetImageAtURL(thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ properties: CFDictionary!)

/*!
 *      @function QLThumbnailRequestSetThumbnailWithDataRepresentation
 *      @abstract Sets the thumbnail request response to the image produced by the equivalent preview representation.
 *      @param thumbnail The thumbnail request.
 *      @param data The content data.
 *      @param contentTypeUTI The contentTypeUTI for the preview representation.
 *      @param previewProperties Additional properties for the preview response.
 *      @param properties Currently unused.
 *      @discussion Currently supported UTIs are: none. This call only works if your generator is set to be run in the main thread
 */
@available(OSX 10.6, *)
func QLThumbnailRequestSetThumbnailWithDataRepresentation(thumbnail: QLThumbnailRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)

/*!
 *      @function QLThumbnailRequestSetThumbnailWithURLRepresentation
 *      @abstract Sets the thumbnail request response to the image produced by the equivalent preview representation.
 *      @param thumbnail The thumbnail request.
 *      @param url The url to the preview response.
 *      @param contentTypeUTI The contentTypeUTI for the preview representation.
 *      @param properties Additional properties for the preview response.
 *      @discussion Currently supported UTIs are: none. This call only works if your generator is set to be run in the main thread
 */
@available(OSX 10.6, *)
func QLThumbnailRequestSetThumbnailWithURLRepresentation(thumbnail: QLThumbnailRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ previewProperties: CFDictionary!, _ properties: CFDictionary!)

/*!
 *      @function QLThumbnailRequestIsCancelled
 *      @abstract Returns wether the thumbnail request was cancelled or not.
 *      @param thumbnail The thumbnail request.
 *      @result true if the request was cancelled.
 */
func QLThumbnailRequestIsCancelled(thumbnail: QLThumbnailRequest!) -> Bool

/*!
 *      @constant kQLThumbnailPropertyExtensionKey
 *      @abstract Value should be a CFString. The extension is used as a badge when producing an icon.
 */
@available(OSX 10.6, *)
let kQLThumbnailPropertyExtensionKey: CFString!

/*!
 *      @constant kQLThumbnailPropertyExtensionKey
 *      @abstract Value should be a CGImage. The badge is used when producing an icon.
 */
@available(OSX 10.6, *)
let kQLThumbnailPropertyBadgeImageKey: CFString!

/*!
 *      @constant kQLThumbnailPropertyExtensionKey
 *      @abstract Extends the security scope where Quick Look will accept to look at a file. Value is a path as CFString.
 *      @discussion Only useful when using QLThumbnailRequestSetImageAtURL() or QLThumbnailRequestSetThumbnailWithURLRepresentation().
 *                  By default, Quick Look will only accept files within the current document bundle.
 */
@available(OSX 10.6, *)
let kQLThumbnailPropertyBaseBundlePathKey: CFString!

/*!
 *      @typedef QLPreviewRequestRef
 *      This is the type of a reference to Preview requests.
 */
typealias QLPreviewRequestRef = QLPreviewRequest

/*!
 *      @function QLPreviewRequestGetTypeID
 *      @abstract Returns the CoreFoundation type ID for QLPreviewRequests.
 */
func QLPreviewRequestGetTypeID() -> CFTypeID

/*!
 *      @constant kQLPreviewPropertyDisplayNameKey
 *      @abstract Customizes Displayed name in the preview panel. This replaces the document's display name. Value is a CFString.
 */
let kQLPreviewPropertyDisplayNameKey: CFString!

/*!
 *      @constant kQLPreviewPropertyWidthKey
 *      @abstract Gives the width (in points) of the preview. Value is a CFNumber.
 */
let kQLPreviewPropertyWidthKey: CFString!

/*!
 *      @constant kQLPreviewPropertyHeightKey
 *      @abstract Gives the height (in points) of the preview. Value is a CFNumber.
 */
let kQLPreviewPropertyHeightKey: CFString!

/*!
 *      @constant kQLPreviewPropertyBaseBundlePathKey
 *      @abstract Extends the security scope where Quick Look will accept to look at a file. Value is a path as CFString.
 *      @discussion Only useful when using QLPreviewRequestSetURLRepresentation().
 *                  By default, Quick Look will only accept files within the current document bundle.
 */
@available(OSX 10.6, *)
let kQLPreviewPropertyBaseBundlePathKey: CFString!

/*!
 *      @constant kQLPreviewPropertyStringEncodingKey
 *      @abstract Gives the CFStringEncoding of the preview data if the preview type is plain text. Value is a CFNumber.
 */
let kQLPreviewPropertyStringEncodingKey: CFString!
struct QLPreviewPDFStyle : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQLPreviewPDFStandardStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnRightStyle: QLPreviewPDFStyle { get }
var kQLPreviewPDFPagesWithThumbnailsOnLeftStyle: QLPreviewPDFStyle { get }

/*!
 *      @constant kQLPreviewPropertyPDFStyleKey
 *      @abstract Specify the preferred way to display PDF content. Value is a CFNumber using QLPreviewPDFStyle values.
 */
@available(OSX 10.6, *)
let kQLPreviewPropertyPDFStyleKey: CFString!

/*!
 *      @constant kQLPreviewOptionCursorKey
 *      @abstract Value is the same CFNumber passed by potential previous calls to generator's preview callback for the same document with kQLPreviewPropertyCursorKey.
 *      @discussion Use this value to provide more of the preview content.
 */
@available(OSX 10.6, *)
let kQLPreviewOptionCursorKey: CFString!

/*!
 *      @constant kQLPreviewPropertyCursorKey
 *      @abstract Value should be a CFNumber. This value will be used to get more of the document's preview if necessary
 *                (and if the preview genererator returns kQLReturnHasMore)
 */
@available(OSX 10.6, *)
let kQLPreviewPropertyCursorKey: CFString!

/*!
 *      @function QLPreviewRequestCopyURL
 *      @abstract Returns the url of the file for the preview request.
 *      @param preview The preview request.
 *      @result The url of the file for the preview request.
 */
func QLPreviewRequestCopyURL(preview: QLPreviewRequest!) -> Unmanaged<CFURL>!

/*!
 *      @function QLPreviewRequestCopyOptions
 *      @abstract Returns the desired options for the preview request.
 *      @param preview The preview request.
 *      @result The desired options for the preview request.
 */
func QLPreviewRequestCopyOptions(preview: QLPreviewRequest!) -> Unmanaged<CFDictionary>!

/*!
 *      @function QLPreviewRequestCopyContentUTI
 *      @abstract Returns the UTI for the preview request.
 *      @param preview The preview request.
 *      @result The UTI of the content being previewed, NULL if not available.
 */
func QLPreviewRequestCopyContentUTI(preview: QLPreviewRequest!) -> Unmanaged<CFString>!

/*!
 *      @function QLPreviewRequestGetGeneratorBundle
 *      @abstract Gets the preview request generator bundle.
 *      @param preview The preview request.
 */
func QLPreviewRequestGetGeneratorBundle(preview: QLPreviewRequest!) -> Unmanaged<CFBundle>!

/*!
 *      @function QLPreviewRequestSetDocumentObject
 *      @abstract Store some object in preview request.
 *      @param thumbnail The preview request.
 *      @param object The object representing the document
 *      @param callbacks Callbacks to retain/release/etc. the object.
 *      @discussion You can only call this function once per request.
 */
@available(OSX 10.6, *)
func QLPreviewRequestSetDocumentObject(preview: QLPreviewRequest!, _ object: UnsafePointer<Void>, _ callbacks: UnsafePointer<CFArrayCallBacks>)

/*!
 *      @function QLPreviewRequestGetDocumentObject
 *      @abstract Get the object previously stored with QLPreviewRequestSetDocumentObject.
 *      @param preview The preview request.
 *      @result The object representing the document
 */
@available(OSX 10.6, *)
func QLPreviewRequestGetDocumentObject(preview: QLPreviewRequest!) -> UnsafePointer<Void>

/*!
 *      @function QLPreviewRequestIsCancelled
 *      @abstract Returns wether the preview request was cancelled or not.
 *      @param preview The preview request.
 *      @result true if the request was cancelled.
 */
func QLPreviewRequestIsCancelled(preview: QLPreviewRequest!) -> Bool

/*!
 * @function QLPreviewRequestSetDataRepresentation
 * @abstract Sets the preview response with the provided data.
 * @param preview The preview request.
 * @param data The content data.
 * @param contentTypeUTI The contentTypeUTI for the preview representation.
 * @param properties Additional properties for the preview response.
 * @discussion Currently supported UTIs are: kUTTypeImage, kUTTypePDF, kUTTypeHTML,
 *             kUTTypeXML, kUTTypePlainText, kUTTypeRTF, kUTTypeMovie, kUTTypeAudio,
 *             and "org.khronos.collada.digital-asset-exchange" (from OSX 10.9)
 */
func QLPreviewRequestSetDataRepresentation(preview: QLPreviewRequest!, _ data: CFData!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)

/*!
 *      @function QLPreviewRequestSetURLRepresentation
 *      @abstract Sets the preview request response with contents at url.
 *      @param preview The preview request.
 *      @param url The url to the preview response.
 *      @param contentTypeUTI The contentTypeUTI for the preview representation.
 *      @param properties Additional properties for the preview response.
 *      @discussion Currently supported UTIs are: kUTTypeImage, kUTTypePDF, kUTTypeHTML,
 *                  kUTTypeXML, kUTTypePlainText, kUTTypeRTF, kUTTypeRTFD, kUTTypeMovie, kUTTypeAudio,
 *                  and "org.khronos.collada.digital-asset-exchange" (from OSX 10.9)
 */
func QLPreviewRequestSetURLRepresentation(preview: QLPreviewRequest!, _ url: CFURL!, _ contentTypeUTI: CFString!, _ properties: CFDictionary!)

/*!
 *      @function QLPreviewRequestCreateContext
 *      @abstract Creates a context to draw the preview in. Context should be flushed with QLPreviewRequestFlushContext()
 *      @param preview The preview request.
 *      @param size The size of the context.
 *      @param isBitmap true if preview is bitmap-based.
 *      @param properties Additional properties for the preview response.
 */
func QLPreviewRequestCreateContext(preview: QLPreviewRequest!, _ size: CGSize, _ isBitmap: Bool, _ properties: CFDictionary!) -> Unmanaged<CGContext>!

/*!
 *      @function QLPreviewRequestCreatePDFContext
 *      @abstract Creates a PDF context to draw the preview in, likely to be multi-pages. Context should be flushed with QLPreviewRequestFlushContext()
 *      @param preview The preview request.
 *      @param mediaBox The media box of the context. see CGPDFContextCreate().
 *      @param auxiliaryInfo The PDF auxiliary info. see CGPDFContextCreate().
 *      @param properties Additional properties for the preview response.
 */
func QLPreviewRequestCreatePDFContext(preview: QLPreviewRequest!, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary!, _ properties: CFDictionary!) -> Unmanaged<CGContext>!

/*!
 *      @function QLPreviewRequestFlushContext
 *      @abstract Flush the context and sets the preview response.
 *      @param preview The preview request.
 *      @param context context previously created by QLPreviewRequestCreateContext() or QLPreviewRequestCreatePDFContext().
 */
func QLPreviewRequestFlushContext(preview: QLPreviewRequest!, _ context: CGContext!)

/*!
 *      @constant kQLPreviewPropertyMIMETypeKey
 *      @abstract Gives the web content or attachment mime type. For the main data, default is text/html. Value is a CFString.
 */
let kQLPreviewPropertyMIMETypeKey: CFString!

/*!
 *      @constant kQLPreviewPropertyTextEncodingNameKey
 *      @abstract Gives the web content or attachment text encoding. Use IANA encodings like UTF-8. Value is a CFString.
 */
let kQLPreviewPropertyTextEncodingNameKey: CFString!

/*!
 *      @constant kQLPreviewPropertyAttachmentDataKey
 *      @abstract Gives the attachment data. Value is a CFData.
 */
let kQLPreviewPropertyAttachmentDataKey: CFString!

/*!
 *      @constant kQLPreviewPropertyAttachmentsKey
 *      @abstract Gives the list of attachments (or sub-resources). Value is a CFDictionary.
 *      @discussion Keys are the attachment ids (CFStringRef) that can be referenced with "cid:id" URL and
 *                  Values are dictionaries using kQLPreviewPropertyAttachmentDataKey,
 *                  kQLPreviewPropertyMIMETypeKey and kQLPreviewPropertyTextEncodingNameKey keys.
 */
let kQLPreviewPropertyAttachmentsKey: CFString!

/*!
 *      @constant kQLPreviewContentIDScheme
 *      @abstract Is the "cid" URL scheme.
 */
let kQLPreviewContentIDScheme: CFString!
struct QLGeneratorInterfaceStruct {
  var _reserved: UnsafeMutablePointer<Void>
  var QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!
  var GenerateThumbnailForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!, CFURL!, CFString!, CFDictionary!, CGSize) -> OSStatus)!
  var CancelThumbnailGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!) -> Void)!
  var GeneratePreviewForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!, CFURL!, CFString!, CFDictionary!) -> OSStatus)!
  var CancelPreviewGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!) -> Void)!
  init()
  init(_reserved: UnsafeMutablePointer<Void>, QueryInterface: (@convention(c) (UnsafeMutablePointer<Void>, REFIID, UnsafeMutablePointer<LPVOID>) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, Release: (@convention(c) (UnsafeMutablePointer<Void>) -> ULONG)!, GenerateThumbnailForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!, CFURL!, CFString!, CFDictionary!, CGSize) -> OSStatus)!, CancelThumbnailGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLThumbnailRequest!) -> Void)!, GeneratePreviewForURL: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!, CFURL!, CFString!, CFDictionary!) -> OSStatus)!, CancelPreviewGeneration: (@convention(c) (UnsafeMutablePointer<Void>, QLPreviewRequest!) -> Void)!)
}
typealias QLThumbnailRef = QLThumbnail
func QLThumbnailGetTypeID() -> CFTypeID
@available(OSX 10.6, *)
func QLThumbnailCreate(allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<QLThumbnail>!
@available(OSX 10.6, *)
func QLThumbnailCopyDocumentURL(thumbnail: QLThumbnail!) -> Unmanaged<CFURL>!
@available(OSX 10.6, *)
func QLThumbnailGetMaximumSize(thumbnail: QLThumbnail!) -> CGSize
@available(OSX 10.6, *)
func QLThumbnailCopyOptions(thumbnail: QLThumbnail!) -> Unmanaged<CFDictionary>!
@available(OSX 10.6, *)
func QLThumbnailDispatchAsync(thumbnail: QLThumbnail!, _ queue: dispatch_queue_t!, _ completion: dispatch_block_t!)
@available(OSX 10.6, *)
func QLThumbnailCopyImage(thumbnail: QLThumbnail!) -> Unmanaged<CGImage>!
@available(OSX 10.6, *)
func QLThumbnailGetContentRect(thumbnail: QLThumbnail!) -> CGRect
@available(OSX 10.6, *)
func QLThumbnailCancel(thumbnail: QLThumbnail!)
@available(OSX 10.6, *)
func QLThumbnailIsCancelled(thumbnail: QLThumbnail!) -> Bool

/*!
 *      @function QLThumbnailImageCreate
 *      @abstract Creates a thumbnail for the designated file. Returns NULL if Quick Look does not support this file type.
 *      @param allocator The allocator to use to create the image.
 *      @param url The URL to the file.
 *      @param maxThumbnailSize The maximum desired size.
 *      @param options See options below.
 *      @result The thumbnail image. NULL if not available.
 *      @discussion QLThumbnailImageCreate() does not replace IconServices.
 *                  Also QLThumbnailImageCreate() will block until the thumbnail is generated so you should consider calling it in a thread.
 */
@available(OSX 10.5, *)
func QLThumbnailImageCreate(allocator: CFAllocator!, _ url: CFURL!, _ maxThumbnailSize: CGSize, _ options: CFDictionary!) -> Unmanaged<CGImage>!

/*!
 *      @constant kQLThumbnailOptionIconModeKey
 *      @abstract If kCFBooleanTrue, QL will produce an icon (ie a thumbnail and all the icon decor, like shadows, curled corner, etc.).
 */
let kQLThumbnailOptionIconModeKey: CFString!

/*!
 *      @constant kQLThumbnailOptionScaleFactorKey
 *      @abstract This is the user scale factor (as a CFNumber). If absent, default value is 1.0
 */
let kQLThumbnailOptionScaleFactorKey: CFString!
