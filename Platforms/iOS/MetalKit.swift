

/*!
 @constant MTKModelErrorDomain
 */
@available(iOS 9.0, *)
let MTKModelErrorDomain: String

/*!
 @constant MTKModelErrorKey
 */
@available(iOS 9.0, *)
let MTKModelErrorKey: String

/*!
 @class MTKMeshBufferAllocator
 @abstract Allocator passed to MDLAsset init method to load vertex and index data directly into Metal buffers.
 */
@available(iOS 9.0, *)
class MTKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {

  /*!
   @method initWithDevice
   @abstract Initialize the allocator with a device to be used to create buffers.
   @discussion The designated initializer for this class.
   */
  init(device: MTLDevice)

  /*!
   @property device
   @abstract Device used to create buffers.
   */
  var device: MTLDevice { get }

  /*!
   @method newZone:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param capacity Total size in bytes of all buffers which can be created from 
          this zone
   */
  @available(iOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone

  /*!
   @method newZoneForBuffersWithSize:andType:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param sizes Sizes of each buffer to be created in this zone
   @param types Type of each buffer to be created in this zone. Values to be of
                MDLMeshBufferType
   @discussion Will create a zone from which MDLMeshBuffer objects can be 
               allocated.  This will allocate a zone with enough capacity
               for each of the buffers with sizes and types specified even taking
               into any alignment restrictions necessary to use these buffers.
   */
  @available(iOS 9.0, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone

  /*!
   @method newBuffer:type:
   @abstract Create a buffer in a default zone
   @param length Size of buffer to be created in bytes
   @param type Type of data to be stored in this buffer
   */
  @available(iOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferWithData:type:
   @abstract Create a buffer in a default zone and fill with data in the supplied 
             NSData object
   @param data Memory to fill the buffer with
   @param type Type of data to be stored in this buffer
   */
  @available(iOS 9.0, *)
  func newBufferWith(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferFromZone:length:type:
   @abstract Create a buffer from a given zone with the given length
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the zone given.
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size.  Alternatively the implementation may return nil if the 
               buffer could not be allocated.
  
   */
  @available(iOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?

  /*!
   @method newBufferFromZone:data:type:
   @abstract Create a buffer from a given zone and fill with data in the supplied 
             NSData object
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the given zone
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size. Alternatively the implementation may return nil if the 
               buffer could not be allocated.
   */
  @available(iOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}

/*!
 @class MTKMeshBuffer
 @abstract Mesh buffer created by MTKMeshBufferAllocator when Model I/O needs to memory for vertex or index data backing.
 @discussion Memory backing these buffer are Metal buffers.  Model I/O will load index and vertex data from from a model asset directly in to the Metal buffer.
 */
@available(iOS 9.0, *)
class MTKMeshBuffer : NSObject, MDLMeshBuffer {

  /*!
   @method length
   @abstract Size in bytes of the buffer allocation.
   */
  var length: Int { get }

  /*!
   @property allocator
   @abstract Allocator object used to create this buffer.
   @discussion This allcoator is stored so that it can be used by Model I/O for copy and relayout operations (such as when a new vertex descriptor is applied to a vertex buffer).
   */
  var allocator: MTKMeshBufferAllocator { get }

  /*!
   @property buffer
   @abstract Metal Buffer backing vertex/index data.
   @discussion Many MTKMeshBuffers may reference the same buffer, but each with it's own offset.  (i.e. Many MTKMeshBuffers may be suballocated from a single buffer)
   */
  var buffer: MTLBuffer { get }

  /*!
   @property offset
   @abstract Byte offset of the data within the metal buffer.
   */
  var offset: Int { get }

  /*!
   @property type
   @abstract the intended type of the buffer
   */
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?

  /*!
   @method fillData:offset:
   @abstract Fills buffer with data at offset
   @param data Data to fill buffer with
   @param offset Byte offset in buffer to begin filling data
   @discussion Fills data.length bytes of data.  Will not write beyond length of 
               this buffer.
   */
  @available(iOS 9.0, *)
  func fill(data: NSData, offset: Int)

  /*!
   @method map
   @abstract CPU access to buffer's memory
   @return An MDLMeshBufferMap object to read or modify a buffer's memory
   @discussion The buffer will remain mapped as long as the returned MDLMeshBufferMap
               object exists. Mapping a buffer may impose restrictions on a system.
               For instance,  if the implementing class maps an OpenGL buffer, that
               buffer may be  unavailable for rendering while mapped, and cause a
               draw failure.  Precautions must be taken in such cases.
   */
  @available(iOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @class MTKSubmesh
 @abstract A segment of a mesh and properties to render the segement.
 @discussion Container for data that can be rendered in a single draw call. 1:1 mapping to MDLSubmesh.  Each submesh contains an index Buffer with which the parents mesh data can be rendered.  Actual vertex data resides in the submesh's parent MTKMesh object.
 */
@available(iOS 9.0, *)
class MTKSubmesh : NSObject {

  /*!
   @property primitiveType
   @abstract Metal primitive type with which to draw this object.
   @discussion Value to use for primitiveType parameter in a [MTLRenderCommandEncoder drawIndexedPrimitives] call.
   */
  var primitiveType: MTLPrimitiveType { get }

  /*!
   @property indexType
   @abstract Metal index type of data in indexBuffer.
   @discussion Value to use for indexType parameter in a [MTLRenderCommandEncoder drawIndexedPrimitives] call.
  
   */
  var indexType: MTLIndexType { get }

  /*!
   @property indexBuffer
   @abstract IndexBuffer (including indexCount) to render the object.
   @discussion The MTLBuffer to use for indexBuffer parameter in a [MTLRenderCommandEncoder drawIndexedPrimitives] call.
   */
  var indexBuffer: MTKMeshBuffer { get }

  /*!
   @property indexCount
   @abstract Number of indicies in indexBuffer.
   @discussion Value to use for indexCount parameter in a [MTLRenderCommandEncoder drawIndexedPrimitives] call.
  
   */
  var indexCount: Int { get }

  /*!
   @property mesh
   @abstract Parent MTKMesh object containing vertex data of this object.
   @discussion The buffer of this parent mesh should be set in the encoder before a drawIndexedPrimitives call is made.
   */
  weak var mesh: @sil_weak MTKMesh? { get }

  /*!
   @property name
   @abstract Name from the original MDLSubmesh object.
   @discussion Although not directly used by this object, the application may use this to identify the submesh in the renderer/scene/world.
   */
  var name: String
}

/*!
 @class MTKMesh
 @abstract Container for vertex data of a mesh and submeshes to render it.
 */
@available(iOS 9.0, *)
class MTKMesh : NSObject {

  /*!
   @method initWithMesh:device:error:
   @abstract Initialize the mesh and the mesh's submeshes.
   @param mesh Model I/O Mesh from which to create this MetalKit mesh
   @param device Metal device on which to create mesh resources
   @param error Pointer to an NSError object set if an error occurred
   @discussion The designated initializer for this class.  This does NOT initialize any meshes that are children of the Model I/O mesh, only submeshes that are part of the given mesh.  An exceiption is raise if vertexBuffer objects in the given mesh and the indexBuffer of any submesh in this mesh have not been created with a MTKMeshBufferAllocator object.  If a Submesh using MDLGeometryTypeQuads or MDLGeometryTypeTopology is used, that submesh will be copied, and recreated to use MDLGeometryTypeTriangles, before this routine creates the MTKSubmesh.
   */
  init(mesh: MDLMesh, device: MTLDevice) throws

  /*!
   @method newMeshesFromAsset:device:sourceMeshes:error:
   @abstract Initialize all meshes in a Model I/O asset.
   @param asset Model I/O asset from which to create MetalKit meshes
   @param device Metal device on which to create mesh resources
   @param sourceMeshes Array built by this method containing MDLMesh objects corresponding the returned MTKMesh objects
   @param error Pointer to an NSError object set if an error occurred
   @return MetalKit Meshes created from the Model I/O asset
   @discussion A convenience method to create MetalKit meshes from each mesh in a Model/IO asset.  Resulting meshes are returned while the Model I/O meshes from which they were generated will appear in the sourceMeshes array.  All vertexBuffer objects in each MDLMesh object in the asset and the indexBuffer of each submesh within each of these meshes must have been created using a MTKMeshBufferAllocator object.
   */
  class func newMeshesFrom(asset: MDLAsset, device: MTLDevice, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [MTKMesh]

  /*!
   @property vertexBuffers
   @abstract Array of buffers in which mesh vertex data resides.
   */
  var vertexBuffers: [MTKMeshBuffer] { get }

  /*!
   @property vertexDescriptor
   @abstract Model I/O vertex descriptor specifying the layout of data in vertexBuffers.
   @discussion This is not directly used by this object, but the application can use this information to determine rendering state or create a Metal vertex descriptor to build a RenderPipelineState object capable of interpreting data in 'vertexBuffers'.
   */
  var vertexDescriptor: MDLVertexDescriptor { get }

  /*!
   @property submeshes
   @abstract Submeshes containing index buffers to rendering mesh vertices.
   */
  var submeshes: [MTKSubmesh] { get }

  /*!
   @property vertexCount
   @abstract Number of vertices in the vertexBuffers.
   */
  var vertexCount: Int { get }

  /*!
   @property name
   @abstract Name of the mesh copies from the originating Model I/O mesh.
   @discussion Can be used by the app to identiry the mesh in its scene/world/renderer etc.
   */
  var name: String
}

/*!
 @function MTKModelIOVertexDescriptorFromMetal
 @abstract Partially converts a Metal vertex descriptor to a Model I/O vertex descriptor
 @discussion This method can only set vertex format, offset, bufferIndex, and stride information in the produced Model I/O vertex descriptor.  It does not add any semantic information such at attributes names.  Names must be set in the returned Model I/O vertex descriptor before it can be applied to a a Model I/O mesh.
 */
func MTKModelIOVertexDescriptorFromMetal(metalDescriptor: MTLVertexDescriptor) -> MDLVertexDescriptor

/*!
 @function MTKMetalVertexDescriptorFromModelIO
 @abstract Partially converts a Model I/O vertex descriptor to a Metal vertex descriptor
 @discussion This method can only set vertex format, offset, bufferIndex, and stride information in the produced Metal vertex descriptor. It simply copies attributes 1 for 1. Thus attributes in the given Model I/O vertex descriptor must be arranged in the correct order for the resulting descriptor to properly map mesh data to vertex shader inputs.  Layout stepFunction and stepRates for the resulting MTLVertexDescriptor must also be set by application.
 */
func MTKMetalVertexDescriptorFromModelIO(modelIODescriptor: MDLVertexDescriptor) -> MTLVertexDescriptor

/*!
 @function MTKModelIOVertexFormatFromMetal
 @abstract Converts a Metal vertex format to a Model I/O vertex format
 @return A Model I/O vertexformat correspoinding to the given Metal vertex format.  Returns MDLVertexFormatInvalid if no matching Model I/O vertex format exists.
 */
func MTKModelIOVertexFormatFromMetal(vertexFormat: MTLVertexFormat) -> MDLVertexFormat

/*!
@function MTKMetalVertexFormatFromModelIO
@abstract Converts a Model I/O vertex format to a Metal vertex format
@return A Metal vertexformat correspoinding to the given Model I/O vertex format.  Returns MTLVertexFormatInvalid if no matching Metal vertex format exists.
*/
func MTKMetalVertexFormatFromModelIO(vertexFormat: MDLVertexFormat) -> MTLVertexFormat

/*!
 @constant MTKTextureLoaderErrorDomain
 */
@available(iOS 9.0, *)
let MTKTextureLoaderErrorDomain: String

/*!
 @constant MTKTextureLoaderErrorKey
 */
@available(iOS 9.0, *)
let MTKTextureLoaderErrorKey: String

/*!
 @constant MTKTextureLoaderOptionAllocateMipmaps
 @abstract Identifier to be used in an options NSDictionary with a boolean NSNumber specifying whether to allocate memory for mipmaps when creating the texture
 @discussion If the boolean value specified with this string is true, the resulting Metal texture will have been created with mipmaps whose contents are undefined. It is the responsibility of the caller to fill out the contents of the mipmap data. However, if the file being loaded contains data for mipmaps (such as in a PVR or KTX file) this option does need to be specified. In those cases the mipmap memory will be allocated and the image data loaded.
 */
@available(iOS 9.0, *)
let MTKTextureLoaderOptionAllocateMipmaps: String

/*!
 @constant MTKTextureLoaderOptionSRGB
 @abstract Identifier to be used in an options NSDictionary with a boolean NSNumber specifying whether to create the texture with an sRGB (gamma corrected) pixel format
 @discussion If the boolean value specified with this string is true, the texture will be created with an sRGB pixel format regardless of whether the image file specifies that the data has already been gamma corrected. Likewise, if false, the texture will be created with a non-sRGB pixel format regardless of whether the image file specifies that the data has been gamma corrected. To use the sRGB information specified in the file, do not specify this in the options dictionary.
 */
@available(iOS 9.0, *)
let MTKTextureLoaderOptionSRGB: String

/*!
 @constant MTKTextureLoaderOptionTextureUsage
 @abstract Identifier to be used with an NSNumber specifying the MTLTextureUsage flags
 @discussion The resulting Metal texture will be created with the MTLTextureUsage flags indicated by the NSNumber associated with this string.
 */
@available(iOS 9.0, *)
let MTKTextureLoaderOptionTextureUsage: String

/*!
 @constant MTKTextureLoaderOptionTextureCPUCacheMode
 @abstract Identifier to be used with an NSNumber specifying the MTLCPUCacheMode
 @discussion The resulting Metal texture will be created with the MTLCPUCacheMode indicated by the NSNumber associated with this string.
 */
@available(iOS 9.0, *)
let MTKTextureLoaderOptionTextureCPUCacheMode: String
typealias MTKTextureLoaderCallback = (MTLTexture?, NSError?) -> Void

/*!
 @class MTKTextureLoader
 @abstract Load Metal textures from files with the device specified at initialization
 */
@available(iOS 9.0, *)
class MTKTextureLoader : NSObject {

  /*!
   @property device
   @abstract Metal device with which to create Metal textures
   */
  var device: MTLDevice { get }

  /*!
   @method initWithDevice:
   @abstract Initialize the loader
   @param device Metal device with which to create Metal textures
   */
  init(device: MTLDevice)

  /*!
   @method newTextureWithContentsOfURL:options:completionHandler:
   @abstract Asynchronously create a Metal texture and load image data from the file at URL
   @param URL Location of image file from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param completionHandler Block called when the texture has been loaded and fully initialized
   */
  func newTextureWithContentsOf(URL: NSURL, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)

  /*!
   @method newTextureWithData:options:completionHandler:
   @abstract Asynchronously create a Metal texture and load image data from the NSData object provided
   @param data NSData object containing image file data from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param completionHandler Block called when texture has been loaded and fully initialized
   */
  func newTextureWith(data: NSData, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)

  /*!
   @method newTextureWithCGImage:options:completionHandler:
   @abstract Asynchronously create a Metal texture and load image data from the given CGImageRef
   @param cgImage CGImageRef containing image data from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param completionHandler Block called when texture has been loaded and fully initialized
   */
  func newTextureWith(cgImage: CGImage, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)

  /*!
   @method newTextureWithContentsOfURL:options:error:
   @abstract Synchronously create a Metal texture and load image data from the file at URL
   @return The Metal texture. nil if an error occured
   @param URL Location of image file from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param error Pointer to an autoreleased NSError object which will be set if an error occurred
   */
  func newTextureWithContentsOf(URL: NSURL, options: [String : NSNumber]?) throws -> MTLTexture

  /*!
   @method newTextureWithData:options:error:
   @abstract Synchronously create a Metal texture and load image data from the NSData object provided
   @return The Metal texture. nil if an error occured
   @param data NSData object containing image file data from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param error Pointer to an autoreleased NSError object which will be set if an error occurred
   */
  func newTextureWith(data: NSData, options: [String : NSNumber]?) throws -> MTLTexture

  /*!
   @method newTextureWithCGImage:options:error:
   @abstract Synchronously create a Metal texture and load image data from the given CGImageRef
   @return The Metal texture. nil if an error occured
   @param cgImage CGImageRef containing image data from which to create the texture
   @param options Dictonary of MTKTextureLoaderOptions
   @param error Pointer to an autoreleased NSError object which will be set if an error occurred
   */
  func newTextureWith(cgImage: CGImage, options: [String : NSNumber]?) throws -> MTLTexture
}

/*!
 @class MTKView
 @abstract View for rendering metal content
 */
@available(iOS 9.0, *)
class MTKView : UIView, NSCoding {

  /*!
   @method initWithFrame:device
   @abstract Initalize the view with a frame and device
   @param frameRect The frame rectangle for the created view object.
   @param device The MTLDevice to be used by the view to create Metal objects
   */
  init(frame frameRect: CGRect, device: MTLDevice?)

  /*!
   @method initWithCoder:
   @abstract Returns a view initalized from data in a given unarchiver
   @param coder An unarchiver object
   */
  init(coder: NSCoder)

  /*!
   @property delegate
   @abstract The delegate handling common view operations
   */
  weak var delegate: @sil_weak MTKViewDelegate?

  /*!
   @property device
   @abstract The MTLDevice used to create Metal objects
   @discussion This must be explicitly set by the application unless it was passed into the initializer. Defaults to nil
    */
  var device: MTLDevice?

  /*!
   @property currentDrawable
   @abstract The drawable to be used for the current frame.
   @discussion currentDrawable is updated at the end -draw (i.e. after the delegate's drawInMTKView method is called)
   */
  var currentDrawable: CAMetalDrawable? { get }

  /*!
   @property framebufferOnly
   @abstract If the currentDrawable can be used for sampling or texture read operations
   @discussion This defaults to YES. This property controls whether or not the returned drawables' MTLTextures may only be used for framebuffer attachments (YES) or whether they may also be used for texture sampling and pixel read/write operations (NO). A value of YES allows the CAMetalLayer to allocate the MTLTexture objects in ways that are optimized for display purposes that makes them unsuitable for sampling. The recommended value for most applications is YES.
   */
  var isFramebufferOnly: Bool

  /*!
   @property presentsWithTransaction
   @abstract If the layer should be presented synchronously
   @discussion Defaults to NO. When NO, changes to the layer's render buffer appear on-screen asynchronously to normal layer updates. When YES, changes to the MTL content are sent to the screen via the standard CATransaction mechanisms.
  */
  var presentsWithTransaction: Bool

  /*!
   @property colorPixelFormat
   @abstract The pixelFormat for the drawable's texture
   */
  var colorPixelFormat: MTLPixelFormat

  /*!
   @property depthStencilPixelFormat
   @abstract The pixelFormat used to create depthStencilTexture
   */
  var depthStencilPixelFormat: MTLPixelFormat

  /*!
   @property sampleCount
   @abstract The sample count used to to create multisampleColorTexture
   @discussion This defaults to 1.  If sampleCount is greater than 1 a multisampled color texture will be created and the currentDrawable's texture will be set as the resolve texture in the currentRenderPassDescriptor and the store action will be set to MTLStoreActionMultisampleResolve
   */
  var sampleCount: Int

  /*!
   @property clearColor
   @abstract The clear color value used to generate the currentRenderPassDescriptor
   @discussion This defaults to (0.0, 0.0, 0.0, 1.0)
   */
  var clearColor: MTLClearColor

  /*!
   @property clearDepth
   @abstract The clear depth value used to generate the currentRenderPassDescriptor
   @discussion This defaults to 1.0
   */
  var clearDepth: Double

  /*!
   @property clearStencil
   @abstract The clear stencil value used to generate currentRenderPassDescriptor
   @discussion This defaults to 0
   */
  var clearStencil: UInt32

  /*!
   @property depthStencilTexture
   @abstract A packed depth and stencil texture to be attached to a MTLRenderPassDescriptor
   @discussion The view will generate the depth buffer using the specified depthPixelFormat.  This will be nil if depthStencilPixelFormat is MTLPixelFormatInvalid.
   */
  var depthStencilTexture: MTLTexture? { get }

  /*!
   @property multisampleColorTexture
   @abstract A multisample color texture that will be resolved into the currentDrawable's texture
   @discussion The view will generate the multisample color buffer using the specified colorPixelFormat.  This will be nil if sampleCount is less than or equal to 1.
   */
  var multisampleColorTexture: MTLTexture? { get }

  /*!
   @method releaseDrawables
   @abstract Release the depthStencilTexture and multisampleColorTexture
   @discussion Can be called by the app to release the textures in order to conserve memory when it goes into the background
   */
  func releaseDrawables()

  /*!
   @property currentRenderPassDescriptor
   @abstract A render pass descriptor generated from the currentDrawable's texture and the view's depth, stencil, and sample buffers and clear values.
   @discussion This is a convience property.  The view does not use this descriptor and there is no requirement for an app to use this descriptor.
   */
  var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }

  /*!
   @property preferredFramesPerSecond
   @abstract The rate you want the view to redraw its contents.
   @discussion When your application sets its preferred frame rate, the view chooses a frame rate as close to that as possible based on the capabilities of the screen the view is displayed on. The actual frame rate chosen is usually a factor of the maximum refresh rate of the screen to provide a consistent frame rate. For example, if the maximum refresh rate of the screen is 60 frames per second, that is also the highest frame rate the view sets as the actual frame rate. However, if you ask for a lower frame rate, it might choose 30, 20, 15 or some other factor to be the actual frame rate. Your application should choose a frame rate that it can consistently maintain. The default value is 60 frames per second.
   */
  var preferredFramesPerSecond: Int

  /*!
    @property enableSetNeedsDisplay
    @abstract Controls whether the view responds to setNeedsDisplay.
    @discussion If true, then the view behaves similarily to a UIView or NSView, responding to calls to setNeedsDisplay. When the view has been marked for display, the view is automatically redisplayed on each pass through the application’s event loop. Setting enableSetNeedsDisplay to true will also pause the MTKView's internal render loop and updates will instead be event driven. The default value is false.
   */
  var enableSetNeedsDisplay: Bool

  /*!
   @property autoResizeDrawable
   @abstract Controls whether to resize the drawable as the view changes size.
   @discussion If true, the size of the currentDrawable's texture, depthStencilTexture, and multisampleColorTexture will automatically resize as the view resizes.  If false, these textures will take on the size of drawableSize and drawaableSize will not change. The default value is true.
   */
  var isAutoResizeDrawable: Bool

  /*!
   @property drawableSize
   @abstract The current size of drawable textures
   @discussion The size currentDrawable's texture, depthStencilTexture, and multisampleColorTexture.  If autoResizeDrawable is true this value will be updated as the view's size changes. If autoResizeDrawable is false, this can be set to fix the size of the drawable textures.
   */
  var drawableSize: CGSize

  /*!
   @property paused
   @abstract Controls whether the draw methods should countinue at preferredFramesPerSecond
   @discussion If true, the delegate will receive drawInMTKView: messages or the subclass will receive drawRect: messages at a rate of preferredFramesPerSecond based on an internal timer. The default value is false.
   */
  var isPaused: Bool

  /*!
   @method draw
   @abstract Manually ask the view to draw new contents. This causes the view to call either the drawInMTKView (delegate) or drawRect (subclass) method.
   @discussion Manually ask the view to draw new contents. This causes the view to call either the drawInMTKView (delegate) or drawRect (subclass) method. This should be used when the view's paused proprety is set to true and enableSetNeedsDisplay is set to false.
   */
  func draw()
  convenience init(frame: CGRect)
  convenience init()
}

/*!
 @class MTKViewDelegate
 @abstract Allows an object to render into the view and respond to resize events
 */
@available(iOS 9.0, *)
protocol MTKViewDelegate : NSObjectProtocol {

  /*!
   @method mtkView:drawableSizeWillChange:
   @abstract Called whenever the drawableSize of the view will change
   @discussion Delegate can recompute view and projection matricies or regenerate any buffers to be compatible with the new view size or resolution
   @param view MTKView which called this method
   @param size New drawable size in pixels
   */
  func mtkView(view: MTKView, drawableSizeWillChange size: CGSize)

  /*!
   @method drawInMTKView:
   @abstract Called on the delegate when it is asked to render into the view
   @discussion Called on the delegate when it is asked to render into the view
   */
  func drawIn(view: MTKView)
}
