

/*!
 *  @class      MPSImageConvolution
 *  @discussion The MPSImageConvolution convolves an image with given filter of odd width and height.
 *              Filter width/height can be either 3,5,7 or 9.
 *              For a separable filter, it will be more performant to run this filter as a 1-dimensional
 *              filter in each dimension separately.
 *              If there are multiple channels in the source image, each channel is processed independently.
 *  
 *  @performance Separable convolution filters may perform better when done in two passes. A convolution filter
 *              is separable if the ratio of filter values between all rows is constant over the whole row. For
 *              example, this edge detection filter:
 *                  @code
 *                      -1      0       1
 *                      -2      0       2
 *                      -1      0       1
 *                  @endcode
 *              can be separated into the product of two vectors:
 *                  @code
 *                      1
 *                      2      x    [-1  0   1]
 *                      1
 *                  @endcode
 *              and consequently can be done as two, one-dimensional convolution passes back to back on the same image. 
 *              In this way, the number of multiplies (ignoring the fact that we could skip zeros here) is reduced from
 *              3*3=9 to 3+3 = 6. There are similar savings for addition. For large filters, the savings can be profound.
 *
 */
@available(iOS 9.0, *)
class MPSImageConvolution : MPSUnaryImageKernel {

  /*! @property kernelHeight
   *  @abstract  The height of the filter window. Must be an odd number.
   */
  var kernelHeight: Int { get }

  /*! @property kernelWidth
   *  @abstract  The width of the filter window. Must be an odd number.
   */
  var kernelWidth: Int { get }

  /*! @property    bias
   *  @discussion  The bias is a value to be added to convolved pixel before it is converted back to the storage format.
   *               It can be used to convert negative values into a representable range for a unsigned MTLPixelFormat.
   *               For example, many edge detection filters produce results in the range [-k,k]. By scaling the filter
   *               weights by 0.5/k and adding 0.5, the results will be in range [0,1] suitable for use with unorm formats. 
   *               It can be used in combination with renormalization of the filter weights to do video ranging as part 
   *               of the convolution effect. It can also just be used to increase the brightness of the image.
   *
   *               Default value is 0.0f.
   */
  var bias: Float

  /*!
   *  @abstract  Initialize a convolution filter
   *  @param      device          The device the filter will run on
   *  @param      kernelWidth     the width of the kernel
   *  @param      kernelHeight    the height of the kernel
   *  @param      kernelWeights   A pointer to an array of kernelWidth * kernelHeight values to be used as the kernel.
   *                              These are in row major order.
   *  @return     A valid MPSImageConvolution object or nil, if failure.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  convenience init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageBox
 *  @discussion The MPSImageBox convolves an image with given filter of odd width and height. The kernel elements
 *              all have equal weight, achieving a blur effect. (Each result is the unweighted average of the
 *              surrounding pixels.) This allows for much faster algorithms, espcially for for larger blur radii.
 *              The box height and width must be odd numbers. The box blur is a separable filter. The implementation 
 *              is aware of this and will act accordingly to give best performance for multi-dimensional blurs.
 */
@available(iOS 9.0, *)
class MPSImageBox : MPSUnaryImageKernel {

  /*! @property kernelHeight
   *  @abstract  The height of the filter window.
   */
  var kernelHeight: Int { get }

  /*! @property kernelWidth
   *  @abstract  The width of the filter window.
   */
  var kernelWidth: Int { get }

  /*! @abstract   Initialize a filter for a particular kernel size and device
   *  @param      device  The device the filter will run on
   *  @param      kernelWidth  the width of the kernel.  Must be an odd number.
   *  @param      kernelHeight the height of the kernel. Must be an odd number.
   *  @return     A valid object or nil, if failure.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}

/*!
 *  @class      MPSImageTent
 *  @discussion The box filter, while fast, may yield square-ish looking blur effects. However, multiple
 *              passes of the box filter tend to smooth out with each additional pass. For example, two 3-wide
 *              box blurs produces the same effective convolution as a 5-wide tent blur:
 *              @code
 *                      1   1   1
 *                          1   1   1
 *                      +       1   1   1
 *                      =================
 *                      1   2   3   2   1
 *              @endcode
 *              Addition passes tend to approximate a gaussian line shape.
 *
 *              The MPSImageTent convolves an image with a tent filter. These form a tent shape with incrementally
 *              increasing sides, for example:
 *
 *                  1   2   3   2   1
 *
 *
 *                  1   2   1
 *                  2   4   2
 *                  1   2   1
 *
 *              Like the box filter, this arrangement allows for much faster algorithms, espcially for for larger blur
 *              radii but with a more pleasing appearance.
 *
 *              The tent blur is a separable filter. The implementation is aware of this and will act accordingly
 *              to give best performance for multi-dimensional blurs.
 */
class MPSImageTent : MPSImageBox {

  /*! @abstract   Initialize a filter for a particular kernel size and device
   *  @param      device  The device the filter will run on
   *  @param      kernelWidth  the width of the kernel.  Must be an odd number.
   *  @param      kernelHeight the height of the kernel. Must be an odd number.
   *  @return     A valid object or nil, if failure.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}

/*!
 *  @class      MPSImageGaussianBlur
 *  @discussion The MPSImageGaussianBlur convolves an image with gaussian of given sigma in both x and y direction.
 *
 *                  The MPSImageGaussianBlur utilizes a very fast algorith that typically runs at approximately
 *                  1/2 of copy speeds. Notably, it is faster than either the tent or box blur except perhaps
 *                  for very large filter windows. Mathematically, it is an approximate gaussian. Some
 *                  non-gaussian behavior may be detectable with advanced analytical methods such as FFT.  
 *                  If a analytically clean gaussian filter is required, please use the MPSImageConvolution 
 *                  filter instead with an appropriate set of weights. The MPSImageGaussianBlur is intended
 *                  to be suitable for all common image processing needs demanding ~10 bits of precision or
 *                  less.
 */
@available(iOS 9.0, *)
class MPSImageGaussianBlur : MPSUnaryImageKernel {

  /*! @abstract   Initialize a gaussian blur filter for a particular sigma and device
   *  @param      device  The device the filter will run on
   *  @param      sigma   The standard deviation of gaussian blur filter. 
   *                      Gaussian weight, centered at 0, at integer grid i is given as 
   *                            w(i) = 1/sqrt(2*pi*sigma) * exp(-i^2/2*sigma^2)
   *                      If we take cut off at 1% of w(0) (max weight) beyond which weights
   *                      are considered 0, we have 
   *                              ceil (sqrt(-log(0.01)*2)*sigma) ~ ceil(3.7*sigma) 
   *                      as rough estimate of filter width
   *  @return     A valid object or nil, if failure.
   */
  init(device: MTLDevice, sigma: Float)

  /*! @property sigma
   *  @abstract Read-only sigma value with which filter was created
   */
  var sigma: Float { get }
  convenience init()
}

/*!
 *  @class      MPSImageSobel
 *  @discussion The MPSImageSobel implements the Sobel filter.
 *              When the color model (e.g. RGB, two-channel, grayscale, etc.) of source 
 *              and destination textures match, the filter is applied to each channel 
 *              separately. If the destination is monochrome (single channel) but source 
 *              multichannel, the pixel values are converted to grayscale before applying Sobel
 *              operator using the linear gray color transform vector (v).
 *
 *                  Luminance = v[0] * pixel.x + v[1] * pixel.y + v[2] * pixel.z;
 */
@available(iOS 9.0, *)
class MPSImageSobel : MPSUnaryImageKernel {

  /*! @abstract   Initialize a Sobel filter on a given device using the default color 
   *              transform. Default: BT.601/JPEG {0.299f, 0.587f, 0.114f}
   *
   *              For non-default conversion matrices, use -initWithDevice:linearGrayColorTransform:
   *
   *  @param      device  The device the filter will run on
   *  @return     A valid object or nil, if failure.
   */
  convenience init(device: MTLDevice)

  /*! @abstract   Initialize a Sobel filter on a given device with a non-default color transform
   *  @param      device          The device the filter will run on
   *  @param      transform       Array of three floats describing the rgb to gray scale color transform.
   *
   *                          Luminance = transform[0] * pixel.x + transform[1] * pixel.y + transform[2] * pixel.z;
   *
   *  @return     A valid object or nil, if failure.
   */
  init(device: MTLDevice, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property    colorTransform
   *  @discussion  Returns a pointer to the array of three floats used to convert RGBA, RGB or RG images
   *               to the destination format when the destination is monochrome.
   */
  var colorTransform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @brief      Specifies information to compute the histogram for channels of an image.
 */
struct MPSImageHistogramInfo {

  /**<  Specifies the number of histogram entries, or "bins" for each channel.  For example, if you want 256 histogram bins then numberOfHistogramEntries must be set to 256.  The value stored in each histogram bin is a 32-bit unsigned integer.  The size of the histogram buffer in which these bins will be stored should be >= numberOfHistogramEntries * sizeof(uint32_t) * number of channels in the image. numberOfHistogramEntries must be a power of 2 and is a minimum of 256 bins.   */
  var numberOfHistogramEntries: Int

  /**<  Specifies whether the histogram for the alpha channel should be computed or not. */
  var histogramForAlpha: ObjCBool

  /**<  Specifies the minimum pixel value.  Any pixel value less than this will be clipped to this value (for the purposes of histogram calculation), and assigned to the first histogram entry. This minimum value is applied to each of the four channels separately. */
  var minPixelValue: vector_float4

  /**<  Specifies the maximum pixel value.  Any pixel value greater than this will be clipped to this value (for the purposes of histogram calculation), and assigned to the first histogram entry. This maximum value is applied to each of the four channels separately. */
  var maxPixelValue: vector_float4
  init()
  init(numberOfHistogramEntries: Int, histogramForAlpha: ObjCBool, minPixelValue: vector_float4, maxPixelValue: vector_float4)
}

/*!
 *  @class      MPSImageHistogram
 *  @discussion The MPSImageHistogram computes the histogram of an image.
 *              
 */
@available(iOS 9.0, *)
class MPSImageHistogram : MPSKernel {

  /*! @property   clipRectSource
   *  @abstract   The source rectangle to use when reading data.
   *  @discussion A MTLRegion that indicates which part of the source to read. If the clipRectSource does not lie
   *              completely within the source image, the intersection of the image bounds and clipRectSource will
   *              be used. The clipRectSource replaces the MPSUnaryImageKernel origin parameter for this filter.
   *              The latter is ignored.   Default: MPSRectNoClip, use the entire source texture.
   */
  var clipRectSource: MTLRegion

  /*! @property   zeroHistogram
   *  @abstract   Zero-initalize the histogram results
   *  @discussion Indicates that the memory region in which the histogram results are to be written in the
   *              histogram buffer are to be zero-initialized or not. Default: YES.
   */
  var zeroHistogram: Bool

  /*! @property   histogramInfo
   *  @abstract   Return a structure describing the histogram content
   *  @discussion Returns a MPSImageHistogramInfo structure describing the format of the
   *              histogram.
   */
  var histogramInfo: MPSImageHistogramInfo { get }

  /*!
   *  @abstract Specifies information to compute the histogram for channels of an image.
   *  @param    device            The device the filter will run on
   *  @param    histogramInfo     Pointer to the MPSHistogramInfo struct
   *  @return     A valid MPSImageHistogram object or nil, if failure.
   */
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)

  /*!
   *  @abstract Encode the filter to a command buffer using a MTLComputeCommandEncoder.
   *  @discussion The filter will not begin to execute until after the command
   *  buffer has been enqueued and committed.
   *
   *
   *  @param  commandBuffer           A valid MTLCommandBuffer.
   *  @param  source                  A valid MTLTexture containing the source image for the filter
   *  @param  histogram               A valid MTLBuffer to receive the histogram results.
   *  @param  histogramOffset         Byte offset into histogram buffer at which to write the histogram results. Must be a multiple of 32 bytes.
   *                                  The histogram results / channel are stored together.  The number of channels for which
   *                                  histogram results are stored is determined by the number of channels in the image.
   *                                  If histogramInfo.histogramForAlpha is false and the source image is RGBA then only histogram
   *                                  results for RGB channels are stored.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)

  /*!
   *  @abstract   The amount of space in the output MTLBuffer the histogram will take up.
   *  @discussion This convenience function calculates the minimum amount of space
   *              needed in the output histogram for the results.  The MTLBuffer should
   *              be at least this length, longer if histogramOffset is non-zero.
   *  @param      sourceFormat      The MTLPixelFormat of the source image. This is
   *                                the source parameter of -encodeToCommandBuffer:
   *                                sourceTexture:histogram:histogramOffset
   *  @return     The number of bytes needed to store the result histograms.
   */
  func histogramSizeForSourceFormat(sourceFormat: MTLPixelFormat) -> Int

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  convenience init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageHistogramEqualization
 *  @discussion The MPSImageHistogramEqualization performs equalizes the histogram of an image.
 *              The process is divided into three steps. 
 *
 *              -# Call -initWithDevice:histogramInfo:   This creates a MPSImageHistogramEqualization
 *              object.   It is done when the method returns.
 *  
 *              -# Call -encodeTransform:sourceTexture:histogram:histogramOffset:  This creates a privately held
 *              image transform (i.e. a cumulative distribution function of the histogram) which will be used to 
 *              equalize the distribution of the histogram of the source image. This process runs on a MTLCommandBuffer
 *              when it is committed to a MTLCommandQueue. It must complete before the next step can be run.
 *              It may be performed on the same MTLCommandBuffer.  The histogram argument specifies the histogram
 *              buffer which contains the histogram values for sourceTexture.  The sourceTexture argument is used by
 *              encodeTransform to determine the number of channels and therefore which histogram data in histogram 
 *              buffer to use. The histogram for sourceTexture must have been computed either on the CPU or using 
 *              the MPSImageHistogram kernel
 *
 *              -# Call -encodeToCommandBuffer:sourceTexture:destinationTexture: to read data from
 *              sourceTexture, apply the equalization transform to it and write to destination texture.
 *              This step is also done on the GPU on a MTLCommandQueue.
 *
 *              You can reuse the same equalization transform on other images to perform the
 *              same transform on those images. (Since their distribution is probably different,
 *              they will probably not be equalized by it.) This filter usually will not be able 
 *              to work in place.
 */
@available(iOS 9.0, *)
class MPSImageHistogramEqualization : MPSUnaryImageKernel {

  /*! @property   histogramInfo
   *  @abstract   Return a structure describing the histogram content
   *  @discussion Returns a MPSImageHistogramInfo structure describing the format of the
   *              histogram.
   */
  var histogramInfo: MPSImageHistogramInfo { get }

  /*!
   *  @abstract Specifies information about the histogram for the channels of an image.
   *  @param    device            The device the filter will run on
   *  @param    histogramInfo     Pointer to the MPSHistogramInfo struct
   *  @return     A valid MPSImageHistogramEqualization object or nil, if failure.
   */
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)

  /*!
   *  @abstract Encode the transform function to a command buffer using a MTLComputeCommandEncoder.
   *            The transform function computes the equalization lookup table.
   *  @discussion The transform function will not begin to execute until after the command
   *              buffer has been enqueued and committed.  This step will need to be repeated
   *              with the new MPSKernel if -copyWithZone:device or -copyWithZone: is called.
   *              The transform is stored as internal state to the object. You still need to 
   *              call -encodeToCommandBuffer:sourceTexture:destinationTexture: afterward
   *              to apply the transform to produce a result texture.
   *
   *  @param  commandBuffer   A valid MTLCommandBuffer.
   *  @param  source          A valid MTLTexture containing the source image for the filter.
   *  @param  histogram       A valid MTLBuffer containing the histogram results for an image.  This filter
   *                          will use these histogram results to generate the cumulative histogram for equalizing
   *                          the image.  The histogram results / channel are stored together.  The number of channels
   *                          for which histogram results are stored is determined by the number of channels in the image.
   *                          If histogramInfo.histogramForAlpha is false and the source image is RGBA then only histogram
   *                          results for RGB channels are stored.
   *  @param  histogramOffset A byte offset into the histogram MTLBuffer where the histogram starts. Must conform to
   *                          alignment requirements for [MTLComputeCommandEncoder setBuffer:offset:atIndex:] offset
   *                          parameter.
   */
  func encodeTransformTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  convenience init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageHistogramSpecification
 *  @discussion The MPSImageHistogramSpecification performs a histogram specification operation on an image.
 *              It is a generalized version of histogram equalization operation.  The histogram specificaiton filter
 *              converts the image so that its histogram matches the desired histogram.
 *
 */
@available(iOS 9.0, *)
class MPSImageHistogramSpecification : MPSUnaryImageKernel {

  /*! @property   histogramInfo
   *  @abstract   Return a structure describing the histogram content
   *  @discussion Returns a MPSImageHistogramInfo structure describing the format of the
   *              histogram.
   */
  var histogramInfo: MPSImageHistogramInfo { get }

  /*!
   *  @abstract Specifies information about the histogram for the channels of an image.
   *  @discussion The MPSImageHistogramSpecification applies a transfor to convert the histogram 
   *              to a specified histogram. The process is divided into three steps:
   *
   *              -# Call -initWithDevice:histogramInfo:   This creates a MPSImageHistogramSpecification
   *              object.  It is done when the method returns.
   *
   *              -# Call -encodeTransform:sourceTexture:sourceHistogram:sourceHistogramOffset:desiredHistogram:
   *              desiredHistogramOffset: This creates a privately held image transform which will convert the
   *              the distribution of the source histogram to the desired histogram. This process runs on a 
   *              MTLCommandBuffer when it is committed to a MTLCommandQueue. It must complete before the next 
   *              step can be run. It may be performed on the same MTLCommandBuffer.  The sourceTexture argument 
   *              is used by encodeTransform to determine the number of channels and therefore which histogram data 
   *              in sourceHistogram buffer to use. The sourceHistogram and desiredHistogram must have been computed 
   *              either on the CPU or using the MPSImageHistogram kernel
   *
   *              -# Call -encodeToCommandBuffer:sourceTexture:destinationTexture: to read data from
   *              sourceTexture, apply the transform to it and write to destination texture.
   *              This step is also done on the GPU on a MTLCommandQueue.
   *
   *              You can reuse the same specification transform on other images to perform the
   *              same transform on those images. (Since their starting distribution is probably
   *              different, they will probably not arrive at the same distribution as the desired
   *              histogram.) This filter usually will not be able to work in place.
   *
   *  @param    device            The device the filter will run on
   *  @param    histogramInfo     Pointer to the MPSHistogramInfo struct
   *  @return     A valid MPSImageHistogramSpecification object or nil, if failure.
   */
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)

  /*!
   *  @abstract Encode the transform function to a command buffer using a MTLComputeCommandEncoder.
   *            The transform function computes the specification lookup table.
   *  @discussion The transform function will not begin to execute until after the command
   *              buffer has been enqueued and committed. This step will need to be repeated
   *              with the new MPSKernel if -copyWithZone:device or -copyWithZone: is called.
   *
   *  @param  commandBuffer   A valid MTLCommandBuffer.
   *  @param  source          A valid MTLTexture containing the source image for the filter.
   *  @param  sourceHistogram A valid MTLBuffer containing the histogram results for the source image.  This filter
   *                          will use these histogram results to generate the cumulative histogram for equalizing
   *                          the image.  The histogram results / channel are stored together.  The number of channels
   *                          for which histogram results are stored is determined by the number of channels in the image.
   *                          If histogramInfo.histogramForAlpha is false and the source image is RGBA then only histogram
   *                          results for RGB channels are stored.
   *  @param  sourceHistogramOffset   A byte offset into the sourceHistogram MTLBuffer where the histogram starts. Must conform to
   *                                  alignment requirements for [MTLComputeCommandEncoder setBuffer:offset:atIndex:] offset
   *                                  parameter.
   *  @param  desiredHistogram    A valid MTLBuffer containing the desired histogram results for the source image.
   *                          The histogram results / channel are stored together.  The number of channels
   *                          for which histogram results are stored is determined by the number of channels in the image.
   *                          If histogramInfo.histogramForAlpha is false and the source image is RGBA then only histogram
   *                          results for RGB channels are stored.
   *  @param  desiredHistogramOffset  A byte offset into the desiredHistogram MTLBuffer where the histogram starts. Must conform to
   *                                  alignment requirements for [MTLComputeCommandEncoder setBuffer:offset:atIndex:] offset
   *                                  parameter.
   */
  func encodeTransformTo(commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, sourceHistogram: MTLBuffer, sourceHistogramOffset: Int, desiredHistogram: MTLBuffer, desiredHistogramOffset: Int)

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  convenience init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageIntegral
 *  @discussion The MPSImageIntegral calculates the sum of pixels over a specified region in the image.
 *              The value at each position is the sum of all pixels in a source image rectangle, sumRect:
 *
 *                  sumRect.origin = MPSUnaryImageKernel.offset
 *                  sumRect.size = dest_position - MPSUnaryImageKernel.clipRect.origin
 *
 *              If the channels in the source image are normalized, half-float or floating values,
 *              the destination image is recommended to be a 32-bit floating-point image.
 *              If the channels in the source image are integer values, it is recommended that
 *              an appropriate 32-bit integer image destination format is used.
 */
@available(iOS 9.0, *)
class MPSImageIntegral : MPSUnaryImageKernel {

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageIntegralOfSquares
 *  @discussion The MPSImageIntegralOfSquares calculates the sum of squared pixels over a specified region in the image.
 *              The value at each position is the sum of all squared pixels in a source image rectangle, sumRect:
 *
 *                  sumRect.origin = MPSUnaryImageKernel.offset
 *                  sumRect.size = dest_position - MPSUnaryImageKernel.clipRect.origin
 *
 *              If the channels in the source image are normalized, half-float or floating values,
 *              the destination image is recommended to be a 32-bit floating-point image.
 *              If the channels in the source image are integer values, it is recommended that
 *              an appropriate 32-bit integer image destination format is used.
 */
@available(iOS 9.0, *)
class MPSImageIntegralOfSquares : MPSUnaryImageKernel {

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSUnaryImageKernel
 *  @dependency This depends on Metal.framework
 *  @discussion A MPSUnaryImageKernel consumes one MTLTexture and produces one MTLTexture.
 */
@available(iOS 9.0, *)
class MPSUnaryImageKernel : MPSKernel {

  /*! @property   offset
   *  @abstract   The position of the destination clip rectangle origin relative to the source buffer.
   *  @discussion The offset is defined to be the position of clipRect.origin in source coordinates.
   *              Default: {0,0,0}, indicating that the top left corners of the clipRect and source image align.
   *
   *              See Also: @ref subsubsection_mioffset
   */
  var offset: MPSOffset

  /*! @property   clipRect
   *  @abstract   An optional clip rectangle to use when writing data. Only the pixels in the rectangle will be overwritten.
   *  @discussion A MTLRegion that indicates which part of the destination to overwrite. If the clipRect does not lie
   *              completely within the destination image, the intersection between clip rectangle and destination bounds is
   *              used.   Default: MPSRectNoClip (MPSKernel::MPSRectNoClip) indicating the entire image.
   *
   *              See Also: @ref subsubsection_clipRect
   */
  var clipRect: MTLRegion

  /*! @property   edgeMode
   *  @abstract   The MPSImageEdgeMode to use when texture reads stray off the edge of an image
   *  @discussion Most MPSKernel objects can read off the edge of the source image. This can happen because of a
   *              negative offset property, because the offset + clipRect.size is larger than the
   *              source image or because the filter looks at neighboring pixels, such as a Convolution
   *              or morphology filter.   Default: usually MPSImageEdgeModeZero. (Some MPSKernel types default
   *              to MPSImageEdgeModeClamp, because MPSImageEdgeModeZero is either not supported or
   *              would produce unexpected results.)
   *
   *              See Also: @ref subsubsection_edgemode
   */
  var edgeMode: MPSImageEdgeMode

  /*!
   *  This method attempts to apply the MPSKernel in place on a texture.
   *
   *          In-place operation means that the same texture is used both to hold the input
   *          image and the results. Operating in-place can be an excellent way to reduce
   *          resource utilization, and save time and energy. While simple Metal kernels can
   *          not operate in place because textures can not be readable and writable at the
   *          same time, some MPSKernels can operate in place because they use
   *          multi-pass algorithms. Whether a MPSKernel can operate in-place can
   *          depend on current hardware, operating system revision and the parameters
   *          and properties passed to it. You should never assume that a MPSKernel will
   *          continue to work in place, even if you have observed it doing so before.
   *
   *  If the operation succeeds in-place, YES is returned.  If the in-place operation
   *  fails and no copyAllocator is provided, then NO is returned. Without a fallback
   *  MPSCopyAllocator, in neither case is the pointer held at *texture modified.
   *
   *  Failure during in-place operation is very common and will occur inconsistently across
   *  different hardware platforms and OS releases. Without a fallback MPSCopyAllocator,
   *  operating in place may require significant error handling code to accompany each
   *  call to -encodeToCommandBuffer:..., complicating your code.
   *
   *  You may find it simplifies your code to provide a fallback MPSCopyAllocator so
   *  that the operation can proceed reliably even when it can not proceed in-place.
   *  When an in-place filter fails, the MPSCopyAllocator (if any) will be
   *  invoked to create a new texture in which to write the results, allowing the
   *  filter to proceed reliably out-of-place. The original texture will be released,
   *  replaced with a pointer to the new texture and YES will be returned. If the
   *  allocator returns an invalid texture, it is released, *texture remains unmodified
   *  and NO is returned.  Please see the MPSCopyAllocator definition for a sample allocator
   *  implementation.
   *
   *  Sample usage with a copy allocator:
   *  @code
   *  id <MTLTexture> inPlaceTex = ...;
   *  MPSImageSobel *sobelFiler = [[MPSImageSobel alloc] initWithDevice: my_device];
   *
   *  // With a fallback MPSCopyAllocator, failure should only occur in exceptional
   *  // conditions such as MTLTexture allocation failure or programmer error.
   *  // That is, the operation is roughly as robust as the MPSCopyAllocator.
   *  // Depending on the quality of that, we might decide we are justified here
   *  // in not checking the return value.
   *  [sobelFilter encodeToCommandBuffer: my_command_buffer
   *                      inPlaceTexture: &inPlaceTex  // may be replaced!
   *               fallbackCopyAllocator: myAllocator];
   *
   *  // If myAllocator was not called:
   *  //
   *  //      inPlaceTex holds the original texture with the result pixels in it
   *  //
   *  // else,
   *  //
   *  //      1) myAllocator creates a new texture.
   *  //      2) The new texture pixel data is overwritten by MPSUnaryImageKernel.
   *  //      3) The old texture passed in *inPlaceTex is released once.
   *  //      4) *inPlaceTex = the new texture
   *  //
   *  // In either case, the caller should now hold one reference to the texture now held in
   *  // inPlaceTex, whether it was replaced or not. Most of the time that means that nothing
   *  // further needs to be done here, and you can proceed to the next image encoding operation.
   *  // However, if other agents held references to the original texture, they still hold them
   *  // and may need to be alerted that the texture has been replaced so that they can retain
   *  // the new texture and release the old one.
   *
   *  [sobelFilter release];  // if not ARC, clean up the MPSImageSobel object
   *  @endcode
   *
   *
   *  @abstract   Attempt to apply a MPSKernel to a texture in place.
   *  @param      commandBuffer       A valid MTLCommandBuffer to receive the encoded filter
   *  @param      texture             A pointer to a valid MTLTexture containing source image.
   *                                  On success, the image contents and possibly texture itself
   *                                  will be replaced with the result image.
   *  @param      copyAllocator       An optional block to allocate a new texture to hold the
   *                                  results, in case in-place operation is not possible. The
   *                                  allocator may use a different MTLPixelFormat or size than
   *                                  the original texture. You may enqueue operations on the
   *                                  provided MTLCommandBuffer using the provided
   *                                  MTLComputeCommandEncoder to initialize the texture contents.
   *  @return     On success, YES is returned. The texture may have been replaced with a new
   *              texture if a copyAllocator was provided.  On failure, NO is returned. The
   *              texture is unmodified.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, inPlace texture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool

  /*!
   *  @abstract   Encode a MPSKernel into a command Buffer.  The operation shall proceed out-of-place.
   *  @param      commandBuffer       A valid MTLCommandBuffer to receive the encoded filter
   *  @param      sourceTexture       A valid MTLTexture containing the source image.
   *  @param      destinationTexture  A valid MTLTexture to be overwritten by result image. DestinationTexture may not alias sourceTexture.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: MTLTexture)

  /*!
   *  sourceRegionForDestinationSize: is used to determine which region of the
   *  sourceTexture will be read by encodeToCommandBuffer:sourceTexture:destinationTexture
   *  (and similar) when the filter runs. This information may be needed if the
   *  source image is broken into multiple textures.  The size of the full
   *  (untiled) destination image is provided. The region of the full (untiled)
   *  source image that will be read is returned. You can then piece together an
   *  appropriate texture containing that information for use in your tiled context.
   *
   *  The function will consult the MPSUnaryImageKernel offset and clipRect parameters, 
   *  to determine the full region read by the function. Other parameters such as
   *  sourceClipRect, kernelHeight and kernelWidth will be consulted as necessary.
   *  All properties should be set to intended values prior to calling 
   *  sourceRegionForDestinationSize:.
   *
   *      Caution: This function operates using global image coordinates, but
   *      -encodeToCommandBuffer:... uses coordinates local to the source and
   *      destination image textures. Consequently, the offset and clipRect 
   *      attached to this object will need to be updated using a global to 
   *      local coordinate transform before -encodeToCommandBuffer:... is 
   *      called.
   *
   *  @abstract   Determine the region of the source texture that will be read for a encode operation 
   *  @param      destinationSize The size of the full virtual destination image.
   *  @return     The area in the virtual source image that will be read.
   */
  func sourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSBinaryImageKernel
 *  @dependency This depends on Metal.framework
 *  @discussion A MPSBinaryImageKernel consumes two MTLTextures and produces one MTLTexture.
 */
@available(iOS 9.0, *)
class MPSBinaryImageKernel : MPSKernel {

  /*! @property   primaryOffset
   *  @abstract   The position of the destination clip rectangle origin relative to the primary source buffer.
   *  @discussion The offset is defined to be the position of clipRect.origin in source coordinates.
   *              Default: {0,0,0}, indicating that the top left corners of the clipRect and primary source image align.
   *
   *              See Also: @ref subsubsection_mioffset
   */
  var primaryOffset: MPSOffset

  /*! @property   secondaryOffset
   *  @abstract   The position of the destination clip rectangle origin relative to the secondary source buffer.
   *  @discussion The offset is defined to be the position of clipRect.origin in source coordinates.
   *              Default: {0,0,0}, indicating that the top left corners of the clipRect and primary source image align.
   *
   *              See Also: @ref subsubsection_mioffset
   */
  var secondaryOffset: MPSOffset

  /*! @property   primaryEdgeMode
   *  @abstract   The MPSImageEdgeMode to use when texture reads stray off the edge of the primary source image
   *  @discussion Most MPSKernel objects can read off the edge of a source image. This can happen because of a
   *              negative offset property, because the offset + clipRect.size is larger than the
   *              source image or because the filter looks at neighboring pixels, such as a Convolution
   *              or morphology filter.   Default: usually MPSImageEdgeModeZero. (Some MPSKernel types default
   *              to MPSImageEdgeModeClamp, because MPSImageEdgeModeZero is either not supported or
   *              would produce unexpected results.)
   *
   *              See Also: @ref subsubsection_edgemode
   */
  var primaryEdgeMode: MPSImageEdgeMode

  /*! @property   secondaryEdgeMode
   *  @abstract   The MPSImageEdgeMode to use when texture reads stray off the edge of the secondary source image
   *  @discussion Most MPSKernel objects can read off the edge of a source image. This can happen because of a
   *              negative offset property, because the offset + clipRect.size is larger than the
   *              source image or because the filter looks at neighboring pixels, such as a Convolution
   *              or morphology filter.   Default: usually MPSImageEdgeModeZero. (Some MPSKernel types default
   *              to MPSImageEdgeModeClamp, because MPSImageEdgeModeZero is either not supported or
   *              would produce unexpected results.)
   *
   *              See Also: @ref subsubsection_edgemode
   */
  var secondaryEdgeMode: MPSImageEdgeMode

  /*! @property   clipRect
   *  @abstract   An optional clip rectangle to use when writing data. Only the pixels in the rectangle will be overwritten.
   *  @discussion A MTLRegion that indicates which part of the destination to overwrite. If the clipRect does not lie
   *              completely within the destination image, the intersection between clip rectangle and destination bounds is
   *              used.   Default: MPSRectNoClip (MPSKernel::MPSRectNoClip) indicating the entire image.
   *
   *              See Also: @ref subsubsection_clipRect
   */
  var clipRect: MTLRegion

  /*!
   *  This method attempts to apply the MPSKernel in place on a texture.
   *
   *          In-place operation means that the same texture is used both to hold the input
   *          image and the results. Operating in-place can be an excellent way to reduce
   *          resource utilization, and save time and energy. While simple Metal kernels can
   *          not operate in place because textures can not be readable and writable at the
   *          same time, some MPSKernels can operate in place because they use
   *          multi-pass algorithms. Whether a MPSKernel can operate in-place can
   *          depend on current hardware, operating system revision and the parameters
   *          and properties passed to it. You should never assume that a MPSKernel will
   *          continue to work in place, even if you have observed it doing so before.
   *
   *  If the operation succeeds in-place, YES is returned.  If the in-place operation
   *  fails and no copyAllocator is provided, then NO is returned. In neither
   *  case is the pointer held at *texture modified.
   *
   *  Failure during in-place operation is common. You may find it simplifies your
   *  code to provide a copyAllocator. When an in-place filter fails, your
   *  copyAllocator will be invoked to create a new texture in which to write
   *  the results, allowing the filter to proceed reliably out-of-place. The
   *  original texture will be released, replaced with a pointer to the new texture
   *  and YES will be returned. If the allocator returns an invalid texture, it is
   *  released, *texture remains unmodified and NO is returned.  Please see the
   *  MPSCopyAllocator definition for a sample allocator implementation.
   *
   *  @abstract   Attempt to apply a MPSKernel to a texture in place.
   *  @param      commandBuffer           A valid MTLCommandBuffer to receive the encoded filter
   *  @param      primaryTexture          A pointer to a valid MTLTexture containing the
   *                                      primary source image. It will not be overwritten.
   *  @param      inPlaceSecondaryTexture A pointer to a valid MTLTexture containing secondary image.
   *                                      On success, the image contents and possibly texture itself
   *                                      will be replaced with the result image.
   *  @param      copyAllocator           An optional block to allocate a new texture to hold the
   *                                      results, in case in-place operation is not possible. The
   *                                      allocator may use a different MTLPixelFormat or size than
   *                                      the original texture. You may enqueue operations on the
   *                                      provided MTLCommandBuffer using the provided
   *                                      MTLComputeCommandEncoder to initialize the texture contents.
   *  @return     On success, YES is returned. The texture may have been replaced with a new
   *              texture if a copyAllocator was provided.  On failure, NO is returned. The
   *              texture is unmodified.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture?>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool

  /*!
   *  This method attempts to apply the MPSKernel in place on a texture.
   *
   *          In-place operation means that the same texture is used both to hold the input
   *          image and the results. Operating in-place can be an excellent way to reduce
   *          resource utilization, and save time and energy. While simple Metal kernels can
   *          not operate in place because textures can not be readable and writable at the
   *          same time, some MPSKernels can operate in place because they use
   *          multi-pass algorithms. Whether a MPSKernel can operate in-place can
   *          depend on current hardware, operating system revision and the parameters
   *          and properties passed to it. You should never assume that a MPSKernel will
   *          continue to work in place, even if you have observed it doing so before.
   *
   *  If the operation succeeds in-place, YES is returned.  If the in-place operation
   *  fails and no copyAllocator is provided, then NO is returned. In neither
   *  case is the pointer held at *texture modified.
   *
   *  Failure during in-place operation is common. You may find it simplifies your
   *  code to provide a copyAllocator. When an in-place filter fails, your
   *  copyAllocator will be invoked to create a new texture in which to write
   *  the results, allowing the filter to proceed reliably out-of-place. The
   *  original texture will be released, replaced with a pointer to the new texture
   *  and YES will be returned. If the allocator returns an invalid texture, it is
   *  released, *texture remains unmodified and NO is returned.  Please see the
   *  MPSCopyAllocator definition for a sample allocator implementation.
   *
   *  @abstract   Attempt to apply a MPSKernel to a texture in place.
   *  @param      commandBuffer           A valid MTLCommandBuffer to receive the encoded filter
   *  @param      inPlacePrimaryTexture   A pointer to a valid MTLTexture containing secondary image.
   *                                      On success, the image contents and possibly texture itself
   *                                      will be replaced with the result image.
   *  @param      secondaryTexture        A pointer to a valid MTLTexture containing the
   *                                      primary source image. It will not be overwritten.
   *  @param      copyAllocator           An optional block to allocate a new texture to hold the
   *                                      results, in case in-place operation is not possible. The
   *                                      allocator may use a different MTLPixelFormat or size than
   *                                      the original texture. You may enqueue operations on the
   *                                      provided MTLCommandBuffer using the provided
   *                                      MTLComputeCommandEncoder to initialize the texture contents.
   *  @return     On success, YES is returned. The texture may have been replaced with a new
   *              texture if a copyAllocator was provided.  On failure, NO is returned. The
   *              texture is unmodified.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture?>, secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool

  /*!
   *  @abstract   Encode a MPSKernel into a command Buffer.  The operation shall proceed out-of-place.
   *  @param      commandBuffer       A valid MTLCommandBuffer to receive the encoded filter
   *  @param      primaryTexture      A valid MTLTexture containing the primary source image.
   *  @param      secondaryTexture    A valid MTLTexture containing the secondary source image.
   *  @param      destinationTexture  A valid MTLTexture to be overwritten by result image. destinationTexture may not alias sourceTexture.
   */
  func encodeTo(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, secondaryTexture: MTLTexture, destinationTexture: MTLTexture)

  /*!
   *  primarySourceRegionForDestinationSize: is used to determine which region of the
   *  primaryTexture will be read by encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture
   *  (and in-place variants) when the filter runs. This information may be needed if the
   *  primary source image is broken into multiple textures.  The size of the full
   *  (untiled) destination image is provided. The region of the full (untiled)
   *  source image that will be read is returned. You can then piece together an
   *  appropriate texture containing that information for use in your tiled context.
   *
   *  The function will consult the MPSBinaryImageKernel primaryOffset and clipRect parameters,
   *  to determine the full region read by the function. Other parameters such as
   *  kernelHeight and kernelWidth will be consulted as necessary. All properties
   *  should be set to intended values prior to calling primarySourceRegionForDestinationSize:.
   *
   *      Caution: This function operates using global image coordinates, but
   *      -encodeToCommandBuffer:... uses coordinates local to the source and
   *      destination image textures. Consequently, the primaryOffset and clipRect
   *      attached to this object will need to be updated using a global to
   *      local coordinate transform before -encodeToCommandBuffer:... is
   *      called.
   *
   *  @abstract   Determine the region of the source texture that will be read for a encode operation
   *  @param      destinationSize     The size of the full virtual destination image.
   *  @return     The area in the virtual source image that will be read.
   */
  func primarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion

  /*!
   *  secondarySourceRegionForDestinationSize: is used to determine which region of the
   *  sourceTexture will be read by encodeToCommandBuffer:primaryTexture:secondaryTexture:destinationTexture
   *  (and in-place variants) when the filter runs. This information may be needed if the
   *  secondary source image is broken into multiple textures.  The size of the full
   *  (untiled) destination image is provided. The region of the full (untiled)
   *  secondary source image that will be read is returned. You can then piece together an
   *  appropriate texture containing that information for use in your tiled context.
   *
   *  The function will consult the MPSBinaryImageKernel secondaryOffset and clipRect
   *  parameters, to determine the full region read by the function. Other parameters
   *  such as kernelHeight and kernelWidth will be consulted as necessary.  All properties
   *  should be set to intended values prior to calling secondarySourceRegionForDestinationSize:.
   *
   *      Caution: This function operates using global image coordinates, but
   *      -encodeToCommandBuffer:... uses coordinates local to the source and
   *      destination image textures. Consequently, the secondaryOffset and clipRect
   *      attached to this object will need to be updated using a global to
   *      local coordinate transform before -encodeToCommandBuffer:... is
   *      called.
   *
   *  @abstract   Determine the region of the source texture that will be read for a encode operation
   *  @param      destinationSize     The size of the full virtual destination image.
   *  @return     The area in the virtual source image that will be read.
   */
  func secondarySourceRegionForDestinationSize(destinationSize: MTLSize) -> MPSRegion

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageMedian
 *  @discussion The MPSImageMedian applies a median filter to an image.  A median filter finds the 
 *              median color value for each channel within a kernelDiameter x kernelDiameter 
 *              window surrounding the pixel of interest.  It is a common means of noise reduction
 *              and also as a smoothing filter with edge preserving qualities.
 *
 *              NOTE: The MPSImageMedian filter currently only supports images with <= 8 bits/channel.
 *
 */
@available(iOS 9.0, *)
class MPSImageMedian : MPSUnaryImageKernel {

  /*! @property   kernelDiameter
   *  @abstract   The diameter in pixels of the filter window.
   *  @discussion The median filter is applied to a kernelDiameter x kernelDiameter window
   *              of pixels centered on the corresponding source pixel for each destination
   *              pixel.  The kernel diameter must be an odd number.
   */
  var kernelDiameter: Int { get }

  /*! @abstract   Initialize a filter for a particular kernel size and device
   *  @param      device          The device the filter will run on
   *  @param      kernelDiameter  Diameter of the median filter. Must be an odd number.
   *  @return     A valid object or nil, if failure.
   */
  init(device: MTLDevice, kernelDiameter: Int)

  /*! @abstract   The maximum diameter in pixels of the filter window supported by the median filter.
   */
  class func maxKernelDiameter() -> Int

  /*! @abstract   The minimum diameter in pixels of the filter window supported by the median filter.
   */
  class func minKernelDiameter() -> Int
  convenience init()
}

/*!
 *  @class      MPSImageAreaMax
 *  @discussion The MPSImageAreaMax kernel finds the maximum pixel value in a rectangular region centered around each pixel
 *              in the source image. If there are multiple channels in the source image, each channel is processed independently.
 *              The edgeMode property is assumed to always be MPSImageEdgeModeClamp for this filter.
 */
@available(iOS 9.0, *)
class MPSImageAreaMax : MPSUnaryImageKernel {

  /*! @property kernelHeight
   *  @abstract  The height of the filter window. Must be an odd number.
   */
  var kernelHeight: Int { get }

  /*! @property kernelWidth
   *  @abstract  The width of the filter window. Must be an odd number.
   */
  var kernelWidth: Int { get }

  /*!
   *  @abstract Set the kernel height and width
   *  @param      device              The device the filter will run on
   *  @param      kernelWidth         The width of the kernel. Must be an odd number.
   *  @param      kernelHeight        The height of the kernel. Must be an odd number.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}

/*!
 *  @class      MPSImageAreaMin
 *  @discussion The MPSImageAreaMin finds the minimum pixel value in a rectangular region centered around each pixel in the
 *               source image. If there are multiple channels in the source image, each channel is processed independently.
 *               It has the same methods as MPSImageAreaMax
 *               The edgeMode property is assumed to always be MPSImageEdgeModeClamp for this filter.
 */
@available(iOS 9.0, *)
class MPSImageAreaMin : MPSImageAreaMax {

  /*!
   *  @abstract Set the kernel height and width
   *  @param      device              The device the filter will run on
   *  @param      kernelWidth         The width of the kernel. Must be an odd number.
   *  @param      kernelHeight        The height of the kernel. Must be an odd number.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}

/*!
 *  @class      MPSImageDilate
 *  @discussion The MIDilateFilter finds the maximum pixel value in a rectangular region centered around each pixel in the
 *              source image. It is like the MPSImageAreaMax, except that the intensity at each position is calculated relative
 *              to a different value before determining which is the maximum pixel value, allowing for shaped, non-rectangular
 *              morphological probes.
 *  @code
 *          for each pixel in the filter window:
 *              value =  pixel[filterY][filterX] - filter[filterY*filter_width+filterX]
 *              if( value > bestValue ){
 *                   result = value
 *                   bestValue = value;
 *              }
 *  @endcode
 *              A filter that contains all zeros and is identical to a MPSImageAreaMax filter.  The center filter element
 *              is assumed to be 0 to avoid causing a general darkening of the image.
 *
 *              The edgeMode property is assumed to always be MPSImageEdgeModeClamp for this filter.
 */
@available(iOS 9.0, *)
class MPSImageDilate : MPSUnaryImageKernel {

  /*! @property kernelHeight
   *  @abstract  The height of the filter window. Must be an odd number.
   */
  var kernelHeight: Int { get }

  /*! @property kernelWidth
   *  @abstract  The width of the filter window. Must be an odd number.
   */
  var kernelWidth: Int { get }

  /*!
   *  @abstract   Init a object with kernel height, width and weight values.
   *  @discussion Each dilate shape probe defines a 3D surface of values.
   *              These are arranged in order left to right, then top to bottom
   *              in a 1D array. (values[kernelWidth*y+x] = probe[y][x])
   *              Values should be generally be in the range [0,1] with the center 
   *              pixel tending towards 0 and edges towards 1. However, any numerical
   *              value is allowed. Calculations are subject to the usual floating-point
   *              rounding error.
   *
   *  @param      device              The device the filter will run on
   *  @param      kernelWidth         The width of the kernel. Must be an odd number.
   *  @param      kernelHeight        The height of the kernel. Must be an odd number.
   *  @param      values              The set of values to use as the dilate probe.
   *                                  The values are copied into the filter. To avoid 
   *                                  image ligthening or darkening, the center value should
   *                                  be 0.0f.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}

/*!
 *  @class      MPSImageErode
 *  @discussion The MPSImageErode filter finds the minimum pixel value in a rectangular region centered around each pixel in the
 *              source image. It is like the MPSImageAreaMin, except that the intensity at each position is calculated relative
 *              to a different value before determining which is the maximum pixel value, allowing for shaped, non-rectangular
 *              morphological probes.
 *  @code
 *          for each pixel in the filter window:
 *              value =  pixel[filterY][filterX] + filter[filterY*filter_width+filterX]
 *              if( value < bestValue ){
 *                   result = value
 *                   bestValue = value;
 *              }
 *  @endcode
 *              A filter that contains all zeros is identical to a MPSImageAreaMin filter. The center filter element
 *              is assumed to be 0, to avoid causing a general lightening of the image.
 *
 *              The definition of the filter for MPSImageErode is different from vImage. (MIErode_filter_value = 1.0f-vImageErode_filter_value.)
 *              This allows MPSImageDilate and MPSImageErode to use the same filter, making open and close operators easier to write.
 *              The edgeMode property is assumed to always be MPSImageEdgeModeClamp for this filter.
 */
@available(iOS 9.0, *)
class MPSImageErode : MPSImageDilate {

  /*!
   *  @abstract   Init a object with kernel height, width and weight values.
   *  @discussion Each dilate shape probe defines a 3D surface of values.
   *              These are arranged in order left to right, then top to bottom
   *              in a 1D array. (values[kernelWidth*y+x] = probe[y][x])
   *              Values should be generally be in the range [0,1] with the center 
   *              pixel tending towards 0 and edges towards 1. However, any numerical
   *              value is allowed. Calculations are subject to the usual floating-point
   *              rounding error.
   *
   *  @param      device              The device the filter will run on
   *  @param      kernelWidth         The width of the kernel. Must be an odd number.
   *  @param      kernelHeight        The height of the kernel. Must be an odd number.
   *  @param      values              The set of values to use as the dilate probe.
   *                                  The values are copied into the filter. To avoid 
   *                                  image ligthening or darkening, the center value should
   *                                  be 0.0f.
   */
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}

/*!
 *  @class      MPSImageLanczosScale
 *  @abstract   Resize an image and / or change its aspect ratio
 *  @discussion The MPSImageLanczosScale filter can be used to resample an existing image
 *              using a different sampling frequency in each dimension. This can be
 *              used to enlarge or reduce the size of an image, or change the aspect
 *              ratio of an image.  The filter uses a Lanczos resampling algorithm
 *              which typically produces better quality for photographs, but is slower
 *              than linear sampling using the GPU texture units. Lanczos downsampling 
 *              does not require a low pass filter to be applied before it is used. 
 *              Because the resampling function has negative lobes, Lanczos can result 
 *              in ringing near sharp edges, making it less suitable for vector art.
 */
@available(iOS 9.0, *)
class MPSImageLanczosScale : MPSUnaryImageKernel {

  /*! @property   scaleTransform
   *  @abstract   An optional transform that describes how to scale and translate the source image
   *  @discussion If the scaleTransform is NULL, then the MPSImageLanczosScale filter will 
   *              rescale the image so that the source image fits exactly into the destination 
   *              texture.  If the transform is not NULL, then the transform is used for determining
   *              how to map the source image to the destination. Default: NULL
   *              
   *              When the scaleTransform is set to non-NULL, the values pointed to by the new 
   *              scaleTransform are copied to object storage, and the pointer is updated to point 
   *              to internal storage. Do not attempt to free it.  You may free your copy of 
   *              the MPSScaleTransform as soon as the property set operation is complete.
   */
  var scaleTransform: UnsafePointer<MPSScaleTransform>

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  @class      MPSImageThresholdBinary
 *  @discussion The MIThreshold filter applies a fixed-level threshold to each pixel in the image.
 *              The threshold functions convert a single channel image to a binary image.
 *              If the input image is not a single channel image, convert the inputimage to a single channel
 *              luminance image using the linearGrayColorTransform and then apply the threshold.
 *              The ThresholdBinary function is:
 *                  destinationPixelValue = sourcePixelValue > thresholdValue ? maximumValue : 0
 */
@available(iOS 9.0, *)
class MPSImageThresholdBinary : MPSUnaryImageKernel {

  /*!
   *  @abstract   initialize a MPSImageThresholdBinary filter
   *  @param      device          The device the filter will run on
   *  @param      thresholdValue  The threshold value to use
   *  @param      maximumValue    The maximum value to use
   *  @param      transform       This matrix is an array of 3 floats.
   *                              The default if no transform is specifed is BT.601/JPEG: {0.299f, 0.587f, 0.114f};
   */
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property thresholdValue
   *  @discussion The threshold value used to init the threshold filter
   */
  var thresholdValue: Float { get }

  /*! @property maximumValue
   *  @discussion The maximum value used to init the threshold filter
   */
  var maximumValue: Float { get }

  /*! @property transform
   *  @discussion The color transform used to init the threshold filter
   */
  var transform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @class      MPSImageThresholdBinaryInverse
 *  @discussion The MPSImageThresholdBinaryInverse filter applies a fixed-level threshold to each pixel in the image.
 *              The threshold functions convert a single channel image to a binary image.
 *              If the input image is not a single channel image, convert the inputimage to a single channel
 *              luminance image using the linearGrayColorTransform and then apply the threshold.
 *              The ThresholdBinaryInverse function is:
 *                  destinationPixelValue = sourcePixelValue > thresholdValue ? 0 : maximumValue
 */
@available(iOS 9.0, *)
class MPSImageThresholdBinaryInverse : MPSUnaryImageKernel {

  /*!
   *  @abstract   initialize a MPSImageThresholdBinaryInverse filter
   *  @param      device          The device the filter will run on
   *  @param      thresholdValue  The threshold value to use
   *  @param      maximumValue    The maximum value to use
   *  @param      transform       This matrix is an array of 3 floats.
   *                              The default if no transform is specifed is BT.601/JPEG: {0.299f, 0.587f, 0.114f};
   */
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property thresholdValue
   *  @discussion The threshold value used to init the threshold filter
   */
  var thresholdValue: Float { get }

  /*! @property maximumValue
   *  @discussion The maximum value used to init the threshold filter
   */
  var maximumValue: Float { get }

  /*! @property transform
   *  @discussion The color transform used to init the threshold filter
   */
  var transform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @class      MPSImageThresholdTruncate
 *  @discussion The MPSImageThresholdTruncate filter applies a fixed-level threshold to each pixel in the image:
 *              The threshold functions convert a single channel image to a binary image.
 *              If the input image is not a single channel image, convert the inputimage to a single channel
 *              luminance image using the linearGrayColorTransform and then apply the threshold.
 *              The ThresholdTruncate function is:
 *                  destinationPixelValue = sourcePixelValue > thresholdValue ? thresholdValue : sourcePixelValue
 */
@available(iOS 9.0, *)
class MPSImageThresholdTruncate : MPSUnaryImageKernel {

  /*! 
   *  @abstract   initialize a MPSImageThresholdTruncate filter
   *  @param      device          The device the filter will run on
   *  @param      thresholdValue The threshold value to use
   *  @param      transform       This matrix is an array of 3 floats.
   *                              The default if no transform is specifed is BT.601/JPEG: {0.299f, 0.587f, 0.114f};
   */
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property thresholdValue
   *  @discussion The threshold value used to init the threshold filter
   */
  var thresholdValue: Float { get }

  /*! @property transform
   *  @discussion The color transform used to init the threshold filter
   */
  var transform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @class      MPSImageThresholdToZero
 *  @discussion The MPSImageThresholdToZero filter applies a fixed-level threshold to each pixel in the image.
 *              The threshold functions convert a single channel image to a binary image.
 *              If the input image is not a single channel image, convert the inputimage to a single channel
 *              luminance image using the linearGrayColorTransform and then apply the threshold.
 *              The ThresholdToZero function is:
 *                  destinationPixelValue = sourcePixelValue > thresholdValue ? sourcePixelValue : 0
 */
@available(iOS 9.0, *)
class MPSImageThresholdToZero : MPSUnaryImageKernel {

  /*!
   *  @abstract   initialize a MPSImageThresholdToZero filter
   *  @param      device          The device the filter will run on
   *  @param      thresholdValue  The threshold value to use
   *  @param      transform       This matrix is an array of 3 floats.
   *                              The default if no transform is specifed is BT.601/JPEG: {0.299f, 0.587f, 0.114f};
   */
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property thresholdValue
   *  @discussion The threshold value used to init the threshold filter
   */
  var thresholdValue: Float { get }

  /*! @property transform
   *  @discussion The color transform used to init the threshold filter
   */
  var transform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @class      MPSImageThresholdToZeroInverse
 *  @discussion The MPSImageThresholdToZeroInverse filter applies a fixed-level threshold to each pixel in the image.
 *              The threshold functions convert a single channel image to a binary image.
 *              If the input image is not a single channel image, convert the inputimage to a single channel
 *              luminance image using the linearGrayColorTransform and then apply the threshold.
 *              The ThresholdToZeroINverse function is:
 *                  destinationPixelValue = sourcePixelValue > thresholdValue ? 0 : sourcePixelValue
 */
@available(iOS 9.0, *)
class MPSImageThresholdToZeroInverse : MPSUnaryImageKernel {

  /*!
   *  @abstract  initialize a MPSImageThresholdToZeroInverse filter
   *  @param      device          The device the filter will run on
   *  @param      thresholdValue The threshold value to use
   *  @param      transform       This matrix is an array of 3 floats.
   *                              The default if no transform is specifed is BT.601/JPEG: {0.299f, 0.587f, 0.114f};
   */
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)

  /*! @property thresholdValue
   *  @discussion The threshold value used to init the threshold filter
   */
  var thresholdValue: Float { get }

  /*! @property transform
   *  @discussion The color transform used to init the threshold filter
   */
  var transform: UnsafePointer<Float> { get }
  convenience init()
}

/*!
 *  @class      MPSImageTranspose
 *  @discussion The MPSImageTranspose transposes an image
 *
 */
@available(iOS 9.0, *)
class MPSImageTranspose : MPSUnaryImageKernel {

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)
  convenience init()
}

/*!
 *  MPSSupportsMTLDevice
 *  @abstract   Determine whether a MetalPerformanceShaders.framework  supports a MTLDevice.
 *  @discussion Use this function to determine whether a MTLDevice can be used with interfaces in MetalPerformanceShaders.framework.
 *  @param      device          A valid MTLDevice
 *  @return     YES             The device is supported.
 *              NO              The device is not supported
 */
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool

/*!
 *  @class      MPSKernel
 *  @dependency This depends on Metal.framework
 *  @discussion The MPSKernel class is the base class for all MPS objects.  It defines a standard interface for
 *              MPS kernels.   You should not use the MPSKernel class directly. Instead, a  number of MPSKernel 
 *              subclasses are available in MetalPerformanceShaders.framework that define specific high-performance
 *              image processing operations.
 *
 *              The basic sequence for applying a MPSKernel to an image is as follows:
 *
 *              1.  Create a MPSKernel corresponding to the operation you wish to perform:
 *                  @code
 *                  MPSImageSobel *sobel = [[MPSImageSobel alloc] initWithDevice: mtlDevice];
 *                  @endcode
 *
 *              2.  Encode the filter into a command buffer:
 *                  @code
 *                  sobel.offset = ...;
 *                  sobel.clipRect = ...;
 *                  sobel.options = ...;
 *                  [sobel encodeToCommandBuffer: commandBuffer
 *                                 sourceTexture: inputImage
 *                            destinationTexture: resultImage ];
 *                  
 *                  if( returnVal < 0 )
 *                      MyShowError( returnVal );
 *                  @endcode
 *                  Encoding the kernel merely encodes the operation into a MTLCommandBuffer. It does not modify any pixels, yet.
 *                  All MPSKernel state has been copied to the command buffer. MPSKernels may be reused.  If the texture was previously
 *                  operated on by another command encoder (e.g. MTLRenderCommandEncoder), you should call -endEncoding on the other
 *                  encoder before encoding the filter.
 *
 *                  Some MPS filters work in place (inputImage = resultImage) even in situations where Metal might not
 *                  normally allow in place operation on textures. If in-place operation is desired, you may attempt to call
 *                  [MPSKernel encodeKernelInPlace...]. If the operation can not be completed in place, then
 *                  NO will be returned and you will have to create a new result texture and try again. To make an in-place
 *                  image filter reliable, pass a fallback MPSCopyAllocator to the method to create a new texture to write
 *                  to in the event that a filter can not operate in place.
 *
 *                  (Repeat steps 2 for more filters, as desired.)
 *
 *                      It should be self evident that step 2 may not be thread safe. That is, you can not have
 *                      multiple threads manipulating the same properties on the same MPSKernel object at the
 *                      same time and achieve coherent output. In common usage, the MPSKernel properties don't
 *                      often need to be changed from their default values, but if you need to apply the same
 *                      filter to multiple images on multiple threads with cropping / tiling, make additional
 *                      MPSKernel objects per thread. They are cheap. You can use multiple MPSKernel objects on
 *                      multiple threads, as long as only one thread is operating on any particular MPSKernel
 *                      object at a time.
 *
 *              3.  After encoding any additional work to the command buffer using other encoders, submit the MTLCommandBuffer
 *                  to your MTLCommandQueue, using:
 *                  @code
 *                  [mtlCommandBuffer commit];
 *                  @endcode
 */
@available(iOS 9.0, *)
class MPSKernel : NSObject, NSCopying {

  /*! @property   options
   *  @abstract   The set of options used to run the kernel.
   *  @ref        subsubsection_options
   */
  var options: MPSKernelOptions

  /*! @property device
   *  @abstract  The device on which the kernel will be used
   */
  var device: MTLDevice { get }

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String?

  /*!
   *  @abstract   Standard init with default properties per filter type
   *  @param      device      The device that the filter will be used on. May not be NULL.
   *  @result     a pointer to the newly initialized object. This will fail, returning
   *              nil if the device is not supported. Devices must be 
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  init(device: MTLDevice)

  /*!
   *  @abstract   Make a copy of this MPSKernel for a new device
   *  @discussion -copyWithZone: will call this API to make a copy of the
   *              MPSKernel on the same device.  This interface may also be
   *              called directly to make a copy of the MPSKernel on a new
   *              device. Typically, the same MPSKernels should not be used
   *              to encode kernels on multiple command buffers from multiple
   *              threads. Many MPSKernels have mutable properties that might 
   *              be changed by the other thread while this one is trying to 
   *              encode. If you need to use a MPSKernel from multiple threads
   *              make a copy of it for each additional thread using -copyWithZone:
   *              or -copyWithZone:device:
   *  @param      zone        The NSZone in which to allocate the object
   *  @param      device      The device for the new MPSKernel. If nil, then use
   *                          self.device.
   *  @result     a pointer to a copy of this MPSKernel. This will fail, returning
   *              nil if the device is not supported. Devices must be
   *              MTLFeatureSet_iOS_GPUFamily2_v1 or later.
   */
  func copy(zone zone: NSZone = nil, device: MTLDevice?) -> Self
  convenience init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*! @typedef    MPSKernelOptions
 *  @memberof   MPSKernel
 *  @abstract   Options used when creating MPSKernel objects
 *
 *          MPSKernelOptionsNone                    Use default options
 *
 *          MPSKernelOptionsSkipAPIValidation       Most MetalImage functions will sanity check their arguments. This has a small but
 *                                                  non-zero CPU cost. Setting the MPSKernelOptionsSkipAPIValidation will skip these checks.
 *                                                  MPSKernelOptionsSkipAPIValidation does not skip checks for memory allocation failure.
 *                                                  Caution:  turning on MPSKernelOptionsSkipAPIValidation can result in undefined behavior
 *                                                  if the requested operation can not be completed for some reason. Most error states
 *                                                  will be passed through to Metal which may do nothing or abort the program if Metal
 *                                                  API validation is turned on.
 *
 *          MPSKernelOptionsAllowReducedPrecision   When possible, MPSKernels use a higher precision data representation internally than
 *                                                  the destination storage format to avoid excessive accumulation of computational
 *                                                  rounding error in the result. MPSKernelOptionsAllowReducedPrecision advises the
 *                                                  MPSKernel that the destination storage format already has too much precision for
 *                                                  what is ultimately required downstream, and the MPSKernel may use reduced precision
 *                                                  internally when it feels that a less precise result would yield better performance.  
 *                                                  The expected performance win is often small, perhaps 0-20%. When enabled, the
 *                                                  precision of the result may vary by hardware and operating system.
 */
struct MPSKernelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 9.0, *)
  static var None: MPSKernelOptions { get }
  @available(iOS 9.0, *)
  static var SkipAPIValidation: MPSKernelOptions { get }
  @available(iOS 9.0, *)
  static var AllowReducedPrecision: MPSKernelOptions { get }
}

/*! @typedef    MPSImageEdgeMode
 *  @memberof   MPSKernel
 *  @abstract   Options used to control edge behaviour of filter when filter reads beyond boundary of src image
 *
 *          MPSImageEdgeModeClamp        Out of bound pixels are clamped to nearest edge pixel
 *
 *          MPSImageEdgeModeZero         Out of bound pixels are (0,0,0,1) for image with pixel format without alpha channel
 *                                       and (0,0,0,0) for image with pixel format that has an alpha channel
 */
enum MPSImageEdgeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 9.0, *)
  case Zero
  @available(iOS 9.0, *)
  case Clamp
}

/*!
 *  @typedef    MPSOffset
 *  @memberof   MPSKernel
 *  @abstract   A signed coordinate with x, y and z components
 *  @field      x       The horizontal component of the offset. Units: pixels
 *  @field      y       The vertical component of the offset. Units: pixels
 *  @field      z       The depth component of the offset. Units: pixels
 */
struct MPSOffset {

  /**<    The horizontal component of the offset. Units: pixels   */
  var x: Int

  /**<    The vertical component of the offset. Units: pixels     */
  var y: Int

  /**<    The depth component of the offset. Units: pixels        */
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}

/*!
 *  @typedef    MPSOrigin
 *  @memberof   MPSKernel
 *  @abstract   A position in an image
 *  @field      x   The x coordinate of the position
 *  @field      y   The y coordinate of the position
 *  @field      z   The z coordinate of the position
 */
struct MPSOrigin {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}

/*!
 *  @typedef    MPSSize
 *  @memberof   MPSKernel
 *  @abstract   A size of a region in an image
 *  @field      width       The width of the region
 *  @field      height      The height of a region
 *  @field      depth       The depth of a region (usually 1)
 */
struct MPSSize {
  var width: Double
  var height: Double
  var depth: Double
  init()
  init(width: Double, height: Double, depth: Double)
}

/*!
 *  @typedef    MPSRegion
 *  @memberof   MPSKernel
 *  @abstract   A region of an image
 *  @field      origin  The top left corner of the region.  Units: pixels
 *  @field      size    The size of the region.             Units: pixels
 */
struct MPSRegion {

  /**< The top left corner of the region.  Units: pixels */
  var origin: MPSOrigin

  /**< The size of the region. Units: pixels */
  var size: MPSSize
  init()
  init(origin: MPSOrigin, size: MPSSize)
}

/*!
 *  @memberof   MPSKernel
 *  @constant   MPSRectNoClip
 *  @discussion This is a special constant to indicate no clipping is to be done.
 *              The entire image will be used.
 *              This is the default clipping rectangle or the input extent for MPSKernels.
 */
let MPSRectNoClip: MTLRegion

/*!
 *  @typedef    MPSScaleTransform
 *  @memberof   MPSImageLanczosScale
 *  @abstract   Transform matrix for explict control over resampling in MPSImageLanczosScale
 */
struct MPSScaleTransform {
  var scaleX: Double
  var scaleY: Double
  var translateX: Double
  var translateY: Double
  init()
  init(scaleX: Double, scaleY: Double, translateX: Double, translateY: Double)
}

/*!
 *  @typedef    MPSCopyAllocator
 *  @memberof   MPSKernel
 *  @abstract   A block to make a copy of sourceTexture for MPSKernels that can only execute out of place.
 *  @discussion Some MPSKernel objects may not be able to operate in place. When that occurs, and in-place
 *              operation is requested, MetalImage will call back to this block to get a new texture
 *              to return instead. To avoid spending long periods of time allocating pages to back the
 *              MTLTexture, the block should attempt to reuse textures. The texture returned from the
 *              MPSCopyAllocator will be returned instead of the sourceTexture from the MPSKernel method 
 *              on return.
 *              @code
 *              // A MPSCopyAllocator to handle cases where in-place operation fails.
 *              MPSCopyAllocator myAllocator = ^id <MTLTexture>( MPSKernel * __nonnull filter,
 *                                                              __nonnull id <MTLCommandBuffer> cmdBuf,
 *                                                              __nonnull id <MTLTexture> sourceTexture)
 *              {
 *                  MTLPixelFormat format = sourceTexture.pixelFormat;  // FIXME: is this format writable?
 *                  MTLTextureDescriptor *d = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat: format
 *                                               width: sourceTexture.width
 *                                              height: sourceTexture.height
 *                                           mipmapped: NO];
 *
 *                  //FIXME: Allocating a new texture each time is slow. They take up to 1 ms each.
 *                  //       There are not too many milliseconds in a video frame! You can recycle
 *                  //       old textures (or MTLBuffers and make textures from them) and reuse
 *                  //       the memory here.
 *                  id <MTLTexture> result = [cmdBuf.device newTextureWithDescriptor: d];
 *
 *                  // FIXME: If there is any metadata associated with sourceTexture such as colorspace
 *                  //        information, MTLResource.label, MTLResource.cpuCacheMode mode,
 *                  //        MTLResource.MTLPurgeableState, etc., it may need to be similarly associated
 *                  //        with the new texture to avoid losing your metadata.
 *
 *                  // FIXME: If filter.clipRect doesn't cover the entire image, you may need to copy
 *                  //        pixels from sourceTexture to the new texture or regions of the new texture
 *                  //        will be uninitialized. You can make a MTLCommandEncoder to encode work on
 *                  //        the MTLCommandBuffer here to do that work, if necessary. It will be
 *                  //        scheduled to run immediately before the MPSKernel work. Do may call
 *                  //        [MTLCommandBuffer enqueue/commit/waitUntilCompleted/waitUntilScheduled]
 *                  //        in the MPSCopyAllocator block. Make sure to call -endEncoding on the
 *                  //        MTLCommandEncoder so that the MTLCommandBuffer has no active encoder
 *                  //        before returning.
 *
 *                  // CAUTION: The next command placed on the MTLCommandBuffer after the MPSCopyAllocator 
 *                  //          returns is almost assuredly going to be encoded with a MTLComputeCommandEncoder. 
 *                  //          Creating any other type of encoder in the MPSCopyAllocator will probably cost
 *                  //          an additional 0.5 ms of both CPU _AND_ GPU time (or more!) due to a double 
 *                  //          mode switch penalty.
 *
 *                  // CAUTION: If other objects (in addition to the caller of -encodeToCommandBuffer:inPlaceTexture:...)
 *                  //          own a reference to sourceTexture, they may need to be notified that
 *                  //          sourceTexture has been replaced so that they can release that resource
 *                  //          and adopt the new texture. 
 *
 *                  //          The reference to sourceTexture owned by the caller of
 *                  //          -encodeToCommandBuffer:inPlaceTexture... will be released by 
 *                  //          -encodeToCommandBuffer:inPlaceTexture:... after the kernel is encoded if 
 *                  //          and only if the MPSCopyAllocator is called, and the operation is successfully 
 *                  //          encoded out of place.
 *
 *                  return result;
 *                  // d is autoreleased
 *              };
 *              @endcode
 *              If nil is returned by the allocator, NO will be returned by the calling function.
 *
 *              When the MPSCopyAllocator is called, no MTLCommandEncoder is active on the commandBuffer.
 *              You may create a MTLCommandEncoder in the block to initialize the texture. Make sure
 *              to call -endEncoding on it before returning, if you do.
 *             
 *                  The next command placed on the MTLCommandBuffer after the MPSCopyAllocator returns is
 *                  almost assuredly going to be encoded with a MTLComputeCommandEncoder. Using any other
 *                  type of encoder in the MPSCopyAllocator will probably cost you an additional 0.5 ms
 *                  of both CPU _AND_ GPU time (or more!) due to a double mode switch penalty.
 *
 *
 *  @param      filter          A valid pointer to the MPSKernel that is calling the MPSCopyAllocator. From
 *                              it you can get the clipRect of the intended operation.
 *  @param      commandBuffer   A valid MTLCommandBuffer. It can be used to obtain the device against
 *                              which to allocate the new texture. You may also enqueue operations on
 *                              the commandBuffer to initialize the texture on a encoder allocated in the
 *                              block. You may not submit, enqueue or wait for scheduling/completion of 
 *                              the command buffer.
 *  @param      sourceTexture   The texture that is providing the source image for the filter. You may
 *                              wish to use its size and MTLPixelFormat for the new texture, but it is
 *                              not requred.
 *
 *  @return     A new valid MTLTexture to use as the destination for the MPSKernel. If the calling function
 *              succeeds, its texture parameter will be overwritten with a pointer to this texture. If the
 *              calling function fails (highly unlikely, except for user error) then the texture
 *              will be released before the calling function returns.
 */
typealias MPSCopyAllocator = (MPSKernel, MTLCommandBuffer, MTLTexture) -> MTLTexture
