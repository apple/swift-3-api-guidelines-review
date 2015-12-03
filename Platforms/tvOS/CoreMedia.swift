
typealias CMAttachmentBearerRef = CMAttachmentBearer
typealias CMAttachmentMode = UInt32
var kCMAttachmentMode_ShouldNotPropagate: CMAttachmentMode { get }
var kCMAttachmentMode_ShouldPropagate: CMAttachmentMode { get }

/*!
    @function   CMSetAttachment
    @abstract   Sets or adds a attachment of a CMAttachmentBearer
    @discussion You can attach any CF object to a CMAttachmentBearer object to store additional information. CMSetAttachment stores an attachment identified by a key. If the key doesn't exist, the attachment will be added. If the key does exist, the existing attachment will be replaced. In both cases the retain count of the attachment will be incremented. The value can be any CFType but nil has no defined behavior.  Given a CVBufferRef, CMSetAttachment is equivalent to CVBufferSetAttachment.
    @param      target  Target CMAttachmentBearer.
    @param      key     Key in form of a CFString identifying the desired attachment.
    @param      value	Attachment in form af a CF object.
    @param      attachmentMode	Specifies which attachment mode is desired for this attachment.   A particular attachment key may only exist in
                                a single mode at a time.
*/
@available(tvOS 4.0, *)
func CMSetAttachment(target: CMAttachmentBearer, _ key: CFString, _ value: AnyObject?, _ attachmentMode: CMAttachmentMode)

/*!
    @function   CMGetAttachment
    @abstract   Returns a specific attachment of a CMAttachmentBearer
    @discussion You can attach any CF object to a CMAttachmentBearer to store additional information. CMGetAttachment retrieves an attachment identified by a key.  Given a CVBufferRef, CMGetAttachment is equivalent to CVBufferGetAttachment.
    @param      target  Target CMAttachmentBearer.
    @param      key	Key in form of a CFString identifying the desired attachment.
    @param      attachmentModeOut.  Returns the mode of the attachment, if desired.  May be NULL.
    @result     If found the attachment object; else NULL.
*/
@available(tvOS 4.0, *)
func CMGetAttachment(target: CMAttachmentBearer, _ key: CFString, _ attachmentModeOut: UnsafeMutablePointer<CMAttachmentMode>) -> AnyObject?

/*!
    @function   CMRemoveAttachment
    @abstract   Removes a specific attachment of a CMAttachmentBearer
    @discussion CMRemoveAttachment removes an attachment identified by a key. If found the attachment is removed and the retain count decremented.  Given a CVBufferRef, CMRemoveAttachment is equivalent to CVBufferRemoveAttachment.
    @param      target  Target CMAttachmentBearer.
    @param      key	Key in form of a CFString identifying the desired attachment.
*/
@available(tvOS 4.0, *)
func CMRemoveAttachment(target: CMAttachmentBearer, _ key: CFString)

/*!
    @function   CMRemoveAllAttachments
    @abstract   Removes all attachments of a CMAttachmentBearer
    @discussion While CMRemoveAttachment removes a specific attachment identified by a key CMRemoveAllAttachments removes all attachments of a buffer and decrements their retain counts.  Given a CVBufferRef, CMRemoveAllAttachments is equivalent to CVBufferRemoveAllAttachments.
    @param      target  Target CMAttachmentBearer.
*/
@available(tvOS 4.0, *)
func CMRemoveAllAttachments(target: CMAttachmentBearer)

/*!
    @function   CMCopyDictionaryOfAttachments
    @abstract   Returns all attachments of a CMAttachmentBearer
    @discussion CMCopyDictionaryOfAttachments is a convenience call that returns all attachments with their corresponding keys in a new CFDictionary that the caller must dispose by calling CFRelease.  Given a CVBufferRef, CMCopyDictionaryOfAttachments is similar to CVBufferGetAttachments, except that CVBufferGetAttachments returns a CFDictionary that may change if attachments are added later.
    @param      allocator  Allocator for the new dictionary; pass kCFAllocatorDefault or NULL to use the default allocator.
    @param      target  Target CMAttachmentBearer.
    @result     A CFDictionary with all buffer attachments identified by there keys. If no attachment is present, NULL is returned.  Returns NULL
		for invalid attachment mode.
*/
@available(tvOS 4.0, *)
func CMCopyDictionaryOfAttachments(allocator: CFAllocator?, _ target: CMAttachmentBearer, _ attachmentMode: CMAttachmentMode) -> CFDictionary?

/*!
    @function   CMSetAttachments
    @abstract   Sets a set of attachments for a CMAttachmentBearer
    @discussion CMSetAttachments is a convenience call that in turn calls CMSetAttachment for each key and value in the given dictionary. All key value pairs must be in the root level of the dictionary.  Given a CVBufferRef, CMSetAttachments is equivalent to CVBufferSetAttachments.
    @param      target  Target CMAttachmentBearer.
*/
@available(tvOS 4.0, *)
func CMSetAttachments(target: CMAttachmentBearer, _ theAttachments: CFDictionary, _ attachmentMode: CMAttachmentMode)

/*!
    @function   CMPropagateAttachments
    @abstract   Copy all propagatable attachments from one buffer to another.
    @discussion CMPropagateAttachments is a convenience call that copies all attachments with a mode of kCMAttachmentMode_ShouldPropagate from one
                buffer to another.  Given a CVBufferRef, CMPropagateAttachments is equivalent to CVBufferPropagateAttachments.
    @param      source  CMAttachmentBearer to copy attachments from.
    @param      destination  CMAttachmentBearer to copy attachments to.
*/
@available(tvOS 4.0, *)
func CMPropagateAttachments(source: CMAttachmentBearer, _ destination: CMAttachmentBearer)

/*!
	@function	CMAudioClockCreate
	@abstract	Creates a clock that advances at the same rate as audio output.
	@discussion
		This clock will not drift from audio output, but may drift from CMClockGetHostTimeClock().
		When audio output is completely stopped, the clock continues to advance, tracking CMClockGetHostTimeClock() 
		until audio output starts up again.
		This clock is suitable for use as AVPlayer.masterClock when synchronizing video-only playback 
		with audio played through other APIs or objects.
	@param	allocator
		A CFAllocator to use to allocate the clock.  
		Pass kCFAllocatorDefault or NULL to use the default allocator.
	@param	clockOut
		Points to a CMClockRef to receive the newly created clock.
		The caller is responsible for calling CFRelease to release this clock.
*/
@available(tvOS 6.0, *)
func CMAudioClockCreate(allocator: CFAllocator?, _ clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
typealias CMItemCount = Int
typealias CMItemIndex = Int
var COREMEDIA_DECLARE_NULLABILITY: Int32 { get }
var COREMEDIA_DECLARE_NULLABILITY_BEGIN_END: Int32 { get }
var COREMEDIA_DECLARE_BRIDGED_TYPES: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_RETAINED: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_RETAINED_ON_PARAMETERS: Int32 { get }
var COREMEDIA_DECLARE_RETURNS_NOT_RETAINED_ON_PARAMETERS: Int32 { get }
typealias CMPersistentTrackID = Int32
var kCMPersistentTrackID_Invalid: CMPersistentTrackID { get }
var kCMBlockBufferNoErr: OSStatus { get }
var kCMBlockBufferStructureAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBlockAllocationFailedErr: OSStatus { get }
var kCMBlockBufferBadCustomBlockSourceErr: OSStatus { get }
var kCMBlockBufferBadOffsetParameterErr: OSStatus { get }
var kCMBlockBufferBadLengthParameterErr: OSStatus { get }
var kCMBlockBufferBadPointerParameterErr: OSStatus { get }
var kCMBlockBufferEmptyBBufErr: OSStatus { get }
var kCMBlockBufferUnallocatedBlockErr: OSStatus { get }
var kCMBlockBufferInsufficientSpaceErr: OSStatus { get }

/*!
	@typedef CMBlockBufferFlags
	Type used for parameters containing CMBlockBuffer feature and control flags
*/
typealias CMBlockBufferFlags = UInt32
var kCMBlockBufferAssureMemoryNowFlag: CMBlockBufferFlags { get }
var kCMBlockBufferAlwaysCopyDataFlag: CMBlockBufferFlags { get }
var kCMBlockBufferDontOptimizeDepthFlag: CMBlockBufferFlags { get }
var kCMBlockBufferPermitEmptyReferenceFlag: CMBlockBufferFlags { get }

/*!
	@typedef CMBlockBufferRef
	A reference to a CMBlockBuffer, a CF object that adheres to retain/release semantics. When CFRelease() is performed
	on the last reference to the CMBlockBuffer, any referenced BlockBuffers are released and eligible memory blocks are
	deallocated. These operations are recursive, so one release could result in many follow on releses.
*/
typealias CMBlockBufferRef = CMBlockBuffer

/*!
	@typedef CMBlockBufferCustomBlockSource
	Used with functions that accept a memory block allocator, this structure allows a client to provide a custom facility for
	obtaining the memory block to be used in a CMBlockBuffer. The Allocate function must be non-zero if the CMBlockBuffer code will
	need to call for allocation (not required if a previously-obtained memory block is provided to the CMBlockBuffer API). The
	Free() routine, if non-NULL, will be called once when the CMBlockBuffer is disposed. It will not be called if no memory block
	is ever allocated or supplied. The refCon will be passed to both the Allocate and Free() calls. The client is responsible for
	its disposal (if any) during the Free() callback.
*/
struct CMBlockBufferCustomBlockSource {
  var version: UInt32
  var AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?
  var FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version: UInt32, AllocateBlock: (@convention(c) (UnsafeMutablePointer<Void>, Int) -> UnsafeMutablePointer<Void>)?, FreeBlock: (@convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Void)?, refCon: UnsafeMutablePointer<Void>)
}
var kCMBlockBufferCustomBlockSourceVersion: UInt32 { get }

/*!
	@function	CMBlockBufferCreateEmpty
	
	@abstract	Creates an empty CMBlockBuffer
	@discussion	Creates an empty CMBlockBuffer, i.e. one which has no memory block nor reference to a CMBlockBuffer
				supplying bytes to it. It is ready to be populated using CMBlockBufferAppendMemoryBlock()
				and/or CMBlockBufferAppendBufferReference(). CMBlockBufferGetDataLength() will return zero for
				an empty CMBlockBuffer and CMBlockBufferGetDataPointer() and CMBlockBufferAssureBufferMemory() will fail.
				The memory for the CMBlockBuffer object will be allocated using the given allocator.
				If NULL is passed for the allocator, the default allocator is used.

	@param	structureAllocator	Allocator to use for allocating the CMBlockBuffer object. NULL will cause the
								default allocator to be used.
	@param	subBlockCapacity	Number of subBlocks the newBlockBuffer shall accommodate before expansion occurs.
								A value of zero means "do the reasonable default"
	@param	flags				Feature and control flags
	@param	newBBufOut			Receives newly-created empty CMBlockBuffer object with retain count of 1. Must not be  NULL.
	
	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferCreateEmpty(structureAllocator: CFAllocator?, _ subBlockCapacity: UInt32, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMBlockBufferCreateWithMemoryBlock
	
	@abstract	Creates a new CMBlockBuffer backed by a memory block (or promise thereof). 
	@discussion Creates a new CMBlockBuffer backed by a memory block. The memory block may be statically allocated, dynamically allocated
	using the given allocator (or customBlockSource) or not yet allocated. The returned CMBlockBuffer may be further expanded using
	CMBlockBufferAppendMemoryBlock() and/or CMBlockBufferAppendBufferReference(). 

	If the kCMBlockBufferAssureMemoryNowFlag is set in the flags parameter, the memory block is allocated immediately using the blockAllocator or
	customBlockSource. 
				
	@param	structureAllocator	Allocator to use for allocating the CMBlockBuffer object. NULL will cause the
								default allocator to be used.
	@param	memoryBlock			Block of memory to hold buffered data. If NULL, a memory block will be allocated when needed (via a call
								to CMBlockBufferAssureBlockMemory()) using the provided blockAllocator or customBlockSource. If non-NULL,
								the block will be used and will be deallocated when the new CMBlockBuffer is finalized (i.e. released for
								the last time).
	@param	blockLength			Overall length of the memory block in bytes. Must not be zero. This is the size of the
								supplied memory block or the size to allocate if memoryBlock is NULL.
	@param	blockAllocator		Allocator to be used for allocating the memoryBlock, if memoryBlock is NULL. If memoryBlock is non-NULL,
								this allocator will be used to deallocate it if provided. Passing NULL will cause the default allocator
								(as set at the time of the call) to be used. Pass kCFAllocatorNull if no deallocation is desired.
	@param	customBlockSource	If non-NULL, it will be used for the allocation and freeing of the memory block (the blockAllocator
								parameter is ignored). If provided, and the memoryBlock parameter is NULL, its Allocate() routine must
								be non-NULL. Allocate will be called once, if successful, when the memoryBlock is allocated. Free() will
								be called once when the CMBlockBuffer is disposed.
	@param	offsetToData		Offset within the memoryBlock at which the CMBlockBuffer should refer to data.
	@param	dataLength			Number of relevant data bytes, starting at offsetToData, within the memory block.
	@param	flags				Feature and control flags
	@param	newBBufOut			Receives newly-created CMBlockBuffer object with a retain count of 1. Must not be  NULL.

	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferCreateWithMemoryBlock(structureAllocator: CFAllocator?, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMBlockBufferCreateWithBufferReference
	
	@abstract	Creates a new CMBlockBuffer that refers to another CMBlockBuffer.
	@discussion Creates a new CMBlockBuffer that refers to (a possibly subset portion of) another CMBlockBuffer.
				The returned CMBlockBuffer may be further expanded using CMBlockBufferAppendMemoryBlock() and/or CMBlockBufferAppendBufferReference(). 

	@param	structureAllocator	Allocator to use for allocating the CMBlockBuffer object. NULL will cause the
								default allocator to be used.
	@param	targetBuffer		CMBlockBuffer to refer to. This parameter must not be NULL. Unless the kCMBlockBufferPermitEmptyReferenceFlag
								is passed, it must not be empty and it must have a data length at least large enough to supply the data subset
								specified (i.e. offsetToData+dataLength bytes).
	@param	offsetToData		Offset within the target CMBlockBuffer at which the new CMBlockBuffer should refer to data.
	@param	dataLength			Number of relevant data bytes, starting at offsetToData, within the target CMBlockBuffer.
	@param	flags				Feature and control flags
	@param	newBBufOut			Receives newly-created CMBlockBuffer object with a retain count of 1. Must not be  NULL.

	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferCreateWithBufferReference(structureAllocator: CFAllocator?, _ targetBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMBlockBufferCreateContiguous
	
	@abstract	Produces a CMBlockBuffer containing a contiguous copy of or reference to the data specified by the parameters.
	@discussion	Produces a CMBlockBuffer containing a contiguous copy of or reference to the data specified by the parameters.
				The resulting new CMBlockBuffer may contain an allocated copy of the data, or may contain a contiguous CMBlockBuffer reference. 

				If the kCMBlockBufferAlwaysCopyDataFlag is set in the flags parameter, the resulting CMBlockBuffer will contain an allocated
				copy of the data rather than a reference to theSourceBuffer. 

	@param	structureAllocator	Allocator to use for allocating the CMBlockBuffer object. NULL will cause the
								default allocator to be used.
	@param	theSourceBuffer		CMBlockBuffer from which data will be copied or referenced. Must not be NULL nor empty,
	@param	blockAllocator		Allocator to be used for allocating the memoryBlock if a contiguous copy of the data is to be made. Passing NULL will cause the default
								allocator (as set at the time of the call) to be used.
	@param	customBlockSource	If non-NULL, it will be used for the allocation and freeing of the memory block (the blockAllocator
								parameter is ignored). If provided, and the memoryBlock parameter is NULL, its Allocate() routine must
								be non-NULL. Allocate will be called once, if successful, when the memoryBlock is allocated. Free() will
								be called once when the CMBlockBuffer is disposed.
	@param	offsetToData		Offset within the source CMBlockBuffer at which the new CMBlockBuffer should obtain data.
	@param	dataLength			Number of relevant data bytes, starting at offsetToData, within the source CMBlockBuffer. If zero, the
								target buffer's total available dataLength (starting at offsetToData) will be referenced.
	@param	flags				Feature and control flags
	@param	newBBufOut			Receives newly-created CMBlockBuffer object with a retain count of 1. Must not be  NULL.
	
	@result	Returns kCMBlockBufferNoErr if successful
*/
@available(tvOS 4.0, *)
func CMBlockBufferCreateContiguous(structureAllocator: CFAllocator?, _ sourceBuffer: CMBlockBuffer, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags, _ newBBufOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMBlockBufferGetTypeID
	
	@abstract	Obtains the CoreFoundation type ID for the CMBlockBuffer type.
	@discussion	Obtains the CoreFoundation type ID for the CMBlockBuffer type.
	
	@result	Returns the CFTypeID corresponding to CMBlockBuffer.
*/
@available(tvOS 4.0, *)
func CMBlockBufferGetTypeID() -> CFTypeID

/*!
	@function	CMBlockBufferAppendMemoryBlock
	
	@abstract	Adds a memoryBlock to an existing CMBlockBuffer.
	@discussion	Adds a memoryBlock to an existing CMBlockBuffer. The memory block may be statically allocated,
				dynamically allocated using the given allocator or not yet allocated. The CMBlockBuffer's total
				data length will be increased by the specified dataLength. 

				If the kCMBlockBufferAssureMemoryNowFlag is set in the flags parameter, the memory block is
				allocated immediately using the blockAllocator or customBlockSource. Note that append operations
				are not thread safe, so care must be taken when appending to BlockBuffers that are used by multiple threads.

	@param	theBuffer		CMBlockBuffer to which the new memoryBlock will be added. Must not be NULL
	@param	memoryBlock		Block of memory to hold buffered data. If NULL, a memory block will be allocated when needed
							(via a call to CMBlockBufferAssureBlockMemory()) using the provided blockAllocator or customBlockSource.
							If non-NULL, the block will be used and will be deallocated when the CMBlockBuffer is finalized (i.e. released
							for the last time).
	@param	blockLength		Overall length of the memory block in bytes. Must not be zero. This is the size of the supplied
							memory block or the size to allocate if memoryBlock is NULL.
	@param	blockAllocator	Allocator to be used for allocating the memoryBlock, if memoryBlock is NULL. If memoryBlock is
							non-NULL, this allocator will be used to deallocate it if provided. Passing NULL will cause
							the default allocator (as set at the time of the call) to be used. Pass kCFAllocatorNull if no
							deallocation is desired.
	@param	customBlockSource	If non-NULL, it will be used for the allocation and freeing of the memory block (the blockAllocator
								parameter is ignored). If provided, and the memoryBlock parameter is NULL, its Allocate() routine must
								be non-NULL. Allocate will be called once, if successful, when the memoryBlock is allocated. Free() will
								be called once when the CMBlockBuffer is disposed.
	@param	offsetToData	Offset within the memoryBlock at which the CMBlockBuffer should refer to data.
	@param	dataLength		Number of relevant data bytes, starting at offsetToData, within the memory block.
	@param	flags			Feature and control flags

	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferAppendMemoryBlock(theBuffer: CMBlockBuffer, _ memoryBlock: UnsafeMutablePointer<Void>, _ blockLength: Int, _ blockAllocator: CFAllocator?, _ customBlockSource: UnsafePointer<CMBlockBufferCustomBlockSource>, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus

/*!
	@function	CMBlockBufferAppendBufferReference
	
	@abstract	Adds a CMBlockBuffer reference to an existing CMBlockBuffer.
	@discussion	Adds a buffer reference to (a possibly subset portion of) another CMBlockBuffer to an existing CMBlockBuffer.
				The CMBlockBuffer's total data length will be increased by the specified dataLength. Note that append operations
				are not thread safe, so care must be taken when appending to BlockBuffers that are used by multiple threads.

	@param	theBuffer		CMBlockBuffer to which the new CMBlockBuffer reference will be added. Must not be NULL
	@param	targetBuffer	CMBlockBuffer to refer to. This parameter must not be NULL. Unless the kCMBlockBufferPermitEmptyReferenceFlag
							is passed, it must not be empty and it must have a data length at least large enough to supply the data subset
							specified (i.e. offsetToData+dataLength bytes).
	@param	offsetToData	Offset within the target CMBlockBuffer at which the CMBlockBuffer should refer to data.
	@param	dataLength		Number of relevant data bytes, starting at offsetToData, within the target CMBlockBuffer. If zero, the target
							buffer's total available dataLength (starting at offsetToData) will be referenced.
	@param	flags			Feature and control flags

	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferAppendBufferReference(theBuffer: CMBlockBuffer, _ targetBBuf: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ flags: CMBlockBufferFlags) -> OSStatus

/*!
	@function	CMBlockBufferAssureBlockMemory
	
	@abstract	Assures all memory blocks in a CMBlockBuffer are allocated.
	@discussion	Traverses the possibly complex CMBlockBuffer, allocating the memory for any constituent
				memory blocks that are not yet allocated.

	@param	theBuffer		CMBlockBuffer to operate on. Must not be NULL

	@result	Returns kCMBlockBufferNoErr if successful.
*/
@available(tvOS 4.0, *)
func CMBlockBufferAssureBlockMemory(theBuffer: CMBlockBuffer) -> OSStatus

/*!
	@function	CMBlockBufferAccessDataBytes
	
	@abstract	Accesses potentially noncontiguous data in a CMBlockBuffer.
	@discussion	Used for accessing potentially noncontiguous data, this routine will return a pointer directly
				into the given CMBlockBuffer if possible, otherwise the data will be assembled and copied into the
				given temporary block and its pointer will be returned. 


	@param	theBuffer		CMBlockBuffer to operate on. Must not be NULL
	@param	offset			Offset within the CMBlockBuffer's offset range.
	@param	length			Desired number of bytes to access at offset
	@param	temporaryBlock	A piece of memory, assumed to be at least length bytes in size. Must not be NULL
	@param	returnedPointer	Receives NULL if the desired amount of data could not be accessed at the given offset.
							Receives non-NULL if it could. The value returned will either be a direct pointer into
							the CMBlockBuffer or temporaryBlock Must not be NULL.
							
	@result	Returns kCMBlockBufferNoErr if the desired amount of data could be accessed at the given offset.
*/
@available(tvOS 4.0, *)
func CMBlockBufferAccessDataBytes(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int, _ temporaryBlock: UnsafeMutablePointer<Void>, _ returnedPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus

/*!
	@function	CMBlockBufferCopyDataBytes
	
	@abstract	Copies bytes from a CMBlockBuffer into a provided memory area.
	@discussion	This function is used to copy bytes out of a CMBlockBuffer into a provided piece of memory.
				It deals with the possibility of the desired range of data being noncontiguous. The function
				assumes that the memory at the destination is sufficient to hold the data. If length bytes
				of data are not available in the CMBlockBuffer, an error is returned and the contents of the
				destination are undefined. 
				
	@param	theSourceBuffer	The buffer from which data will be  copied into the destination
	@param	offsetToData	Offset within the source CMBlockBuffer at which the copy should begin.
	@param	dataLength		Number of bytes to copy, starting at offsetToData, within the source CMBlockBuffer. Must not be zero.
	@param	destination		Memory into which the data should be copied.
	
	@result	Returns kCMBlockBufferNoErr if the copy succeeded, returns an error otherwise.
*/
@available(tvOS 4.0, *)
func CMBlockBufferCopyDataBytes(theSourceBuffer: CMBlockBuffer, _ offsetToData: Int, _ dataLength: Int, _ destination: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	CMBlockBufferReplaceDataBytes
	
	@abstract	Copies bytes from a given memory block into a CMBlockBuffer, replacing bytes in the underlying data blocks
	@discussion	This function is used to replace bytes in a CMBlockBuffer's memory blocks with those from a provided piece of memory.
				It deals with the possibility of the destination range of data being noncontiguous. CMBlockBufferAssureBlockMemory() is
				called on the given CMBlockBuffer. If desired range is subsequently not accessible in the CMBlockBuffer, an error is returned
				and the contents of the CMBlockBuffer are untouched. 
				
	@param	sourceBytes				Memory block from which bytes are copied into the CMBlockBuffer
	@param	destinationBuffer		CMBlockBuffer whose range of bytes will be replaced by the sourceBytes.
	@param	offsetIntoDestination	Offset within the destination CMBlockBuffer at which replacement should begin.
	@param	dataLength				Number of bytes to be replaced, starting at offsetIntoDestination, in the destinationBuffer.
	
	@result	Returns kCMBlockBufferNoErr if the replacement succeeded, returns an error otherwise.
*/
@available(tvOS 4.0, *)
func CMBlockBufferReplaceDataBytes(sourceBytes: UnsafePointer<Void>, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus

/*!
	@function	CMBlockBufferFillDataBytes
	
	@abstract	Fills a CMBlockBuffer with a given byte value, replacing bytes in the underlying data blocks
	@discussion	This function is used to fill bytes in a CMBlockBuffer's memory blocks with a given byte value.
				It deals with the possibility of the destination range of data being noncontiguous. CMBlockBufferAssureBlockMemory() is
				called on the given CMBlockBuffer. If desired range is subsequently not accessible in the CMBlockBuffer, an error is returned
				and the contents of the CMBlockBuffer are untouched. 
				
	@param	fillByte				The value with which to fill the specified data range
	@param	destinationBuffer		CMBlockBuffer whose range of bytes will be filled.
	@param	offsetIntoDestination	Offset within the destination CMBlockBuffer at which filling should begin.
	@param	dataLength				Number of bytes to be filled, starting at offsetIntoDestination, in the destinationBuffer. If zero, the
									destinationBuffer's total available dataLength (starting at offsetToData) will be filled.
	
	@result	Returns kCMBlockBufferNoErr if the fill succeeded, returns an error otherwise.
*/
@available(tvOS 4.0, *)
func CMBlockBufferFillDataBytes(fillByte: Int8, _ destinationBuffer: CMBlockBuffer, _ offsetIntoDestination: Int, _ dataLength: Int) -> OSStatus

/*!
	@function	CMBlockBufferGetDataPointer
	
	@abstract	Gains access to the data represented by a CMBlockBuffer.
	@discussion	Gains access to the data represented by a CMBlockBuffer. A pointer into a memory block is returned
				which corresponds to the offset within the CMBlockBuffer. The number of bytes addressable at the
				pointer can also be returned. This length-at-offset may be smaller than the number of bytes actually
				available starting at the offset if the dataLength of the CMBlockBuffer is covered by multiple memory
				blocks (a noncontiguous CMBlockBuffer). The data pointer returned will remain valid as long as the
				original CMBlockBuffer is referenced - once the CMBlockBuffer is released for the last time, any pointers
				into it will be invalid. 

	@param	theBuffer		CMBlockBuffer to operate on. Must not be NULL
	@param	offset			Offset within the buffer's offset range.
	@param	lengthAtOffset	On return, contains the amount of data available at the specified offset. May be NULL.
	@param	totalLength		On return, contains the block buffer's total data length (from offset 0). May be NULL.
							The caller can compare (offset+lengthAtOffset) with totalLength to determine whether
							the entire CMBlockBuffer has been referenced and whether it is possible to access the CMBlockBuffer's
							data with a contiguous reference.
	@param	dataPointer		On return, contains a pointer to the data byte at the specified offset; lengthAtOffset bytes are
							available at this address. May be NULL.

	@result	Returns kCMBlockBufferNoErr if data was accessible at the specified offset within the given CMBlockBuffer, false otherwise.
*/
@available(tvOS 4.0, *)
func CMBlockBufferGetDataPointer(theBuffer: CMBlockBuffer, _ offset: Int, _ lengthAtOffset: UnsafeMutablePointer<Int>, _ totalLength: UnsafeMutablePointer<Int>, _ dataPointer: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>) -> OSStatus

/*!
	@function	CMBlockBufferGetDataLength
	
	@abstract	Obtains the total data length reachable via a CMBlockBuffer.
	@discussion	Obtains the total data length reachable via a CMBlockBuffer. This total is the sum of the dataLengths
				of the CMBlockBuffer's memoryBlocks and buffer references. Note that the dataLengths are
				the _portions_ of those constituents that this CMBlockBuffer subscribes to. This CMBlockBuffer presents a
				contiguous range of offsets from zero to its totalDataLength as returned by this routine.

	@param	theBuffer		CMBlockBuffer to examine.
	
	@result	Returns the total data length available via this CMBlockBuffer, or zero if it is empty, NULL, or somehow invalid.
*/
@available(tvOS 4.0, *)
func CMBlockBufferGetDataLength(theBuffer: CMBlockBuffer) -> Int

/*!
	@function	CMBlockBufferIsRangeContiguous
	
	@abstract	Determines whether the specified range within the given CMBlockBuffer is contiguous.
	@discussion	Determines whether the specified range within the given CMBlockBuffer is contiguous. if CMBlockBufferGetDataPointer()
				were to be called with the same parameters, the returned pointer would address the desired number of bytes.
	
	@param	theBuffer		CMBlockBuffer to examine. Must not be NULL
	@param	offset			Offset within the buffer's offset range.
	@param	length			Desired number of bytes to access at offset. If zero, the number of bytes available at offset
							(dataLength �offset), contiguous or not, is used.
							
	@result	Returns true if the specified range is contiguous within the CMBlockBuffer, false otherwise. Also returns false if the
			CMBlockBuffer is NULL or empty.
*/
@available(tvOS 4.0, *)
func CMBlockBufferIsRangeContiguous(theBuffer: CMBlockBuffer, _ offset: Int, _ length: Int) -> Bool

/*!
	@function	CMBlockBufferIsEmpty
	
	@abstract	Indicates whether the given CMBlockBuffer is empty.
	@discussion	Indicates whether the given CMBlockBuffer is empty, i.e., devoid of any memoryBlocks or CMBlockBuffer references.
				Note that a CMBlockBuffer containing a not-yet allocated memoryBlock is not considered empty.

	@param	theBuffer		CMBlockBuffer to examine. Must not be NULL
	
	@result	Returns the result of the emptiness test. Will return false if the CMBlockBuffer is NULL.
*/
@available(tvOS 4.0, *)
func CMBlockBufferIsEmpty(theBuffer: CMBlockBuffer) -> Bool
var kCMBufferQueueError_AllocationFailed: OSStatus { get }
var kCMBufferQueueError_RequiredParameterMissing: OSStatus { get }
var kCMBufferQueueError_InvalidCMBufferCallbacksStruct: OSStatus { get }
var kCMBufferQueueError_EnqueueAfterEndOfData: OSStatus { get }
var kCMBufferQueueError_QueueIsFull: OSStatus { get }
var kCMBufferQueueError_BadTriggerDuration: OSStatus { get }
var kCMBufferQueueError_CannotModifyQueueFromTriggerCallback: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerCondition: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerToken: OSStatus { get }
var kCMBufferQueueError_InvalidBuffer: OSStatus { get }

/*!
	@typedef	CMBufferQueueRef
	@abstract	A reference to a CMBufferQueue, a CF object that implements a queue of timed buffers.
		
*/
typealias CMBufferQueueRef = CMBufferQueue

/*!
	@typedef	CMBufferRef
	@abstract	A reference to a CMBuffer.
	@discussion	A CMBuffer can be any CFTypeRef, as long as a getDuration callback can be provided.  Commonly used
				types are CMSampleBufferRef and CVPixelBufferRef.
*/
typealias CMBufferRef = CMBuffer

/*!
	@typedef	CMBufferGetTimeCallback
	@abstract	Client callback that returns a CMTime from a CMBufferRef
	@discussion	There are three callbacks of this type that can be provided to CMBufferQueueCreate: getDuration (required),
				getDecodeTimeStamp (optional), and getPresentationTimeStamp (optional).
*/
typealias CMBufferGetTimeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> CMTime

/*!
	@typedef	CMBufferGetBooleanCallback
	@abstract	Client callback that returns a Boolean from a CMBufferRef
	@discussion	There is one callback of this type that can be provided to CMBufferQueueCreate: isDataReady (optional).
*/
typealias CMBufferGetBooleanCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean

/*!
	@typedef	CMBufferCompareCallback
	@abstract	Client callback that compares one CMBufferRef with another.
	@discussion	Note that a CFComparatorFunction can be used here.
*/
typealias CMBufferCompareCallback = @convention(c) (CMBuffer, CMBuffer, UnsafeMutablePointer<Void>) -> CFComparisonResult

/*!
	 @typedef	CMBufferGetSizeCallback
	 @abstract	Client callback that returns a size_t from a CMBufferRef
	 @discussion	There is one callback of this type that can be provided to CMBufferQueueCreate: getTotalSize.
 */
typealias CMBufferGetSizeCallback = @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Int

/*!
	@typedef	CMBufferCallbacks
	@abstract	Callbacks provided to CMBufferQueueCreate, for use by the queue in interrogating the buffers that it will see.
	@discussion	With the exception of isDataReady, all these callbacks must always return the same result for the same arguments.
				A buffer's duration, timestamps, or position relative to other buffers must not appear to change while it is in 
				the queue.  Once isDataReady has returned true for a given CMBuffer, it must always return true for that 
				CMBuffer.  Durations must always be positive.
*/
struct CMBufferCallbacks {
  var version: UInt32

  /*! @field version
  																	Must be 0 or 1. */
  var refcon: UnsafeMutablePointer<Void>

  /*! @field refcon
  																	Client refcon to be passed to all callbacks (can be NULL,
  																	if the callbacks don't require it). */
  var getDecodeTimeStamp: CMBufferGetTimeCallback?

  /*! @field getDecodeTimeStamp
  																	This callback is called from CMBufferQueueGetFirstDecodeTimeStamp (once),
  																	and from CMBufferQueueGetMinDecodeTimeStamp (multiple times).  It should
  																	return the decode timestamp of the buffer.  If there are multiple samples
  																	in the buffer, this callback should return the minimum decode timestamp
  																	in the buffer. Can be NULL (CMBufferQueueGetFirstDecodeTimeStamp and
  																	CMBufferQueueGetMinDecodeTimeStamp will return kCMTimeInvalid). */
  var getPresentationTimeStamp: CMBufferGetTimeCallback?

  /*! @field getPresentationTimeStamp
  																	This callback is called from CMBufferQueueGetFirstPresentationTimeStamp
  																	(once) and from CMBufferQueueGetMinPresentationTimeStamp (multiple times).
  																	It should return the presentation timestamp of the buffer.  If there are
  																	multiple samples in the buffer, this callback should return the minimum
  																	presentation timestamp in the buffer. Can be NULL
  																	(CMBufferQueueGetFirstPresentationTimeStamp and
  																	CMBufferQueueGetMinPresentationTimeStamp will return kCMTimeInvalid). */
  var getDuration: CMBufferGetTimeCallback

  /*! @field getDuration
  																	This callback is called (once) during enqueue and dequeue operations to
  																	update the total duration of the queue.  Must not be NULL. */
  var isDataReady: CMBufferGetBooleanCallback?

  /*! @field isDataReady
  																	This callback is called from CMBufferQueueDequeueIfDataReadyAndRetain, to
  																	ask if the buffer that is about to be dequeued is ready.  Can be NULL
  																	(data will be assumed to be ready). */
  var compare: CMBufferCompareCallback?

  /*! @field compare
  																	This callback is called (multiple times) from CMBufferQueueEnqueue, to
  																	perform an insertion sort. Can be NULL (queue will be FIFO). */
  var dataBecameReadyNotification: Unmanaged<CFString>?

  /*! @field dataBecameReadyNotification
  																	If triggers of type kCMBufferQueueTrigger_WhenDataBecomesReady are installed,
  																	the queue will listen for this notification on the head buffer. 
  																	Can be NULL (then the queue won't listen for it). */
  var getSize: CMBufferGetSizeCallback?
}

/*!
	@function	CMBufferQueueGetCallbacksForUnsortedSampleBuffers
	@abstract	Returns a pointer to a callback struct for unsorted CMSampleBuffers, provided as a convenience.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetCallbacksForUnsortedSampleBuffers() -> UnsafePointer<CMBufferCallbacks>

/*!
	 @function	CMBufferQueueGetCallbacksForOutputPTSSortedSampleBuffers
	 @abstract	Returns a pointer to a callback struct for CMSampleBuffers sorted by output presentation timestamp, provided as a convenience.
 */
@available(tvOS 4.3, *)
func CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS() -> UnsafePointer<CMBufferCallbacks>

/*!
	@function	CMBufferQueueCreate
	@abstract	Creates a CMBufferQueue object.
	@discussion	On return, the caller owns the returned CMBufferQueue, and must release it when done with it.
*/
@available(tvOS 4.0, *)
func CMBufferQueueCreate(allocator: CFAllocator?, _ capacity: CMItemCount, _ callbacks: UnsafePointer<CMBufferCallbacks>, _ queueOut: UnsafeMutablePointer<CMBufferQueue?>) -> OSStatus

/*!
	@function	CMBufferQueueGetTypeID
	@abstract	Returns the CFTypeID of CMBufferQueue objects.
	@discussion	You can check if a CFTypeRef object is actually a CMBufferQueue by comparing CFGetTypeID(object) with CMBufferQueueGetTypeID().
	@result		CFTypeID of CMBufferQueue objects.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetTypeID() -> CFTypeID

/*!
    @function   CMBufferQueueEnqueue
    @abstract   Enqueues a buffer onto a CMBufferQueue.
    @discussion The buffer is retained by the queue, so the client can safely release the buffer if it has no further use for it.
				If the compare callback is non-NULL, this API performs an insertion sort using that compare operation.
				If the validation callback is non-NULL, this API calls it; if it returns a nonzero OSStatus, 
				the buffer will not be enqueued and this API will return the same error OSStatus.
*/
@available(tvOS 4.0, *)
func CMBufferQueueEnqueue(queue: CMBufferQueue, _ buf: CMBuffer) -> OSStatus

/*!
    @function   CMBufferQueueGetHead
    @abstract   Retrieves the next-to-dequeue buffer from a CMBufferQueue but leaves it in the queue.
    @discussion This follows CF "Get" semantics -- it does not retain the returned buffer.
    			Note that with non-FIFO queues it's not guaranteed that the next dequeue will return
    			this particular buffer (if an intervening Enqueue adds a buffer that will dequeue next).
	@result		The buffer.  Will be NULL if the queue is empty.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetHead(queue: CMBufferQueue) -> CMBuffer?

/*!
	@function	CMBufferQueueIsEmpty
	@abstract	Returns whether or not a CMBufferQueue is empty.
	@result		Whether or not the CMBufferQueue is empty. If queue is NULL, true is returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueIsEmpty(queue: CMBufferQueue) -> Bool

/*!
	@function	CMBufferQueueMarkEndOfData
	@abstract	Marks a CMBufferQueue with EOD.
	@discussion	All subsequent Enqueues will be rejected until CMBufferQueueReset is called.
				Subsequent Dequeues will succeed as long as the queue is not empty.
*/
@available(tvOS 4.0, *)
func CMBufferQueueMarkEndOfData(queue: CMBufferQueue) -> OSStatus

/*!
	@function	CMBufferQueueContainsEndOfData
	@abstract	Returns whether or not a CMBufferQueue has been marked with EOD.
	@result		Whether or not the CMBufferQueue has been marked with EOD.
				If queue is NULL, true is returned (a NULL queue is considered to
				be empty, and permanently at EOD).
*/
@available(tvOS 4.0, *)
func CMBufferQueueContainsEndOfData(queue: CMBufferQueue) -> Bool

/*!
	@function	CMBufferQueueIsAtEndOfData
	@abstract	Returns whether or not a CMBufferQueue has been marked with EOD, and is now empty.
	@result		Whether or not the CMBufferQueue has been marked with EOD, and is now empty.
				If queue is NULL, true is returned (a NULL queue is considered to
				be empty, and permanently at EOD).
*/
@available(tvOS 4.0, *)
func CMBufferQueueIsAtEndOfData(queue: CMBufferQueue) -> Bool

/*!
	@function	CMBufferQueueReset
	@abstract	Resets a CMBufferQueue. Empties the queue, and clears any EOD mark.
	@discussion	All buffers in the queue are released.  Triggers are not removed, however,
				and will be called appropriately as the queue duration goes to zero.
*/
@available(tvOS 4.0, *)
func CMBufferQueueReset(queue: CMBufferQueue) -> OSStatus

/*!
	@function	CMBufferQueueResetWithCallback
	@abstract	Calls a function for every buffer in a queue, then resets the queue.
*/
@available(tvOS 4.0, *)
func CMBufferQueueResetWithCallback(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> Void, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	CMBufferQueueGetBufferCount
	@abstract	Gets the number of buffers in the queue.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetBufferCount(queue: CMBufferQueue) -> CMItemCount

/*!
	@function	CMBufferQueueGetDuration
	@abstract	Gets the duration of a CMBufferQueue.
	@discussion	The duration of the CMBufferQueue is the sum of all the individual
				buffer durations, as reported by the getDuration callback (provided to
				CMBufferQueueCreate).  If there are no buffers in the queue,
				kCMTimeZero will be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetDuration(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetMinDecodeTimeStamp
	@abstract	Gets the earliest decode timestamp of a CMBufferQueue.
	@discussion	The search for earliest decode timstamp is performed in this API.
				If you know your queue is in decode order, GetFirstDecodeTimeStamp
				is a faster alternative.  If the getDecodeTimeStamp callback is
				NULL, kCMTimeInvalid will be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetMinDecodeTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetFirstDecodeTimeStamp
	@abstract	Gets the decode timestamp of the first buffer in a CMBufferQueue.
	@discussion	This API is is a faster alternative to GetMinDecodeTimeStamp,
				but only gives the same answer if your queue is in decode order.
				If the getDecodeTimeStamp callback is NULL, kCMTimeInvalid will
				be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetFirstDecodeTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetMinPresentationTimeStamp
	@abstract	Gets the earliest presentation timestamp of a CMBufferQueue.
	@discussion	The search for earliest presentation timstamp is performed in
				this API. If you know your queue is sorted by presentation time,
				GetFirstPresentationTimeStamp is a faster alternative. If the
				getPresentationTimeStamp callback is NULL, kCMTimeInvalid will
				be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetMinPresentationTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetFirstPresentationTimeStamp
	@abstract	Gets the decode timestamp of the first buffer in a CMBufferQueue.
	@discussion	This API is is a faster alternative to GetMinPresentationTimeStamp,
				but only works if you know your queue is sorted by presentation
				timestamp. If the getPresentationTimeStamp callback is NULL,
				kCMTimeInvalid will be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetFirstPresentationTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetMaxPresentationTimeStamp
	@abstract	Gets the greatest presentation timestamp of a CMBufferQueue.
	@discussion	If the getPresentationTimeStamp callback is NULL, kCMTimeInvalid will
				be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetMaxPresentationTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	@function	CMBufferQueueGetEndPresentationTimeStamp
	@abstract	Gets the greatest end presentation timestamp of a CMBufferQueue.
	@discussion	This is the maximum end time (PTS + duration) of buffers in the queue.
				If the getPresentationTimeStamp callback is NULL, kCMTimeInvalid will
				be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueGetEndPresentationTimeStamp(queue: CMBufferQueue) -> CMTime

/*!
	 @function	CMBufferQueueGetTotalSize
	 @abstract	Gets the total size of all sample buffers of a CMBufferQueue.
 @discussion	The total size of the CMBufferQueue is the sum of all the individual
				buffer sizes, as reported by the getTotalSize callback (provided to
				CMBufferQueueCreate).  If there are no buffers in the queue,
				0 will be returned.
 */
@available(tvOS 7.1, *)
func CMBufferQueueGetTotalSize(queue: CMBufferQueue) -> Int

/*!
	@typedef	CMBufferQueueTriggerToken
	@abstract	A reference to a CMBufferQueueTrigger object.  It is not a CF type; do not CFRetain or CFRelease it.
	@discussion	A trigger is a callback function that the queue calls every time the triggering condition becomes true.
				Trigger conditions include things like queue duration, queue buffer count, etc.
				Trigger callbacks are called from within CMBufferQueue routines that modify the trigger condition
				(eg. Enqueue/Dequeue/Reset).
				
				Trigger callbacks cannot modify the queue that called them; they can, however, interrogate it.
				Trigger callbacks should not block waiting for other threads to modify or interrogate the queue either.
				In fact, trigger callbacks should perform as little processing as possible, preferably arranging
				for processing to occur by signalling a semaphore, rescheduling a runloop timer, calling dispatch_async(), etc.
				
				Clients can install as many triggers as they like.  The order in which they are called is non-deterministic.
				
				Triggers with a NULL callback are valid, since even though no trigger callback will be called, the
				trigger condition can still be explicitly tested.

				The CMBufferQueueTriggerToken is returned from CMBufferQueueInstallTrigger, so clients can remove
				it later if necessary.  Triggers will automatically be removed when the queue is finalized.  Note
				that if more than one module has access to a queue, it may be hard for an individual module to know
				when the queue is finalized since other modules may retain it.  To address this concern, modules
				should remove their triggers before they themselves are finalized.
*/
typealias CMBufferQueueTriggerToken = COpaquePointer

/*!
	@typedef	CMBufferQueueTriggerCallback
	@abstract	A callback to be called when a CMBufferQueue trigger condition becomes true.
*/
typealias CMBufferQueueTriggerCallback = @convention(c) (UnsafeMutablePointer<Void>, CMBufferQueueTriggerToken) -> Void

/*!
	@enum		CMBufferQueueTriggerCondition
	@abstract	A condition to be associated with a CMBufferQueueTrigger.
	@constant	kCMBufferQueueTrigger_WhenDurationBecomesLessThan				Trigger fires when queue duration becomes < the specified duration.
	@constant	kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo		Trigger fires when queue duration becomes <= the specified duration.
	@constant	kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan			Trigger fires when queue duration becomes > the specified duration.
	@constant	kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo	Trigger fires when queue duration becomes >= the specified duration.
	@constant	kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges		Trigger fires when minimum presentation timestamp changes (triggerTime is ignored).
	@constant	kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges		Trigger fires when maximum presentation timestamp changes (triggerTime is ignored).
	@constant	kCMBufferQueueTrigger_WhenDataBecomesReady						Trigger fires when next dequeueable buffer becomes ready (ie, DequeueIfDataReadyAndRetain will now succeed).  (triggerTime is ignored.)
	@constant	kCMBufferQueueTrigger_WhenEndOfDataReached						Trigger fires when CMBufferQueueIsAtEndOfData's condition becomes true.  (triggerTime is ignored.)
	@constant	kCMBufferQueueTrigger_WhenReset									Trigger fires when CMBufferQueueReset called.  (triggerTime is ignored.)
	@constant	kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan			Trigger fires when buffer count becomes < the specified threshold number.
	@constant	kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan			Trigger fires when buffer count becomes > the specified threshold number.
*/
typealias CMBufferQueueTriggerCondition = Int32
var kCMBufferQueueTrigger_WhenDurationBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDataBecomesReady: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenEndOfDataReached: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenReset: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan: CMBufferQueueTriggerCondition { get }

/*!
	@function	CMBufferQueueInstallTrigger
	@abstract	Installs a trigger on a CMBufferQueue.
	@discussion	The returned trigger token can be passed to CMBufferQueueTestTrigger and CMBufferQueueRemoveTrigger.
				The triggerTokenOut parameter can be NULL (client doesn't need to test or remove trigger), and the
				triggerCallback parameter can be NULL (client doesn't need callbacks, but rather will explicitly
				test the trigger).  One of these two parameters must be non-NULL, however, since an untestable
				trigger that does not perform a callback is meaningless.  If the trigger condition is already true,
				CMBufferQueueInstallTrigger will call the triggerCallback.  If it does this, it will first write
				the trigger token to *triggerTokenOut.
*/
@available(tvOS 4.0, *)
func CMBufferQueueInstallTrigger(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerTime: CMTime, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus

/*!
	@function	CMBufferQueueInstallTriggerWithIntegerThreshold
	@abstract	Installs a trigger on a CMBufferQueue.
	@discussion	This function behaves the same way as CMBufferQueueInstallTrigger() except the trigger is evaluated against
				the integer value rather than the time value.
*/
@available(tvOS 4.0, *)
func CMBufferQueueInstallTriggerWithIntegerThreshold(queue: CMBufferQueue, _ triggerCallback: CMBufferQueueTriggerCallback?, _ triggerRefcon: UnsafeMutablePointer<Void>, _ triggerCondition: CMBufferQueueTriggerCondition, _ triggerThreshold: CMItemCount, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken>) -> OSStatus

/*!
	@function	CMBufferQueueRemoveTrigger
	@abstract	Removes a previously installed trigger from a CMBufferQueue.
	@discussion	Triggers will automatically be removed when a queue is finalized.  However, if more
				than one module has access to a queue, it may be hard for an individual module to know
				when the queue is finalized since other modules may retain it.  To address this concern,
				modules should remove their triggers before they themselves are finalized.
*/
@available(tvOS 4.0, *)
func CMBufferQueueRemoveTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> OSStatus

/*!
	@function	CMBufferQueueTestTrigger
	@abstract	Tests whether the trigger condition is true.
	@discussion	Whereas the trigger callback will only be called when the condition goes from false
				to true, CMBufferQueueTestTrigger always returns the condition's current status.
				The triggerToken must be one that has been installed on this queue.
*/
@available(tvOS 4.0, *)
func CMBufferQueueTestTrigger(queue: CMBufferQueue, _ triggerToken: CMBufferQueueTriggerToken) -> Bool

/*!
	@function	CMBufferQueueCallForEachBuffer
	@abstract	Calls a function for every buffer in a queue.
	@discussion If the callback function returns an error, iteration will stop immediately
				and the error will be returned.
*/
@available(tvOS 4.0, *)
func CMBufferQueueCallForEachBuffer(queue: CMBufferQueue, _ callback: @convention(c) (CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@typedef	CMBufferValidationCallback
	@abstract	Tests whether a buffer is OK to add to a queue.
	@discussion
		CMBufferQueueEnqueue will call this function to validate buffers.
		Return noErr if the buffer is OK to add.  
		Return a nonzero error code if the buffer should be rejected; 
		CMBufferQueueEnqueue will return this error to the caller.
		If you do not have a more descriptive error code, use kCMBufferQueueError_InvalidBuffer.
*/
typealias CMBufferValidationCallback = @convention(c) (CMBufferQueue, CMBuffer, UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	CMBufferQueueSetValidationCallback
	@abstract	Sets a function that CMBufferQueueEnqueue will call to validate buffers before adding them to the queue.
*/
@available(tvOS 4.0, *)
func CMBufferQueueSetValidationCallback(queue: CMBufferQueue, _ validationCallback: CMBufferValidationCallback, _ validationRefCon: UnsafeMutablePointer<Void>) -> OSStatus
var kCMFormatDescriptionError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionError_ValueNotAvailable: OSStatus { get }

/*!
	@typedef	CMFormatDescriptionRef
	@abstract	A reference to a CMFormatDescription, a CF object describing media of a particular type (audio, video, muxed, etc).
*/
typealias CMFormatDescriptionRef = CMFormatDescription

/*!
	@enum CMMediaType
	@abstract The type of media described by a CMFormatDescription.
	@constant kCMMediaType_Video Video media
	@constant kCMMediaType_Audio Audio media
	@constant kCMMediaType_Muxed Muxed media
	@constant kCMMediaType_Text Text media
	@constant kCMMediaType_ClosedCaption Closed-caption media
	@constant kCMMediaType_Subtitle Subtitle media
	@constant kCMMediaType_TimeCode TimeCode media
	@constant kCMMediaType_Metadata Metadata media
*/
typealias CMMediaType = FourCharCode
var kCMMediaType_Video: CMMediaType { get }
var kCMMediaType_Audio: CMMediaType { get }
var kCMMediaType_Muxed: CMMediaType { get }
var kCMMediaType_Text: CMMediaType { get }
var kCMMediaType_ClosedCaption: CMMediaType { get }
var kCMMediaType_Subtitle: CMMediaType { get }
var kCMMediaType_TimeCode: CMMediaType { get }
var kCMMediaType_Metadata: CMMediaType { get }

/*!
	@function	CMFormatDescriptionCreate
    @abstract   Creates a generic CMFormatDescription object.
    @discussion Use this call to create any CMFormatDescription that is composed solely of extensions, and for which 
				CFEqual() of a the extensions dictionaries is a valid test for Format Description equality.  Note that
				for some media types using this routine may result in creating a format description that is not fully
				specified for the purpose of media processing. Whenever possible, use media-specific format description
				creations routines such as CMVideoFormatDescriptionCreate, CMAudioFormatDescriptionCreate, etc.
    @result     A new CMFormatDescription object.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionCreate(allocator: CFAllocator?, _ mediaType: CMMediaType, _ mediaSubtype: FourCharCode, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus

/*!
	@function	CMFormatDescriptionGetTypeID
	@abstract	Returns the CFTypeID of CMFormatDescription objects.
	@discussion	You can check if a CFTypeRef object is actually a CMFormatDescription
				by comparing CFGetTypeID(object) with CMFormatDescriptionGetTypeID().
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionGetTypeID() -> CFTypeID

/*!
	@function	CMFormatDescriptionEqual
	@abstract	Compares two CMFormatDescription objects for equality.
	@discussion	This calls CFEqual on the provided CMFormatDescription objects.
                In contrast to the CF call it is NULL safe.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionEqual(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?) -> Bool

/*!
	@function	CMFormatDescriptionEqualIgnoringExtensionKeys
	@abstract	Compares two CMFormatDescription objects for equality, ignoring differences in specified lists of format description extension keys and sample description extension keys.
	@discussion
		This function is NULL safe.
		If any keys are passed, kCMFormatDescriptionExtension_VerbatimSampleDescription
		and kCMFormatDescriptionExtension_VerbatimISOSampleEntry will also be automatically
		ignored for the purpose of comparison.
	@param formatDescriptionExtensionKeysToIgnore
		Either a single format description extension key (CFString) 
		or a CFArray of such keys.  
	@param sampleDescriptionExtensionAtomKeysToIgnore
		Either a single sample description extension atom key (four-character CFString) 
		or a CFArray of such keys.  
		See kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms.
*/
@available(tvOS 4.3, *)
func CMFormatDescriptionEqualIgnoringExtensionKeys(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?, _ formatDescriptionExtensionKeysToIgnore: AnyObject?, _ sampleDescriptionExtensionAtomKeysToIgnore: AnyObject?) -> Bool

/*!
	@function	CMFormatDescriptionGetMediaType
	@abstract	Returns the media type of a CMFormatDescription.
	@discussion	For example, returns kCMMediaType_Audio for a description of an audio stream.
	@result		The media type of the CMFormatDescription.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionGetMediaType(desc: CMFormatDescription) -> CMMediaType

/*!
	@function	CMFormatDescriptionGetMediaSubType
	@abstract	Returns the media subtype of a CMFormatDescription.
	@discussion	The media subtype is defined in a media-specific way.
				For audio streams, the media subtype is the asbd.mFormatID.
				For video streams, the media subtype is the video codec type. 
				For muxed streams, it is the format of the muxed stream.
				For example, 'aac ' is returned for a description of an AAC audio
				stream, 'avc1' is returned for a description of an H.264 video
				stream, and 'mp2t' is returned for a description of an MPEG-2
				transport (muxed) stream.  If a particular type of media stream
				does not have subtypes, this API may return 0.
	@result		The media subtype of the CMFormatDescription.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionGetMediaSubType(desc: CMFormatDescription) -> FourCharCode

/*!
	@function	CMFormatDescriptionGetExtensions
	@abstract	Returns an immutable dictionary containing all the extensions of a CMFormatDescription.
	@discussion If there are no extensions, NULL is returned. Extensions dictionaries are valid property list
				objects.  This means that dictionary keys are all CFStrings, and the values are all either
				CFNumber, CFString, CFBoolean, CFArray, CFDictionary, CFDate, or CFData. The returned
				dictionary is not retained by this call, so clients are required to retain it if they
				need to keep it longer.
	@result		An immutable dictionary containing all the extensions of the CMFormatDescription.  May be NULL.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionGetExtensions(desc: CMFormatDescription) -> CFDictionary?

/*!
	@define 	kCMFormatDescriptionExtension_OriginalCompressionSettings
	@abstract	This extension contains a media-type-specific dictionary of settings used to produce a compressed media buffer.
	@discussion This extension is valid for format descriptions of all media types, but the contents of the dictionary are defined
				in a media-specific way.  The dictionary and its contents are valid property list objects. This means that
				dictionary keys are all CFStrings, and the values are all either CFNumber, CFString, CFBoolean, CFArray,
				CFDictionary, CFDate, or CFData.
*/
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_OriginalCompressionSettings: CFString

/*!
	@define 	kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms
	@abstract	Sample description extension atoms that were not translated into other entries in the extensions dictionary.
	@discussion	This key is used by sample description bridges to hold sample description
				extension atoms that they do not recognize.
				The extension is a CFDictionary mapping CFStrings of the four-char-code atom types
				to either CFDatas containing the atom payload or (to represent multiple atoms of a
				specific type) to CFArrays of CFData containing those payloads.
*/
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms: CFString

/*!
	@define 	kCMFormatDescriptionExtension_VerbatimSampleDescription
	@abstract	Preserves the original SampleDescription data.
	@discussion This extension is used to ensure that roundtrips from sample descriptions
				to CMFormatDescriptions back to sample descriptions preserve the exact original
				sample descriptions.
				IMPORTANT: If you make a modified clone of a CMFormatDescription, you must 
				delete this extension from the clone, or your modifications could be lost.
*/
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_VerbatimSampleDescription: CFString

/*!
	@define 	kCMFormatDescriptionExtension_VerbatimISOSampleEntry
	@abstract	Preserves the original ISOSampleEntry data.
	@discussion This extension is used to ensure that roundtrips from ISO Sample Entry (ie. AudioSampleEntry or VisualSampleEntry)
				to CMFormatDescriptions back to ISO Sample Entry preserve the exact original
				sample descriptions.
				IMPORTANT: If you make a modified clone of a CMFormatDescription, you must 
				delete this extension from the clone, or your modifications could be lost.
*/
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_VerbatimISOSampleEntry: CFString

/*!
	@function	CMFormatDescriptionGetExtension
	@abstract	Returns the specified extension of a CMFormatDescription.
	@discussion If the named extension does not exist, NULL is returned. The extension is always a valid
				property list object. This means that it will be either a CFNumber, CFString, CFBoolean,
				CFArray, CFDictionary, CFDate, or CFData. If it is a CFDictionary, the keys will all be
				CFStrings. The returned extension is not retained by this call, so it is only valid as
				long as the CMFormatDescription is valid. Clients are required to retain it if they
				need to keep it longer.
	@result		The specified extension of the CMFormatDescription.  May be NULL.
*/
@available(tvOS 4.0, *)
func CMFormatDescriptionGetExtension(desc: CMFormatDescription, _ extensionKey: CFString) -> CFPropertyList?

/*!
	@enum CMAudioCodecType
	@discussion Four-character codes identifying the code type. Certain codec types are also audio formats.
	@constant	kCMAudioCodecType_AAC_LCProtected iTMS protected low-complexity AAC.
	@constant	kCMAudioCodecType_AAC_AudibleProtected Audible's protected AAC.
*/
typealias CMAudioCodecType = FourCharCode
var kCMAudioCodecType_AAC_LCProtected: CMAudioCodecType { get }
var kCMAudioCodecType_AAC_AudibleProtected: CMAudioCodecType { get }

/*!
	@typedef CMAudioFormatDescriptionRef
	SYnonym type used for manipulating audio CMFormatDescriptions
*/
typealias CMAudioFormatDescriptionRef = CMAudioFormatDescription

/*!
	@function	CMAudioFormatDescriptionCreate
	@abstract	Creates a format description for an audio media stream.
	@discussion	The ASBD is required, the channel layout is optional, and the magic cookie is required
				for some compression formats (and must be NULL for all others). The caller owns the
				returned CMFormatDescription, and must release it when done with it.  The ASBD,
				magic cookie, channel layout, and extensions are all copied (the extensions are
				deep-copied).  The caller can deallocate them or re-use them after making this call.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionCreate(allocator: CFAllocator?, _ asbd: UnsafePointer<AudioStreamBasicDescription>, _ layoutSize: Int, _ layout: UnsafePointer<AudioChannelLayout>, _ magicCookieSize: Int, _ magicCookie: UnsafePointer<Void>, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus

/*!
	@function	CMAudioFormatDescriptionGetStreamBasicDescription
	@abstract	Returns a read-only pointer to the AudioStreamBasicDescription inside an audio CMFormatDescription.
	@discussion	See CoreAudioTypes.h for the definition of AudioStreamBasicDescription.
				This API is specific to audio format descriptions, and will return NULL if
				used with a non-audio format descriptions.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetStreamBasicDescription(desc: CMAudioFormatDescription) -> UnsafePointer<AudioStreamBasicDescription>

/*!
	@function	CMAudioFormatDescriptionGetMagicCookie
	@abstract	Returns a read-only pointer to (and size of) the magic cookie inside an audio CMFormatDescription.
	@discussion	The magic cookie is a completely opaque piece of data, written and read only by
				the codec itself. A magic cookie is only present for codecs that require it;
				this API will return NULL if one does not exist. This API is specific to audio
				format descriptions, and will return NULL if called with a non-audio format
				description.
	@result		A read-only pointer to the magic cookie inside the audio format description.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetMagicCookie(desc: CMAudioFormatDescription, _ cookieSizeOut: UnsafeMutablePointer<Int>) -> UnsafePointer<Void>

/*!
	@function	CMAudioFormatDescriptionGetChannelLayout
	@abstract	Returns a read-only pointer to (and size of) the AudioChannelLayout inside an audio CMFormatDescription.
	@discussion	See CoreAudioTypes.h for the definition of AudioChannelLayout.
				AudioChannelLayouts are optional; this API will return NULL if
				one does not exist. This API is specific to audio format
				descriptions, and will return NULL if called with a non-audio
				format description.
	@result		A read-only pointer to the AudioChannelLayout inside the audio format description.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetChannelLayout(desc: CMAudioFormatDescription, _ layoutSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioChannelLayout>

/*!
	@function	CMAudioFormatDescriptionGetFormatList
	@abstract	Returns a read-only pointer to (and size of) the array of AudioFormatListItem structs inside an audio CMFormatDescription.
	@discussion	This property is analogous to kAudioFormatProperty_FormatList (See AudioFormat.h) and follows
                its conventions.  Namely, formats are returned in order from the most to least 'rich', with 
                channel count taking the highest precedence followed by sample rate.
				This API is specific to audio format descriptions, and will return NULL if called with a non-audio
				format description.
	@result		A read-only pointer to the array of AudioFormatListItem structs inside the audio format description.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetFormatList(desc: CMAudioFormatDescription, _ formatListSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioFormatListItem>

/*!
	@function	CMAudioFormatDescriptionGetRichestDecodableFormat
	@abstract	Returns a read-only pointer to the appropriate AudioFormatListItem inside an audio CMFormatDescription.
	@discussion	This property performs validation on the formats represented by the audio in the description.  It
                finds the first AudioFormatListItem for which the current system has a valid decoder.
				This API is specific to audio format descriptions, and will return NULL if called with a non-audio
				format description.  It may also return NULL if there is no suitable decoder available on the
                current system for this audio format.
	@result		A read-only pointer to the appropriate AudioFormatListItem inside the audio format description.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetRichestDecodableFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>

/*!
	@function	CMAudioFormatDescriptionGetMostCompatibleFormat
	@abstract	Returns a read-only pointer to the appropriate AudioFormatListItem inside an audio CMFormatDescription.
	@discussion	This property returns a pointer to the last AudioFormatListItem in the kAudioFormatProperty_FormatList
                (see AudioFormat.h).  This API is specific to audio format descriptions, and will return NULL if called 
                with a non-audio format description.
	@result		A read-only pointer to the appropriate AudioFormatListItem inside the audio format description.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionGetMostCompatibleFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>

/*!
	@function	CMAudioFormatDescriptionCreateSummary
	@abstract	Creates a summary audio format description from an array of audio format descriptions.
	@discussion
		The summary format description will be canonical LPCM and deep enough in 
		sample rate, channel layout and channel count to sensibly contain the result of decoding 
		and mixing the constituent format descriptions.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionCreateSummary(allocator: CFAllocator?, _ formatDescriptionArray: CFArray, _ flags: UInt32, _ summaryFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus

/*!
	@enum CMAudioFormatDescriptionMask
	@discussion Mask bits passed to (and returned from) CMAudioFormatDescriptionEqual,
				representing various parts of an audio format description.
	@constant	CMAudioFormatDescriptionMask_StreamBasicDescription	Represents the AudioStreamBasicDescription.
	@constant	CMAudioFormatDescriptionMask_MagicCookie				Represents the magic cookie.
	@constant	CMAudioFormatDescriptionMask_ChannelLayout				Represents the AudioChannelLayout.
	@constant	CMAudioFormatDescriptionMask_Extensions					Represents the format description extensions.
	@constant	CMAudioFormatDescriptionMask_All						Represents all the parts of an audio format description.
*/
typealias CMAudioFormatDescriptionMask = UInt32
var kCMAudioFormatDescriptionMask_StreamBasicDescription: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_MagicCookie: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_ChannelLayout: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_Extensions: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_All: CMAudioFormatDescriptionMask { get }

/*!
	@function	CMAudioFormatDescriptionEqual
	@abstract	Evaluates equality for the specified parts of two audio format descriptions.
	@discussion	Bits in equalityMask specify the caller's interest in the equality of various parts of the descriptions.
				Bits set and returned in equalityMaskOut represent the subset of those parts that are equal.
				If there is any sort of error that prevents the comparison from occurring, false will be returned, and
				all bits in equalityMaskOut will be cleared. If you pass kCMAudioFormatDescriptionMask_All in equalityMask,
				and NULL for equalityMaskOut, this API is equivalent to CFEqual(desc1, desc2).
	@result		The result of the comparison.  True if all parts in which the caller is interested are equal.
				False if any of the parts in which the caller is interested are not equal.
*/
@available(tvOS 4.0, *)
func CMAudioFormatDescriptionEqual(desc1: CMAudioFormatDescription, _ desc2: CMAudioFormatDescription, _ equalityMask: CMAudioFormatDescriptionMask, _ equalityMaskOut: UnsafeMutablePointer<CMAudioFormatDescriptionMask>) -> Bool

/*!
	@typedef CMVideoFormatDescriptionRef
	Synonym type used for manipulating video CMFormatDescriptions
*/
typealias CMVideoFormatDescriptionRef = CMVideoFormatDescription

/*!
	@enum CMPixelFormatType
	@discussion Four-character codes identifying the pixel format. Only some codec types are pixel formats.
		In general, CoreVideo CVPixelFormatType constants may be used too.
	@constant	kCMPixelFormat_32ARGB 32-bit ARGB
	@constant	kCMPixelFormat_32BGRA 32-bit BGRA
	@constant	kCMPixelFormat_24RGB 24-bit RGB
	@constant	kCMPixelFormat_16BE555 16-bit big-endian 5-5-5
	@constant	kCMPixelFormat_16BE565 16-bit big-endian 5-6-5
	@constant	kCMPixelFormat_16LE555 16-bit little-endian 5-5-5
	@constant	kCMPixelFormat_16LE565 16-bit little-endian 5-6-5
	@constant	kCMPixelFormat_16LE5551 16-bit little-endian 5-5-5-1
	@constant	kCMPixelFormat_422YpCbCr8 Component Y'CbCr 8-bit 4:2:2 ordered Cb Y'0 Cr Y'1
	@constant	kCMPixelFormat_422YpCbCr8_yuvs Component Y'CbCr 8-bit 4:2:2 ordered Y'0 Cb Y'1 Cr
	@constant	kCMPixelFormat_444YpCbCr8 Component Y'CbCr 8-bit 4:4:4
	@constant	kCMPixelFormat_4444YpCbCrA8 Component Y'CbCrA 8-bit 4:4:4:4
	@constant	kCMPixelFormat_422YpCbCr16 Component Y'CbCr 10,12,14,16-bit 4:2:2
	@constant	kCMPixelFormat_422YpCbCr10 Component Y'CbCr 10-bit 4:2:2
	@constant	kCMPixelFormat_444YpCbCr10 Component Y'CbCr 10-bit 4:4:4
	@constant	kCMPixelFormat_8IndexedGray_WhiteIsZero 8 bit indexed gray, white is zero
*/
typealias CMPixelFormatType = FourCharCode
var kCMPixelFormat_32ARGB: CMPixelFormatType { get }
var kCMPixelFormat_32BGRA: CMPixelFormatType { get }
var kCMPixelFormat_24RGB: CMPixelFormatType { get }
var kCMPixelFormat_16BE555: CMPixelFormatType { get }
var kCMPixelFormat_16BE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE555: CMPixelFormatType { get }
var kCMPixelFormat_16LE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE5551: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8_yuvs: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_4444YpCbCrA8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr16: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_8IndexedGray_WhiteIsZero: CMPixelFormatType { get }

/*!
	@enum CMVideoCodecType
	@discussion Four-character codes identifying the video codec. Certain codec types are also pixel formats.
				  Note: There is no kCMVideoCodecType_Raw -- use the appropriate pixel format type as the codec type.
	@constant	kCMVideoCodecType_422YpCbCr8	Component Y'CbCr 8-bit 4:2:2 ordered Cb Y'0 Cr Y'1
	@constant	kCMVideoCodecType_Animation		Apple Animation format
	@constant	kCMVideoCodecType_Cinepak	Cinepak format
	@constant	kCMVideoCodecType_JPEG	Joint Photographic Experts Group (JPEG) format
	@constant	kCMVideoCodecType_JPEG_OpenDML	JPEG format with Open-DML extensions
	@constant	kCMVideoCodecType_SorensonVideo		Sorenson video format
	@constant	kCMVideoCodecType_SorensonVideo3	Sorenson 3 video format
	@constant	kCMVideoCodecType_H263	ITU-T H.263 format
	@constant	kCMVideoCodecType_H264	ITU-T H.264 format (AKA ISO/IEC 14496-10 - MPEG-4 Part 10, Advanced Video Coding format)
	@constant	kCMVideoCodecType_HEVC	ITU-T HEVC format
	@constant	kCMVideoCodecType_MPEG4Video	ISO/IEC Moving Picture Experts Group (MPEG) MPEG-4 Part 2 video format
	@constant	kCMVideoCodecType_MPEG2Video	MPEG-2 video format
	@constant	kCMVideoCodecType_MPEG1Video	MPEG-1 video format
	@constant	kCMVideoCodecType_DVCNTSC	DV NTSC format
	@constant	kCMVideoCodecType_DVCPAL	DV PAL format
	@constant	kCMVideoCodecType_DVCProPAL		Panasonic DVCPro PAL format
	@constant	kCMVideoCodecType_DVCPro50NTSC	Panasonic DVCPro-50 NTSC format
	@constant	kCMVideoCodecType_DVCPro50PAL	Panasonic DVCPro-50 PAL format
	@constant	kCMVideoCodecType_DVCPROHD720p60	Panasonic DVCPro-HD 720p60 format
	@constant	kCMVideoCodecType_DVCPROHD720p50	Panasonic DVCPro-HD 720p50 format
	@constant	kCMVideoCodecType_DVCPROHD1080i60	Panasonic DVCPro-HD 1080i60 format
	@constant	kCMVideoCodecType_DVCPROHD1080i50	Panasonic DVCPro-HD 1080i50 format
	@constant	kCMVideoCodecType_DVCPROHD1080p30	Panasonic DVCPro-HD 1080p30 format
	@constant	kCMVideoCodecType_DVCPROHD1080p25	Panasonic DVCPro-HD 1080p25 format
	@constant	kCMVideoCodecType_AppleProRes4444	Apple ProRes 4444 format
	@constant	kCMVideoCodecType_AppleProRes422HQ	Apple ProRes 422 HQ format
	@constant	kCMVideoCodecType_AppleProRes422	Apple ProRes 422 format
	@constant	kCMVideoCodecType_AppleProRes422LT	Apple ProRes 422 LT format
	@constant	kCMVideoCodecType_AppleProRes422Proxy	Apple ProRes 422 Proxy format
*/
typealias CMVideoCodecType = FourCharCode
var kCMVideoCodecType_422YpCbCr8: CMVideoCodecType { get }
var kCMVideoCodecType_Animation: CMVideoCodecType { get }
var kCMVideoCodecType_Cinepak: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG_OpenDML: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo3: CMVideoCodecType { get }
var kCMVideoCodecType_H263: CMVideoCodecType { get }
var kCMVideoCodecType_H264: CMVideoCodecType { get }
var kCMVideoCodecType_HEVC: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG4Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG2Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG1Video: CMVideoCodecType { get }
var kCMVideoCodecType_DVCNTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCProPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50NTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50PAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p30: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p25: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes4444: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422HQ: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422LT: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422Proxy: CMVideoCodecType { get }

/*!
	@typedef CMVideoDimensions
	Type used for video dimensions, units are pixels
*/
struct CMVideoDimensions {
  var width: Int32
  var height: Int32
  init()
  init(width: Int32, height: Int32)
}
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_FormatName: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_Depth: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_CleanAperture: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_CleanApertureWidth: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_CleanApertureHeight: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffset: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffset: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionKey_CleanApertureWidthRational: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionKey_CleanApertureHeightRational: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_FieldCount: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_FieldDetail: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionFieldDetail_TemporalTopFirst: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionFieldDetail_TemporalBottomFirst: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineLate: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_PixelAspectRatio: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_ColorPrimaries: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_709_2: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_EBU_3213: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_SMPTE_C: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_DCI_P3: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_P3_D65: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_2020: CFString
@available(tvOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_P22: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_TransferFunction: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionTransferFunction_ITU_R_709_2: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionTransferFunction_SMPTE_240M_1995: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionTransferFunction_UseGamma: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionTransferFunction_ITU_R_2020: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_GammaLevel: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_YCbCrMatrix: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_DCI_P3: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_P3_D65: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_2020: CFString
@available(tvOS 4.3, *)
let kCMFormatDescriptionExtension_FullRangeVideo: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_ICCProfile: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_BytesPerRow: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_ChromaLocationTopField: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_ChromaLocationBottomField: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_Left: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_Center: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_TopLeft: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_Top: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_BottomLeft: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_Bottom: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionChromaLocation_DV420: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionConformsToMPEG2VideoProfile: CFString
var kCMMPEG2VideoProfile_HDV_720p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i50: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XF: Int32 { get }
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_TemporalQuality: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_SpatialQuality: CFString
@available(tvOS 9.0, *)
let kCMFormatDescriptionExtension_VerbatimImageDescription: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_Version: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_RevisionLevel: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtension_Vendor: CFString
@available(tvOS 4.0, *)
let kCMFormatDescriptionVendor_Apple: CFString

/*!
	@function	CMVideoFormatDescriptionCreate
	@abstract	Creates a format description for a video media stream.
	@discussion	The caller owns the returned CMFormatDescription, and must release it when done with it. All input parameters
				are copied (the extensions are deep-copied).  The caller can deallocate them or re-use them after making this call.
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionCreate(allocator: CFAllocator?, _ codecType: CMVideoCodecType, _ width: Int32, _ height: Int32, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionCreateForImageBuffer
	@abstract	Creates a format description for a video media stream contained in CVImageBuffers of the type provided.
	@discussion	This convenience function is equivalent to:
	
				CMVideoFormatDescriptionCreate( allocator,
												 ( CVPixelBufferGetTypeID() == CFGetTypeID( imageBuffer ) ? CVPixelBufferGetPixelFormatType( imageBuffer ) : 0,
												 width of image,
												 height of image,
												 extensions );
				
				where extensions is a CFDictionary of attachments to image buffer with keys specified by 
				CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers, and also 
				kCMFormatDescriptionExtension_BytesPerRow if applicable.
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionCreateFromH264ParameterSets
	@abstract	Creates a format description for a video media stream described by H.264 parameter set NAL units.
	@discussion	This function parses the dimensions provided by the parameter sets and creates a format description suitable for a raw H.264 stream.
				The parameter sets' data can come from raw NAL units and must have any emulation prevention bytes needed.
				The supported NAL unit types to be included in the format description are 7 (sequence parameter set), 8 (picture parameter set) and 13 (sequence parameter set extension). At least one sequence parameter set and one picture parameter set must be provided.
*/
@available(tvOS 7.0, *)
func CMVideoFormatDescriptionCreateFromH264ParameterSets(allocator: CFAllocator?, _ parameterSetCount: Int, _ parameterSetPointers: UnsafePointer<UnsafePointer<UInt8>>, _ parameterSetSizes: UnsafePointer<Int>, _ NALUnitHeaderLength: Int32, _ formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionGetH264ParameterSetAtIndex
	@abstract	Returns a parameter set contained in a H.264 format description.
	@discussion	This function parses the AVC decoder configuration record contained in a H.264 video format description and returns the parameter set NAL unit at the given index from it.
				Both parameterSetPointerOut and parameterSetSizeOut may be NULL, parameterSetCountOut will return the total number of parameter set NAL units contained in the AVC decoder configuration record.
				The parameter set NAL units returned will already have any emulation prevention bytes needed.
				The pointer returned in parameterSetPointerOut points to internal memory of videoDesc, and may only be accessed as long as a retain on videoDesc is held.
*/
@available(tvOS 7.0, *)
func CMVideoFormatDescriptionGetH264ParameterSetAtIndex(videoDesc: CMFormatDescription, _ parameterSetIndex: Int, _ parameterSetPointerOut: UnsafeMutablePointer<UnsafePointer<UInt8>>, _ parameterSetSizeOut: UnsafeMutablePointer<Int>, _ parameterSetCountOut: UnsafeMutablePointer<Int>, _ NALUnitHeaderLengthOut: UnsafeMutablePointer<Int32>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionGetDimensions
	@abstract	Returns the dimensions (in encoded pixels)
	@discussion	This does not take into account pixel aspect ratio or clean aperture tags.
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionGetDimensions(videoDesc: CMVideoFormatDescription) -> CMVideoDimensions

/*!
	@function	CMVideoFormatDescriptionGetPresentationDimensions
	@abstract	Returns the dimensions, adjusted to take pixel aspect ratio and/or clean aperture into account.
	@discussion
		Pixel aspect ratio is used to adjust the width, leaving the height alone.
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionGetPresentationDimensions(videoDesc: CMVideoFormatDescription, _ usePixelAspectRatio: Bool, _ useCleanAperture: Bool) -> CGSize

/*!
	@function	CMVideoFormatDescriptionGetCleanAperture
	@abstract	Returns the clean aperture.
	@discussion
		The clean aperture is a rectangle that defines the portion of the encoded pixel dimensions
		that represents image data valid for display.  
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionGetCleanAperture(videoDesc: CMVideoFormatDescription, _ originIsAtTopLeft: Bool) -> CGRect

/*!
	@function	CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers
	@abstract	Returns an array of the keys that are used both as CMVideoFormatDescription extensions
				and CVImageBuffer attachments and attributes.
	@discussion	When specifying a CMFormatDescription for a CMSampleBuffer, the format description must
				be consistent with formatting information attached to the CVImageBuffer. The width, height,
				and codecType must match (for CVPixelBuffers the codec type is given by
				CVPixelBufferGetPixelFormatType(pixelBuffer); for other CVImageBuffers, the codecType must be 0).
				The format description extensions must match the image buffer attachments for all the keys in the
				list returned by this function (if absent in either they must be absent in both).
				
				Currently, the list is:
				
				kCMFormatDescriptionExtension_CleanAperture
				kCMFormatDescriptionExtension_FieldCount
				kCMFormatDescriptionExtension_FieldDetail
				kCMFormatDescriptionExtension_PixelAspectRatio
				kCMFormatDescriptionExtension_ColorPrimaries
				kCMFormatDescriptionExtension_TransferFunction
				kCMFormatDescriptionExtension_GammaLevel
				kCMFormatDescriptionExtension_YCbCrMatrix
				kCMFormatDescriptionExtension_ICCProfile
				kCMFormatDescriptionExtension_ChromaLocationTopField
				kCMFormatDescriptionExtension_ChromaLocationBottomField
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers() -> CFArray

/*!
	@function	CMVideoFormatDescriptionMatchesImageBuffer
	@abstract	Checks to see if a given format description matches an image buffer.
	@discussion	This function uses the keys returned by CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers
				to compares the extensions of the given format description to the attachments of the
				given image buffer (if an attachment is absent in either it must be absent in both).
				It also checks kCMFormatDescriptionExtension_BytesPerRow against CVPixelBufferGetBytesPerRow, if applicable.
*/
@available(tvOS 4.0, *)
func CMVideoFormatDescriptionMatchesImageBuffer(desc: CMVideoFormatDescription, _ imageBuffer: CVImageBuffer) -> Bool

/*!
	@typedef CMMuxedFormatDescriptionRef
	Synonym type used for manipulating muxed media CMFormatDescriptions
*/
typealias CMMuxedFormatDescriptionRef = CMMuxedFormatDescription

/*!
	@enum CMMuxedStreamType
	@discussion Muxed media format/subtype.
	@constant	kCMMuxedStreamType_MPEG1System	MPEG-1 System stream
	@constant	kCMMuxedStreamType_MPEG2Transport	MPEG-2 Transport stream
	@constant	kCMMuxedStreamType_MPEG2Program	MPEG-2 Program stream
	@constant	kCMMuxedStreamType_DV	DV stream
*/
typealias CMMuxedStreamType = FourCharCode
var kCMMuxedStreamType_MPEG1System: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Transport: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Program: CMMuxedStreamType { get }
var kCMMuxedStreamType_DV: CMMuxedStreamType { get }

/*!
	@function	CMMuxedFormatDescriptionCreate
	@abstract	Creates a format description for a muxed media stream.
	@discussion	A muxed format description does not know what the formats are of the substreams within the muxed stream.
				That information will only be discoverable by the demuxer software (or other software which understands
				the details of the muxed bitstream) which will need to produce separate format descriptions for each of
				its output streams. The caller owns the returned CMFormatDescription, and must release it when done
				with it. All input parameters are copied (the extensions are deep-copied).  The caller can deallocate
				them or re-use them after making this call.
*/
@available(tvOS 4.0, *)
func CMMuxedFormatDescriptionCreate(allocator: CFAllocator?, _ muxType: CMMuxedStreamType, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMMuxedFormatDescription?>) -> OSStatus

/*!
	@typedef CMClosedCaptionFormatDescriptionRef
	Synonym type used for manipulating closed-caption media CMFormatDescriptions
*/
typealias CMClosedCaptionFormatDescriptionRef = CMClosedCaptionFormatDescription

/*!
	@enum CMClosedCaptionFormatType
	@discussion Closed-caption media format/subtype.
				Note:  use CMFormatDescriptionCreate to create a CMClosedCaptionFormatDescriptionRef.
	@constant	kCMClosedCaptionFormatType_CEA608	CEA 608-compliant samples
	@constant	kCMClosedCaptionFormatType_CEA708	CEA 708-compliant samples
	@constant	kCMClosedCaptionFormatType_ATSC		ATSC/52 part-4 compliant samples
*/
typealias CMClosedCaptionFormatType = FourCharCode
var kCMClosedCaptionFormatType_CEA608: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_CEA708: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_ATSC: CMClosedCaptionFormatType { get }

/*!
	@typedef CMTextFormatDescriptionRef
	Synonym type used for manipulating Text media CMFormatDescriptions
*/
typealias CMTextFormatDescriptionRef = CMTextFormatDescription

/*!
	@enum CMTextFormatType
	@discussion Text media format/subtype.
	@constant	kCMTextFormatType_QTText	QuickTime Text media
	@constant	kCMTextFormatType_3GText	3GPP Text media
*/
typealias CMTextFormatType = FourCharCode
var kCMTextFormatType_QTText: CMTextFormatType { get }
var kCMTextFormatType_3GText: CMTextFormatType { get }

/*!
	@enum CMTextDisplayFlags
	@discussion Display mode flags for text media.
	@constant	kCMTextDisplayFlag_scrollIn		Text scrolls into the display region.
	@constant	kCMTextDisplayFlag_scrollOut	Text scrolls out of the display region.
	@constant	kCMTextDisplayFlag_scrollDirectionMask	The scrolling direction is set by a two-bit field, obtained from displayFlags using kCMTextDisplayFlag_scrollDirectionMask.
	@constant	kCMTextDisplayFlag_scrollDirection_bottomToTop	Text is vertically scrolled up ("credits style"), entering from the bottom and leaving towards the top.
	@constant	kCMTextDisplayFlag_scrollDirection_rightToLeft	Text is horizontally scrolled ("marquee style"), entering from the right and leaving towards the left.
	@constant	kCMTextDisplayFlag_scrollDirection_topToBottom	Text is vertically scrolled down, entering from the top and leaving towards the bottom.
	@constant	kCMTextDisplayFlag_scrollDirection_leftToRight	Text is horizontally scrolled, entering from the left and leaving towards the right.
	@constant	kCMTextDisplayFlag_continuousKaraoke	Enables the Continuous Karaoke mode where the range of karaoke highlighting extends to include additional ranges rather than the highlighting moves onto the next range.
	@constant	kCMTextDisplayFlag_writeTextVertically	Specifies the text to be rendered vertically.
	@constant	kCMTextDisplayFlag_fillTextRegion	The subtitle display bounds are to be filled with the color specified by kCMTextFormatDescriptionExtension_BackgroundColor.
	@constant	kCMTextDisplayFlag_obeySubtitleFormatting	Specifies that the subtitle display bounds should be used to determine if the subtitles should be placed near the top or the bottom of the video. Otherwise, subtitles should be placed at the bottom of the video.
	@constant	kCMTextDisplayFlag_forcedSubtitlesPresent	There are forced subtitles present, e.g., a subtitle which only displays during foreign language sections of the video. Check individual samples to determine what type of subtitle is contained.
	@constant	kCMTextDisplayFlag_allSubtitlesForced	Treat all subtitle samples as if they contain forced subtitles.
*/
typealias CMTextDisplayFlags = UInt32
var kCMTextDisplayFlag_scrollIn: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollOut: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirectionMask: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_bottomToTop: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_rightToLeft: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_topToBottom: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_leftToRight: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_continuousKaraoke: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_writeTextVertically: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_fillTextRegion: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_obeySubtitleFormatting: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_forcedSubtitlesPresent: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_allSubtitlesForced: CMTextDisplayFlags { get }

/*!
	@enum CMTextJustificationValue
	@discussion Justification modes for text media. Used when specifying either horizontal or vertical justification.
	@constant	kCMTextJustification_left_top	Left justification when specified for horizontal justification, top justification for vertical justification.
	@constant	kCMTextJustification_centered	Center justification (both horizontal and vertical justification).
	@constant	kCMTextJustification_bottom_right	Bottom justification when specified for vertical justification, right justification for horizontal justification.
*/
typealias CMTextJustificationValue = Int8
var kCMTextJustification_left_top: CMTextJustificationValue { get }
var kCMTextJustification_centered: CMTextJustificationValue { get }
var kCMTextJustification_bottom_right: CMTextJustificationValue { get }
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_DisplayFlags: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_BackgroundColor: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionColor_Red: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionColor_Green: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionColor_Blue: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionColor_Alpha: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_DefaultTextBox: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionRect_Top: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionRect_Left: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionRect_Bottom: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionRect_Right: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_DefaultStyle: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_StartChar: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_Font: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_FontFace: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_ForegroundColor: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_FontSize: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_HorizontalJustification: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_VerticalJustification: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_EndChar: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_FontTable: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_TextJustification: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_Height: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionStyle_Ascent: CFString
@available(tvOS 4.0, *)
let kCMTextFormatDescriptionExtension_DefaultFontName: CFString

/*!
	@function	CMTextFormatDescriptionGetDisplayFlags
	@abstract	Returns the displayFlags.
	@discussion
		These are the flags that control how the text appears. The function can return kCMFormatDescriptionError_ValueNotAvailable for formats without display flags.
*/
@available(tvOS 4.0, *)
func CMTextFormatDescriptionGetDisplayFlags(desc: CMFormatDescription, _ outDisplayFlags: UnsafeMutablePointer<CMTextDisplayFlags>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionGetJustification
	@abstract	Returns horizontal and vertical justification.
	@discussion
		Values are kCMTextJustification_* constants. The function returns kCMFormatDescriptionError_ValueNotAvailable for format descriptions that do not carry text justification.
*/
@available(tvOS 4.0, *)
func CMTextFormatDescriptionGetJustification(desc: CMFormatDescription, _ outHorizontalJust: UnsafeMutablePointer<CMTextJustificationValue>, _ outVerticalJust: UnsafeMutablePointer<CMTextJustificationValue>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionGetDefaultTextBox
	@abstract	Returns the default text box.
	@discussion
		Within a text track, text is rendered within a text box.  There is a default text box set, which can be over-ridden by a sample. The function can return kCMFormatDescriptionError_ValueNotAvailable for format descriptions that do not carry a default text box.
*/
@available(tvOS 4.0, *)
func CMTextFormatDescriptionGetDefaultTextBox(desc: CMFormatDescription, _ originIsAtTopLeft: Bool, _ heightOfTextTrack: CGFloat, _ outDefaultTextBox: UnsafeMutablePointer<CGRect>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionGetDefaultStyle
	@abstract	Returns the default style. 
	@discussion	
		The function returns kCMFormatDescriptionError_ValueNotAvailable for format descriptions that do not carry default style information.
*/
@available(tvOS 4.0, *)
func CMTextFormatDescriptionGetDefaultStyle(desc: CMFormatDescription, _ outLocalFontID: UnsafeMutablePointer<UInt16>, _ outBold: UnsafeMutablePointer<DarwinBoolean>, _ outItalic: UnsafeMutablePointer<DarwinBoolean>, _ outUnderline: UnsafeMutablePointer<DarwinBoolean>, _ outFontSize: UnsafeMutablePointer<CGFloat>, _ outColorComponents: UnsafeMutablePointer<CGFloat>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionGetFontName
	@abstract	Returns the font name for a local font ID.
	@discussion
		Some format descriptions carry a mapping from local font IDs to font names. The function returns kCMFormatDescriptionError_ValueNotAvailable for format descriptions that do not carry such a font mapping table.
*/
@available(tvOS 4.0, *)
func CMTextFormatDescriptionGetFontName(desc: CMFormatDescription, _ localFontID: UInt16, _ outFontName: AutoreleasingUnsafeMutablePointer<CFString?>) -> OSStatus
typealias CMSubtitleFormatType = FourCharCode
var kCMSubtitleFormatType_3GText: CMSubtitleFormatType { get }
var kCMSubtitleFormatType_WebVTT: CMSubtitleFormatType { get }

/*!
	@typedef CMTimeCodeFormatDescriptionRef
	SYnonym type used for manipulating TimeCode media CMFormatDescriptions
*/
typealias CMTimeCodeFormatDescriptionRef = CMTimeCodeFormatDescription

/*!
	@enum CMTimeCodeFormatType
	@discussion The types of TimeCode.
	@constant	kCMTimeCodeFormatType_TimeCode32 32-bit timeCode sample.
	@constant	kCMTimeCodeFormatType_TimeCode64 64-bit timeCode sample.
	@constant	kCMTimeCodeFormatType_Counter32 32-bit counter-mode sample.
	@constant	kCMTimeCodeFormatType_Counter64 64-bit counter-mode sample.
*/
typealias CMTimeCodeFormatType = FourCharCode
var kCMTimeCodeFormatType_TimeCode32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_TimeCode64: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter64: CMTimeCodeFormatType { get }
var kCMTimeCodeFlag_DropFrame: UInt32 { get }
var kCMTimeCodeFlag_24HourMax: UInt32 { get }
var kCMTimeCodeFlag_NegTimesOK: UInt32 { get }

/*!
	@function	CMTimeCodeFormatDescriptionCreate
	@abstract	Creates a format description for a timecode media.
	@discussion	The caller owns the returned CMFormatDescription, and must release it when done with it. All input parameters
				are copied (the extensions are deep-copied).  The caller can deallocate them or re-use them after making this call.
*/
@available(tvOS 4.0, *)
func CMTimeCodeFormatDescriptionCreate(allocator: CFAllocator?, _ timeCodeFormatType: CMTimeCodeFormatType, _ frameDuration: CMTime, _ frameQuanta: UInt32, _ tcFlags: UInt32, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus

/*!
	@function	CMTimeCodeFormatDescriptionGetFrameDuration
	@abstract	Returns the duration of each frame (eg. 100/2997)
*/
@available(tvOS 4.0, *)
func CMTimeCodeFormatDescriptionGetFrameDuration(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> CMTime

/*!
	@function	CMTimeCodeFormatDescriptionGetFrameQuanta
	@abstract	Returns the frames/sec for timecode (eg. 30) OR frames/tick for counter mode
*/
@available(tvOS 4.0, *)
func CMTimeCodeFormatDescriptionGetFrameQuanta(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> UInt32

/*!
	@function	CMTimeCodeFormatDescriptionGetTimeCodeFlags
	@abstract	Returns the flags for kCMTimeCodeFlag_DropFrame, kCMTimeCodeFlag_24HourMax, kCMTimeCodeFlag_NegTimesOK
*/
@available(tvOS 4.0, *)
func CMTimeCodeFormatDescriptionGetTimeCodeFlags(desc: CMTimeCodeFormatDescription) -> UInt32
@available(tvOS 4.0, *)
let kCMTimeCodeFormatDescriptionExtension_SourceReferenceName: CFString
@available(tvOS 4.0, *)
let kCMTimeCodeFormatDescriptionKey_Value: CFString
@available(tvOS 4.0, *)
let kCMTimeCodeFormatDescriptionKey_LangCode: CFString

/*!
	@typedef CMMetadataFormatDescriptionRef
	SYnonym type used for manipulating Metadata media CMFormatDescriptions
*/
typealias CMMetadataFormatDescriptionRef = CMMetadataFormatDescription

/*!
	@enum CMMetadataFormatType
	@discussion The subtypes of Metadata media type.
	@constant	kCMMetadataFormatType_ICY		SHOUTCast format.
	@constant	kCMMetadataFormatType_ID3		ID3 format.
	@constant	kCMMetadataFormatType_Boxed		Boxed format.
*/
typealias CMMetadataFormatType = FourCharCode
var kCMMetadataFormatType_ICY: CMMetadataFormatType { get }
var kCMMetadataFormatType_ID3: CMMetadataFormatType { get }
var kCMMetadataFormatType_Boxed: CMMetadataFormatType { get }
@available(tvOS 4.0, *)
let kCMFormatDescriptionExtensionKey_MetadataKeyTable: CFString
@available(tvOS 4.0, *)
let kCMMetadataFormatDescriptionKey_Namespace: CFString
@available(tvOS 4.0, *)
let kCMMetadataFormatDescriptionKey_Value: CFString
@available(tvOS 4.0, *)
let kCMMetadataFormatDescriptionKey_LocalID: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionKey_DataType: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionKey_DataTypeNamespace: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionKey_ConformingDataTypes: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionKey_LanguageTag: CFString
@available(tvOS 9.0, *)
let kCMMetadataFormatDescriptionKey_StructuralDependency: CFString
@available(tvOS 9.0, *)
let kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType: CFString
@available(tvOS 8.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag: CFString
@available(tvOS 9.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency: CFString
@available(tvOS 4.0, *)
func CMMetadataFormatDescriptionCreateWithKeys(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ keys: CFArray?, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(allocator: CFAllocator?, _ srcDesc: CMMetadataFormatDescription, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(allocator: CFAllocator?, _ srcDesc1: CMMetadataFormatDescription, _ srcDesc2: CMMetadataFormatDescription, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(tvOS 4.0, *)
func CMMetadataFormatDescriptionGetKeyWithLocalID(desc: CMMetadataFormatDescription, _ localKeyID: OSType) -> CFDictionary?
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionGetIdentifiers(desc: CMMetadataFormatDescription) -> CFArray?
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }

/*!
	@constant	kCMImageDescriptionFlavor_QuickTimeMovie
	@abstract	Chooses the QuickTime Movie Image Description format.
	@discussion	Passing NULL is equivalent to passing this constant.

	@constant	kCMImageDescriptionFlavor_ISOFamily
	@abstract	Chooses the ISO family sample description format, used in MP4, M4V, etc.

	@constant	kCMImageDescriptionFlavor_3GPFamily
	@abstract	Chooses the 3GP family sample description format.
	@discussion	This implies kCMImageDescriptionFlavor_ISOFamily and adds additional rules specific to the 3GP family.
*/
@available(tvOS 8.0, *)
let kCMImageDescriptionFlavor_QuickTimeMovie: CFString
@available(tvOS 8.0, *)
let kCMImageDescriptionFlavor_ISOFamily: CFString
@available(tvOS 8.0, *)
let kCMImageDescriptionFlavor_3GPFamily: CFString

/*!
	@function	CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData
	@abstract	Creates a CMVideoFormatDescription from a big-endian ImageDescription data structure.

	@param	allocator						Allocator to use for allocating the CMVideoFormatDescription object. May be NULL.
	@param	imageDescriptionData			ImageDescription data structure in big-endian byte ordering.
	@param	imageDescriptionSize			Size of ImageDescription data structure.
	@param	imageDescriptionStringEncoding	Pass CFStringGetSystemEncoding() or GetApplicationTextEncoding().
	@param	imageDescriptionFlavor			kCMImageDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	videoFormatDescriptionOut		Receives new CMVideoFormatDescription.
*/
@available(tvOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(allocator: CFAllocator?, _ imageDescriptionData: UnsafePointer<UInt8>, _ imageDescriptionSize: Int, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer
	@abstract	Creates a CMVideoFormatDescription from a big-endian ImageDescription data structure in a CMBlockBuffer.

	@param	allocator						Allocator to use for allocating the CMVideoFormatDescription object. May be NULL.
	@param	imageDescriptionBlockBuffer		CMBlockBuffer containing ImageDescription data structure in big-endian byte ordering.
	@param	imageDescriptionStringEncoding	Pass CFStringGetSystemEncoding() or GetApplicationTextEncoding().
	@param	imageDescriptionFlavor			kCMImageDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	videoFormatDescriptionOut		Receives new CMVideoFormatDescription.
*/
@available(tvOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ imageDescriptionBlockBuffer: CMBlockBuffer, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus

/*!
	@function	CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer
	@abstract	Copies the contents of a CMVideoFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator						Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	videoFormatDescription			CMVideoFormatDescription to be copied.
	@param	imageDescriptionStringEncoding	Pass CFStringGetSystemEncoding() or GetApplicationTextEncoding().
	@param	imageDescriptionFlavor			kCMImageDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	imageDescriptionBlockBufferOut	Receives new CMBlockBuffer containing ImageDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ imageDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSwapBigEndianImageDescriptionToHost
	@abstract	Converts an ImageDescription data structure from big-endian to host-endian in place.

	@param	imageDescriptionData			ImageDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	imageDescriptionSize			Size of ImageDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianImageDescriptionToHost(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianImageDescriptionToBig
	@abstract	Converts an ImageDescription data structure from host-endian to big-endian in place.

	@param	imageDescriptionData			ImageDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	imageDescriptionSize			Size of ImageDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianImageDescriptionToBig(imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus

/*!
	@constant	kCMSoundDescriptionFlavor_QuickTimeMovie
	@abstract	Chooses the most backwards-compatible QuickTime Movie Sound Description format.
	@discussion	A V1 sound description will be written if possible.
				If a V1 sound description is written for CBR or PCM audio, the sample tables will need to use the legacy CBR layout.

	@constant	kCMSoundDescriptionFlavor_QuickTimeMovieV2
	@abstract	Chooses the QuickTime Movie Sound Description V2 format.
	@discussion	A V2 sound description will be written.
				V2 Sound Descriptions contain no legacy CBR layout, and use 'lpcm' for all flavors of PCM.

	@constant	kCMSoundDescriptionFlavor_ISOFamily
	@abstract	Chooses the ISO family sample description format, used in MP4, M4A, etc.

	@constant	kCMSoundDescriptionFlavor_3GPFamily
	@abstract	Chooses the 3GP family sample description format.
	@discussion	This implies kCMSoundDescriptionFlavor_ISOFamily and adds additional rules specific to the 3GP family.
*/
@available(tvOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovie: CFString
@available(tvOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovieV2: CFString
@available(tvOS 8.0, *)
let kCMSoundDescriptionFlavor_ISOFamily: CFString
@available(tvOS 8.0, *)
let kCMSoundDescriptionFlavor_3GPFamily: CFString

/*!
	@function	CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData
	@abstract	Creates a CMAudioFormatDescription from a big-endian SoundDescription data structure.

	@param	allocator						Allocator to use for allocating the CMAudioFormatDescription object. May be NULL.
	@param	soundDescriptionData			SoundDescription data structure in big-endian byte ordering.
	@param	soundDescriptionSize			Size of SoundDescription data structure.
	@param	soundDescriptionFlavor			kCMSoundDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	audioFormatDescriptionOut		Receives new CMAudioFormatDescription.
*/
@available(tvOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(allocator: CFAllocator?, _ soundDescriptionData: UnsafePointer<UInt8>, _ soundDescriptionSize: Int, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus

/*!
	@function	CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer
	@abstract	Creates a CMAudioFormatDescription from a big-endian SoundDescription data structure in a CMBlockBuffer.

	@param	allocator						Allocator to use for allocating the CMAudioFormatDescription object. May be NULL.
	@param	soundDescriptionBlockBuffer		CMBlockBuffer containing SoundDescription data structure in big-endian byte ordering.
	@param	soundDescriptionFlavor			kCMSoundDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	audioFormatDescriptionOut		Receives new CMAudioFormatDescription.
*/
@available(tvOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus

/*!
	@function	CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer
	@abstract	Copies the contents of a CMAudioFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator						Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	audioFormatDescription			CMAudioFormatDescription to be copied.
	@param	soundDescriptionFlavor			kCMSoundDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
	@param	soundDescriptionBlockBufferOut	Receives new CMBlockBuffer containing SoundDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(allocator: CFAllocator?, _ audioFormatDescription: CMAudioFormatDescription, _ soundDescriptionFlavor: CFString?, _ soundDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout
	@abstract	Examine a big-endian SoundDescription data structure in a CMBlockBuffer, and report whether the sample tables will need to use the legacy CBR layout.

	@param	soundDescriptionBlockBuffer		CMBlockBuffer containing SoundDescription data structure in big-endian byte ordering.
	@param	soundDescriptionFlavor			kCMSoundDescriptionFlavor constant or NULL for QuickTimeMovie flavor.
*/
@available(tvOS 8.0, *)
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?) -> Bool

/*!
	@function	CMSwapBigEndianSoundDescriptionToHost
	@abstract	Converts a SoundDescription data structure from big-endian to host-endian in place.

	@param	soundDescriptionData			SoundDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	soundDescriptionSize			Size of SoundDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianSoundDescriptionToHost(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianSoundDescriptionToBig
	@abstract	Converts a SoundDescription data structure from host-endian to big-endian in place.

	@param	soundDescriptionData			SoundDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	soundDescriptionSize			Size of SoundDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianSoundDescriptionToBig(soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus

/*!
	@function	CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData
	@abstract	Creates a CMTextFormatDescription from a big-endian TextDescription data structure.

	@param	allocator						Allocator to use for allocating the CMTextFormatDescription object. May be NULL.
	@param	textDescriptionData				TextDescription data structure in big-endian byte ordering.
	@param	textDescriptionSize				Size of TextDescription data structure.
	@param	textDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	mediaType,						Pass kCMMediaType_Text or kCMMediaType_Subtitle.
	@param	textFormatDescriptionOut		Receives new CMTextFormatDescription.
*/
@available(tvOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator: CFAllocator?, _ textDescriptionData: UnsafePointer<UInt8>, _ textDescriptionSize: Int, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer
	@abstract	Creates a CMTextFormatDescription from a big-endian TextDescription data structure in a CMBlockBuffer.

	@param	allocator						Allocator to use for allocating the CMTextFormatDescription object. May be NULL.
	@param	textDescriptionBlockBuffer		CMBlockBuffer containing TextDescription data structure in big-endian byte ordering.
	@param	textDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	mediaType,						Pass kCMMediaType_Text or kCMMediaType_Subtitle.
	@param	textFormatDescriptionOut		Receives new CMTextFormatDescription.
*/
@available(tvOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textDescriptionBlockBuffer: CMBlockBuffer, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus

/*!
	@function	CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer
	@abstract	Copies the contents of a CMTextFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator						Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	textFormatDescription			CMTextFormatDescription to be copied.
	@param	textDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	textDescriptionBlockBufferOut	Receives new CMBlockBuffer containing TextDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(allocator: CFAllocator?, _ textFormatDescription: CMTextFormatDescription, _ textDescriptionFlavor: CFString?, _ textDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSwapBigEndianTextDescriptionToHost
	@abstract	Converts a TextDescription data structure from big-endian to host-endian in place.

	@param	textDescriptionData				TextDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	textDescriptionSize				Size of TextDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianTextDescriptionToHost(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianTextDescriptionToBig
	@abstract	Converts a TextDescription data structure from host-endian to big-endian in place.

	@param	textDescriptionData				TextDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	textDescriptionSize				Size of TextDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianTextDescriptionToBig(textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus

/*!
	@function	CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData
	@abstract	Creates a CMClosedCaptionFormatDescription from a big-endian ClosedCaptionDescription data structure.

	@param	allocator							Allocator to use for allocating the CMClosedCaptionFormatDescription object. May be NULL.
	@param	closedCaptionDescriptionData		ClosedCaptionDescription data structure in big-endian byte ordering.
	@param	closedCaptionDescriptionSize		Size of ClosedCaptionDescription data structure.
	@param	closedCaptionDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	closedCaptionFormatDescriptionOut	Receives new CMClosedCaptionFormatDescription.
*/
@available(tvOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator: CFAllocator?, _ closedCaptionDescriptionData: UnsafePointer<UInt8>, _ closedCaptionDescriptionSize: Int, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus

/*!
	@function	CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer
	@abstract	Creates a CMClosedCaptionFormatDescription from a big-endian ClosedCaptionDescription data structure in a CMBlockBuffer.

	@param	allocator							Allocator to use for allocating the CMClosedCaptionFormatDescription object. May be NULL.
	@param	closedCaptionDescriptionBlockBuffer	CMBlockBuffer containing ClosedCaptionDescription data structure in big-endian byte ordering.
	@param	closedCaptionDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	closedCaptionFormatDescriptionOut	Receives new CMClosedCaptionFormatDescription.
*/
@available(tvOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionDescriptionBlockBuffer: CMBlockBuffer, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus

/*!
	@function	CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer
	@abstract	Copies the contents of a CMClosedCaptionFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator								Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	closedCaptionFormatDescription			CMClosedCaptionFormatDescription to be copied.
	@param	closedCaptionDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	closedCaptionDescriptionBlockBufferOut	Receives new CMBlockBuffer containing ClosedCaptionDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(allocator: CFAllocator?, _ closedCaptionFormatDescription: CMClosedCaptionFormatDescription, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSwapBigEndianClosedCaptionDescriptionToHost
	@abstract	Converts a ClosedCaptionDescription data structure from big-endian to host-endian in place.

	@param	closedCaptionDescriptionData	ClosedCaptionDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	closedCaptionDescriptionSize	Size of ClosedCaptionDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianClosedCaptionDescriptionToHost(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianClosedCaptionDescriptionToBig
	@abstract	Converts a ClosedCaptionDescription data structure from host-endian to big-endian in place.

	@param	closedCaptionDescriptionData	ClosedCaptionDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	closedCaptionDescriptionSize	Size of ClosedCaptionDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianClosedCaptionDescriptionToBig(closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus

/*!
	@function	CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData
	@abstract	Creates a CMTimeCodeFormatDescription from a big-endian TimeCodeDescription data structure.

	@param	allocator						Allocator to use for allocating the CMTimeCodeFormatDescription object. May be NULL.
	@param	timeCodeDescriptionData			TimeCodeDescription data structure in big-endian byte ordering.
	@param	timeCodeDescriptionSize			Size of TimeCodeDescription data structure.
	@param	timeCodeDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	timeCodeFormatDescriptionOut	Receives new CMTimeCodeFormatDescription.
*/
@available(tvOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator: CFAllocator?, _ timeCodeDescriptionData: UnsafePointer<UInt8>, _ timeCodeDescriptionSize: Int, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus

/*!
	@function	CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer
	@abstract	Creates a CMTimeCodeFormatDescription from a big-endian TimeCodeDescription data structure in a CMBlockBuffer.

	@param	allocator						Allocator to use for allocating the CMTimeCodeFormatDescription object. May be NULL.
	@param	timeCodeDescriptionBlockBuffer	CMBlockBuffer containing TimeCodeDescription data structure in big-endian byte ordering.
	@param	timeCodeDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	timeCodeFormatDescriptionOut	Receives new CMTimeCodeFormatDescription.
*/
@available(tvOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeDescriptionBlockBuffer: CMBlockBuffer, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus

/*!
	@function	CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer
	@abstract	Copies the contents of a CMTimeCodeFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator							Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	timeCodeFormatDescription			CMTimeCodeFormatDescription to be copied.
	@param	timeCodeDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	timeCodeDescriptionBlockBufferOut	Receives new CMBlockBuffer containing TimeCodeDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(allocator: CFAllocator?, _ timeCodeFormatDescription: CMTimeCodeFormatDescription, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSwapBigEndianTimeCodeDescriptionToHost
	@abstract	Converts a TimeCodeDescription data structure from big-endian to host-endian in place.

	@param	timeCodeDescriptionData			TimeCodeDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	timeCodeDescriptionSize			Size of TimeCodeDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianTimeCodeDescriptionToHost(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianTimeCodeDescriptionToBig
	@abstract	Converts a TimeCodeDescription data structure from host-endian to big-endian in place.

	@param	timeCodeDescriptionData			TimeCodeDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	timeCodeDescriptionSize			Size of TimeCodeDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianTimeCodeDescriptionToBig(timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus

/*!
	@function	CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData
	@abstract	Creates a CMMetadataFormatDescription from a big-endian MetadataDescription data structure.

	@param	allocator						Allocator to use for allocating the CMMetadataFormatDescription object. May be NULL.
	@param	metadataDescriptionData			MetadataDescription data structure in big-endian byte ordering.
	@param	metadataDescriptionSize			Size of MetadataDescription data structure.
	@param	metadataDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	metadataFormatDescriptionOut	Receives new CMMetadataFormatDescriptionRef.
*/
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(allocator: CFAllocator?, _ metadataDescriptionData: UnsafePointer<UInt8>, _ metadataDescriptionSize: Int, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus

/*!
	@function	CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer
	@abstract	Creates a CMMetadataFormatDescription from a big-endian MetadataDescription data structure in a CMBlockBuffer.

	@param	allocator						Allocator to use for allocating the CMMetadataFormatDescription object. May be NULL.
	@param	metadataDescriptionBlockBuffer	CMBlockBuffer containing MetadataDescription data structure in big-endian byte ordering.
	@param	metadataDescriptionFlavor		Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	metadataFormatDescriptionOut	Receives new CMMetadataFormatDescriptionRef.
*/
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataDescriptionBlockBuffer: CMBlockBuffer, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus

/*!
	@function	CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer
	@abstract	Copies the contents of a CMMetadataFormatDescription to a CMBlockBuffer in big-endian byte ordering.
	@discussion	On return, the caller owns the returned CMBlockBuffer, and must release it when done with it.
                Note that the dataRefIndex field of the SampleDescription is intentionally filled with
                garbage values (0xFFFF).  The caller must overwrite these values with a valid dataRefIndex
                if writing the SampleDescription to a QuickTime/ISO file.

	@param	allocator							Allocator to use for allocating the CMBlockBuffer object. May be NULL.
	@param	metadataFormatDescription			CMMetadataFormatDescriptionRef to be copied.
	@param	metadataDescriptionFlavor			Reserved for future use. Pass NULL for QuickTime Movie or ISO flavor.
	@param	metadataDescriptionBlockBufferOut	Receives new CMBlockBuffer containing MetadataDescription data structure in big-endian byte ordering.
*/
@available(tvOS 8.0, *)
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(allocator: CFAllocator?, _ metadataFormatDescription: CMMetadataFormatDescription, _ metadataDescriptionFlavor: CFString?, _ metadataDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSwapBigEndianMetadataDescriptionToHost
	@abstract	Converts a MetadataDescription data structure from big-endian to host-endian in place.

	@param	metadataDescriptionData			MetadataDescription data structure in big-endian byte ordering to be converted to host-endian byte ordering.
	@param	metadataDescriptionSize			Size of MetadataDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapBigEndianMetadataDescriptionToHost(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus

/*!
	@function	CMSwapHostEndianMetadataDescriptionToBig
	@abstract	Converts a MetadataDescription data structure from host-endian to big-endian in place.

	@param	metadataDescriptionData			MetadataDescription data structure in host-endian byte ordering to be converted to big-endian byte ordering.
	@param	metadataDescriptionSize			Size of MetadataDescription data structure.
*/
@available(tvOS 8.0, *)
func CMSwapHostEndianMetadataDescriptionToBig(metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus

/*!
	@header		CMMemoryPool.h
	@abstract	Memory pool for optimizing repeated large block allocation.
	@discussion
		CMMemoryPool is a memory allocation service that holds onto a pool of
		recently deallocated memory so as to speed up subsequent allocations of the same size.  
		It's intended for cases where large memory blocks need to be repeatedly allocated --
		for example, the compressed data output by a video encoder.
		
		All of its allocations are on the granularity of page sizes; it does not suballocate
		memory within pages, so it is a poor choice for allocating tiny blocks.
		For example, it's appropriate to use as the blockAllocator argument to
		CMBlockBufferCreateWithMemoryBlock, but not the structureAllocator argument --
		use kCFAllocatorDefault instead.

		When you no longer need to allocate memory from the pool, call CMMemoryPoolInvalidate
		and CFRelease.  Calling CMMemoryPoolInvalidate tells the pool to stop holding onto
		memory for reuse.  Note that the pool's CFAllocator can outlive the pool, owing
		to the way that CoreFoundation is designed: CFAllocators are themselves CF objects,
		and every object allocated with a CFAllocator implicitly retains the CFAllocator 
		until it is finalized.  After the CMMemoryPool is invalidated or finalized,
		its CFAllocator allocates and deallocates with no pooling behavior.
		
		CMMemoryPool deallocates memory if it has not been recycled in 0.5 second,
		so that short-term peak usage does not cause persistent bloat.
		(This period may be overridden by specifying kCMMemoryPoolOption_AgeOutPeriod.)
		Such "aging out" is done during the pool's CFAllocatorAllocate and
		CFAllocatorDeallocate methods.
*/
typealias CMMemoryPoolRef = CMMemoryPool
@available(tvOS 6.0, *)
func CMMemoryPoolGetTypeID() -> CFTypeID

/*!
	@const		kCMMemoryPoolOption_AgeOutPeriod
	@abstract	Specifies how long memory should be allowed to hang out in the pool before being deallocated.
	@discussion	Pass this in the options dictionary to CMMemoryPoolCreate.
*/
@available(tvOS 6.0, *)
let kCMMemoryPoolOption_AgeOutPeriod: CFString

/*!
	@function	CMMemoryPoolCreate
	@abstract	Creates a new CMMemoryPool.
*/
@available(tvOS 6.0, *)
func CMMemoryPoolCreate(options: CFDictionary?) -> CMMemoryPool

/*!
	@function	CMMemoryPoolGetAllocator
	@abstract	Returns the pool's CFAllocator.
*/
@available(tvOS 6.0, *)
func CMMemoryPoolGetAllocator(pool: CMMemoryPool) -> CFAllocator

/*!
	@function	CMMemoryPoolFlush
	@abstract	Deallocates all memory the pool was holding for recycling.
*/
@available(tvOS 6.0, *)
func CMMemoryPoolFlush(pool: CMMemoryPool)

/*!
	@function	CMMemoryPoolInvalidate
	@abstract	Stops the pool from recycling.
	@discussion
		When CMMemoryPoolInvalidate is called the pool's allocator stops recycling memory.
		The pool deallocates any memory it was holding for recycling.
		This also happens when the retain count of the CMMemoryPool drops to zero, 
		except that under GC it may be delayed.
*/
@available(tvOS 6.0, *)
func CMMemoryPoolInvalidate(pool: CMMemoryPool)
var kCMMetadataIdentifierError_AllocationFailed: OSStatus { get }
var kCMMetadataIdentifierError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataIdentifierError_BadKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyLength: OSStatus { get }
var kCMMetadataIdentifierError_BadKeyType: OSStatus { get }
var kCMMetadataIdentifierError_BadNumberKey: OSStatus { get }
var kCMMetadataIdentifierError_BadKeySpace: OSStatus { get }
var kCMMetadataIdentifierError_BadIdentifier: OSStatus { get }
var kCMMetadataIdentifierError_NoKeyValueAvailable: OSStatus { get }
var kCMMetadataDataTypeRegistryError_AllocationFailed: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiredParameterMissing: OSStatus { get }
var kCMMetadataDataTypeRegistryError_BadDataTypeIdentifier: OSStatus { get }
var kCMMetadataDataTypeRegistryError_DataTypeAlreadyRegistered: OSStatus { get }
var kCMMetadataDataTypeRegistryError_RequiresConformingBaseType: OSStatus { get }
var kCMMetadataDataTypeRegistryError_MultipleConformingBaseTypes: OSStatus { get }

/*!
	@const kCMMetadataKeySpace_QuickTimeUserData
		Metadata keyspace for QuickTime User Data keys.
	@const kCMMetadataKeySpace_ISOUserData
		Metadata keyspace for MPEG-4 User Data keys.
	@const kCMMetadataKeySpace_QuickTimeMetadata
		Metadata keyspace for QuickTime Metadata keys.
	@const kCMMetadataKeySpace_iTunes
		Metadata keyspace for iTunes keys.
	@const kCMMetadataKeySpace_ID3
		Metadata keyspace for ID3 keys.
	@const kCMMetadataKeySpace_Icy
		Metadata keyspace for ShoutCast keys.
*/
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_QuickTimeUserData: CFString
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_ISOUserData: CFString
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_QuickTimeMetadata: CFString
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_iTunes: CFString
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_ID3: CFString
@available(tvOS 8.0, *)
let kCMMetadataKeySpace_Icy: CFString

/*!
	@const kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709
		Location information in ISO-6709 format.
	@const kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing
		Direction the observer is facing.
*/
@available(tvOS 8.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709: CFString
@available(tvOS 8.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing: CFString

/*!
	@const kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform
		An affine transform that can be used in place of a track matrix for
		displaying a video track, to better reflect the current orientation
		of a video camera with respect to a scene.  For example, if the camera
		is rotated after a recording has started, the presence of this metadata
		will allow a player to adjust its rendering at the time the rotation occurred.
*/
@available(tvOS 8.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform: CFString

/*!
	@const kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation
		Video orientation as defined by TIFF/EXIF, which is enumerated by CGImagePropertyOrientation
		(see <ImageIO/CGImageProperties.h>).
*/
@available(tvOS 9.0, *)
let kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation: CFString

/*!
	@function	CMMetadataCreateIdentifierForKeyAndKeySpace
	@abstract	Creates a URL-like string identifier that represents a key/keyspace tuple.
    @discussion Metadata entities are identified by a key whose interpretation
                is defined by its keyspace.  When writing metadata to a QuickTime
                Movie, this tuple is part of the track's format description.
				
                The following constants make up the current list of supported keyspaces,
				which are documented elsewhere in this file:
<ul>				kCMMetadataKeySpace_QuickTimeUserData
<li>				kCMMetadataKeySpace_ISOUserData
<li>				kCMMetadataKeySpace_iTunes
<li>				kCMMetadataKeySpace_ID3
<li>				kCMMetadataKeySpace_QuickTimeMetadata
<li>				kCMMetadataKeySpace_Icy
</ul>
				Some keyspaces use OSTypes (a.k.a. FourCharCodes) to define their
				keys, and as such their keys are four bytes in length. The keyspaces
				that fall into this category are: kCMMetadataKeySpace_QuickTimeUserData,
				kCMMetadataKeySpace_ISOUserData, kCMMetadataKeySpace_iTunes, and
				kCMMetadataKeySpace_ID3.
				
				The keyspace kCMMetadataKeySpace_QuickTimeMetadata defines its
				key values to be expressed as reverse-DNS strings, which allows
				third parties to define their own keys in a well established way
				that avoids collisions.
				
				As a matter of convenience, known keyspaces allow for a key
				to be passed in using a variety of CFTypes.  Note that what
				is returned by CMMetadataCreateKeyFromIdentifier depends upon the
				keyspace, and may be a different CFType than what is passed
				to this routine (see the discussion below for what CFTypes are
				returned for known keyspaces).  To get a key represented as
				CFData, call CMMetadataCreateKeyFromIdentifierAsCFData.
				
				For OSType keyspaces, a key may be passed as a CFNumber,
				a CFString, or a CFData. A key passed as a CFNumber will have
				its value retrieved as kCFNumberSInt32Type comprising the four
				bytes of the key’s numeric value in big-endian byte order.
				A key passed as a CFString must be a valid ASCII string of four
				characters. A key passed as a CFData must be comprised of the
				four bytes of the key’s numeric value in big-endian byte order.
				
				All other keyspaces allow the key to be passed as a CFString
				or CFData. In both cases, the key will be interpreted as an
				ASCII string for the purposes of identifier encoding.
*/
@available(tvOS 8.0, *)
func CMMetadataCreateIdentifierForKeyAndKeySpace(allocator: CFAllocator?, _ key: AnyObject, _ keySpace: CFString, _ identifierOut: UnsafeMutablePointer<CFString?>) -> OSStatus

/*!
	@function	CMMetadataCreateKeyFromIdentifier
    @abstract   Creates a copy of the key encoded in the identifier as a CFType.
    @discussion	The returned CFType is based on the keyspace encoded in the identifier.
    			
    			For OSType keyspaces, the key will be returned as a CFNumber,
				where a big endian interpretation of its kCFNumberSInt32Type value
				represents the four bytes of the key's numeric value.
    			
    			For the keyspaces kCMMetadataKeySpace_QuickTimeMetadata and
				kCMMetadataKeySpace_Icy, the key will be returned as a CFString.
				
				All other keyspaces will have the function return the key as a CFData.
*/
@available(tvOS 8.0, *)
func CMMetadataCreateKeyFromIdentifier(allocator: CFAllocator?, _ identifier: CFString, _ keyOut: UnsafeMutablePointer<AnyObject?>) -> OSStatus

/*!
	@function	CMMetadataCreateKeyFromIdentifierAsCFData
    @abstract   Creates a copy of the key value that was encoded in the identifier as CFData.
				The bytes in the CFData correpsond to how they are serialized in the file.
*/
@available(tvOS 8.0, *)
func CMMetadataCreateKeyFromIdentifierAsCFData(allocator: CFAllocator?, _ identifier: CFString, _ keyOut: UnsafeMutablePointer<CFData?>) -> OSStatus

/*!
	@function	CMMetadataCreateKeySpaceFromIdentifier
    @abstract   Creates a copy of the key value that was encoded in the identifier as CFData.
*/
@available(tvOS 8.0, *)
func CMMetadataCreateKeySpaceFromIdentifier(allocator: CFAllocator?, _ identifier: CFString, _ keySpaceOut: UnsafeMutablePointer<CFString?>) -> OSStatus

/*!
	@const kCMMetadataBaseDataType_RawData
		A sequence of bytes whose interpretation based upon an agreement between
		the reader and the writer.
	@const kCMMetadataBaseDataType_UTF8
		UTF-8 string.
	@const kCMMetadataBaseDataType_UTF16
		UTF-16 string.
	@const kCMMetadataBaseDataType_GIF
		GIF image.
	@const kCMMetadataBaseDataType_JPEG
		JPEG image.
	@const kCMMetadataBaseDataType_PNG
		PNG image.
	@const kCMMetadataBaseDataType_BMP
		BMP image.
	@const kCMMetadataBaseDataType_Float32
		32-bit big endian floating point number.
	@const kCMMetadataBaseDataType_Float64
		64-bit big endian floating point number.
	@const kCMMetadataBaseDataType_SInt8
		8-bit signed integer.
	@const kCMMetadataBaseDataType_SInt16
		16-bit big endian signed integer.
	@const kCMMetadataBaseDataType_SInt32
		32-bit big endian signed integer.
	@const kCMMetadataBaseDataType_SInt64
		64-bit big endian signed integer.
	@const kCMMetadataBaseDataType_UInt8
		8-bit unsigned integer.
	@const kCMMetadataBaseDataType_UInt16
		16-bit big endian unsigned integer.
	@const kCMMetadataBaseDataType_UInt32
		32-bit big endian unsigned integer.
	@const kCMMetadataBaseDataType_UInt64
		64-bit big endian unsigned integer.
	@const kCMMetadataBaseDataType_PointF32
		Consists of two 32-bit big endian floating point values, the x and y values, respectively.
	@const kCMMetadataBaseDataType_DimensionsF32
		Consists of a 32-bit big endian floating point x value followed by a 32-bit floating point y value.
	@const kCMMetadataBaseDataType_RectF32
		Consists of four 32-bit big endian floating point values, the origin's x, origin's y, width and height values, respectively.
		May also be interpreted as a 32-bit floating point origin followed by a 32-bit floating point dimension.
	@const kCMMetadataDataType_AffineTransformF64
		A 3x3 matrix of 64-bit big endian floating point numbers stored in row-major order that specify an affine transform.
	@const kCMMetadataBaseDataType_PolygonF32
		Three or more pairs of 32-bit floating point numbers (x and y values) that define the verticies of a polygon.
	@const kCMMetadataBaseDataType_PolylineF32
		Two or more pairs of 32-bit floating point numbers (x and y values) that define a multi-segmented line.
	@const kCMMetadataBaseDataType_JSON
		UTF-8 encoded JSON data.
*/
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_RawData: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UTF8: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UTF16: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_GIF: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_JPEG: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_PNG: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_BMP: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_Float32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_Float64: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_SInt8: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_SInt16: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_SInt32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_SInt64: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UInt8: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UInt16: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UInt32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_UInt64: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_PointF32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_DimensionsF32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_RectF32: CFString
@available(tvOS 8.0, *)
let kCMMetadataBaseDataType_AffineTransformF64: CFString
@available(tvOS 9.0, *)
let kCMMetadataBaseDataType_PolygonF32: CFString
@available(tvOS 9.0, *)
let kCMMetadataBaseDataType_PolylineF32: CFString
@available(tvOS 9.0, *)
let kCMMetadataBaseDataType_JSON: CFString

/*!
	@const kCMMetadataDataType_Location_ISO6709
		A string supplying location information in ISO-6709 format.  Conforms to
		kCMMetadataBaseDataType_UTF8.
	@const kCMMetadataDataType_Direction
		A string supplying degrees offset from magnetic North.  Conforms to
		kCMMetadataBaseDataType_UTF8.
*/
@available(tvOS 8.0, *)
let kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709: CFString
@available(tvOS 8.0, *)
let kCMMetadataDataType_QuickTimeMetadataDirection: CFString

/*!
	@function	CMMetadataDataTypeRegistryRegisterDataType
	@abstract	Register a data type with the data type registry.
	@discussion	This routine is called by clients to register a data type with
				the data type registry.  The list of conforming data type identifiers
				must include a base data type.  If the data type has already
				been registered, then it is not considered an error to re-register it
				as long as the list of conforming data type identifiers has the same
				entries as the original;  otherwise an error will be returned.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryRegisterDataType(dataType: CFString, _ description: CFString, _ conformingDataTypes: CFArray) -> OSStatus

/*!
	@function	CMMetadataDataTypeRegistryDataTypeIsRegistered
	@abstract	Tests a data type identifier to see if it has been registered.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryDataTypeIsRegistered(dataType: CFString) -> Bool

/*!
	@function	CMMetadataDataTypeRegistryGetDataTypeDescription
	@abstract	Returns the data type's description (if any was provided when it was registered).
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryGetDataTypeDescription(dataType: CFString) -> CFString

/*!
	@function	CMMetadataDataTypeRegistryGetConformingDataTypes
	@abstract	Returns the data type's conforming data types (if any were
				provided when it was registered).
	@returns	List of conforming data types registered for the given data type.
				NULL is returned if the data type has not been registered.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryGetConformingDataTypes(dataType: CFString) -> CFArray

/*!
	@function	CMMetadataDataTypeRegistryDataTypeConformsToDataType
	@abstract	Checks to see if a data type conforms to another data type.
	@discussion	A given data type will conform to a second data type if any of
				the following are true:
<ul>				1. The data type identifiers are the same.
<li>				2. The first data type identifier's conformance list contains the second data type identifier.
<li>				3. A recursive search of the conforming data types for each element in the first
<li>				   data type's conformance list yields the second data type identifer.
</ul>
	@returns	True if the first data type conforms to the second data type.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryDataTypeConformsToDataType(dataType: CFString, _ conformsToDataType: CFString) -> Bool

/*!
	@function	CMMetadataDataTypeRegistryGetBaseDataTypes
	@abstract	Returns an array of base data type identifiers.
	@discussion	There are a set of base data types that seed the data type
				registry.  All valid data types will have their conformance search
				end with a base data type.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryGetBaseDataTypes() -> CFArray?

/*!
	@function	CMMetadataDataTypeRegistryDataTypeIsBaseDataType
	@abstract	Tests a data type identifier to see if it represents a base data type.
	@discussion	This is simply a convenience method to test to see if a given
				data type identifier is in the array returned by
				CMMetadataDataTypeRegistryGetBaseDataTypes.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryDataTypeIsBaseDataType(dataType: CFString) -> Bool

/*!
	@function	CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType
	@abstract	Returns the base data type identifier that the given data type
				conforms to.
	@discussion	There are a set of base data types that seed the data type
				registry.  All valid data types will have their conformance search
				end with a base data type.
*/
@available(tvOS 8.0, *)
func CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(dataType: CFString) -> CFString
var kCMSampleBufferError_AllocationFailed: OSStatus { get }
var kCMSampleBufferError_RequiredParameterMissing: OSStatus { get }
var kCMSampleBufferError_AlreadyHasDataBuffer: OSStatus { get }
var kCMSampleBufferError_BufferNotReady: OSStatus { get }
var kCMSampleBufferError_SampleIndexOutOfRange: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleSizes: OSStatus { get }
var kCMSampleBufferError_BufferHasNoSampleTimingInfo: OSStatus { get }
var kCMSampleBufferError_ArrayTooSmall: OSStatus { get }
var kCMSampleBufferError_InvalidEntryCount: OSStatus { get }
var kCMSampleBufferError_CannotSubdivide: OSStatus { get }
var kCMSampleBufferError_SampleTimingInfoInvalid: OSStatus { get }
var kCMSampleBufferError_InvalidMediaTypeForOperation: OSStatus { get }
var kCMSampleBufferError_InvalidSampleData: OSStatus { get }
var kCMSampleBufferError_InvalidMediaFormat: OSStatus { get }
var kCMSampleBufferError_Invalidated: OSStatus { get }
var kCMSampleBufferError_DataFailed: OSStatus { get }
var kCMSampleBufferError_DataCanceled: OSStatus { get }
var kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment: UInt32 { get }

/*!
	@typedef	CMSampleBufferRef
	@abstract	A reference to a CMSampleBuffer, a CF object containing zero or more compressed (or uncompressed)
				samples of a particular media type (audio, video, muxed, etc).
		
*/
typealias CMSampleBufferRef = CMSampleBuffer

/*!
	@typedef	CMSampleTimingInfo
	@abstract	Collection of timing info for a sample in a CMSampleBuffer. A single CMSampleTimingInfo struct can
				describe every individual sample in a CMSampleBuffer, if the samples all have the same duration and
				are in presentation order with no gaps.
*/
struct CMSampleTimingInfo {
  var duration: CMTime

  /*! @field duration
  										The duration of the sample. If a single struct applies to
  										each of the samples, they all will have this duration. */
  var presentationTimeStamp: CMTime

  /*! @field presentationTimeStamp
  										The time at which the sample will be presented. If a single
  										struct applies to each of the samples, this is the presentationTime of the
  										first sample. The presentationTime of subsequent samples will be derived by
  										repeatedly adding the sample duration. */
  var decodeTimeStamp: CMTime
  init()
  init(duration: CMTime, presentationTimeStamp: CMTime, decodeTimeStamp: CMTime)
}
@available(tvOS 4.0, *)
let kCMTimingInfoInvalid: CMSampleTimingInfo

/*!
	@typedef	CMSampleBufferMakeDataReadyCallback
	@abstract	Client callback called by CMSampleBufferMakeDataReady (client provides it when calling CMSampleBufferCreate).
	@discussion	This callback must make the data ready (e.g. force a scheduled read to finish). If this callback
				succeeds and returns 0, the CMSampleBuffer will then be marked as "data ready".
*/
typealias CMSampleBufferMakeDataReadyCallback = @convention(c) (CMSampleBuffer, UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	CMSampleBufferCreate
	@abstract	Creates a CMSampleBuffer.
	@discussion	Array parameters (sampleSizeArray, sampleTimingArray) should have only one element if that same
				element applies to all samples. All parameters are copied; on return, the caller can release them,
				free them, reuse them or whatever.  On return, the caller owns the returned CMSampleBuffer, and
				must release it when done with it.
				
				Example of usage for in-display-order video frames:
<ul>				dataBuffer: contains 7 Motion JPEG frames
<li>				dataFormatDescription: describes Motion JPEG video
<li>				numSamples: 7
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {duration = 1001/30000, presentationTimeStamp = 0/30000, decodeTimeStamp = invalid }
<li>				numSampleSizeEntries: 7
<li>				sampleSizeArray: {105840, 104456, 103464, 116460, 100412, 94808, 120400}
</ul>
				Example of usage for out-of-display-order video frames:
<ul>				dataBuffer: contains 6 H.264 frames in decode order (P2,B0,B1,I5,B3,B4)
<li>				dataFormatDescription: describes H.264 video
<li>				numSamples: 6
<li>				numSampleTimingEntries: 6
<li>				sampleTimingArray: 6 entries = {
<ul>					{duration = 1001/30000, presentationTimeStamp = 12012/30000, decodeTimeStamp = 10010/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 10010/30000, decodeTimeStamp = 11011/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 11011/30000, decodeTimeStamp = 12012/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 15015/30000, decodeTimeStamp = 13013/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 13013/30000, decodeTimeStamp = 14014/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 14014/30000, decodeTimeStamp = 15015/30000}}
</ul>
<li>				numSampleSizeEntries: 6
<li>				sampleSizeArray: {10580, 1234, 1364, 75660, 1012, 988}
</ul>
				Example of usage for compressed audio:
<ul>				dataBuffer: contains 24 compressed AAC packets
<li>				dataFormatDescription: describes 44.1kHz AAC audio
<li>				numSamples: 24
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {
<ul>					{duration = 1024/44100, presentationTimeStamp = 0/44100, decodeTimeStamp = invalid }}
</ul>
<li>				numSampleSizeEntries: 24
<li>				sampleSizeArray:
<ul>					{191, 183, 208, 213, 202, 206, 209, 206, 204, 192, 202, 277,
<li>					 282, 240, 209, 194, 193, 197, 196, 198, 168, 199, 171, 194}
</ul>
</ul>
				Example of usage for uncompressed interleaved audio:
<ul>				dataBuffer: contains 24000 uncompressed interleaved stereo frames, each containing 2 Float32s =
<ul>					{{L,R},
<li>					 {L,R},
<li>					 {L,R}, ...}
</ul>
<li>				dataFormatDescription: describes 48kHz Float32 interleaved audio
<li>				numSamples: 24000
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {
<ul>					{duration = 1/48000, presentationTimeStamp = 0/48000, decodeTimeStamp = invalid }}
</ul>
<li>				numSampleSizeEntries: 1
<li>				sampleSizeArray: {8}
</ul>
				Example of usage for uncompressed non-interleaved audio:
<ul>				dataBuffer: contains 24000 uncompressed non-interleaved stereo frames, each containing 2 (non-contiguous) Float32s =
<ul>					{{L,L,L,L,L,...},
<li>					 {R,R,R,R,R,...}}
</ul>
<li>				dataFormatDescription: describes 48kHz Float32 non-interleaved audio
<li>				numSamples: 24000
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {duration = 1/48000, presentationTimeStamp = 0/48000, decodeTimeStamp = invalid }
<li>				numSampleSizeEntries: 0
<li>				sampleSizeArray: NULL (because the samples are not contiguous)
</ul>
*/
@available(tvOS 4.0, *)
func CMSampleBufferCreate(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCreateReady
	@abstract	Creates a CMSampleBuffer.
	@discussion	Array parameters (sampleSizeArray, sampleTimingArray) should have only one element if that same
				element applies to all samples. All parameters are copied; on return, the caller can release them,
				free them, reuse them or whatever.  On return, the caller owns the returned CMSampleBuffer, and
				must release it when done with it.
				CMSampleBufferCreateReady is identical to CMSampleBufferCreate except that dataReady is always true,
				and so no makeDataReadyCallback or refcon needs to be passed.
				
				Example of usage for in-display-order video frames:
<ul>				dataBuffer: contains 7 Motion JPEG frames
<li>				dataFormatDescription: describes Motion JPEG video
<li>				numSamples: 7
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {duration = 1001/30000, presentationTimeStamp = 0/30000, decodeTimeStamp = invalid }
<li>				numSampleSizeEntries: 7
<li>				sampleSizeArray: {105840, 104456, 103464, 116460, 100412, 94808, 120400}
</ul>
				Example of usage for out-of-display-order video frames:
<ul>				dataBuffer: contains 6 H.264 frames in decode order (P2,B0,B1,I5,B3,B4)
<li>				dataFormatDescription: describes H.264 video
<li>				numSamples: 6
<li>				numSampleTimingEntries: 6
<li>				sampleTimingArray: 6 entries = {
<ul>					{duration = 1001/30000, presentationTimeStamp = 12012/30000, decodeTimeStamp = 10010/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 10010/30000, decodeTimeStamp = 11011/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 11011/30000, decodeTimeStamp = 12012/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 15015/30000, decodeTimeStamp = 13013/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 13013/30000, decodeTimeStamp = 14014/30000},
<li>					{duration = 1001/30000, presentationTimeStamp = 14014/30000, decodeTimeStamp = 15015/30000}}
</ul>
<li>				numSampleSizeEntries: 6
<li>				sampleSizeArray: {10580, 1234, 1364, 75660, 1012, 988}
</ul>
				Example of usage for compressed audio:
<ul>				dataBuffer: contains 24 compressed AAC packets
<li>				dataFormatDescription: describes 44.1kHz AAC audio
<li>				numSamples: 24
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {
<ul>					{duration = 1024/44100, presentationTimeStamp = 0/44100, decodeTimeStamp = invalid }}
</ul>
<li>				numSampleSizeEntries: 24
<li>				sampleSizeArray:
<ul>					{191, 183, 208, 213, 202, 206, 209, 206, 204, 192, 202, 277,
<li>					 282, 240, 209, 194, 193, 197, 196, 198, 168, 199, 171, 194}
</ul>
</ul>
				Example of usage for uncompressed interleaved audio:
<ul>				dataBuffer: contains 24000 uncompressed interleaved stereo frames, each containing 2 Float32s =
<ul>					{{L,R},
<li>					 {L,R},
<li>					 {L,R}, ...}
</ul>
<li>				dataFormatDescription: describes 48kHz Float32 interleaved audio
<li>				numSamples: 24000
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {
<ul>					{duration = 1/48000, presentationTimeStamp = 0/48000, decodeTimeStamp = invalid }}
</ul>
<li>				numSampleSizeEntries: 1
<li>				sampleSizeArray: {8}
</ul>
				Example of usage for uncompressed non-interleaved audio:
<ul>				dataBuffer: contains 24000 uncompressed non-interleaved stereo frames, each containing 2 (non-contiguous) Float32s =
<ul>					{{L,L,L,L,L,...},
<li>					 {R,R,R,R,R,...}}
</ul>
<li>				dataFormatDescription: describes 48kHz Float32 non-interleaved audio
<li>				numSamples: 24000
<li>				numSampleTimingEntries: 1
<li>				sampleTimingArray: one entry = {duration = 1/48000, presentationTimeStamp = 0/48000, decodeTimeStamp = invalid }
<li>				numSampleSizeEntries: 0
<li>				sampleSizeArray: NULL (because the samples are not contiguous)
</ul>
*/
@available(tvOS 8.0, *)
func CMSampleBufferCreateReady(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription?, _ numSamples: CMItemCount, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ numSampleSizeEntries: CMItemCount, _ sampleSizeArray: UnsafePointer<Int>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMAudioSampleBufferCreateWithPacketDescriptions
	@abstract	Creates an CMSampleBuffer containing audio given packetDescriptions instead of sizing and timing info
	@discussion	Provides an optimization over CMSampleBufferCreate() when the caller already has packetDescriptions for
				the audio data. This routine will use the packetDescriptions to create the sizing and timing arrays required
				to make the sample buffer if necessary.
*/
@available(tvOS 4.0, *)
func CMAudioSampleBufferCreateWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMAudioSampleBufferCreateReadyWithPacketDescriptions
	@abstract	Creates an CMSampleBuffer containing audio given packetDescriptions instead of sizing and timing info
	@discussion	Provides an optimization over CMSampleBufferCreate() when the caller already has packetDescriptions for
				the audio data. This routine will use the packetDescriptions to create the sizing and timing arrays required
				to make the sample buffer if necessary.
				CMAudioSampleBufferCreateReadyWithPacketDescriptions is identical to CMAudioSampleBufferCreateWithPacketDescriptions 
				except that dataReady is always true, and so no makeDataReadyCallback or refcon needs to be passed.
*/
@available(tvOS 8.0, *)
func CMAudioSampleBufferCreateReadyWithPacketDescriptions(allocator: CFAllocator?, _ dataBuffer: CMBlockBuffer?, _ formatDescription: CMFormatDescription, _ numSamples: CMItemCount, _ sbufPTS: CMTime, _ packetDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCreateForImageBuffer
	@abstract	Creates a CMSampleBuffer that contains a CVImageBuffer instead of a CMBlockBuffer.
	@discussion	Unlike a CMBlockBuffer which can reference many samples, a CVImageBuffer is defined to
				reference only one sample;  therefore this routine has fewer parameters then
				CMSampleBufferCreate.
				
				Sample timing information, which is a vector for CMSampleBufferCreate,
				consists of only one value for this routine.
				
				The concept of sample size does not apply to CVImageBuffers.  As such, CMSampleBufferGetSampleSizeArray
				will return kCMSampleBufferError_BufferHasNoSampleSizes, and CMSampleBufferGetSampleSize
				will return 0.
				
				Because CVImageBuffers hold visual data, the format description provided is a
				CMVideoFormatDescription.  The format description must be consistent with the attributes
				and formatting information attached to the CVImageBuffer. The width, height, and codecType must
				match (for CVPixelBuffers the codec type is given by CVPixelBufferGetPixelFormatType(pixelBuffer);
				for other CVImageBuffers, the codecType must be 0). The format description extensions must
				match the image buffer attachments for all the keys in the list returned by
				CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers (if absent in either they
				must be absent in both).
*/
@available(tvOS 4.0, *)
func CMSampleBufferCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ dataReady: Bool, _ makeDataReadyCallback: CMSampleBufferMakeDataReadyCallback?, _ makeDataReadyRefcon: UnsafeMutablePointer<Void>, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCreateReadyWithImageBuffer
	@abstract	Creates a CMSampleBuffer that contains a CVImageBuffer instead of a CMBlockBuffer.
	@discussion	Unlike a CMBlockBuffer which can reference many samples, a CVImageBuffer is defined to
				reference only one sample;  therefore this routine has fewer parameters then
				CMSampleBufferCreate.
				
				Sample timing information, which is a vector for CMSampleBufferCreate,
				consists of only one value for this routine.
				
				The concept of sample size does not apply to CVImageBuffers.  As such, CMSampleBufferGetSampleSizeArray
				will return kCMSampleBufferError_BufferHasNoSampleSizes, and CMSampleBufferGetSampleSize
				will return 0.
				
				Because CVImageBuffers hold visual data, the format description provided is a
				CMVideoFormatDescription.  The format description must be consistent with the attributes
				and formatting information attached to the CVImageBuffer. The width, height, and codecType must
				match (for CVPixelBuffers the codec type is given by CVPixelBufferGetPixelFormatType(pixelBuffer);
				for other CVImageBuffers, the codecType must be 0). The format description extensions must
				match the image buffer attachments for all the keys in the list returned by
				CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers (if absent in either they
				must be absent in both).
				
				CMSampleBufferCreateReadyWithImageBuffer is identical to CMSampleBufferCreateForImageBuffer except that 
				dataReady is always true, and so no makeDataReadyCallback or refcon needs to be passed.
*/
@available(tvOS 8.0, *)
func CMSampleBufferCreateReadyWithImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ formatDescription: CMVideoFormatDescription, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCreateCopy
	@abstract	Creates a copy of a CMSampleBuffer.
	@discussion	The copy is shallow: scalar properties (sizes and timing) are copied directly,
				the data buffer and format description are retained, and
				the propogatable attachments are retained by the copy's dictionary.
				If sbuf's data is not ready, the copy will be set to track its readiness.
*/
@available(tvOS 4.0, *)
func CMSampleBufferCreateCopy(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sbufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCreateCopyWithNewTiming
	@abstract	Creates a CMSampleBuffer with new timing information from another sample buffer.
	@discussion	This emulates CMSampleBufferCreateCopy, but changes the timing.
				Array parameters (sampleTimingArray) should have only one element if that same
				element applies to all samples. All parameters are copied; on return, the caller can release them,
				free them, reuse them or whatever.  Any outputPresentationTimestamp that has been set on the original Buffer
				will not be copied because it is no longer relevant.	On return, the caller owns the returned 
				CMSampleBuffer, and must release it when done with it.
 
 */
@available(tvOS 4.0, *)
func CMSampleBufferCreateCopyWithNewTiming(allocator: CFAllocator?, _ originalSBuf: CMSampleBuffer, _ numSampleTimingEntries: CMItemCount, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>, _ sBufCopyOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferCopySampleBufferForRange
	@abstract	Creates a CMSampleBuffer containing a range of samples from an existing CMSampleBuffer.
	@discussion	Samples containing non-interleaved audio are currently not supported.
 */
@available(tvOS 4.0, *)
func CMSampleBufferCopySampleBufferForRange(allocator: CFAllocator?, _ sbuf: CMSampleBuffer, _ sampleRange: CFRange, _ sBufOut: UnsafeMutablePointer<CMSampleBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferGetTypeID
	@abstract	Returns the CFTypeID of CMSampleBuffer objects.
	@discussion	You can check if a CFTypeRef object is actually a CMSampleBuffer by comparing CFGetTypeID(object) with CMSampleBufferGetTypeID().
	@result		CFTypeID of CMSampleBuffer objects.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetTypeID() -> CFTypeID

/*!
	@function	CMSampleBufferSetDataBuffer
	@abstract	Associates a CMSampleBuffer with its CMBlockBuffer of media data.
	@discussion	If successful, this operation retains the dataBuffer thereafter, so the caller can release the dataBuffer
				after calling this API, if it has no further need to reference it. This is a write-once operation; it will fail if
				the CMSampleBuffer already has a dataBuffer. This API allows a CMSampleBuffer to exist, with timing and format
				information, before the associated data shows up. Example of usage: Some media services may have access to sample
				size, timing, and format information before the data is read.  Such services may create CMSampleBuffers with that
				information and insert them into queues early, and use this API to attach the CMBlockBuffers later, when the data
				becomes ready.
*/
@available(tvOS 4.0, *)
func CMSampleBufferSetDataBuffer(sbuf: CMSampleBuffer, _ dataBuffer: CMBlockBuffer) -> OSStatus

/*!
	@function	CMSampleBufferGetDataBuffer
	@abstract	Returns a CMSampleBuffer's CMBlockBuffer of media data.
	@discussion The caller does not own the returned dataBuffer, and must retain it explicitly if the caller needs to maintain a reference to it.
	@result		CMBlockBuffer of media data. The result will be NULL if the CMSampleBuffer does not contain a CMBlockBuffer, if the
				CMSampleBuffer contains a CVImageBuffer, or if there is some other error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetDataBuffer(sbuf: CMSampleBuffer) -> CMBlockBuffer?

/*!
	@function	CMSampleBufferGetImageBuffer
	@abstract	Returns a CMSampleBuffer's CVImageBuffer of media data.
	@discussion The caller does not own the returned dataBuffer, and must retain it explicitly if the caller needs to maintain a reference to it.
	@result		CVImageBuffer of media data. The result will be NULL if the CMSampleBuffer does not contain a CVImageBuffer, if the
				CMSampleBuffer contains a CMBlockBuffer, or if there is some other error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetImageBuffer(sbuf: CMSampleBuffer) -> CVImageBuffer?

/*!
	@function	CMSampleBufferSetDataBufferFromAudioBufferList
	@abstract	Creates a CMBlockBuffer containing a copy of the data from the AudioBufferList,
				and sets that as the CMSampleBuffer's data buffer. The resulting buffer(s) in the
				sample buffer will be 16-byte-aligned if  
				kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment is passed in.
*/
@available(tvOS 4.0, *)
func CMSampleBufferSetDataBufferFromAudioBufferList(sbuf: CMSampleBuffer, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ bufferList: UnsafePointer<AudioBufferList>) -> OSStatus

/*!
	@function	CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer
	@abstract	Creates an AudioBufferList containing the data from the CMSampleBuffer,
				and a CMBlockBuffer which references (and manages the lifetime of) the
				data in that AudioBufferList.  The data may or may not be copied,
				depending on the contiguity and 16-byte alignment of the CMSampleBuffer's
				data. The buffers placed in the AudioBufferList are guaranteed to be contiguous.
				The buffers in the AudioBufferList will be 16-byte-aligned if
				kCMSampleBufferFlag_AudioBufferList_Assure16ByteAlignment is passed in.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(sbuf: CMSampleBuffer, _ bufferListSizeNeededOut: UnsafeMutablePointer<Int>, _ bufferListOut: UnsafeMutablePointer<AudioBufferList>, _ bufferListSize: Int, _ bbufStructAllocator: CFAllocator?, _ bbufMemoryAllocator: CFAllocator?, _ flags: UInt32, _ blockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus

/*!
	@function	CMSampleBufferGetAudioStreamPacketDescriptions
	@abstract	Creates an array of AudioStreamPacketDescriptions for the 
                variable bytes per packet or variable frames per packet
                audio data in the provided CMSampleBuffer.  Constant bitrate,
                constant frames-per-packet audio yields a return value of noErr 
                and no packet descriptions.  This API is specific to audio format
				sample buffers, and will return kCMSampleBufferError_InvalidMediaTypeForOperation
				if called with a non-audio sample buffer.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetAudioStreamPacketDescriptions(sbuf: CMSampleBuffer, _ packetDescriptionsSize: Int, _ packetDescriptionsOut: UnsafeMutablePointer<AudioStreamPacketDescription>, _ packetDescriptionsSizeNeededOut: UnsafeMutablePointer<Int>) -> OSStatus

/*!
	@function	CMSampleBufferGetAudioStreamPacketDescriptionsPtr
	@abstract	Returns a pointer to (and size of) a constant array of
				AudioStreamPacketDescriptions for the variable bytes per
				packet or variable frames per packet audio data in the
				provided CMSampleBuffer.  The pointer will remain valid
				as long as the sbuf continues to be retained.
				Constant bitrate, constant frames-per-packet audio yields a
				return value of noErr and no packet descriptions.  This API is
				specific to audio format sample buffers, and will return
				kCMSampleBufferError_InvalidMediaTypeForOperation if called
				with a non-audio sample buffer.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetAudioStreamPacketDescriptionsPtr(sbuf: CMSampleBuffer, _ packetDescriptionsPtrOut: UnsafeMutablePointer<UnsafePointer<AudioStreamPacketDescription>>, _ packetDescriptionsSizeOut: UnsafeMutablePointer<Int>) -> OSStatus

/*!
	@function	CMSampleBufferCopyPCMDataIntoAudioBufferList
	@abstract	Copies PCM audio data from the given CMSampleBuffer into
				a pre-populated AudioBufferList. The AudioBufferList must
				contain the same number of channels and its data buffers
				must be sized to hold the specified number of frames.
				This API is	specific to audio format sample buffers, and
				will return kCMSampleBufferError_InvalidMediaTypeForOperation
				if called with a non-audio sample buffer. It will return an
				error if the CMSampleBuffer does not contain PCM audio data
				or if its dataBuffer is not ready.
*/
@available(tvOS 7.0, *)
func CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf: CMSampleBuffer, _ frameOffset: Int32, _ numFrames: Int32, _ bufferList: UnsafeMutablePointer<AudioBufferList>) -> OSStatus

/*!
	@function	CMSampleBufferSetDataReady
	@abstract	Marks a CMSampleBuffer's data as "ready".
	@discussion	There is no way to undo this operation.  The only way to get an "unready"
				CMSampleBuffer is to call CMSampleBufferCreate with the dataReady parameter
				set to false. Example of usage: in a read completion routine.
*/
@available(tvOS 4.0, *)
func CMSampleBufferSetDataReady(sbuf: CMSampleBuffer) -> OSStatus

/*!
	@function	CMSampleBufferDataIsReady
	@abstract	Returns whether or not a CMSampleBuffer's data is ready.
	@result		Whether or not the CMSampleBuffer's data is ready.  True is returned for special marker buffers, even
				though they have no data. False is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferDataIsReady(sbuf: CMSampleBuffer) -> Bool

/*!
	@function	CMSampleBufferSetDataFailed
	@abstract	Marks a CMSampleBuffer's data as "failed", to indicate that the data will not become ready.
*/
@available(tvOS 8.0, *)
func CMSampleBufferSetDataFailed(sbuf: CMSampleBuffer, _ status: OSStatus) -> OSStatus

/*!
	@function	CMSampleBufferHasDataFailed
	@abstract	Returns whether or not a CMSampleBuffer's data loading request has failed.
*/
@available(tvOS 8.0, *)
func CMSampleBufferHasDataFailed(sbuf: CMSampleBuffer, _ statusOut: UnsafeMutablePointer<OSStatus>) -> Bool

/*!
	@function	CMSampleBufferMakeDataReady
	@abstract	Makes a CMSampleBuffer's data ready, by calling the client's CMSampleBufferMakeDataReadyCallback.
	@discussion	The CMSampleBufferMakeDataReadyCallback is passed in by the client during creation. It must return
				0 if successful, and in that case, CMSampleBufferMakeDataReady will set the data readiness of
				the CMSampleBuffer to true. Example of usage: when it is time to actually use the data. Example of
				callback routine: a routine to force a scheduled read to complete.  If the CMSampleBuffer is not
				ready, and there is no CMSampleBufferMakeDataReadyCallback to call, kCMSampleBufferError_BufferNotReady
				will be returned. Similarly, if the CMSampleBuffer is not ready, and the CMSampleBufferMakeDataReadyCallback
				fails and returns an error, kCMSampleBufferError_BufferNotReady will be returned.
*/
@available(tvOS 4.0, *)
func CMSampleBufferMakeDataReady(sbuf: CMSampleBuffer) -> OSStatus

/*!
	@function	CMSampleBufferTrackDataReadiness
	@abstract	Associates a CMSampleBuffer's data readiness with another CMSampleBuffer's data readiness.
	@discussion	After calling this API, if CMSampleBufferDataIsReady(sbuf) is called, it will return sbufToTrack's data
				readiness. If CMSampleBufferMakeDataReady(sbuf) is called, it will do it by making sbufToTrack ready.
				Example of use: This allows bursting a multi-sample CMSampleBuffer into single-sample CMSampleBuffers
				before the data is ready. The single-sample CMSampleBuffers will all track the multi-sample
				CMSampleBuffer's data readiness.
*/
@available(tvOS 4.0, *)
func CMSampleBufferTrackDataReadiness(sbuf: CMSampleBuffer, _ sbufToTrack: CMSampleBuffer) -> OSStatus

/*!
	@function	CMSampleBufferInvalidate
	@abstract	Makes the sample buffer invalid, calling any installed invalidation callback.
	@discussion	An invalid sample buffer cannot be used -- all accessors will return kCMSampleBufferError_Invalidated.
				It is not a good idea to do this to a sample buffer that another module may be accessing concurrently.
				Example of use: the invalidation callback could cancel pending I/O.
*/
@available(tvOS 4.0, *)
func CMSampleBufferInvalidate(sbuf: CMSampleBuffer) -> OSStatus

/*!
	@typedef	CMSampleBufferInvalidateCallback
	@abstract	Client callback called by CMSampleBufferInvalidate.
*/
typealias CMSampleBufferInvalidateCallback = @convention(c) (CMSampleBuffer, UInt64) -> Void

/*!
	@function	CMSampleBufferSetInvalidateCallback
	@abstract	Sets the sample buffer's invalidation callback, which is called during CMSampleBufferInvalidate.
	@discussion	A sample buffer can only have one invalidation callback.  
				The invalidation callback is NOT called during ordinary sample buffer finalization.
*/
@available(tvOS 4.0, *)
func CMSampleBufferSetInvalidateCallback(sbuf: CMSampleBuffer, _ invalidateCallback: CMSampleBufferInvalidateCallback, _ invalidateRefCon: UInt64) -> OSStatus

/*!
	@typedef	CMSampleBufferInvalidateHandler
	@abstract	Client callback called by CMSampleBufferInvalidate.
*/
typealias CMSampleBufferInvalidateHandler = (CMSampleBuffer) -> Void

/*!
	@function	CMSampleBufferSetInvalidateHandler
	@abstract	Sets the sample buffer's invalidation handler block, which is called during CMSampleBufferInvalidate.
	@discussion	A sample buffer can only have one invalidation callback.  
				The invalidation callback is NOT called during ordinary sample buffer finalization.
*/
@available(tvOS 8.0, *)
func CMSampleBufferSetInvalidateHandler(sbuf: CMSampleBuffer, _ invalidateHandler: CMSampleBufferInvalidateHandler) -> OSStatus

/*!
	@function	CMSampleBufferIsValid
	@abstract	Queries whether a sample buffer is still valid.
	@discussion	Returns false if sbuf is NULL or CMSampleBufferInvalidate(sbuf) was called, true otherwise.
				Does not perform any kind of exhaustive validation of the sample buffer.
*/
@available(tvOS 4.0, *)
func CMSampleBufferIsValid(sbuf: CMSampleBuffer) -> Bool

/*!
	@constant	kCMSampleBufferNotification_DataBecameReady
	@abstract	Posted on a CMSampleBuffer by CMSampleBufferSetDataReady when the buffer becomes ready.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferNotification_DataBecameReady: CFString

/*!
	@constant	kCMSampleBufferNotification_DataFailed
	@abstract	Posted on a CMSampleBuffer by CMSampleBufferSetDataFailed to report that the buffer will never become ready.
*/
@available(tvOS 8.0, *)
let kCMSampleBufferNotification_DataFailed: CFString
@available(tvOS 8.0, *)
let kCMSampleBufferNotificationParameter_OSStatus: CFString

/*!
	@constant	kCMSampleBufferConduitNotification_InhibitOutputUntil
	@abstract	Posted on a conduit of CMSampleBuffers (eg, a CMBufferQueue) to announce a coming discontinuity and specify a tag value that will be attached to the first CMSampleBuffer following the discontinuity.  
	@discussion
		The first CMSampleBuffer following the discontinuity should have 
		a kCMSampleBufferAttachmentKey_ResumeOutput attachment with value containing 
		the same CFNumber as this notification's payload's
		kCMSampleBufferConduitNotificationParameter_ResumeTag.  
		The consumer should discard output data until it receives this CMSampleBuffer.
		If multiple kCMSampleBufferConduitNotification_InhibitOutputUntil notifications are
		received, the last one indicates the tag to trigger resuming.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferConduitNotification_InhibitOutputUntil: CFString
@available(tvOS 4.0, *)
let kCMSampleBufferConduitNotificationParameter_ResumeTag: CFString

/*!
	@constant	kCMSampleBufferConduitNotification_ResetOutput
	@abstract	Posted on a conduit of CMSampleBuffers (eg, a CMBufferQueue) to request invalidation of pending output data.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferConduitNotification_ResetOutput: CFString

/*!
	@constant	kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged
	@abstract	Posted on a conduit of video CMSampleBuffers (eg, a CMBufferQueue) to report information about the range of upcoming CMSampleBuffer output presentation timestamps.
*/
@available(tvOS 4.3, *)
let kCMSampleBufferConduitNotification_UpcomingOutputPTSRangeChanged: CFString
@available(tvOS 4.3, *)
let kCMSampleBufferConduitNotificationParameter_UpcomingOutputPTSRangeMayOverlapQueuedOutputPTSRange: CFString
@available(tvOS 4.3, *)
let kCMSampleBufferConduitNotificationParameter_MinUpcomingOutputPTS: CFString
@available(tvOS 5.0, *)
let kCMSampleBufferConduitNotificationParameter_MaxUpcomingOutputPTS: CFString

/*!
	@constant	kCMSampleBufferConsumerNotification_BufferConsumed
	@abstract	Posted when a CMSampleBuffer that has kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed is consumed.
	@discussion
		After an object consumes a CMSampleBuffer that has a kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed
		attachment, it should post kCMSampleBufferConsumerNotification_BufferConsumed 
		with itself as the notifyingObject and the attachment value as the payload.
		Such an attachment value must be a CFDictionary but the contents are client-defined.
		
		Note that a NULL refcon cannot be attached to a CMSampleBuffer.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferConsumerNotification_BufferConsumed: CFString

/*!
	@function	CMSampleBufferGetNumSamples
	@abstract	Returns the number of media samples in a CMSampleBuffer.
	@result		The number of media samples in the CMSampleBuffer. 0 is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetNumSamples(sbuf: CMSampleBuffer) -> CMItemCount

/*!
	@function	CMSampleBufferGetDuration
	@abstract	Returns the total duration of a CMSampleBuffer.
	@discussion	If the buffer contains out-of-presentation-order samples, any gaps in the presentation timeline are not represented in the returned duration.
				The returned duration is simply the sum of all the individual sample durations.
	@result		The duration of the CMSampleBuffer. kCMTimeInvalid is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetDuration(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferGetPresentationTimeStamp
	@abstract	Returns the numerically earliest presentation timestamp of all the samples in a CMSampleBuffer.
	@discussion	For in-presentation-order samples, this is the presentation timestamp of the first sample.
				For out-of-presentation-order samples, this is the presentation timestamp of the sample that
				will be presented first, which is not necessarily the first sample in the buffer.
	@result		Numerically earliest sample presentation timestamp in the CMSampleBuffer.  kCMTimeInvalid is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferGetDecodeTimeStamp
	@abstract	Returns the numerically earliest decode timestamp of all the samples in a CMSampleBuffer.
	@discussion	The returned decode timestamp is always the decode timestamp of the first sample in the buffer,
				since even out-of-presentation-order samples are expected to be in decode order in the buffer.
	@result		Numerically earliest sample decode timestamp in the CMSampleBuffer.  kCMTimeInvalid is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferGetOutputDuration
	@abstract	Returns the output duration of a CMSampleBuffer.
	@discussion	The OutputDuration is the duration minus any trimmed duration, all divided by the SpeedMultiplier:
				(Duration - TrimDurationAtStart - TrimDurationAtEnd) / SpeedMultiplier
	@result		The output duration of the CMSampleBuffer. kCMTimeInvalid is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetOutputDuration(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferGetOutputPresentationTimeStamp
	@abstract	Returns the output presentation timestamp of the CMSampleBuffer.
	@discussion	The output presentation timestamp is the time at which the decoded, trimmed, stretched 
				and possibly reversed samples should commence being presented.
				If CMSampleBufferSetOutputPresentationTimeStamp has been called to explicitly set the output PTS, 
				CMSampleBufferGetOutputPresentationTimeStamp returns it.  
				If not, CMSampleBufferGetOutputPresentationTimeStamp calculates its result as
				(PresentationTimeStamp + TrimDurationAtStart) 
				unless kCMSampleBufferAttachmentKey_Reverse is kCFBooleanTrue, in which case it calculates the result as
				(PresentationTimeStamp + Duration - TrimDurationAtEnd).
				These are generally correct for un-stretched, un-shifted playback.
				For general forward playback in a scaled edit, the OutputPresentationTimeStamp should be set to:
				((PresentationTimeStamp + TrimDurationAtStart - EditStartMediaTime) / EditSpeedMultiplier) + EditStartTrackTime.
				For general reversed playback:
				((PresentationTimeStamp + Duration - TrimDurationAtEnd - EditStartMediaTime) / EditSpeedMultiplier) + EditStartTrackTime.
	@result		kCMTimeInvalid is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetOutputPresentationTimeStamp(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferSetOutputPresentationTimeStamp
	@abstract	Sets an output presentation timestamp to be used in place of a calculated value.
	@discussion	The output presentation timestamp is the time at which the decoded, trimmed, stretched 
				and possibly reversed samples should commence being presented.
				By default, this is calculated by CMSampleBufferGetOutputPresentationTimeStamp.
				Call CMSampleBufferSetOutputPresentationTimeStamp to explicitly set the value for
				CMSampleBufferGetOutputPresentationTimeStamp to return.
				For general forward playback in a scaled edit, the OutputPresentationTimeStamp should be set to:
				((PresentationTimeStamp + TrimDurationAtStart - EditStartMediaTime) / EditSpeedMultiplier) + EditStartTrackTime.
				For general reversed playback:
				((PresentationTimeStamp + Duration - TrimDurationAtEnd - EditStartMediaTime) / EditSpeedMultiplier) + EditStartTrackTime.
*/
@available(tvOS 4.0, *)
func CMSampleBufferSetOutputPresentationTimeStamp(sbuf: CMSampleBuffer, _ outputPresentationTimeStamp: CMTime) -> OSStatus

/*!
	@function	CMSampleBufferGetOutputDecodeTimeStamp
	@abstract	Returns the output decode timestamp of the CMSampleBuffer.
	@discussion	For consistency with CMSampleBufferGetOutputPresentationTimeStamp, this is calculated as:
				OutputPresentationTimeStamp + ((DecodeTimeStamp - PresentationTimeStamp) / SpeedMultiplier).
	@result		CMInvalidTime is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetOutputDecodeTimeStamp(sbuf: CMSampleBuffer) -> CMTime

/*!
	@function	CMSampleBufferGetSampleTimingInfoArray
	@abstract	Returns an array of CMSampleTimingInfo structs, one for each sample in a CMSampleBuffer.
	@discussion	If only one CMSampleTimingInfo struct is returned, it applies to all samples in the buffer.
				See documentation of CMSampleTimingInfo for details of how a single CMSampleTimingInfo struct can apply to multiple samples.
				The timingArrayOut must be allocated by the caller, and the number of entries allocated must be passed in timingArrayEntries.
				If timingArrayOut is NULL, timingArrayEntriesNeededOut will return the required number of entries.  Similarly, 
				if timingArrayEntries is too small, kCMSampleBufferError_ArrayTooSmall will be returned, and timingArrayEntriesNeededOut
				will return the required number of entries. In either case, the caller can then make an appropriately-sized timingArrayOut and call again.
				For example, the caller might pass the address of a CMSampleTimingInfo struct on the stack (as timingArrayOut), and 1 (as
				timingArrayEntries). If all samples are describable with a single CMSampleTimingInfo struct (or there is only one sample
				in the CMSampleBuffer), this call will succeed. If not, it will fail, and will return the number of entries required in
				timingArrayEntriesNeededOut. Only in this case will the caller actually need to allocate an array.
				
				If there is no timingInfo in this CMSampleBuffer, kCMSampleBufferError_BufferHasNoSampleTimingInfo will be returned, and
				timingArrayEntriesNeededOut will be set to 0.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus

/*!
	@function	CMSampleBufferGetOutputSampleTimingInfoArray
	@abstract	Returns an array of output CMSampleTimingInfo structs, one for each sample in a CMSampleBuffer.
	@discussion	If only one CMSampleTimingInfo struct is returned, it applies to all samples in the buffer.
				See documentation of CMSampleTimingInfo for details of how a single CMSampleTimingInfo struct can apply to multiple samples.
				The timingArrayOut must be allocated by the caller, and the number of entries allocated must be passed in timingArrayEntries.
				If timingArrayOut is NULL, timingArrayEntriesNeededOut will return the required number of entries.  Similarly,
				if timingArrayEntries is too small, kCMSampleBufferError_ArrayTooSmall will be returned, and timingArrayEntriesNeededOut
				will return the required number of entries. In either case, the caller can then make an appropriately-sized timingArrayOut and call again.
				For example, the caller might pass the address of a CMSampleTimingInfo struct on the stack (as timingArrayOut), and 1 (as
				timingArrayEntries). If all samples are describable with a single CMSampleTimingInfo struct (or there is only one sample
				in the CMSampleBuffer), this call will succeed. If not, it will fail, and will return the number of entries required in
				timingArrayEntriesNeededOut. Only in this case will the caller actually need to allocate an array.
				
				If there is no timingInfo in this CMSampleBuffer, kCMSampleBufferError_BufferHasNoSampleTimingInfo will be returned,
				and *timingArrayEntriesNeededOut will be set to 0.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetOutputSampleTimingInfoArray(sbuf: CMSampleBuffer, _ timingArrayEntries: CMItemCount, _ timingArrayOut: UnsafeMutablePointer<CMSampleTimingInfo>, _ timingArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus

/*!
	@function	CMSampleBufferGetSampleTimingInfo
	@abstract	Returns a CMSampleTimingInfo struct describing a specified sample in a CMSampleBuffer.
	@discussion	A sample-specific CMSampleTimingInfo struct will be returned (ie. with a sample-specific
				presentationTimeStamp and decodeTimeStamp), even if a single CMSampleTimingInfo struct was used
				during creation to describe all the samples in the buffer. The timingInfo struct must be
				allocated by the caller.  If the sample index is not in the range 0 .. numSamples-1,
				kCMSampleBufferError_SampleIndexOutOfRange will be returned.  If there is no timingInfo
				in this CMSampleBuffer, kCMSampleBufferError_BufferHasNoSampleTimingInfo will be returned.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetSampleTimingInfo(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex, _ timingInfoOut: UnsafeMutablePointer<CMSampleTimingInfo>) -> OSStatus

/*!
	@function	CMSampleBufferGetSampleSizeArray
	@abstract	Returns an array of sample sizes, one for each sample in a CMSampleBuffer.
	@discussion	If only one size entry is returned, all samples in the buffer are of this size.
				The sizeArrayOut must be allocated by the caller, and the number of entries allocated must be passed in sizeArrayEntries.
				If sizeArrayOut is NULL, sizeArrayEntriesNeededOut will return the required number of entries.  Similarly, if sizeArrayEntries
				is too small, kCMSampleBufferError_ArrayTooSmall will be returned, and sizeArrayEntriesNeededOut will return the required number of entries.
				The caller can then make an appropriately-sized sizeArrayOut and call again. For example, the caller might pass the address
				of a size_t variable on the stack (as sizeArrayOut), and 1 (as sizeArrayEntries). If all samples are the same size (or there
				is only one sample in the CMSampleBuffer), this call would succeed. If not, it will fail, and will return the number of
				entries required in sizeArrayEntriesNeededOut. Only in this case (multiple samples of different sizes) will the caller
				need to allocate an array.  0 entries will be returned if the samples in the buffer are non-contiguous (eg. non-interleaved
				audio, where the channel values for a single sample are scattered through the buffer).
				
				If there are no sample sizes in this CMSampleBuffer, kCMSampleBufferError_BufferHasNoSampleSizes will be returned,
				and *sizeArrayEntriesNeededOut will be set to 0.  This will be true, for example,
				if the samples in the buffer are non-contiguous (eg. non-interleaved audio, where
				the channel values for a single sample are scattered through the buffer), or if
				this CMSampleBuffer contains a CVImageBuffer.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetSampleSizeArray(sbuf: CMSampleBuffer, _ sizeArrayEntries: CMItemCount, _ sizeArrayOut: UnsafeMutablePointer<Int>, _ sizeArrayEntriesNeededOut: UnsafeMutablePointer<CMItemCount>) -> OSStatus

/*!
	@function	CMSampleBufferGetSampleSize
	@abstract	Returns the size in bytes of a specified sample in a CMSampleBuffer.
	@result		Size in bytes of the specified sample in the CMSampleBuffer.
				If the sample index is not in the range 0 .. numSamples-1,
				a size of 0 will be returned.  If there are no sample sizes
				in this CMSampleBuffer, a size of 0 will be returned.  This will be true, for example,
				if the samples in the buffer are non-contiguous (eg. non-interleaved audio, where
				the channel values for a single sample are scattered through the buffer),
				or if this CMSampleBuffer contains a CVImageBuffer.
				
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetSampleSize(sbuf: CMSampleBuffer, _ sampleIndex: CMItemIndex) -> Int

/*!
	@function	CMSampleBufferGetTotalSampleSize
	@abstract	Returns the total size in bytes of sample data in a CMSampleBuffer.
	@result		Total size in bytes of sample data in the CMSampleBuffer.
				If there are no sample sizes in this CMSampleBuffer, a size of 0 will be returned.  
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetTotalSampleSize(sbuf: CMSampleBuffer) -> Int

/*!
	@function	CMSampleBufferGetFormatDescription
	@abstract	Returns the format description of the samples in a CMSampleBuffer.
	@discussion On return, the caller does not own the returned formatDesc, and must retain it explicitly if the caller needs to maintain a reference to it.
	@result		The format description of the samples in the CMSampleBuffer.  NULL is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetFormatDescription(sbuf: CMSampleBuffer) -> CMFormatDescription?

/*!
	@function	CMSampleBufferGetSampleAttachmentsArray
	@abstract	Returns a reference to a CMSampleBuffer's immutable array of mutable sample attachments dictionaries (one dictionary
				per sample in the CMSampleBuffer).
	@discussion Attachments can then be added/removed directly by the caller, using CF APIs. On return, the caller does not
				own the returned array of attachments dictionaries, and must retain it if the caller needs to maintain a
				reference to it. If there are no sample attachments yet, and createIfNecessary is true, a new CFArray containing N empty
				CFMutableDictionaries is returned (where N is the number of samples in the CMSampleBuffer), so that
				attachments can be added directly by the caller. If there are no sample attachments yet, and createIfNecessary is
				false, NULL is returned.  Once the CFArray has been created, subsequent calls will return it, even if there are still
				no sample attachments in the array.
	@result		A reference to the CMSampleBuffer's immutable array of mutable sample attachments dictionaries (one dictionary per sample
				in the CMSampleBuffer). NULL is returned if there is an error.
*/
@available(tvOS 4.0, *)
func CMSampleBufferGetSampleAttachmentsArray(sbuf: CMSampleBuffer, _ createIfNecessary: Bool) -> CFArray?
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_NotSync: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_PartialSync: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_HasRedundantCoding: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_IsDependedOnByOthers: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_DependsOnOthers: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_EarlierDisplayTimesAllowed: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_DisplayImmediately: CFString
@available(tvOS 4.0, *)
let kCMSampleAttachmentKey_DoNotDisplay: CFString
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_ResetDecoderBeforeDecoding: CFString
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_DrainAfterDecoding: CFString
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_PostNotificationWhenConsumed: CFString
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_ResumeOutput: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_TransitionID
	@abstract	Marks a transition from one source of buffers (eg. song) to another
	@discussion
		For example, during gapless playback of a list of songs, this attachment marks the first buffer from the next song.
		If this attachment is on a buffer containing no samples, the first following buffer that contains samples is the
		buffer that contains the first samples from the next song.  The value of this attachment is a CFTypeRef.  This
		transition identifier should be unique within a playlist, so each transition in a playlist is uniquely
		identifiable.  A CFNumberRef counter that increments with each transition is a simple example.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_TransitionID: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_TrimDurationAtStart
	@abstract	The duration that should be removed at the beginning of the sample buffer, after decoding.
	@discussion
		If this attachment is not present, the trim duration is zero (nothing removed).
		This is a CMTime in CFDictionary format as made by CMTimeCopyAsDictionary; 
		use CMTimeMakeFromDictionary to convert to CMTime.
		In cases where all the output after decoding the sample buffer is to be discarded 
		(eg, the samples are only being decoded to prime the decoder) the usual convention
		is to set kCMSampleBufferAttachmentKey_TrimDurationAtStart to the whole duration 
		and not to set a kCMSampleBufferAttachmentKey_TrimDurationAtEnd attachment.
		Note that setting or removing kCMSampleBufferAttachmentKey_TrimDurationAtStart from
		a sample buffer will not adjust an explicitly-set OutputPresentationTimeStamp.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtStart: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_TrimDurationAtEnd
	@abstract	The duration that should be removed at the end of the sample buffer, after decoding.
	@discussion
		If this attachment is not present, the trim duration is zero (nothing removed).
		This is a CMTime in CFDictionary format as made by CMTimeCopyAsDictionary; 
		use CMTimeMakeFromDictionary to convert to CMTime.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_TrimDurationAtEnd: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_SpeedMultiplier
	@abstract	The factor by which the sample buffer's presentation should be accelerated (eg, in a scaled edit).
	@discussion
		For normal playback the speed multiplier would be 1.0 (which is used if this attachment is not present); 
		for double-speed playback the speed multiplier would be 2.0, which would halve the output duration.
		Speed-multiplication factors take effect after trimming; see CMSampleBufferGetOutputDuration.
		Note that this attachment principally provides information about the duration-stretching effect:
		by default, it should be implemented by rate conversion, but other attachments may specify richer 
		stretching operations -- for example, scaling without pitch shift, or pitch shift without changing duration.
		Sequences of speed-multiplied sample buffers should have explicit OutputPresentationTimeStamp attachments 
		to clarify when each should be output.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_SpeedMultiplier: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_Reverse
	@abstract	Indicates that the decoded contents of the sample buffer should be reversed.
		If this attachment is not present, the sample buffer should be played forwards as usual.
		Reversal occurs after trimming and speed multipliers.

*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_Reverse: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence
	@abstract	Fill the difference between discontiguous sample buffers with silence.
	@discussion
		If a sample buffer enters a buffer queue and the presentation time stamp between the
		previous buffer and the buffer with this attachment are discontiguous, handle the
		discontinuity by generating silence for the time difference.
 */
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_FillDiscontinuitiesWithSilence: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_EmptyMedia
	@abstract	Marks an intentionally empty interval in the sequence of samples.
	@discussion
		The sample buffer's output presentation timestamp indicates when the empty interval begins.
		Marker sample buffers with this attachment are used to announce the arrival of empty edits.
 */
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_EmptyMedia: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_PermanentEmptyMedia
	@abstract	Marks the end of the sequence of samples.
	@discussion
		Marker sample buffers with this attachment in addition to kCMSampleBufferAttachmentKey_EmptyMedia
		are used to indicate that no further samples are expected.
 */
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_PermanentEmptyMedia: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately
	@abstract	Tells that the empty marker should be dequeued immediately regardless of its timestamp.
	@discussion
		Marker sample buffers with this attachment in addition to kCMSampleBufferAttachmentKey_EmptyMedia
		are used to tell that the empty sample buffer should be dequeued immediately regardless of its timestamp.
		This attachment should only be used with sample buffers with the kCMSampleBufferAttachmentKey_EmptyMedia
		attachment.
 */
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_DisplayEmptyMediaImmediately: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration
	@abstract	Indicates that sample buffer's decode timestamp may be used to define the previous sample buffer's duration.
	@discussion
		Marker sample buffers with this attachment may be used in situations where sample buffers are transmitted
		before their duration is known. In such situations, normally the recipient may use each sample buffer's timestamp
		to calculate the duration of the previous sample buffer. The marker sample buffer with this attachment is sent
		to provide the timestamp for calculating the final sample buffer's duration.
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_EndsPreviousSampleDuration: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_SampleReferenceURL
	@abstract	Indicates the URL where the sample data is.
	@discussion
		This key is only used for CMSampleBuffers representing sample references.  
		Such CMSampleBuffers:
		 - have dataBuffer == NULL and imageBuffer == NULL
		 - have dataReady == true and no makeDataReadyCallback
		 - have a non-NULL formatDescription
		 - have numSamples > 0
		 - have numSampleTimingEntries > 0 and numSampleSizeEntries > 0
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_SampleReferenceURL: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_SampleReferenceByteOffset
	@abstract	Indicates the byte offset at which the sample data begins.
	@discussion
		This key is only used for CMSampleBuffers representing sample references.  
		Such CMSampleBuffers:
		 - have dataBuffer == NULL and imageBuffer == NULL
		 - have dataReady == true and no makeDataReadyCallback
		 - have a non-NULL formatDescription
		 - have numSamples > 0
		 - have numSampleTimingEntries > 0 and numSampleSizeEntries > 0
*/
@available(tvOS 4.0, *)
let kCMSampleBufferAttachmentKey_SampleReferenceByteOffset: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_GradualDecoderRefresh
	@abstract	Indicates the decoder refresh count.
	@discussion
		Sample buffers with this attachment may be used to identify the audio decoder refresh count.
*/
@available(tvOS 4.3, *)
let kCMSampleBufferAttachmentKey_GradualDecoderRefresh: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_DroppedFrameReason
	@abstract	Indicates the reason the current video frame was dropped.
	@discussion
		Sample buffers with this attachment contain no image or data buffer.  They mark a dropped video
		frame.  This attachment identifies the reason for the droppage.
*/
@available(tvOS 6.0, *)
let kCMSampleBufferAttachmentKey_DroppedFrameReason: CFString

/*!
	@constant	kCMSampleBufferDroppedFrameReason_FrameWasLate
	@abstract	The frame was dropped because it was late
	@discussion
		The value of kCMSampleBufferAttachmentKey_DroppedFrameReason if a video capture client has indicated 
		that late video frames should be dropped and the current frame is late.  This condition is typically
		caused by the client's processing taking too long.
*/
@available(tvOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_FrameWasLate: CFString

/*!
	@constant	kCMSampleBufferDroppedFrameReason_OutOfBuffers
	@abstract	The frame was dropped because the module providing frames is out of buffers
	@discussion
		The value of kCMSampleBufferAttachmentKey_DroppedFrameReason if the module providing sample buffers
		has run out of source buffers.  This condition is typically caused by the client holding onto
		buffers for too long and can be alleviated by returning buffers to the provider.
 */
@available(tvOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_OutOfBuffers: CFString

/*!
	@constant	kCMSampleBufferDroppedFrameReason_Discontinuity
	@abstract	An unknown number of frames were dropped
	@discussion
		The value of kCMSampleBufferAttachmentKey_DroppedFrameReason if the module providing sample buffers
		has experienced a discontinuity, and an unknown number of frames have been lost.  This condition is 
		typically caused by the system being too busy.
 */
@available(tvOS 6.0, *)
let kCMSampleBufferDroppedFrameReason_Discontinuity: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo
	@abstract	Indicates additional information regarding the dropped video frame.
	@discussion
		Sample buffers with this attachment contain no image or data buffer.  They mark a dropped video
		frame. If present, this attachment provides additional information about the kCMSampleBufferAttachmentKey_DroppedFrameReason.
 */
@available(tvOS 7.0, *)
let kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo: CFString

/*!
	@constant	kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch
	@abstract	A discontinuity was caused by a camera mode switch.
	@discussion
		The value of kCMSampleBufferAttachmentKey_DroppedFrameReasonInfo if the module providing sample buffers
		has experienced a discontinuity due to a camera mode switch. Short discontinuities of this type can occur when the 
		session is configured for still image capture on some devices.
 */
@available(tvOS 7.0, *)
let kCMSampleBufferDroppedFrameReasonInfo_CameraModeSwitch: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo
	@abstract	Indicates information about the lens stabilization applied to the current still image buffer.
	@discussion
        Sample buffers that have been captured with a lens stabilization module may have an attachment of
		kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo which has information about the stabilization status
        during the capture.  This key will not be present in CMSampleBuffers coming from cameras without a lens stabilization module.
*/
@available(tvOS 9.0, *)
let kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo: CFString

/*!
 @constant	kCMSampleBufferLensStabilizationInfo_Active
 @abstract	The lens stabilization module was active for the duration this buffer.
 @discussion
 */
@available(tvOS 9.0, *)
let kCMSampleBufferLensStabilizationInfo_Active: CFString

/*!
 @constant	kCMSampleBufferLensStabilizationInfo_OutOfRange
 @abstract	The motion of the device or duration of the capture was outside of what the stabilization mechanism could support.
 @discussion
	The value of kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo if the module stabilizing the lens was unable to
	compensate for the movement.
 */
@available(tvOS 9.0, *)
let kCMSampleBufferLensStabilizationInfo_OutOfRange: CFString

/*!
 @constant	kCMSampleBufferLensStabilizationInfo_Unavailable
 @abstract	The lens stabilization module was unavailable for use.
 @discussion
	The value of kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo if the lens stabilization module is unavailable
	to compensate for the motion of the device.  The module may be available at a later time.
 */
@available(tvOS 9.0, *)
let kCMSampleBufferLensStabilizationInfo_Unavailable: CFString

/*!
 @constant	kCMSampleBufferLensStabilizationInfo_Off
 @abstract	The lens stabilization module was not used during this capture.
 @discussion
	The value of kCMSampleBufferAttachmentKey_StillImageLensStabilizationInfo if the lens stabilization module was not used for this capture.
 */
@available(tvOS 9.0, *)
let kCMSampleBufferLensStabilizationInfo_Off: CFString

/*!
	@constant	kCMSampleBufferAttachmentKey_ForceKeyFrame
	@abstract	Indicates that the current or next video sample buffer should be forced to be encoded as a key frame.
	@discussion
		A value of kCFBooleanTrue for kCMSampleBufferAttachmentKey_ForceKeyFrame indicates that the current or next video sample buffer processed in the stream should be forced to be encoded as a key frame.
		If this attachment is present and kCFBooleanTrue on a sample buffer with a video frame, that video frame will be forced to become a key frame.  If the sample buffer for which this is present and kCFBooleanTrue does not have a valid video frame, the next sample buffer processed that contains a valid video frame will be encoded as a key frame.
		
		Usual care should be taken when setting attachments on sample buffers whose orgins and destinations are ambiguous.  For example, CMSetAttachment() is not thread-safe, and CMSampleBuffers may be used in multiple sample buffer streams in a given system.  This can lead to crashes during concurrent access and/or unexpected behavior on alternate sample buffer streams.  Therefore, unless the orgin and destination of a sample buffer is known, the general recommended practice is to synthesize an empty sample buffer with this attachment alone and insert it into the sample buffer stream ahead of the concrete sample buffer rather than setting this attachment on the concrete sample buffer itself.
 */
@available(tvOS 8.0, *)
let kCMSampleBufferAttachmentKey_ForceKeyFrame: CFString

/*!
	@function	CMSampleBufferCallForEachSample
	@abstract	Calls a function for every individual sample in a sample buffer.
	@discussion Temporary sample buffers will be created for individual samples,
				referring to the sample data and containing its timing, size and attachments.
				The callback function may retain these sample buffers if desired.
				If the callback function returns an error, iteration will stop immediately
				and the error will be returned.
				If there are no sample sizes in the provided sample buffer, kCMSampleBufferError_CannotSubdivide will be returned.
				This will happen, for example, if the samples in the buffer are non-contiguous (eg. non-interleaved audio, where
				the channel values for a single sample are scattered through the buffer).
*/
@available(tvOS 4.0, *)
func CMSampleBufferCallForEachSample(sbuf: CMSampleBuffer, _ callback: @convention(c) (CMSampleBuffer, CMItemCount, UnsafeMutablePointer<Void>) -> OSStatus, _ refcon: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	CMSampleBufferCallBlockForEachSample
	@abstract	Calls a block for every individual sample in a sample buffer.
	@discussion Temporary sample buffers will be created for individual samples,
				referring to the sample data and containing its timing, size and attachments.
				The block may retain these sample buffers if desired.
				If the block returns an error, iteration will stop immediately
				and the error will be returned.
				If there are no sample sizes in the provided sample buffer, kCMSampleBufferError_CannotSubdivide will be returned.
				This will happen, for example, if the samples in the buffer are non-contiguous (eg. non-interleaved audio, where
				the channel values for a single sample are scattered through the buffer).
*/
@available(tvOS 8.0, *)
func CMSampleBufferCallBlockForEachSample(sbuf: CMSampleBuffer, _ handler: (CMSampleBuffer, CMItemCount) -> OSStatus) -> OSStatus
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }

/*!
	@typedef	CMSimpleQueueRef
	@abstract	A reference to a CMSimpleQueue, a CF object that implements a simple lockless queue of (void *) elements.
		
*/
typealias CMSimpleQueueRef = CMSimpleQueue

/*!
	@function	CMSimpleQueueGetTypeID
	@abstract	Returns the CFTypeID of CMSimpleQueue objects.
	@discussion	You can check if a CFTypeRef object is actually a CMSimpleQueue by comparing CFGetTypeID(object)
				with CMSimpleQueueGetTypeID().
	@result		CFTypeID of CMSimpleQueue objects.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueGetTypeID() -> CFTypeID

/*!
	@function	CMSimpleQueueCreate
    @abstract	Creates a CMSimpleQueue.
    @discussion On return, the caller owns the returned CMSimpleQueue, and must release it when done with it.
    @result		Returns noErr if the call succeeds.  Returns kCMSimpleQueueError_ParameterOutOfRange if
				capacity is negative.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueCreate(allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus

/*!
	@function	CMSimpleQueueEnqueue
    @abstract	Enqueues an element on the queue.
    @discussion	If the queue is full, this operation will fail.
	@result		Returns noErr if the call succeeds, kCMSimpleQueueError_QueueIsFull if the queue is full.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueEnqueue(queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus

/*!
	@function	CMSimpleQueueDequeue
    @abstract	Dequeues an element from the queue.
    @discussion If the queue is empty, NULL will be returned.
	@result		The dequeued element.  NULL if the queue was empty, or if there was some other error.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueDequeue(queue: CMSimpleQueue) -> UnsafePointer<Void>

/*!
	@function	CMSimpleQueueGetHead
    @abstract	Returns the element at the head of the queue.
    @discussion If the queue is empty, NULL will be returned.
	@result		The head element.  NULL if the queue was empty, or if there was some other error.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueGetHead(queue: CMSimpleQueue) -> UnsafePointer<Void>

/*!
	@function	CMSimpleQueueReset
    @abstract	Resets the queue.
    @discussion	This function resets the queue to its empty state;  all values
				in the queue prior to reset are lost.   Note that CMSimpleQueueReset
				is not synchronized in any way, so the reader thread and writer thread
				must be held off by the client during this operation.
	@result		Returns noErr if the call succeeds.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueReset(queue: CMSimpleQueue) -> OSStatus

/*!
	@function	CMSimpleQueueGetCapacity
    @abstract	Returns the number of elements that can be held in the queue.
	@result		The number of elements that can be held in the queue.  Returns
				0 if there is an error.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueGetCapacity(queue: CMSimpleQueue) -> Int32

/*!
	@function	CMSimpleQueueGetCount
    @abstract	Returns the number of elements currently on the queue.
	@result		The number of elements currently in the queue. Returns 0 if there is an error.
*/
@available(tvOS 5.0, *)
func CMSimpleQueueGetCount(queue: CMSimpleQueue) -> Int32

/*!
	@typedef	CMClock
	@abstract	A timing source object.
	@discussion
		A clock represents a source of time information: generally, a piece of hardware that measures the passage of time.  
		One example of a clock is the host time clock, accessible via CMClockGetHostTimeClock().  
		It measures time using the CPU system clock, which on Mac OS X is mach_absolute_time().
		Every audio device can also be considered a clock since the audio samples that it outputs or inputs each have a 
		defined duration (eg, 1/48000 of a second for 48 kHz audio).
		
		CMClocks are read-only: they cannot be stopped or started, and the current time cannot be set.
		A CMClock has one primary function, CMClockGetTime, which tells what time it is now.  
		Additionally, the CMSync infrastructure monitors relative drift between CMClocks.
*/
typealias CMClockRef = CMClock

/*!
	@typedef	CMTimebase
	@abstract	Models a timeline under application control.
	@discussion
		A timebase represents a timeline that clients can control by setting the rate and time.
		Each timebase has either a master clock or a master timebase.  
		The rate of the timebase is expressed relative to its master. 
		When a timebase has rate 0.0, its time is fixed and does not change as its master's time changes.
		When a timebase has rate 1.0, its time increases one second as its master's time increases by one second.
		When a timebase has rate 2.0, its time increases two seconds as its master's time increases by one second.
		When a timebase has rate -1.0, its time decreases one second as its master's time increases by one second.
		
		If a timebase has a master timebase, the master timebase's rate is a factor in determining the timebase's effective rate.
		In fact, a timebase's effective rate is defined as the product of its rate, its master timebase's rate, 
		its master timebase's master timebase's rate, and so on up to the ultimate master clock.  This is the rate at which
		the timebase's time changes relative to the ultimate master clock.
*/
typealias CMTimebaseRef = CMTimebase
typealias CMClockOrTimebaseRef = CMClockOrTimebase
var kCMClockError_MissingRequiredParameter: OSStatus { get }
var kCMClockError_InvalidParameter: OSStatus { get }
var kCMClockError_AllocationFailed: OSStatus { get }
var kCMClockError_UnsupportedOperation: OSStatus { get }
var kCMTimebaseError_MissingRequiredParameter: OSStatus { get }
var kCMTimebaseError_InvalidParameter: OSStatus { get }
var kCMTimebaseError_AllocationFailed: OSStatus { get }
var kCMTimebaseError_TimerIntervalTooShort: OSStatus { get }
var kCMTimebaseError_ReadOnly: OSStatus { get }
var kCMSyncError_MissingRequiredParameter: OSStatus { get }
var kCMSyncError_InvalidParameter: OSStatus { get }
var kCMSyncError_AllocationFailed: OSStatus { get }
var kCMSyncError_RateMustBeNonZero: OSStatus { get }

/*!
	@function	CMClockGetTypeID
	@abstract	Returns the CFTypeID for CMClock.
*/
@available(tvOS 6.0, *)
func CMClockGetTypeID() -> CFTypeID

/*!
	@function	CMClockGetHostTimeClock
	@abstract	Returns a reference to the singleton clock logically identified with host time.
	@discussion
		On Mac OS X, the host time clock uses mach_absolute_time but returns a value 
		with a large integer timescale (eg, nanoseconds).
*/
@available(tvOS 6.0, *)
func CMClockGetHostTimeClock() -> CMClock

/*!
	@function	CMClockConvertHostTimeToSystemUnits
	@abstract	Converts a host time from CMTime to the host time's native units.
	@discussion
		This function performs a scale conversion, not a clock conversion.
		It can be more accurate than CMTimeConvertScale because the system units may 
		have a non-integer timescale.
		On Mac OS X, this function converts to the units of mach_absolute_time.
*/
@available(tvOS 6.0, *)
func CMClockConvertHostTimeToSystemUnits(hostTime: CMTime) -> UInt64

/*!
	@function	CMClockMakeHostTimeFromSystemUnits
	@abstract	Converts a host time from native units to CMTime.
	@discussion
		The returned value will have a large integer timescale (eg, nanoseconds).
		This function handles situations where host time's native units use a 
		non-integer timescale.
		On Mac OS X, this function converts from the units of mach_absolute_time.
*/
@available(tvOS 6.0, *)
func CMClockMakeHostTimeFromSystemUnits(hostTime: UInt64) -> CMTime

/*!
	@function	CMClockGetTime
	@abstract	Retrieves the current time from a clock.
*/
@available(tvOS 6.0, *)
func CMClockGetTime(clock: CMClock) -> CMTime

/*!
	@function	CMClockGetAnchorTime
	@abstract	Retrieves the current time from a clock and also the matching time from the clock's reference clock.
	@discussion	To make practical use of this, you may need to know what the clock's reference clock is.
*/
@available(tvOS 6.0, *)
func CMClockGetAnchorTime(clock: CMClock, _ outClockTime: UnsafeMutablePointer<CMTime>, _ outReferenceClockTime: UnsafeMutablePointer<CMTime>) -> OSStatus

/*!
	@function	CMClockMightDrift
	@abstract	Indicates whether it is possible for two clocks to drift relative to each other.
*/
@available(tvOS 6.0, *)
func CMClockMightDrift(clock: CMClock, _ otherClock: CMClock) -> Bool

/*!
	@function	CMClockInvalidate
	@abstract	Makes the clock stop functioning.
	@discussion
		After invalidation, the clock will return errors from all APIs.
		This should only be called by the "owner" of the clock, who knows (for example) that some piece of hardware
		has gone away, and the clock will no longer work (and might even crash).
*/
@available(tvOS 6.0, *)
func CMClockInvalidate(clock: CMClock)

/*!
	@function	CMTimebaseGetTypeID
	@abstract	Returns the CFTypeID for CMTimebase.
*/
@available(tvOS 6.0, *)
func CMTimebaseGetTypeID() -> CFTypeID

/*!
	@function	CMTimebaseCreateWithMasterClock
	@abstract	Creates a timebase driven by the given clock.  
	@discussion
		The timebase will initially have rate zero and time zero.
		Pass CMClockGetHostTimeClock() for masterClock to have the host time clock drive this timebase.
*/
@available(tvOS 6.0, *)
func CMTimebaseCreateWithMasterClock(allocator: CFAllocator?, _ masterClock: CMClock, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus

/*!
	@function	CMTimebaseCreateWithMasterTimebase
	@abstract	Creates a timebase driven by the given master timebase.  
	@discussion
		The timebase will initially have rate zero and time zero.
*/
@available(tvOS 6.0, *)
func CMTimebaseCreateWithMasterTimebase(allocator: CFAllocator?, _ masterTimebase: CMTimebase, _ timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus

/*!
	@function	CMTimebaseCopyMasterTimebase
	@abstract	Returns the immediate master timebase of a timebase.
	@discussion
		Returns NULL if the timebase actually has a master clock instead of a master timebase.
*/
@available(tvOS 9.0, *)
func CMTimebaseCopyMasterTimebase(timebase: CMTimebase) -> CMTimebase?

/*!
	@function	CMTimebaseCopyMasterClock
	@abstract	Returns the immediate master clock of a timebase.  
	@discussion
		Returns NULL if the timebase actually has a master timebase instead of a master clock.
*/
@available(tvOS 9.0, *)
func CMTimebaseCopyMasterClock(timebase: CMTimebase) -> CMClock?

/*!
	@function	CMTimebaseCopyMaster
	@abstract	Returns the immediate master (either timebase or clock) of a timebase.  
	@discussion
		Only returns NULL if there was an error (such as timebase == NULL).
*/
@available(tvOS 9.0, *)
func CMTimebaseCopyMaster(timebase: CMTimebase) -> CMClockOrTimebase?

/*!
	@function	CMTimebaseCopyUltimateMasterClock
	@abstract	Returns the master clock that is the master of all of a timebase's master timebases.
*/
@available(tvOS 9.0, *)
func CMTimebaseCopyUltimateMasterClock(timebase: CMTimebase) -> CMClock?

/*!
	@function	CMTimebaseGetMasterTimebase
	@abstract	Returns the immediate master timebase of a timebase.
	@discussion
		Returns NULL if the timebase actually has a master clock instead of a master timebase.
		Please use CMTimebaseCopyMasterTimebase instead.
*/
@available(tvOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterTimebase(timebase: CMTimebase) -> CMTimebase?

/*!
	@function	CMTimebaseGetMasterClock
	@abstract	Returns the immediate master clock of a timebase.  
	@discussion
		Returns NULL if the timebase actually has a master timebase instead of a master clock.
		Please use CMTimebaseCopyMasterClock instead.
*/
@available(tvOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMasterClock(timebase: CMTimebase) -> CMClock?

/*!
	@function	CMTimebaseGetMaster
	@abstract	Returns the immediate master (either timebase or clock) of a timebase.  
	@discussion
		Only returns NULL if there was an error (such as timebase == NULL).
		Example of use: time = CMSyncGetTime(CMTimebaseGetMaster(timebase));
		Please use CMTimebaseCopyMaster instead.
*/
@available(tvOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetMaster(timebase: CMTimebase) -> CMClockOrTimebase?

/*!
	@function	CMTimebaseGetUltimateMasterClock
	@abstract	Returns the master clock that is the master of all of a timebase's master timebases.
	@discussion
		Please use CMTimebaseCopyUltimateMasterClock instead.
*/
@available(tvOS, introduced=6.0, deprecated=9.0)
func CMTimebaseGetUltimateMasterClock(timebase: CMTimebase) -> CMClock?

/*!
	@function	CMTimebaseGetTime
	@abstract	Retrieves the current time from a timebase.
*/
@available(tvOS 6.0, *)
func CMTimebaseGetTime(timebase: CMTimebase) -> CMTime

/*!
	@function	CMTimebaseGetTimeWithTimeScale
	@abstract	Retrieves the current time from a timebase in the specified timescale.
*/
@available(tvOS 6.0, *)
func CMTimebaseGetTimeWithTimeScale(timebase: CMTimebase, _ timescale: CMTimeScale, _ method: CMTimeRoundingMethod) -> CMTime

/*!
	@function	CMTimebaseSetTime
	@abstract	Sets the current time of a timebase.  
*/
@available(tvOS 6.0, *)
func CMTimebaseSetTime(timebase: CMTimebase, _ time: CMTime) -> OSStatus

/*!
	@function	CMTimebaseSetAnchorTime
	@abstract	Sets the time of a timebase at a particular master time.
	@discussion
		CMTimebaseGetTime's results will be interpolated from that anchor time.
		CMTimebaseSetTime(timebase, time) is equivalent to calling
			CMClockOrTimebaseRef master = CMTimebaseCopyMaster(timebase);
			CMTimebaseSetAnchorTime(timebase, time, CMSyncGetTime(master));
			CFRelease(master).
*/
@available(tvOS 6.0, *)
func CMTimebaseSetAnchorTime(timebase: CMTimebase, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus

/*!
	@function	CMTimebaseGetRate
	@abstract	Retrieves the current rate of a timebase.  
	@discussion
		This is the rate relative to its immediate master clock or timebase.  
		For example, if a timebase is running at twice the rate of its master, its rate is 2.0.
*/
@available(tvOS 6.0, *)
func CMTimebaseGetRate(timebase: CMTimebase) -> Float64

/*!
	@function	CMTimebaseGetTimeAndRate
	@abstract	Retrieves the current time and rate of a timebase.
	@discussion
		You can use this function to take a consistent snapshot of the two values,
		avoiding possible inconsistencies due to external changes between retrieval of time and rate.
*/
@available(tvOS 6.0, *)
func CMTimebaseGetTimeAndRate(timebase: CMTimebase, _ outTime: UnsafeMutablePointer<CMTime>, _ outRate: UnsafeMutablePointer<Float64>) -> OSStatus

/*!
	@function	CMTimebaseSetRate
	@abstract	Sets the rate of a timebase.
*/
@available(tvOS 6.0, *)
func CMTimebaseSetRate(timebase: CMTimebase, _ rate: Float64) -> OSStatus

/*!
	@function	CMTimebaseSetRateAndAnchorTime
	@abstract	Sets the time of a timebase at a particular master time, and changes the rate at exactly that time.
	@discussion
		CMTimebaseGetTime's results will be interpolated from that anchor time as though the timebase 
		has been running at the requested rate since that time.
		CMTimebaseSetRate(timebase, rate) is approximately equivalent to calling
			CMClockOrTimebaseRef master = CMTimebaseCopyMaster(timebase);
			CMTimebaseSetRateAndAnchorTime(timebase, rate, CMTimebaseGetTime(timebase), CMSyncGetTime(master)),
			CFRelease(master);
		except that CMTimebaseSetRate will not generate a TimeJumped notification, and
		CMTimebaseSetRateAndAnchorTime will.
*/
@available(tvOS 6.0, *)
func CMTimebaseSetRateAndAnchorTime(timebase: CMTimebase, _ rate: Float64, _ timebaseTime: CMTime, _ immediateMasterTime: CMTime) -> OSStatus

/*!
	@function	CMTimebaseGetEffectiveRate
	@abstract	Gets the effective rate of a timebase (which combines its rate with the rates of all its master timebases).
	@discussion
		Calling CMTimebaseGetEffectiveRate(timebase) is equivalent to calling
			CMClockRef clock = CMTimebaseCopyUltimateMasterClock(timebase);
			CMSyncGetRelativeRate(timebase, clock).
			CFRelease(clock);
*/
@available(tvOS 6.0, *)
func CMTimebaseGetEffectiveRate(timebase: CMTimebase) -> Float64

/*!
	@function	CMTimebaseAddTimer
	@abstract
		Adds the timer to the list of timers managed by the timebase. 
	@discussion
		The timer must be a repeating run loop timer (with a very long interval at
		least as long as kCMTimebaseVeryLongCFTimeInterval), attached to a runloop.  
		The timebase will retain the timer, and will maintain its "NextFireDate" 
		according to the CMTime set using CMTimebaseSetTimerNextFireTime.
		Until the first call to CMTimebaseSetTimerNextFireTime, the "NextFireDate" 
		will be set far, far in the future. The runloop that timer is attached to must be
		passed in and the timebase will retain that runloop. The retained runloop will be
		used to call CFRunLoopWakeUp() any time the timebase modifies the timer's fire date.
*/
@available(tvOS 6.0, *)
func CMTimebaseAddTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ runloop: CFRunLoop) -> OSStatus

/*!
	@function	CMTimebaseRemoveTimer
	@abstract
		Removes the timer from the list of timers managed by the timebase. 
	@discussion
		The timebase will no longer maintain the timer's "NextFireDate".
		If the timer is invalidated, the timebase will eventually remove it 
		from its list and release it even if this function is not called.
*/
@available(tvOS 6.0, *)
func CMTimebaseRemoveTimer(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus

/*!
	@function	CMTimebaseSetTimerNextFireTime
	@abstract
		Sets the CMTime on the timebase's timeline at which the timer should next be fired.
	@discussion
		The timer must be on the list of timers managed by the timebase.
		The timebase will continue to update the timer's "NextFireDate" according to time jumps 
		and effective rate changes.
		If fireTime is not numeric, or if the timebase is not moving, the "NextFireDate"
		will be set to a date far, far in the future.
		<BR>
		IMPORTANT NOTE: Due to the way that CFRunLoopTimers are implemented, if a timer passes 
		through a state in which it is due to fire, it may fire even if its rescheduled before 
		the runloop runs again.  Clients should take care to avoid temporarily scheduling timers 
		in the past.  For example, set the timebase's rate or time before you set the timer's 
		next fire time, if you are doing both at once.  (If setting the timebase's rate or time
		might put the timer's fire time in the past, you may need to set the fire time to 
		kCMTimeInvalid across the timebase change.)
*/
@available(tvOS 6.0, *)
func CMTimebaseSetTimerNextFireTime(timebase: CMTimebase, _ timer: CFRunLoopTimer, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus

/*!
	@function	CMTimebaseSetTimerToFireImmediately
	@abstract
		Sets the timer to fire immediately once, overriding any previous CMTimebaseSetTimerNextFireTime call.
	@discussion
		The timer must be on the list of timers managed by the timebase.
		This is equivalent to calling 
			CFRunLoopTimerSetNextFireDate( timer, CFAbsoluteTimeGetCurrent() );
		except that the timebase gets to know that it shouldn't interfere.
*/
@available(tvOS 6.0, *)
func CMTimebaseSetTimerToFireImmediately(timebase: CMTimebase, _ timer: CFRunLoopTimer) -> OSStatus

/*!
	@function	CMTimebaseAddTimerDispatchSource
	@abstract
		Adds the timer dispatch source to the list of timers managed by the timebase. 
	@discussion
		The timer source must have been created by calling
		dispatch_source_create( DISPATCH_SOURCE_TYPE_TIMER, 0, 0, some_dispatch_queue )
		and should have had an event handler associated with it via
		dispatch_source_set_event_handler( timerSource, some_handler_block )
		or dispatch_source_set_event_handler_f( timerSource, some_handler_function ).
		Don't forget to call dispatch_resume( timerSource ) as dispatch sources are 
		created suspended.
		
		The timebase will retain the timer source, and will maintain its start time
		according to the CMTime set using CMTimebaseSetTimerDispatchSourceNextFireTime.
		Until the first call to CMTimebaseSetTimerDispatchSourceNextFireTime, the start time 
		will be set to DISPATCH_TIME_FOREVER.
*/
@available(tvOS 6.0, *)
func CMTimebaseAddTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus

/*!
	@function	CMTimebaseRemoveTimerDispatchSource
	@abstract
		Removes the timer dispatch source from the list of timers managed by the timebase. 
	@discussion
		The timebase will no longer maintain the timer source's start time.
		If the timer source is cancelled, the timebase will eventually remove it 
		from its list and release it even if this function is not called.
*/
@available(tvOS 6.0, *)
func CMTimebaseRemoveTimerDispatchSource(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus

/*!
	@function	CMTimebaseSetTimerDispatchSourceNextFireTime
	@abstract
		Sets the CMTime on the timebase's timeline at which the timer dispatch source should next be fired.
	@discussion
		The timer source must be on the list of timers managed by the timebase.
		The timebase will continue to update the timer dispatch source's start time 
		according to time jumps and effective rate changes.
		If fireTime is not numeric, or if the timebase is not moving, the start time
		will be set to DISPATCH_TIME_FOREVER.
		<BR>
		IMPORTANT NOTE: Due to the way that timer dispatch sources are implemented, if a timer passes 
		through a state in which it is due to fire, it may fire even if its rescheduled before 
		the event handler is run.  Clients should take care to avoid temporarily scheduling timers 
		in the past.  For example, set the timebase's rate or time before you set the timer's 
		next fire time, if you are doing both at once.  (If setting the timebase's rate or time
		might put the timer's fire time in the past, you may need to set the fire time to 
		kCMTimeInvalid across the timebase change.)
*/
@available(tvOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(timebase: CMTimebase, _ timerSource: dispatch_source_t, _ fireTime: CMTime, _ flags: UInt32) -> OSStatus

/*!
	@function	CMTimebaseSetTimerDispatchSourceToFireImmediately
	@abstract
		Sets the timer dispatch source to fire immediately once, overriding any previous
		CMTimebaseSetTimerDispatchSourceNextFireTime call.
	@discussion
		The timer source must be on the list of timers managed by the timebase.
		This is equivalent to calling 
			dispatch_source_set_timer( timerSource, DISPATCH_TIME_NOW, 0, 0 );
		except that the timebase gets to know that it shouldn't interfere.
*/
@available(tvOS 6.0, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(timebase: CMTimebase, _ timerSource: dispatch_source_t) -> OSStatus

/*!
	@function	CMSyncGetRelativeRate
	@abstract	Queries the relative rate of one timebase or clock relative to another timebase or clock.
	@discussion
		If both have a common master, this calculation is performed purely based on the rates in the common tree 
		rooted in that master.  
		If they have different master clocks (or are both clocks), this calculation takes into account the measured
		drift between the two clocks, using host time as a pivot.
		The rate of a moving timebase relative to a stopped timebase is a NaN.
		Calling CMTimebaseGetEffectiveRate(timebase) is equivalent to calling
			CMClockRef clock = CMTimebaseCopyUltimateMasterClock(timebase);
			CMSyncGetRelativeRate(timebase, clock).
			CFRelease(clock);
*/
@available(tvOS 6.0, *)
func CMSyncGetRelativeRate(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase) -> Float64

/*!
	@function	CMSyncGetRelativeRateAndAnchorTime
	@abstract	Queries the relative rate of one timebase or clock relative to another timebase or clock and the times of each timebase or clock at which the relative rate went into effect.
	@discussion
		If both have a common master, this calculation is performed purely based on the rates in the common tree
		rooted in that master.  
		If they have different master clocks (or are both clocks), this calculation takes into account the measured
		drift between the two clocks, using host time as a pivot.
		The rate of a moving timebase relative to a stopped timebase is a NaN.
*/
@available(tvOS 6.0, *)
func CMSyncGetRelativeRateAndAnchorTime(ofClockOrTimebase: CMClockOrTimebase, _ relativeToClockOrTimebase: CMClockOrTimebase, _ outRelativeRate: UnsafeMutablePointer<Float64>, _ outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>, _ outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>) -> OSStatus

/*!
	@function	CMSyncConvertTime
	@abstract	Converts a time from one timebase or clock to another timebase or clock.
	@discussion
		If both have a common master, this calculation is performed purely based on the mathematical rates and offsets 
		in the common tree rooted in that master.  
		If they have different master clocks (or are both clocks), this calculation also compensates
		for measured drift between the clocks.
		To convert to or from host time, pass CMClockGetHostTimeClock() as the appropriate argument.
*/
@available(tvOS 6.0, *)
func CMSyncConvertTime(time: CMTime, _ fromClockOrTimebase: CMClockOrTimebase, _ toClockOrTimebase: CMClockOrTimebase) -> CMTime

/*!
	@function	CMSyncMightDrift
	@abstract	Reports whether it is possible for one timebase/clock to drift relative to the other.
	@discussion
		A timebase can drift relative to another if they are ultimately mastered by clocks that can drift relative
		to each other.
*/
@available(tvOS 6.0, *)
func CMSyncMightDrift(clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool

/*!
	@function	CMSyncGetTime
	@abstract	A helper function to get time from a clock or timebase.
	@discussion
		CMSyncGetTime simply calls either CMClockGetTime or CMTimebaseGetTime, as appropriate.
		It comes in handy for things like:
			CMClockOrTimebaseRef master = CMTimebaseCopyMaster(timebase);
			CMSyncGetTime(master);
			CFRelease(master);
*/
@available(tvOS 6.0, *)
func CMSyncGetTime(clockOrTimebase: CMClockOrTimebase) -> CMTime

/*!
	@function	CMTimebaseNotificationBarrier
	@abstract	Requests that the timebase wait until it is not posting any notifications.
*/
@available(tvOS 6.0, *)
func CMTimebaseNotificationBarrier(timebase: CMTimebase) -> OSStatus
@available(tvOS 6.0, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(tvOS 6.0, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(tvOS 7.0, *)
let kCMTimebaseNotificationKey_EventTime: CFString

/*!
    @const      kCMTextMarkupAttribute_ForegroundColorARGB
    @abstract   The foreground color for text.
 
    @discussion Value must be a CFArray of 4 CFNumbers representing alpha, red, green, and blue fields with values between 0.0 and 1.0. The
                red, green and blue components are interpreted in the sRGB color space. The alpha indicates the opacity from 0.0 for transparent to
                1.0 for 100% opaque.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_ForegroundColorARGB: CFString

/*!
    @const      kCMTextMarkupAttribute_BackgroundColorARGB
    @abstract   The background color for the shape holding the text.
 
    @discussion Value must be a CFArray of 4 CFNumbers representing alpha, red, green, and blue fields with values between 0.0 and 1.0. The
                red, green and blue components are interpreted in the sRGB color space. The alpha indicates the opacity from 0.0 for transparent to
                1.0 for 100% opaque.

                The color applies to the geometry (e.g., a box) containing the text. The container's background color may have an 
                alpha of 0 so it is not displayed even though the text is displayed. The color behind individual characters
                is optionally controllable with the kCMTextMarkupAttribute_CharacterBackgroundColorARGB attribute. 
 
                If used, this attribute must be applied to the entire attributed string (i.e.,
                CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_BackgroundColorARGB: CFString

/*!
    @const      kCMTextMarkupAttribute_CharacterBackgroundColorARGB
    @abstract   The background color behind individual text characters.
 
    @discussion Value must be a CFArray of 4 CFNumbers representing alpha, red, green, and blue fields with values between 0.0 and 1.0. The
                red, green and blue components are interpreted in the sRGB color space. The alpha indicates the opacity from 0.0 for transparent to
                1.0 for 100% opaque.
 */
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_CharacterBackgroundColorARGB: CFString

/*!
    @const      kCMTextMarkupAttribute_BoldStyle
    @abstract   Allows the setting of a bold style to be applied.

    @discussion Value must be a CFBoolean. The default is kCFBooleanFalse.
                If this attribute is kCFBooleanTrue, the text will be drawn 
                with a bold style. Other styles such as italic may or may 
                not be used as well.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_BoldStyle: CFString

/*!
    @const      kCMTextMarkupAttribute_ItalicStyle
    @abstract   Allows the setting of an italic style to be applied.

    @discussion Value must be a CFBoolean. The default is kCFBooleanFalse.
                If this attribute is kCFBooleanTrue, the text will be rendered 
                with an italic style. Other styles such as bold may or may not 
                be used as well.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_ItalicStyle: CFString

/*!
    @const      kCMTextMarkupAttribute_UnderlineStyle
    @abstract   Allows the setting of an underline to be applied at render
                time.

    @discussion Value must be a CFBoolean. The default is kCFBooleanFalse.
                If this attribute is kCFBooleanTrue, the text will be rendered 
                with an underline. Other styles such as bold may or may not 
                be used as well.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_UnderlineStyle: CFString

/*!
    @const      kCMTextMarkupAttribute_FontFamilyName
    @abstract   The name of the font.
 
    @discussion Value must be a CFString holding the family name of an installed font
                (e.g., "Helvetica") that is used to render and/or measure text.
 
                When vended by legible output, an attributed string will have at most one of kCMTextMarkupAttribute_FontFamilyName or
                kCMTextMarkupAttribute_GenericFontFamilyName associated with each character.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_FontFamilyName: CFString

/*!
    @const      kCMTextMarkupAttribute_GenericFontFamilyName
    @abstract   The attribute holding a generic font family identifier.
 
    @discussion	Value must be a CFString holding a generic font family name that is one of the kCMTextMarkupGenericFontName_* constants.
 				Generic fonts must be mapped to the family name of an installed font (e.g., kCMTextMarkupGenericFontName_SansSerif -> "Helvetica")
 				before rendering and/or measuring text.
 
                When vended by legible output, an attributed string will have at most one of kCMTextMarkupAttribute_FontFamilyName or
                kCMTextMarkupAttribute_GenericFontFamilyName associated with each character.
 
                Overview of Generic Font Family Names
                =====================================
                Some media formats allow the specification of font family names to be used to style text they carry. Sometimes, an
                external specification (e.g., CSS) may be used to style the text carried by the media format. In either case, the
                specification may be concrete, indicating an installed platform font (e.g., "Times New Roman", Helvetica). It may be
                abstract, indicating a category of font to use (e.g., serif, sans-serif). This abstract designation is often termed
                a "generic font family".

                CSS for example allows a 'font-family' property specification such as this:

                    font-family: Helvetica, sans-serif;

                This uses both the concrete family name "Helvetica" and the generic family name "sans-serif".

                Generic font families may be common across media formats (e.g., both CSS and 3GPP timed text allow "sans-serif" and "serif").
                Other formats may have generic font identifiers that do not align exactly (e.g., TTML allows "monospaceSerif and "monospaceSansSerif" in
                addition to "monospace"). Some formats might not carry names but have numeric values mapping to a generic font identifier.
                Simply put, different formats use different ways to express their generic fonts.

                The use of generic font families is also important for media accessibility. The Media Accessibility framework can map eight categories
                of abstract fonts to an installed font. Users may choose to override each of these categories to a different installed font. This
                remapping should work if the content or external styling indicates a generic font. It should not however try to remap a concrete font like "Helvetica".
                Consequently, it is important to distinguish between the generic and concrete fonts expressed by the author.

                To accommodate what is expressible in media formats and to support media accessibility overrides, generic font families can be
                specified with the kCMTextMarkupAttribute_GenericFontFamilyName attribute which carries the identifier for one of the various
                generic font specification forms supported across media formats. These generic font identifiers are the kCMTextMarkupGenericFontName_*
                prefixed constants also defined here. New identifers may be added in the future.
 
                Concrete fonts are specified using the kCMTextMarkupAttribute_FontFamilyName attribute also defined in this header.
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_GenericFontFamilyName: CFString

/*!
	@abstract   Values for kCMTextMarkupAttribute_GenericFontFamilyName. 

	@const      kCMTextMarkupGenericFontName_Default
 				The generic font name indicating the default font. The default font may also be chosen if no font family is
 				specified (i.e., no kCMTextMarkupAttribute_FontFamilyName or kCMTextMarkupAttribute_GenericFontFamilyName is specified).

	@const      kCMTextMarkupGenericFontName_Serif
 				The generic font name indicating a font with serifs. The font may be proportional or monospaced. E.g., Times New Roman

	@const      kCMTextMarkupGenericFontName_SansSerif
 				The generic font name indicating a font without serifs. The font may be proportional or monospaced. E.g., Helvetica

	@const      kCMTextMarkupGenericFontName_Monospace
 				The generic font name indicating a monospaced font, with or without serifs. E.g., Courier

	@const      kCMTextMarkupGenericFontName_ProportionalSerif
 				The generic font name indicating a proportional font with serifs.

	@const      kCMTextMarkupGenericFontName_ProportionalSansSerif
 				The generic font name indicating a proportional font without serifs.

	@const      kCMTextMarkupGenericFontName_MonospaceSerif
 				The generic font name indicating a monospaced font with serifs.

	@const      kCMTextMarkupGenericFontName_MonospaceSansSerif
 				The generic font name indicating a monospaced font without serifs.

	@const      kCMTextMarkupGenericFontName_Casual
 				The generic font name indicating a "casual" font. E.g., Dom or Impress

	@const      kCMTextMarkupGenericFontName_Cursive
 				The generic font name indicating a cursive font. E.g., Coronet or Marigold

	@const      kCMTextMarkupGenericFontName_Fantasy
 				The generic font name indicating a "fantasy" font.

	@const      kCMTextMarkupGenericFontName_SmallCapital
 				The generic font name indicating a font with lowercase letters set as small capitals. E.g., Engravers Gothic
 */
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Default: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Serif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_SansSerif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Monospace: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_ProportionalSerif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_ProportionalSansSerif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_MonospaceSerif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_MonospaceSansSerif: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Casual: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Cursive: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_Fantasy: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupGenericFontName_SmallCapital: CFString

/*!
    @const      kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight
    @abstract   The base font size expressed as a percentage of the video height.
 
    @discussion Value must be a non-negative CFNumber.  This is a number holding a percentage of the height of the video frame.  For example, a value of 5 indicates that the base font size should be 5% of the height of the video.
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight: CFString

/*!
    @const      kCMTextMarkupAttribute_RelativeFontSize
    @abstract   The font size expressed as a percentage of the current default font size.
 
    @discussion Value must be a non-negative CFNumber. This is a number holding a percentage
                of the size of the calculated default font size.  A value
                of 120 indicates 20% larger than the default font size. A value of 80
                indicates 80% of the default font size.  The value 100 indicates no size
                difference and is the default.
*/
@available(tvOS 6.0, *)
let kCMTextMarkupAttribute_RelativeFontSize: CFString

/*!
	@const      kCMTextMarkupAttribute_VerticalLayout
	@abstract   The kind of vertical layout of the text block.

	@discussion Value must be a CFString.
 				A CFString holding one of several values indicating the progression direction for new vertical
 				lines of text. If this attribute is present, it indicates the writing direction is vertical. The 
				attribute value indicates whether new vertical text lines are added from left to right or from 
				right to left. If this attribute is missing, the writing direction is horizontal.
				
				If used, this attribute must be applied to the entire attributed string (i.e., 
                CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_VerticalLayout: CFString

/*!
	@abstract   Values for kCMTextMarkupAttribute_VerticalLayout. 
	
	@const      kCMTextVerticalLayout_LeftToRight
				Newly added vertical lines are added from the left toward the right.
				
	@const      kCMTextVerticalLayout_RightToLeft
				Newly added vertical lines are added from the right toward the left.
*/
@available(tvOS 7.0, *)
let kCMTextVerticalLayout_LeftToRight: CFString
@available(tvOS 7.0, *)
let kCMTextVerticalLayout_RightToLeft: CFString

/*!
	@const      kCMTextMarkupAttribute_Alignment
	@abstract   The alignment of text in the writing direction of the first line of text.

	@discussion Value must be a CFString.
				A CFString holding one of several values indicating the alignment 
				in the writing direction of the first line of text of the cue. 
				The writing direction is indicated by the value (or absence) of 
				the kCMTextMarkupAttribute_VerticalLayout. 
				
				If this attribute is missing, the kCMTextMarkupAlignmentType_Middle value should
				be used as the default.
				
				If used, this attribute must be applied to the entire attributed string (i.e., 
                CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_Alignment: CFString

/*!
	@abstract   Values for kCMTextMarkupAttribute_Alignment. 
	
	@const      kCMTextMarkupAlignmentType_Start
				The text is visually aligned at its starting side. For horizontally written text, the alignment is left for 
				left-to-right text and right for right-to-left text. For vertical text, alignment is always at the top.

	@const      kCMTextMarkupAlignmentType_Middle
				The text is visually center-aligned (i.e., aligned between its starting and ending sides). 

	@const      kCMTextMarkupAlignmentType_End
				The text is visually aligned at its ending side. For horizontally written text, the alignment is right for 
				left-to-right text and left for right-to-left text. For vertical text, alignment is always at the bottom.

	@const      kCMTextMarkupAlignmentType_Left
				For horizontally written text, the text alignment is always visually left-aligned (i.e., left-to-right and right-to-left 
				are treated uniformly). For vertical text, this is equivalent to kCMTextMarkupAlignmentType_Start. While readers
				should be prepared to account for kCMTextMarkupAlignmentType_Left being equivalent to 
				kCMTextMarkupAlignmentType_Start for vertical text, authors are discouraged from using kCMTextMarkupAlignmentType_Left
				for vertical text.

	@const      kCMTextMarkupAlignmentType_Right
				For horizontally written text, the text alignment is always visually right-aligned (i.e., left-to-right and right-to-left 
				are treated uniformly). For vertical text, this is equivalent to kCMTextMarkupAlignmentType_End. While readers
				should be prepared to account for kCMTextMarkupAlignmentType_Right being equivalent to 
				kCMTextMarkupAlignmentType_End for vertical text, authors are discouraged from using kCMTextMarkupAlignmentType_Right
				for vertical text.
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAlignmentType_Start: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupAlignmentType_Middle: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupAlignmentType_End: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupAlignmentType_Left: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupAlignmentType_Right: CFString

/*!
	 @const      kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection
	 @abstract   The placement of the block of text specified as a percentage in the writing direction.
	 
	 @discussion Value must be a non-negative CFNumber.
				 A CFNumber expressing the position of the
				 center of the text in the writing direction as a percentage of the video dimensions in 
				 the writing direction. For horizontal cues, this is the horizontal position. 
				 For vertical, it is the vertical position. The percentage is calculated 
				 from the edge of the frame where the text begins (so for left-to-right 
				 English, it is the left edge).
				 
				 If used, this attribute must be applied to the entire attributed string (i.e., 
                 CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection: CFString

/*!
	@const      kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection
	@abstract   The placement of the block of text's first line specified as a percentage in the 
				direction orthogonal to the writing direction.

	@discussion Value must be a non-negative CFNumber.
				A CFNumber expressing the position of the center of the
				cue relative to the writing direction. The line 
				position is orthogonal (or perpendicular) to the writing direction (i.e., 
				for a horizontal writing direction, it is vertical and for a vertical writing 
				direction, is is horizontal). This attribute expresses the line position as 
				a percentage of the dimensions of the video frame in the relevant direction. 
				For example, 0% is the top of the video frame and 100% is the bottom of the 
				video frame for horizontal writing layout.
				
				If used, this attribute must be applied to the entire attributed string (i.e., 
                CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection: CFString

/*!
	@const      kCMTextMarkupAttribute_WritingDirectionSizePercentage
	@abstract   The dimension (e.g., width) of the bounding box containing the text expressed as a percentage.

	@discussion Value must be a non-negative CFNumber.
				A CFNumber expressing the width of the 
				bounding box for text layout as a percentage of the video frame's dimension
				in the writing direction. 
				For a horizontal writing direction, it is the width. For a vertical writing 
				direction, it is the horizontal writing direction.
				
				If used, this attribute must be applied to the entire attributed string (i.e., 
                CFRangeMake(0, CFAttributedStringGetLength(...))).
*/
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_WritingDirectionSizePercentage: CFString

/*!
	@const      kCMTextMarkupAttribute_CharacterEdgeStyle
	@abstract   Allows the setting of the style of character edges at render time.

	@discussion Value must be a CFString. This controls the shape of the edges of
				drawn characters. Set a value of something other than kCMTextMarkupEdgeStyle_None
				to draw using an alternative shape for edges of characters from the set of constants
				prefixed with "kCMTextMarkupEdgeStyle_". These correspond to text edge styles available
				with Media Accessibility preferences (see <MediaAccessibility/MACaptionAppearance.h>)
				although the values are not enumerated integers here.
				
				The absence of this attribute should be treated as though kCMTextMarkupCharacterEdgeStyle_None
				is specified.
 */
@available(tvOS 7.0, *)
let kCMTextMarkupAttribute_CharacterEdgeStyle: CFString

/*!
	@abstract   Values for kCMTextMarkupAttribute_CharacterEdgeStyle. 

	@const      kCMTextMarkupCharacterEdgeStyle_None
				The character edge style indicating no edge style.

	@const      kCMTextMarkupCharacterEdgeStyle_Raised
				The character edge style indicating a raised edge style should be drawn.

	@const      kCMTextMarkupCharacterEdgeStyle_Depressed
				The character edge style indicating a depressed edge style should be drawn.

	@const      kCMTextMarkupCharacterEdgeStyle_Uniform
				The character edge style indicating a uniform border around the character should be drawn.

	@const      kCMTextMarkupCharacterEdgeStyle_DropShadow
				The character edge style indicating a drop shadow should be drawn.
 */
@available(tvOS 7.0, *)
let kCMTextMarkupCharacterEdgeStyle_None: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupCharacterEdgeStyle_Raised: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupCharacterEdgeStyle_Depressed: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupCharacterEdgeStyle_Uniform: CFString
@available(tvOS 7.0, *)
let kCMTextMarkupCharacterEdgeStyle_DropShadow: CFString

/*!
	@typedef	CMTimeValue
	@abstract	Numerator of rational CMTime.
*/
typealias CMTimeValue = Int64

/*!
	@typedef	CMTimeScale
	@abstract	Denominator of rational CMTime.
	@discussion	Timescales must be positive.
				Note: kCMTimeMaxTimescale is NOT a good choice of timescale for movie files.  
				(Recommended timescales for movie files range from 600 to 90000.)
*/
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }

/*!
	@typedef	CMTimeEpoch
	@abstract	Epoch (eg, loop number) to which a CMTime refers.
*/
typealias CMTimeEpoch = Int64

/*!
	@enum		CMTimeFlags
	@abstract	Flag bits for a CMTime.
	@constant	kCMTimeFlags_Valid Must be set, or the CMTime is considered invalid.
									Allows simple clearing (eg. with calloc or memset) for initialization
									of arrays of CMTime structs to "invalid". This flag must be set, even
									if other flags are set as well.
	@constant	kCMTimeFlags_HasBeenRounded Set whenever a CMTime value is rounded, or is derived from another rounded CMTime.													
	@constant	kCMTimeFlags_PositiveInfinity Set if the CMTime is +inf.	"Implied value" flag (other struct fields are ignored).													
	@constant	kCMTimeFlags_NegativeInfinity Set if the CMTime is -inf.	"Implied value" flag (other struct fields are ignored).														
	@constant	kCMTimeFlags_Indefinite Set if the CMTime is indefinite/unknown. Example of usage: duration of a live broadcast.
										 "Implied value" flag (other struct fields are ignored).
*/
struct CMTimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: CMTimeFlags { get }
  static var HasBeenRounded: CMTimeFlags { get }
  static var PositiveInfinity: CMTimeFlags { get }
  static var NegativeInfinity: CMTimeFlags { get }
  static var Indefinite: CMTimeFlags { get }
  static var ImpliedValueFlagsMask: CMTimeFlags { get }
}

/*!
	@typedef	CMTime
	@abstract	Rational time value represented as int64/int32.
*/
struct CMTime {
  var value: CMTimeValue

  /*! @field value The value of the CMTime. value/timescale = seconds. */
  var timescale: CMTimeScale

  /*! @field timescale The timescale of the CMTime. value/timescale = seconds.  */
  var flags: CMTimeFlags

  /*! @field flags The flags, eg. kCMTimeFlags_Valid, kCMTimeFlags_PositiveInfinity, etc. */
  var epoch: CMTimeEpoch
  init()
  init(value: CMTimeValue, timescale: CMTimeScale, flags: CMTimeFlags, epoch: CMTimeEpoch)
}

extension CMTime {
  init(seconds: Double, preferredTimescale: CMTimeScale)
  init(value: CMTimeValue, timescale: CMTimeScale)
}

extension CMTime {
  var isValid: Bool { get }
  var isPositiveInfinity: Bool { get }
  var isNegativeInfinity: Bool { get }
  var isIndefinite: Bool { get }
  var isNumeric: Bool { get }
  var hasBeenRounded: Bool { get }
  var seconds: Double { get }
  func convertScale(newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}

extension CMTime : Equatable, Comparable {
}
@available(tvOS 4.0, *)
let kCMTimeInvalid: CMTime
@available(tvOS 4.0, *)
let kCMTimeIndefinite: CMTime
@available(tvOS 4.0, *)
let kCMTimePositiveInfinity: CMTime
@available(tvOS 4.0, *)
let kCMTimeNegativeInfinity: CMTime
@available(tvOS 4.0, *)
let kCMTimeZero: CMTime

/*!
	@function	CMTimeMake
	@abstract	Make a valid CMTime with value and timescale.  Epoch is implied to be 0.
	@result		The resulting CMTime.
*/
@available(tvOS 4.0, *)
func CMTimeMake(value: Int64, _ timescale: Int32) -> CMTime

/*!
	@function	CMTimeMakeWithEpoch
	@abstract	Make a valid CMTime with value, scale and epoch.
	@result		The resulting CMTime.
*/
@available(tvOS 4.0, *)
func CMTimeMakeWithEpoch(value: Int64, _ timescale: Int32, _ epoch: Int64) -> CMTime

/*!
	@function	CMTimeMakeWithSeconds
	@abstract	Make a CMTime from a Float64 number of seconds, and a preferred timescale.
	@discussion	The epoch of the result will be zero.  If preferredTimeScale is <= 0, the result
				will be an invalid CMTime.  If the preferred timescale will cause an overflow, the
				timescale will be halved repeatedly until the overflow goes away, or the timescale
				is 1.  If it still overflows at that point, the result will be +/- infinity.  The
				kCMTimeFlags_HasBeenRounded flag will be set if the result, when converted back to
				seconds, is not exactly equal to the original seconds value.
	@result		The resulting CMTime.
*/
@available(tvOS 4.0, *)
func CMTimeMakeWithSeconds(seconds: Float64, _ preferredTimeScale: Int32) -> CMTime

/*!
	@function	CMTimeGetSeconds
	@abstract	Converts a CMTime to seconds.
	@discussion	If the CMTime is invalid or indefinite, NAN is returned.  If the CMTime is infinite, +/- __inf()
				is returned.  If the CMTime is numeric, epoch is ignored, and time.value / time.timescale is
				returned.  The division is done in Float64, so the fraction is not lost in the returned result.
	@result		The resulting Float64 number of seconds.
*/
@available(tvOS 4.0, *)
func CMTimeGetSeconds(time: CMTime) -> Float64

/*!
	@enum CMTimeRoundingMethod
	@abstract Rounding method to use when computing time.value during timescale conversions.
	@constant	kCMTimeRoundingMethod_RoundHalfAwayFromZero	Round towards zero if abs(fraction) is < 0.5,
																away from 0 if abs(fraction) is >= 0.5.
	@constant	kCMTimeRoundingMethod_Default					Synonym for kCMTimeRoundingMethod_RoundHalfAwayFromZero.
	@constant	kCMTimeRoundingMethod_RoundTowardZero			Round towards zero if fraction is != 0.
	@constant	kCMTimeRoundingMethod_RoundAwayFromZero		Round away from zero if abs(fraction) is > 0.
	@constant	kCMTimeRoundingMethod_QuickTime				Use kCMTimeRoundingMethod_RoundTowardZero if converting
																from larger to smaller scale (ie. from more precision to
																less precision), but use
																kCMTimeRoundingMethod_RoundAwayFromZero if converting
																from smaller to larger scale (ie. from less precision to
																more precision). Also, never round a negative number down
																to 0; always return the smallest magnitude negative
																CMTime in this case (-1/newTimescale).
	@constant	kCMTimeRoundingMethod_RoundTowardPositiveInfinity	Round towards +inf if fraction is != 0.
	@constant	kCMTimeRoundingMethod_RoundTowardNegativeInfinity	Round towards -inf if fraction is != 0.
*/
enum CMTimeRoundingMethod : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case RoundHalfAwayFromZero
  case RoundTowardZero
  case RoundAwayFromZero
  case QuickTime
  case RoundTowardPositiveInfinity
  case RoundTowardNegativeInfinity
  static var Default: CMTimeRoundingMethod { get }
}

/*!
	@function	CMTimeConvertScale
	@abstract	Returns a new CMTime containing the source CMTime converted to a new timescale (rounding as requested).
	@discussion If the value needs to be rounded, the kCMTimeFlags_HasBeenRounded flag will be set.
				See definition of CMTimeRoundingMethod for a discussion of the various rounding methods available. If
				the source time is non-numeric (ie. infinite, indefinite, invalid), the result will be similarly non-numeric.
	@result		The converted result CMTime.
*/
@available(tvOS 4.0, *)
func CMTimeConvertScale(time: CMTime, _ newTimescale: Int32, _ method: CMTimeRoundingMethod) -> CMTime

/*!
	@function	CMTimeAdd
    @abstract   Returns the sum of two CMTimes.
    @discussion If the operands both have the same timescale, the timescale of the result will be the same as
				the operands' timescale.  If the operands have different timescales, the timescale of the result
				will be the least common multiple of the operands' timescales.  If that LCM timescale is 
				greater than kCMTimeMaxTimescale, the result timescale will be kCMTimeMaxTimescale,
				and default rounding will be applied when converting the result to this timescale.
				
				If the result value overflows, the result timescale will be repeatedly halved until the result
				value no longer overflows.  Again, default rounding will be applied when converting the
				result to this timescale.  If the result value still overflows when timescale == 1, then the
				result will be either positive or negative infinity, depending on the direction of the
				overflow.
				
				If any rounding occurs for any reason, the result's kCMTimeFlags_HasBeenRounded flag will be
				set.  This flag will also be set if either of the operands has kCMTimeFlags_HasBeenRounded set.
				
				If either of the operands is invalid, the result will be invalid.
				
				If the operands are valid, but just one operand is infinite, the result will be similarly
				infinite. If the operands are valid, and both are infinite, the results will be as follows:
<ul>			+infinity + +infinity == +infinity
<li>			-infinity + -infinity == -infinity
<li>			+infinity + -infinity == invalid
<li>			-infinity + +infinity == invalid
</ul>
				If the operands are valid, not infinite, and either or both is indefinite, the result
				will be indefinite. 								

				If the two operands are numeric (ie. valid, not infinite, not indefinite), but have
				different nonzero epochs, the result will be invalid.  If they have the same nonzero 
				epoch, the result will have epoch zero (a duration).  Times in different epochs 
				cannot be added or subtracted, because epoch length is unknown.  Times in epoch zero 
				are considered to be durations and can be added to times in other epochs.
				Times in different epochs can be compared, however, because numerically greater 
				epochs always occur after numerically lesser epochs. 
    @result     The sum of the two CMTimes (addend1 + addend2).
*/
@available(tvOS 4.0, *)
func CMTimeAdd(addend1: CMTime, _ addend2: CMTime) -> CMTime

/*!
	@function	CMTimeSubtract
    @abstract   Returns the difference of two CMTimes.
    @discussion If the operands both have the same timescale, the timescale of the result will be the same as
				the operands' timescale.  If the operands have different timescales, the timescale of the result
				will be the least common multiple of the operands' timescales.  If that LCM timescale is 
				greater than kCMTimeMaxTimescale, the result timescale will be kCMTimeMaxTimescale,
				and default rounding will be applied when converting the result to this timescale.
				
				If the result value overflows, the result timescale will be repeatedly halved until the result
				value no longer overflows.  Again, default rounding will be applied when converting the
				result to this timescale.  If the result value still overflows when timescale == 1, then the
				result will be either positive or negative infinity, depending on the direction of the
				overflow.
				
				If any rounding occurs for any reason, the result's kCMTimeFlags_HasBeenRounded flag will be
				set.  This flag will also be set if either of the operands has kCMTimeFlags_HasBeenRounded set.

				If either of the operands is invalid, the result will be invalid.
				
				If the operands are valid, but just one operand is infinite, the result will be similarly
				infinite. If the operands are valid, and both are infinite, the results will be as follows:
<ul>			+infinity - +infinity == invalid
<li>			-infinity - -infinity == invalid
<li>			+infinity - -infinity == +infinity
<li>			-infinity - +infinity == -infinity
</ul>
				If the operands are valid, not infinite, and either or both is indefinite, the result
				will be indefinite. 								

				If the two operands are numeric (ie. valid, not infinite, not indefinite), but have
				different nonzero epochs, the result will be invalid.  If they have the same nonzero 
				epoch, the result will have epoch zero (a duration).  Times in different epochs 
				cannot be added or subtracted, because epoch length is unknown.  Times in epoch zero 
				are considered to be durations and can be subtracted from times in other epochs.
				Times in different epochs can be compared, however, because numerically greater 
				epochs always occur after numerically lesser epochs. 
    @result     The difference of the two CMTimes (minuend - subtrahend).
*/
@available(tvOS 4.0, *)
func CMTimeSubtract(minuend: CMTime, _ subtrahend: CMTime) -> CMTime

/*!
	@function	CMTimeMultiply
    @abstract   Returns the product of a CMTime and a 32-bit integer.
    @discussion The result will have the same timescale as the CMTime operand. If the result value overflows,
				the result timescale will be repeatedly halved until the result value no longer overflows.
				Again, default rounding will be applied when converting the result to this timescale.  If the
				result value still overflows when timescale == 1, then the result will be either positive or
				negative infinity, depending on the direction of the overflow.
				
				If any rounding occurs for any reason, the result's kCMTimeFlags_HasBeenRounded flag will be
				set.  This flag will also be set if the CMTime operand has kCMTimeFlags_HasBeenRounded set.

				If the CMTime operand is invalid, the result will be invalid.
				
				If the CMTime operand is valid, but infinite, the result will be infinite, and of an appropriate sign, given
				the signs of both operands.
				
				If the CMTime operand is valid, but indefinite, the result will be indefinite. 								

    @result     The product of the CMTime and the 32-bit integer.
*/
@available(tvOS 4.0, *)
func CMTimeMultiply(time: CMTime, _ multiplier: Int32) -> CMTime

/*!
	@function	CMTimeMultiplyByFloat64
	@abstract   Returns the product of a CMTime and a 64-bit float.
	@discussion The result will initially have the same timescale as the CMTime operand. 
				If the result timescale is less than 65536, it will be repeatedly doubled until it is at least 65536.
				If the result value overflows, the result timescale will be repeatedly halved until the 
				result value no longer overflows.
				Again, default rounding will be applied when converting the result to this timescale.  If the
				result value still overflows when timescale == 1, then the result will be either positive or
				negative infinity, depending on the direction of the overflow.
				
				If any rounding occurs for any reason, the result's kCMTimeFlags_HasBeenRounded flag will be
				set.  This flag will also be set if the CMTime operand has kCMTimeFlags_HasBeenRounded set.

				If the CMTime operand is invalid, the result will be invalid.
				
				If the CMTime operand is valid, but infinite, the result will be infinite, and of an appropriate sign, given
				the signs of both operands.
				
				If the CMTime operand is valid, but indefinite, the result will be indefinite.								

	@result     The product of the CMTime and the 64-bit float.
*/
@available(tvOS 4.0, *)
func CMTimeMultiplyByFloat64(time: CMTime, _ multiplier: Float64) -> CMTime

/*!
	@function	CMTimeMultiplyByRatio
    @abstract   Returns the result of multiplying a CMTime by an integer, then dividing by another integer.
    @discussion The exact rational value will be preserved, if possible without overflow.  If an overflow
				would occur, a new timescale will be chosen so as to minimize the rounding error.
				Default rounding will be applied when converting the result to this timescale.  If the
				result value still overflows when timescale == 1, then the result will be either positive
				or negative infinity, depending on the direction of the overflow.

				If any rounding occurs for any reason, the result's kCMTimeFlags_HasBeenRounded flag will be
				set.  This flag will also be set if the CMTime operand has kCMTimeFlags_HasBeenRounded set.

				If the denominator, and either the time or the numerator, are zero, the result will be
				kCMTimeInvalid.  If only the denominator is zero, the result will be either kCMTimePositiveInfinity
				or kCMTimeNegativeInfinity, depending on the signs of the other arguments.

				If time is invalid, the result will be invalid. If time is infinite, the result will be
				similarly infinite. If time is indefinite, the result will be indefinite. 								

    @result     (time * multiplier) / divisor
*/
@available(tvOS 7.1, *)
func CMTimeMultiplyByRatio(time: CMTime, _ multiplier: Int32, _ divisor: Int32) -> CMTime

/*!
	@function	CMTimeCompare
    @abstract   Returns the numerical relationship (-1 = less than, 1 = greater than, 0 = equal) of two CMTimes.
    @discussion If the two CMTimes are numeric (ie. not invalid, infinite, or indefinite), and have
				different epochs, it is considered that times in numerically larger epochs are always
				greater than times in numerically smaller epochs. 
				
				Since this routine will be used to sort lists by time, it needs to give all values 
				(even invalid and indefinite ones) a strict ordering to guarantee that sort algorithms
				terminate safely. The order chosen is somewhat arbitrary:
				
				-infinity < all finite values < indefinite < +infinity < invalid
				
				Invalid CMTimes are considered to be equal to other invalid CMTimes, and greater than
				any other CMTime. Positive infinity is considered to be less than any invalid CMTime,
				equal to itself, and greater than any other CMTime. An indefinite CMTime is considered
				to be less than any invalid CMTime, less than positive infinity, equal to itself,
				and greater than any other CMTime.  Negative infinity is considered to be equal to itself,
				and less than any other CMTime.
				
				-1 is returned if time1 is less than time2. 0 is returned if they
				are equal. 1 is returned if time1 is greater than time2.
    @result     The numerical relationship of the two CMTimes (-1 = less than, 1 = greater than, 0 = equal).
*/
@available(tvOS 4.0, *)
func CMTimeCompare(time1: CMTime, _ time2: CMTime) -> Int32

/*!
	@function	CMTimeMinimum
    @abstract   Returns the lesser of two CMTimes (as defined by CMTimeCompare).
    @result     The lesser of the two CMTimes.
*/
@available(tvOS 4.0, *)
func CMTimeMinimum(time1: CMTime, _ time2: CMTime) -> CMTime

/*!
	@function	CMTimeMaximum
    @abstract   Returns the greater of two CMTimes (as defined by CMTimeCompare).
    @result     The greater of the two CMTimes.
*/
@available(tvOS 4.0, *)
func CMTimeMaximum(time1: CMTime, _ time2: CMTime) -> CMTime

/*!
	@function	CMTimeAbsoluteValue
    @abstract   Returns the absolute value of a CMTime.
    @result     Same as the argument time, with sign inverted if negative.
*/
@available(tvOS 4.0, *)
func CMTimeAbsoluteValue(time: CMTime) -> CMTime

/*!
	@function	CMTimeCopyAsDictionary
    @abstract   Returns a CFDictionary version of a CMTime.
    @discussion This is useful when putting CMTimes in CF container types.
    @result     A CFDictionary version of the CMTime.
*/
@available(tvOS 4.0, *)
func CMTimeCopyAsDictionary(time: CMTime, _ allocator: CFAllocator?) -> CFDictionary?

/*!
	@function	CMTimeMakeFromDictionary
    @abstract   Reconstitutes a CMTime struct from a CFDictionary previously created by CMTimeCopyAsDictionary.
    @discussion This is useful when getting CMTimes from CF container types.  If the CFDictionary does not
				have the requisite keyed values, an invalid time is returned.
	@result		The created CMTime.  
*/
@available(tvOS 4.0, *)
func CMTimeMakeFromDictionary(dict: CFDictionary?) -> CMTime

/*!
	@constant kCMTimeValueKey
	@discussion CFDictionary key for value field of CMTime (CFNumber containing int64_t)
*/
@available(tvOS 4.0, *)
let kCMTimeValueKey: CFString

/*!
	@constant kCMTimeScaleKey
	@discussion CFDictionary key for timescale field of CMTime (CFNumber containing int32_t)
*/
@available(tvOS 4.0, *)
let kCMTimeScaleKey: CFString

/*!
	@constant kCMTimeEpochKey
	@discussion CFDictionary key for epoch field of CMTime (CFNumber containing int64_t)
*/
@available(tvOS 4.0, *)
let kCMTimeEpochKey: CFString

/*!
	@constant kCMTimeFlagsKey
	@discussion CFDictionary key for flags field of CMTime (CFNumber containing uint32_t)
*/
@available(tvOS 4.0, *)
let kCMTimeFlagsKey: CFString

/*!
	@function	CMTimeCopyDescription
    @abstract   Creates a CFString with a description of a CMTime (just like CFCopyDescription).
    @discussion This is used from within CFShow on an object that contains CMTime fields. It is
				also useful from other client debugging code.  The caller owns the returned
				CFString, and is responsible for releasing it.
	@result		The created CFString description.  
*/
@available(tvOS 4.0, *)
func CMTimeCopyDescription(allocator: CFAllocator?, _ time: CMTime) -> CFString?

/*!
	@function	CMTimeShow
    @abstract   Prints a description of the CMTime (just like CFShow).
    @discussion This is most useful from within gdb.
*/
@available(tvOS 4.0, *)
func CMTimeShow(time: CMTime)

/*!
	@typedef	CMTimeRange
	@abstract	A time range represented as two CMTime structures.
*/
struct CMTimeRange {
  var start: CMTime

  /*! @field start The start time of the time range. */
  var duration: CMTime
  init()
  init(start: CMTime, duration: CMTime)
}

extension CMTimeRange {
  init(start: CMTime, end: CMTime)
  var isValid: Bool { get }
  var isIndefinite: Bool { get }
  var isEmpty: Bool { get }
  var end: CMTime { get }
  @warn_unused_result
  func union(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func intersection(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func containsTime(time: CMTime) -> Bool
  @warn_unused_result
  func containsTimeRange(range: CMTimeRange) -> Bool
}

extension CMTimeRange : Equatable {
}
@available(tvOS 4.0, *)
let kCMTimeRangeZero: CMTimeRange
@available(tvOS 4.0, *)
let kCMTimeRangeInvalid: CMTimeRange

/*!
	@function	CMTimeRangeMake
	@abstract	Make a valid CMTimeRange with start and duration.
	@result		The resulting CMTimeRange.
    @discussion The duration parameter must have an epoch of 0; otherwise an invalid time range will be returned.
*/
@available(tvOS 4.0, *)
func CMTimeRangeMake(start: CMTime, _ duration: CMTime) -> CMTimeRange

/*!
	@function	CMTimeRangeGetUnion
    @abstract   Returns the union of two CMTimeRanges.
    @discussion	This function returns a CMTimeRange structure that represents the union of the time ranges specified by the <i>range1</i> and <i>range2</i> parameters.
				This is the smallest range that includes all times that are in either range.
	@result     The union of the two CMTimeRanges.
*/
@available(tvOS 4.0, *)
func CMTimeRangeGetUnion(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange

/*!
	@function	CMTimeRangeGetIntersection
    @abstract   Returns the intersection of two CMTimeRanges.
    @discussion	This function returns a CMTimeRange structure that represents the intersection of the time ranges specified by the <i>range1</i> and <i>range2</i> parameters.
				This is the largest range that both ranges include.
	@result     The intersection of the two CMTimeRanges.
*/
@available(tvOS 4.0, *)
func CMTimeRangeGetIntersection(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange

/*!
	@function	CMTimeRangeEqual
    @abstract   Returns a Boolean value that indicates whether two CMTimeRanges are identical.
    @discussion	This function returns a Boolean value that indicates whether the time ranges specified by the <i>range1</i> and <i>range2</i> parameters are identical.
    @result     Returns true if the two time ranges are identical, false if they differ.
*/
@available(tvOS 4.0, *)
func CMTimeRangeEqual(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool

/*!
	@function	CMTimeRangeContainsTime
	@abstract	Indicates whether a time is contained within a time range.
    @discussion	This function returns a Boolean value that indicates whether the time specified by the <i>time</i> parameter
				is contained within the range specified by the <i>range</i> parameter.
    @result     Returns true if the specified time is contained within the specified time range, false if it is not.
*/
@available(tvOS 4.0, *)
func CMTimeRangeContainsTime(range: CMTimeRange, _ time: CMTime) -> Bool

/*!
	@function	CMTimeRangeContainsTimeRange
	@abstract	Indicates whether a time range is contained within a time range.
    @discussion	This function returns a Boolean value that indicates whether the time range specified by the <i>range1</i> parameter
				contains the range specified by the <i>range2</i> parameter.
    @result     Returns true if the second time range is contained within the first time range, false if it is not.
*/
@available(tvOS 4.0, *)
func CMTimeRangeContainsTimeRange(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool

/*!
	@function	CMTimeRangeGetEnd
	@abstract	Returns a CMTime structure representing the end of a time range.
    @result		A CMTime structure representing the end of the specified time range.
    @discussion	This function returns a CMTime structure that indicates the end of the time range specified by the <i>range</i> parameter.
    			CMTimeRangeContainsTime(range, CMTimeRangeGetEnd(range)) is always false.
*/
@available(tvOS 4.0, *)
func CMTimeRangeGetEnd(range: CMTimeRange) -> CMTime

/*!
	@function	CMTimeMapTimeFromRangeToRange
	@abstract	Translates a time through a mapping from CMTimeRange to CMTimeRange.
	@result		A CMTime structure representing the translated time.
	@discussion	The start and end time of fromRange will be mapped to the start and end time of toRange respectively.
    			Other times will be mapped linearly, using the formula:
    				result = (t-fromRange.start)*(toRange.duration/fromRange.duration)+toRange.start
    			If either CMTimeRange argument is empty, an invalid CMTime will be returned.
    			If t does not have the same epoch as fromRange.start, an invalid CMTime will be returned.
    			If both fromRange and toRange have duration kCMTimePositiveInfinity, 
    			t will be offset relative to the differences between their starts, but not scaled.
*/
@available(tvOS 4.0, *)
func CMTimeMapTimeFromRangeToRange(t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime

/*!
	@function	CMTimeClampToRange
	@abstract	For a given CMTime and CMTimeRange, returns the nearest CMTime inside that time range.
	@result		A CMTime structure inside the given time range.
	@discussion	Times inside the given time range will be returned unmodified.
    			Times before the start and after the end time of the time range will return the start and end time of 
    			the range respectively.
    			If the CMTimeRange argument is empty, an invalid CMTime will be returned.
    			If the given CMTime is invalid, the returned CMTime will be invalid, 
*/
@available(tvOS 4.0, *)
func CMTimeClampToRange(time: CMTime, _ range: CMTimeRange) -> CMTime

/*!
	@function	CMTimeMapDurationFromRangeToRange
	@abstract	Translates a duration through a mapping from CMTimeRange to CMTimeRange.
	@result		A CMTime structure representing the translated duration.
	@discussion	The duration will be scaled in proportion to the ratio between the ranges' durations:
    				result = dur*(toRange.duration/fromRange.duration)
    			If dur does not have the epoch zero, an invalid CMTime will be returned.
*/
@available(tvOS 4.0, *)
func CMTimeMapDurationFromRangeToRange(dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime

/*!
	@function	CMTimeRangeFromTimeToTime
	@abstract	Make a valid CMTimeRange with the given starting and ending times.
	@result		The resulting CMTimeRange.
*/
@available(tvOS 4.0, *)
func CMTimeRangeFromTimeToTime(start: CMTime, _ end: CMTime) -> CMTimeRange

/*!
	@function	CMTimeRangeCopyAsDictionary
    @abstract   Returns a CFDictionary version of a CMTimeRange.
    @discussion This is useful when putting CMTimeRanges in CF container types.
    @result     A CFDictionary version of the CMTimeRange.
*/
@available(tvOS 4.0, *)
func CMTimeRangeCopyAsDictionary(range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?

/*!
	@function	CMTimeRangeMakeFromDictionary
    @abstract   Reconstitutes a CMTimeRange struct from a CFDictionary previously created by CMTimeRangeCopyAsDictionary.
    @discussion This is useful when getting CMTimeRanges from CF container types.  If the CFDictionary does not
				have the requisite keyed values, an invalid time range is returned.
	@result		The created CMTimeRange.  
*/
@available(tvOS 4.0, *)
func CMTimeRangeMakeFromDictionary(dict: CFDictionary) -> CMTimeRange

/*!
	@defined kCMTimeRangeTimeKey
	@discussion CFDictionary key for start field of a CMTimeRange (CMTime)
*/
@available(tvOS 4.0, *)
let kCMTimeRangeStartKey: CFString

/*!
	@defined kCMTimeRangeDurationKey
	@discussion CFDictionary key for timescale field of a CMTimeRange (CMTime)
*/
@available(tvOS 4.0, *)
let kCMTimeRangeDurationKey: CFString

/*!
	@function	CMTimeRangeCopyDescription
    @abstract   Creates a CFString with a description of a CMTimeRange (just like CFCopyDescription).
    @discussion This is used from within CFShow on an object that contains CMTimeRange fields. It is
				also useful from other client debugging code.  The caller owns the returned CFString and is responsible for releasing it.
	@result		The created CFString description.  
*/
@available(tvOS 4.0, *)
func CMTimeRangeCopyDescription(allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?

/*!
	@function	CMTimeRangeShow
    @abstract   Prints a description of the CMTimeRange (just like CFShow).
    @discussion This is most useful from within gdb.
*/
@available(tvOS 4.0, *)
func CMTimeRangeShow(range: CMTimeRange)

/*!
	@typedef	CMTimeMapping
	@abstract	A CMTimeMapping specifies the mapping of a segment of one time line (called "source") into another time line (called "target").
	@discussion
		When used for movie edit lists, the source time line is the media and the target time line is the track/movie.
	@field	source
		The time range on the source time line.  
		For an empty edit, source.start is an invalid CMTime, in which case source.duration shall be ignored.
		Otherwise, source.start is the starting time within the source, and source.duration is the duration 
		of the source timeline to be mapped to the target time range.
	@field	target
		The time range on the target time line.
		If target.duration and source.duration are different, then the source segment should
		be played at rate source.duration/target.duration to fit.
*/
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source: CMTimeRange, target: CMTimeRange)
}
@available(tvOS 9.0, *)
let kCMTimeMappingInvalid: CMTimeMapping

/*!
	@function	CMTimeMappingMake
	@abstract	Make a valid CMTimeMapping with source and target.
	@result		The resulting CMTimeMapping.
    @discussion The source and target parameters must have durations whose epoch is 0; otherwise an invalid time mapping will be returned.
*/
@available(tvOS 9.0, *)
func CMTimeMappingMake(source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping

/*!
	@function	CMTimeMappingMakeEmpty
	@abstract	Make a valid CMTimeMapping with an empty source.
	@result		The resulting CMTimeMapping.
    @discussion The target parameter must have a duration whose epoch is 0; otherwise an invalid time mapping will be returned.
*/
@available(tvOS 9.0, *)
func CMTimeMappingMakeEmpty(target: CMTimeRange) -> CMTimeMapping

/*!
	@function	CMTimeMappingCopyAsDictionary
    @abstract   Returns a CFDictionary version of a CMTimeMapping.
    @discussion This is useful when putting CMTimeMappings in CF container types.
    @result     A CFDictionary version of the CMTimeMapping.
*/
@available(tvOS 9.0, *)
func CMTimeMappingCopyAsDictionary(mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?

/*!
	@function	CMTimeMappingMakeFromDictionary
    @abstract   Reconstitutes a CMTimeMapping struct from a CFDictionary previously created by CMTimeMappingCopyAsDictionary.
    @discussion This is useful when getting CMTimeMappings from CF container types.  If the CFDictionary does not
				have the requisite keyed values, an invalid time mapping is returned.
	@result		The created CMTimeMapping.  
*/
@available(tvOS 9.0, *)
func CMTimeMappingMakeFromDictionary(dict: CFDictionary) -> CMTimeMapping

/*!
	@defined kCMTimeMappingSourceKey
	@discussion CFDictionary key for source field of a CMTimeMapping (CMTimeRange)
*/
@available(tvOS 9.0, *)
let kCMTimeMappingSourceKey: CFString

/*!
	@defined kCMTimeMappingTargetKey
	@discussion CFDictionary key for target field of a CMTimeMapping (CMTimeRange)
*/
@available(tvOS 9.0, *)
let kCMTimeMappingTargetKey: CFString

/*!
	@function	CMTimeMappingCopyDescription
    @abstract   Creates a CFString with a description of a CMTimeMapping (just like CFCopyDescription).
    @discussion This is used from within CFShow on an object that contains CMTimeMapping fields. It is
				also useful from other client debugging code.  The caller owns the returned CFString and is responsible for releasing it.
	@result		The created CFString description.  
*/
@available(tvOS 9.0, *)
func CMTimeMappingCopyDescription(allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?

/*!
	@function	CMTimeMappingShow
    @abstract   Prints a description of a CMTimeMapping (just like CFShow).
    @discussion This is most useful from within gdb.
*/
@available(tvOS 9.0, *)
func CMTimeMappingShow(mapping: CMTimeMapping)
