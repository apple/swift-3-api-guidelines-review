
func DRGetVersion() -> NumVersion

/*!
	@class			DRBurn
	@abstract		Handles the process of burning a CD or DVD disc.
	@discussion		Each time you want to burn to a disc, an instance of this class needs to be created. 
					
					When an instance is created, you pass in an instance of @link //apple_ref/occ/cl/DRDevice DRDevice @/link to let the DRBurn object know 
					what device to use. This object is retained for the life of the DRBurn instance. Before burning, 
					you can set several options that control the behavior of the burn and the handling 
					of the disc once the burn completes.
					
					A DRBurn object will send out notifications through the @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link mechanism to 
					broadcast the burn state to any interested observers. However, if for some reason you don't want
					to use notifications, you can poll the burn object at any time for the current status using
					@link //apple_ref/occ/instm/DRBurn/status status @/link. This is not recommended in any 
					application using a run loop, because it involves polling.

					For examples of how to use this class see the on-disk sample code projects at /Developer/Examples/DiscRecording/ObjectiveC/. 
*/
class DRBurn : NSObject {

  /*! 
     	@method 		burnForDevice:
     	@abstract		Creates an autoreleased burn object.
  	@discussion		Once a burn is created with this method, the object is ready to write data to the disc.
     	@param 			device	Device to use for the burn
      @result  		An autoreleased DRBurn object.
  */
  /*not inherited*/ init!(forDevice device: DRDevice!)

  /*! 
     	@method 		initWithDevice:
     	@abstract		Initializes the burn object.
  	@discussion		Once a burn is initialized with this method, the object is ready to write data to the disc.
     	@param 			device	Device to use for the burn
      @result  		A DRBurn object.
  */
  init!(device: DRDevice!)

  /*! 
     	@method 		writeLayout:
     	@abstract		Begin the process of burning a disc layout.
   	@discussion		This method only begins the burning process. Once the burn
  					has been started, control returns to the caller and it is up to the caller to 
  					monitor the progress of the burn (by listening for @link //apple_ref/occ/data/DRBurnStatusChangedNotification DRBurnStatusChangedNotification @/link
  					or polling @link //apple_ref/occ/instm/DRBurn/status status @/link) to know when the burn completes (either successfully 
  					or with an error).
     	@param 			layout	The data to be burned to disc.
     	
     					There are three configurations of the object passed in:
  	
  					<ol>
  					<li>For a multi-session burn, layout must be a valid NSArray containing 
  						 one or more NSArrays, each of which contains one or more valid @link //apple_ref/occ/cl/DRTrack DRTrack @/link objects.</li>
  					<li>For a single-session multi-track burn, layout must be a valid NSArray 
  						 containing one or more valid @link //apple_ref/occ/cl/DRTrack DRTrack @/link objects.</li>
  					<li>For a single-session single-track burn, layout must be a valid @link //apple_ref/occ/cl/DRTrack DRTrack @/link object.</li>
  					</ol>
  					If none of these configurations are met or the leaf values contained in
  					layout are not valid @link //apple_ref/occ/cl/DRTrack DRTrack @/link objects, an exception is thrown.
  */
  func writeLayout(layout: AnyObject!)

  /*! 
     	@method 		status
     	@abstract		Returns a dictionary describing the status of the burn.
  	@discussion		The same dictionary is returned through the @link //apple_ref/occ/data/DRBurnStatusChangedNotification DRBurnStatusChangedNotification @/link notification
      @result  		An NSDictionary	reporting the status of the burn.	
  */
  func status() -> [NSObject : AnyObject]!

  /*! 
     	@method 		abort
     	@abstract		Stops the burn.
  	@discussion		When this method returns the burn might not actually be fully stopped
  					but it has been cancelled and only cleanup is going on. If a burn
  					has not completed writing data to disc, you just made a coaster.
  					
  					Typically this method is only used as a result of the user hitting
  					a cancel/stop button somewhere in the user interface.
  */
  func abort()

  /*! 
     	@method 		properties
     	@abstract		Returns the properties dictionary of the burn.
      @result  		An NSDictionary containing the properties of the burn.
  */
  func properties() -> [NSObject : AnyObject]!

  /*! 
     	@method 		setProperties:
     	@abstract		Sets the properties dictionary of the burn.
     	@param 			properties	NSDictionary of the properties to set.
  */
  func setProperties(properties: [NSObject : AnyObject]!)

  /*! 
     	@method 		device
     	@abstract		Returns the device being used for the burn.
      @result  		The DRDevice the burn will use.
  */
  func device() -> DRDevice!
  init()
}

/*! 
	@category		DRBurn (PropertyConvenienceMethods)
   	@discussion		This category on DRBurn defines methods that make setting and retrieving
   					the various DRBurn properties easier.
*/
extension DRBurn {

  /*! 
     	@method 		requestedBurnSpeed
     	@abstract		Returns the speed at which this burn will attempt to write data.
     	@discussion		The actual speed also depends on the capabilities of the bus the device is on, 
  					the maximum speed of the device itself, and the media used.
      @result  		A float indicating the speed the burn should run at in kilobytes per second.
  */
  func requestedBurnSpeed() -> Float

  /*! 
     	@method 		setRequestedBurnSpeed:
     	@abstract		Sets the speed at which the burn will be attempted to be performed at
     	@discussion		The actual speed also depends on the capabilities of the bus the device is on, 
  					the maximum speed of the device itself, and the media used.
     	@param 			speed	The speed that the burn should run at in kilobytes per second.
  */
  func setRequestedBurnSpeed(speed: Float)

  /*! 
     	@method 		appendable
     	@abstract		Indicates if the burn is appendable.
     	@discussion		When a burn completes, it can mark the disc so that no more data can be 
  					written to it. This creates a closed or non-appendable disc (which is the
  					most compatible with audio CD players). If this method returns <i>NO</i>, then 
  					the disc will be marked as closed and no data can be appended to it. A
  					return value of <i>YES</i> indicates further burns can be appended to 
  					the disc.
      @result  		A BOOL indicating if the burn is appendable.
  */
  func appendable() -> Bool

  /*! 
     	@method 		setAppendable:
     	@abstract		Sets the burn to be appendable or non-appendable.
     	@discussion		When a burn completes, it can mark the disc so that no more data can be 
  					written to it. This creates a closed or non-appendable disc (which is the
  					most compatible with audio CD players).
     	@param 			appendable	A BOOL indicating if the burn is appendable. Passing in <i>YES</i> 
     					indicates further burns can be appended to the disc, while passing in <i>NO</i>, 
     					marks the disc as closed and no data can be appended to it. 
  */
  func setAppendable(appendable: Bool)

  /*! 
     	@method 		verifyDisc
     	@abstract		Indicates if the resulting disc will be verified.
     	@discussion		After data is written to disc, the data can be verified. The verification
     					process will read the data on the disc back into memory and compare it to the 
     					data originally used to write to disc. The type of verification is determined
     					by a track property on a track-by-track basis. See the @link //apple_ref/occ/cl/DRTrack DRTrack @/link
     					documentation for more information on verification types.
      @result  		A BOOL indicating if the disc will be verified.
  */
  func verifyDisc() -> Bool

  /*! 
     	@method 		setVerifyDisc:
     	@abstract		Sets the burn to verify or not verify the disc.
     	@param 			verify	A BOOL indicating if the disc is to be verified. Passing in <i>YES</i> 
     							(the default) indicates that the data written to disc will be verified 
     							against the source data once the burn complete. 
  							Passing in <i>NO</i> indicates that no verification will take place.
  */
  func setVerifyDisc(verify: Bool)

  /*! 
     	@method 		completionAction
     	@abstract		Returns the action to be performed at the end of the burn.
      @result  		An NSString
  */
  func completionAction() -> String!

  /*! 
     	@method 		setCompletionAction:
     	@abstract		Sets the action to be performed at the end of the burn.
     	@param 			action	An NSString for the action to perform.
  */
  func setCompletionAction(action: String!)
}

/*!
	@const          DRBurnRequestedSpeedKey         
	@discussion     The burn property whose value is an NSNumber containing the speed at
					which the burn should run, expressed as a float value of kilobytes per second.
					If this key is not present, the speed will default to @link //apple_ref/occ/data/DRDeviceBurnSpeedMax DRDeviceBurnSpeedMax @/link.
*/
@available(OSX 10.2, *)
let DRBurnRequestedSpeedKey: String

/*!
	@const          DRBurnAppendableKey
	@discussion     The burn property whose value is a BOOL indicating if the disc will still be 
					appendable after the burn. If this key is not present, the burn will default 
					to a value of <i>NO</i> and the disc will be marked as not appendable.
*/
@available(OSX 10.2, *)
let DRBurnAppendableKey: String

/*!
	@const          DRBurnOverwriteDiscKey
	@discussion     The burn property whose value is a BOOL indicating if the disc will be overwritten
					from block zero for the burn. If this key is not present, the burn will default 
					to a value of <i>NO</i> and the disc will be appended.
*/
@available(OSX 10.3, *)
let DRBurnOverwriteDiscKey: String

/*!
	@const			DRBurnVerifyDiscKey
	@discussion     The burn property whose value is a BOOL indicating if the disc will be verified 
					after being burned. If this key is not present, the burn will default to a
					value of <i>YES</i> and the disc will be verified.
*/
@available(OSX 10.2, *)
let DRBurnVerifyDiscKey: String

/*!
	@const          DRBurnCompletionActionKey
	@discussion     The burn property whose value is an NSString containing one of the
					completion actions possible for the disc handling. If this key is not present,
					the burn will default to a value of @link DRBurnCompletionActionEject DRBurnCompletionActionEject @/link and the
					disc will be ejected.
*/
@available(OSX 10.2, *)
let DRBurnCompletionActionKey: String

/*!
	@const			DRBurnUnderrunProtectionKey
	@discussion		The burn property whose value is a BOOL indicating if burn underrun protection 
					will be on or off for devices which support it.
	
					For those devices which support it, burn underrun protection is enabled 
					by default.
		
					If the device supports burn underrun protection and this key is not present,
					the burn will default to a value of <i>YES</i> and burn underrun protection 
					will be enabled.
*/
@available(OSX 10.2, *)
let DRBurnUnderrunProtectionKey: String

/*!
	@const			DRBurnTestingKey
	@discussion		The burn property whose value is a BOOL indicating if the burn will run 
					as a test burn.

					When this is set and the burn object is sent @link writeLayout: writeLayout: @/link,
					the entire burn process proceeds as if data would be 
					written to the disc, but the laser is not turned on to full power, so
					the physical disc is not modified.

                    If this key is not present or the selected burning device does not support test burning,
					the burn will default to a value of <i>NO</i> and a normal burn will occur.
*/
@available(OSX 10.2, *)
let DRBurnTestingKey: String

/*!
	@const			DRSynchronousBehaviorKey
	@discussion		The burn property whose value is a BOOL indicating if burn operations
					will behave synchronously.  If this key is not present, it will default
					to a value of <i>NO</i> and burn operations will behave asynchronously.
					
					Synchronous operations do not post status notifications, and will not
					return until they are completed.  Status can still be queried at any time,
					and will remain valid even after the burn operation has finished.
*/
@available(OSX 10.2, *)
let DRSynchronousBehaviorKey: String

/*!
	@const			DRBurnFailureActionKey
	@discussion		The burn property whose value is an NSString containing a one of the failure
					actions possible for the disc handling.
					
					If this key is not present, the burn will default to a value of
					@link DRBurnFailureActionEject DRBurnFailureActionEject @/link and the disc will be ejected.
*/
@available(OSX 10.3, *)
let DRBurnFailureActionKey: String

/*!
	@const			DRMediaCatalogNumberKey
	@discussion		The burn property whose value is an NSData containing exactly 13 bytes of
					data, which will be written to the disc as the Media Catalog Number.
					If this key is not present, it will default to all zeroes, indicating
					that a MCN is not supplied.
					
					This value is the UPC/EAN product number, and should conform to the
					specifications of the UCC and EAN.  See <a href="http://www.ean-int.org/">http://www.ean-int.org/</a> and
					<a href="http://www.uc-council.org/">http://www.uc-council.org/</a> for more details on the UPC/EAN standard.
*/
@available(OSX 10.3, *)
let DRMediaCatalogNumberKey: String

/*!
	@const		DRBurnDoubleLayerL0DataZoneBlocksKey
	@discussion	The burn property key whose value is an NSNumber containing the number of blocks desired
				for the layer 0 data zone on a double layer writable disc.
				
				The size of the layer 0 data zone dictates where the transition point is from layer 0 to
				layer 1. If this key is present, the data zone size will be set prior to the start of the
				burn using the value for this key. If it is not present, the default layer 0 data zone will 
				be used (half the available blocks on an empty disc).
				
				The transition point can be specified two ways. If the value specified in this key is
				greater than 1.0, then it will designate an absolute block number for the transition point. In
				this case, the block number should be a multiple of 16 and at least 40000h per specification. If
				the value is less than 1.0, it will specify the percentage of the burn that should reside on
				layer 0. A typical value is 0.5, designating half the burn for each layer. A value of 0.0 or 1.0
				will not change the layer 0 transition point.
*/
@available(OSX 10.4, *)
let DRBurnDoubleLayerL0DataZoneBlocksKey: String

/*!
	@const			DRBurnStrategyKey
	@discussion		The burn property whose value is an NSString, or array of NSStrings,
					indicating the burn strategy or strategies that are suggested.  If this
					key is not present, the burn engine picks an appropriate burn strategy
					automatically. Most clients will not need to specify a specific burn
					strategy.
					
					When more than one strategy is suggested, the burn engine will attempt
					to use the first strategy in the list which is available. A burn strategy
					will never be used if it cannot write the required data: for example, TAO
					cannot be used to write CD-Text.
					
					The presence of this key by itself is just a suggestion, and if the burn
					engine cannot fulfill the request it will burn using whatever strategy is
					available.  To make the suggestion into a requirement, add
					@link DRBurnStrategyIsRequiredKey DRBurnStrategyIsRequiredKey @/link with a value of <i>YES</i>.
*/
@available(OSX 10.3, *)
let DRBurnStrategyKey: String

/*!
	@const			DRBurnStrategyIsRequiredKey
	@discussion		The burn property whose value is a BOOL indicating whether the burn
					strategy/strategies listed for @link DRBurnStrategyKey DRBurnStrategyKey @/link are
					the only strategies allowed.  If this key is not present,
					the burn will default to a value of <i>NO</i>.
					
					If this value is set to <i>YES</i>, and the device does
					not support the type(s) of burn requested, the burn
					will fail with @link //apple_ref/c/econst/kDRDeviceBurnStrategyNotAvailableErr kDRDeviceBurnStrategyNotAvailableErr @/link.
					
					If this value is set to <i>NO</i>, and the device does
					not support the type(s) of burn requested, the engine
					will choose an alternate burn strategy automatically - one
					that will provide an equivalent disc.
*/
@available(OSX 10.3, *)
let DRBurnStrategyIsRequiredKey: String

/*!
	@const			DRCDTextKey
	@discussion		This key points to a @link //apple_ref/occ/cl/DRCDTextBlock DRCDTextBlock @/link, or array of @link //apple_ref/occ/cl/DRCDTextBlock DRCDTextBlocks @/link
					containing the CD-Text information for the disc.  If this key
					is not present, the burn will not write CD-Text.
				
					Before using this key, you should to make sure that the device
					supports CD-Text by checking the value of @link //apple_ref/occ/data/DRDeviceCanWriteCDTextKey DRDeviceCanWriteCDTextKey @/link
					in the device's write capabilities dictionary.
				
					If this value is set to <i>YES</i>, and the device does
					not support writing CD-Text, the burn will fail with
					@link //apple_ref/c/econst/kDRDeviceCantWriteCDTextErr kDRDeviceCantWriteCDTextErr @/link.  
*/
@available(OSX 10.4, *)
let DRCDTextKey: String

/*!
	@const			DRBurnCompletionActionEject
	@discussion		An NSString value for @link DRBurnCompletionActionKey DRBurnCompletionActionKey @/link indicating that the burn
					object should eject the disc from the drive when the burn completes.
*/
@available(OSX 10.2, *)
let DRBurnCompletionActionEject: String

/*!
	@const			DRBurnCompletionActionMount
	@discussion		An NSString value for @link DRBurnCompletionActionKey DRBurnCompletionActionKey @/link indicating that the burn
					object should mount the disc on the desktop when the burn completes.
*/
@available(OSX 10.2, *)
let DRBurnCompletionActionMount: String

/*! 
	@const			DRBurnFailureActionEject	
	@discussion		An NSString value for @link DRBurnFailureActionKey DRBurnFailureActionKey @/link indicating that the burn
					object should eject the disc from the drive if the burn fails.
*/
@available(OSX 10.3, *)
let DRBurnFailureActionEject: String

/*! 
	@const			DRBurnFailureActionNone	
	@discussion		An NSString value for @link DRBurnFailureActionKey DRBurnFailureActionKey @/link indicating that the burn
					object should do nothing with the disc if the burn fails.
*/
@available(OSX 10.3, *)
let DRBurnFailureActionNone: String

/*!
	@const			DRBurnStrategyCDTAO
	@discussion		An NSString value for @link DRBurnStrategyKey DRBurnStrategyKey @/link representing the TAO (track-at-once)
					burn strategy for CD.
*/
@available(OSX 10.3, *)
let DRBurnStrategyCDTAO: String

/*!
	@const			DRBurnStrategyCDSAO
	@discussion		An NSString value for @link DRBurnStrategyKey DRBurnStrategyKey @/link representing the SAO (session-at-once)
					burn strategy for CD.
*/
@available(OSX 10.3, *)
let DRBurnStrategyCDSAO: String

/*!
	@const			DRBurnStrategyDVDDAO
	@discussion		An NSString value for @link DRBurnStrategyKey DRBurnStrategyKey @/link representing the DAO (disc-at-once)
					burn strategy for DVD.  This strategy applies <b>only</b> to DVDs; it is
					invalid when burning to CD media.
*/
@available(OSX 10.3, *)
let DRBurnStrategyDVDDAO: String

/*!
	@const			DRBurnStrategyBDDAO
	@discussion		An NSString value for @link DRBurnStrategyKey DRBurnStrategyKey @/link representing the DAO (disc-at-once)
					burn strategy for BD (Blu-ray).  This strategy applies <b>only</b> to BDs.
*/
@available(OSX 10.5, *)
let DRBurnStrategyBDDAO: String

/*!
	@const		DRBurnStatusChangedNotification 
	@discussion	Posted by a @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link when the status of the
				burn operation has changed. 
	
				The object associated with this notification
				is the DRBurn object sending it and the userInfo contains the same dictionary
				as returned by @link //apple_ref/occ/instm/DRBurn/status status @/link which details the current state of the burn. 
*/
@available(OSX 10.2, *)
let DRBurnStatusChangedNotification: String

/*! 
	@category		DRBurn (ImageContentCreation)
	@discussion		This category on DRBurn creates a custom layout object which is set 
					up to burn an image file to disc. It implements only one method, 
					@link layoutForImageFile: layoutForImageFile: @/link which creates and 
					returns a fully configured layout object to the caller.
*/
extension DRBurn {

  /*!
  	@method			layoutForImageFile:
  	@abstract		Creates a layout capable of burning an image to disc.
   	@discussion		The layout created by this method may be any type of object. No assumptions
   					should be made as to what sort of object may be returned based on the 
   					input image type.
  	@param			path	The path to the image file. This file must be one that can
  							be read by DiscRecording. The supported image types include:
   							.dmg, .iso, .cue, and .toc. For .cue and .toc files the 
   							corresponding data files (.bin, .img, etc) must also be present
   							and correctly referenced in the .cue/.toc file. 
  	@result			An autoreleased layout object
  */
  class func layoutForImageFile(path: String!) -> AnyObject!
}
var DRCDTextEncodingISOLatin1Modified: Int { get }
var DRCDTextEncodingASCII: Int { get }
var DRCDTextGenreCodeUnknown: Int { get }
var DRCDTextGenreCodeAdultContemporary: Int { get }
var DRCDTextGenreCodeAlternativeRock: Int { get }
var DRCDTextGenreCodeChildrens: Int { get }
var DRCDTextGenreCodeClassical: Int { get }
var DRCDTextGenreCodeContemporaryChristian: Int { get }
var DRCDTextGenreCodeCountry: Int { get }
var DRCDTextGenreCodeDance: Int { get }
var DRCDTextGenreCodeEasyListening: Int { get }
var DRCDTextGenreCodeErotic: Int { get }
var DRCDTextGenreCodeFolk: Int { get }
var DRCDTextGenreCodeGospel: Int { get }
var DRCDTextGenreCodeHipHop: Int { get }
var DRCDTextGenreCodeJazz: Int { get }
var DRCDTextGenreCodeLatin: Int { get }
var DRCDTextGenreCodeMusical: Int { get }
var DRCDTextGenreCodeNewAge: Int { get }
var DRCDTextGenreCodeOpera: Int { get }
var DRCDTextGenreCodeOperetta: Int { get }
var DRCDTextGenreCodePop: Int { get }
var DRCDTextGenreCodeRap: Int { get }
var DRCDTextGenreCodeReggae: Int { get }
var DRCDTextGenreCodeRock: Int { get }
var DRCDTextGenreCodeRhythmAndBlues: Int { get }
var DRCDTextGenreCodeSoundEffects: Int { get }
var DRCDTextGenreCodeSoundtrack: Int { get }
var DRCDTextGenreCodeSpokenWord: Int { get }
var DRCDTextGenreCodeWorldMusic: Int { get }

/*!
	@class		DRCDTextBlock
	@abstract	Defines a CD-Text block, which holds the CD-Text strings
				for the entire disc in one language.
*/
class DRCDTextBlock : NSObject {

  /*!
  	@method		arrayOfCDTextBlocksFromPacks:
  	@abstract	Parses raw CD-Text data from a disc into DRCDTextBlock objects.
  	@discussion	This method can be used to parse any data blob containing CD-Text PACKs,
  				such as the result of +[DRDevice readCDText], or the data returned by the
  				IOKit ioctl DKIOCCDREADTOC with format=5.
  				
  				The NSData should be sized to fit the exact number of PACKs.  Each PACK
  				occupies 18 bytes, and the 4-byte header from a READ TOC command may
  				optionally be included.
  	@param		packs		NSData containing raw CD-Text PACKs.
  	@result		An autoreleased array of DRCDTextBlock objects describing the information
  				in the raw PACKs, or nil if the data could not be parsed.
  */
  class func arrayOfCDTextBlocksFromPacks(packs: NSData!) -> [AnyObject]!

  /*!
  	@method		cdTextBlockWithLanguage:encoding:
  	@abstract	Creates a CD-Text block.
  	@param		lang		ISO 639 language code describing the language in which the strings
  							are provided.  CD-Text allows the concept of an unknown language,
  							which can be represented here by an empty string.
  	@param		enc			Character encoding into which the strings should be converted.
  	@result		An autoreleased DRCDTextBlock object.
  */
  class func cdTextBlockWithLanguage(lang: String!, encoding enc: UInt) -> DRCDTextBlock!

  /*!
  	@method		initWithLanguage:encoding:
  	@abstract	Initializes an empty CD-Text block.
  	@param		lang		ISO 639 language code describing the language which this block will hold.
  							CD-Text allows the concept of an unknown language, which can be represented
  							here by an empty string.
  	@param		enc			Character encoding into which the strings in this block will be converted.
  	@result		A DRCDTextBlock object.
  */
  init!(language lang: String!, encoding enc: UInt)

  /*! 
     	@method 		properties
     	@abstract		Returns the properties dictionary of the CD-Text block.
      @result  		An NSDictionary containing the properties of the block.
  */
  func properties() -> [NSObject : AnyObject]!

  /*! 
     	@method 		setProperties:
     	@abstract		Sets the properties dictionary of the CD-Text block.
     	@param 			properties	NSDictionary of the properties to set.
  */
  func setProperties(properties: [NSObject : AnyObject]!)

  /*!
  	@method		trackDictionaries
  	@abstract	Returns a copy of the array of track dictionaries for the block.
  	@result		An autoreleased NSArray of CFDictionaries of CFStrings, containing the CD-Text information.
  	@discussion	Each item in the array is a dictionary, which in turn holds key-value encoded
  				information about the track/disc.  Array index 0 holds information about the
  				disc, index 1 holds information about track 1, index 2 holds information about
  				track 2, etc.
  */
  func trackDictionaries() -> [AnyObject]!

  /*!
  	@method		setTrackDictionaries:
  	@abstract	Sets the array of track dictionaries for the block.
  	@param		tracks		An NSArray of NSDictionaries of NSStrings, containing the CD-Text information.
  	@discussion	Each item in the array is a dictionary, which in turn holds key-value encoded
  				information about the track/disc.  Array index 0 holds information about the
  				disc, index 1 holds information about track 1, index 2 holds information about
  				track 2, etc.
  				
  				Any incoming strings are automatically modified to conform to the character
  				set specified in the language block. Calling -trackDictionaries immediately
  				after -setTrackDictionaries: will provide the modified values.  These
  				may not be the same as the ones you passed in, but instead correspond to
  				what will actually be used.
  */
  func setTrackDictionaries(tracks: [AnyObject]!)

  /*!
  	@method		objectForKey:ofTrack:
  	@abstract	Returns a single value from the block.
  	@param		key			Key to get the value of.
  	@param		trackIndex	One-based index of the track to query, or 0 to query the disc.
  	@result		Autoreleased NSObject for the key, or nil if not present.
  */
  func objectForKey(key: String!, ofTrack trackIndex: Int) -> AnyObject!

  /*!
  	@method		setObject:forKey:ofTrack:
  	@abstract	Changes a single string in the block.
  	@param		value		Value - an NSString, NSData, or NSNumber as appropriate.
  	@param		key			Key to assign.
  	@param		trackIndex	One-based index of the track to modify, or 0 to modify the disc.
  */
  func setObject(value: AnyObject!, forKey key: String!, ofTrack trackIndex: Int)

  /*!
  	@method		flatten
  	@abstract	Flattens the CD-Text block to determine whether any information will be truncated.
  	@discussion	When burning your CD-Text information to a CD, DiscRecording will automatically
  				truncate some of the information you've specified if it does not fit. 
  				
  				The size limit for CD-Text is approximately 3K of strings per block.  This limit
  				is only approximate because some of this space is taken up as overhead, and
  				duplicate strings can sometimes be combined.  The only way to tell for sure
  				how big your CD-Text block is going to be is to ask DiscRecording to try
  				flattening it.  You can use this function to determine whether truncation
  				will be needed.
  				
  				Some clients will want to accept DiscRecording's truncation since it preserves
  				the most important information and provides the simplest user experience.  If
  				you do not wish to use DiscRecording's automatic truncation, it is your
  				responsibility to make sure that you specify a CD-Text block that will fit.
  				
  				Following is a simple algorithm to avoid having your CD-Text data truncated:
  				<ol>
  				<li>Call -[myCDTextBlock flatten].
  				<li>If the result is 0, no truncation is necessary. Stop.
  				<li>Otherwise, truncation will occur -- edit or remove some data.
  				<li>Repeat.
  				</ol>
  				
  	@result		The number of bytes that will be truncated from the CD-Text block.  If this
  				method returns 0, no truncation will occur.
  */
  func flatten() -> Int
  init()
}

/*!
	@category	DRCDTextBlock(PropertyConvenienceMethods)
	@abstract	Convenience methods for a DRCDTextBlock.
*/
extension DRCDTextBlock {

  /*!
  	@method		language
  	@abstract	Returns the ISO 639 language code describing the language associated with the
  				CD-Text block.  CD-Text allows the concept of an unknown language, which is
  				represented here by an empty string.
  	@result		A DRCDTextLanguage.
  */
  func language() -> String!

  /*!
  	@method		encoding
  	@abstract	Returns the string encoding associated with the CD-Text block.
  	@result		A NSStringEncoding.
  */
  func encoding() -> UInt
}

/*!
	@const		DRCDTextLanguageKey
	@discussion	Required property key for a CD-Text block.  The value for this property
				is an NSNumber, containing the numeric code for the language.  This
				value is the Red Book language code value for the text of the block.
				
				The language may be changed after the block is created.
*/
@available(OSX 10.4, *)
let DRCDTextLanguageKey: String

/*!
	@const		DRCDTextCharacterCodeKey
	@discussion	Required property key for a CD-Text block.  The value for this property
				is an NSNumber, containing the Red Book character set value for the
				text of the block.  This value is <b>not</b> a CFStringEncoding or
				NSStringEncoding, and should not be used as such.
				
				This property should remain constant once the block is created. If this
				property is changed after the block is created, the results are undefined.
*/
@available(OSX 10.4, *)
let DRCDTextCharacterCodeKey: String

/*!
	@const		DRCDTextNSStringEncodingKey
	@discussion	Required property key for a CD-Text block.  The value for this property
				is an NSNumber, containing the NSStringEncoding for the text of the block.
				
				This property should remain constant once the block is created.  If this
				property is changed after the block is created, the results are undefined.
*/
@available(OSX 10.4, *)
let DRCDTextNSStringEncodingKey: String

/*!
	@const		DRCDTextCopyrightAssertedForSpecialMessagesKey
	@discussion	Optional property key for a CD-Text block.  The value for this property
				is an NSNumber, containing a BOOL value indicating whether copyright
				is asserted on the messages in the block (@link DRCDTextSpecialMessageKey DRCDTextSpecialMessageKey @/link).
				
				If this value is not specified, no copyright is asserted for these items.
*/
@available(OSX 10.4, *)
let DRCDTextCopyrightAssertedForSpecialMessagesKey: String

/*!
	@const		DRCDTextCopyrightAssertedForNamesKey
	@discussion	Optional property key for a CD-Text block.  The value for this property
				is an NSNumber, containing a BOOL value indicating whether copyright
				is asserted on the names in the block.  (@link DRCDTextPerformerKey DRCDTextPerformerKey @/link,
				@link DRCDTextSongwriterKey DRCDTextSongwriterKey @/link, @link DRCDTextComposerKey DRCDTextComposerKey @/link, @link DRCDTextArrangerKey DRCDTextArrangerKey @/link)
				
				If this value is not specified, no copyright is asserted for these items.
*/
@available(OSX 10.4, *)
let DRCDTextCopyrightAssertedForNamesKey: String

/*!
	@const		DRCDTextCopyrightAssertedForTitlesKey
	@discussion	Optional property key for a CD-Text block.  The value for this property
				is an NSNumber, containing a BOOL value indicating whether copyright
				is asserted on the titles of the disc and tracks.  (@link DRCDTextTitleKey DRCDTextTitleKey @/link)
				
				If this value is not specified, no copyright is asserted for these items.
*/
@available(OSX 10.4, *)
let DRCDTextCopyrightAssertedForTitlesKey: String

/*!
	@const		DRCDTextTitleKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the track/disc title.
*/
@available(OSX 10.4, *)
let DRCDTextTitleKey: String

/*!
	@const		DRCDTextPerformerKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the track/disc performer.
*/
@available(OSX 10.4, *)
let DRCDTextPerformerKey: String

/*!
	@const		DRCDTextSongwriterKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the track/disc songwriter.
*/
@available(OSX 10.4, *)
let DRCDTextSongwriterKey: String

/*!
	@const		DRCDTextComposerKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the track/disc composer.
*/
@available(OSX 10.4, *)
let DRCDTextComposerKey: String

/*!
	@const		DRCDTextArrangerKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the track/disc arranger.
*/
@available(OSX 10.4, *)
let DRCDTextArrangerKey: String

/*!
	@const		DRCDTextSpecialMessageKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing a text message which may be displayed to the
				user by some players.
*/
@available(OSX 10.4, *)
let DRCDTextSpecialMessageKey: String

/*!
	@const		DRCDTextDiscIdentKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing disc ID information, such as the catalog number
				and name of the record company, point of sale code, year of sales, etc.  Each
				item shall be separated by a slash ("/").
				
				This key is only valid for the disc (array index 0) and is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let DRCDTextDiscIdentKey: String

/*!
	@const		DRCDTextGenreKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing the description of the disc genre.
				
				This key is only valid for the disc (array index 0) and is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let DRCDTextGenreKey: String

/*!
	@const		DRCDTextGenreCodeKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSNumber, containing the numeric code for the disc genre as
				enumerated above.
				
				This key is only valid for the disc (array index 0) and is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let DRCDTextGenreCodeKey: String

/*!
	@const		DRCDTextClosedKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSString, containing disc information.  The format of this data is
				arbitrary and is up to the content provider.  This information is private and
				players should not display it to the user of the disc.
*/
@available(OSX 10.4, *)
let DRCDTextClosedKey: String

/*!
	@const		DRCDTextMCNISRCKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSData, containing either 13 bytes of MCN (for the disc) or 12 bytes
				of ISRC (for tracks).
				
				This information can also be specified in the burn and track properties.  CD-Text
				simply provides an alternative, possibly redundant way to encode this information.
				If the MCN or ISRC was specified in the properties for the burn or track, this
				value should be the same.  See the descriptions of @link //apple_ref/occ/data/DRMediaCatalogNumberKey DRMediaCatalogNumberKey @/link
				and @link //apple_ref/occ/data/DRTrackISRCKey DRTrackISRCKey @/link for more details on the precise format of the data.
*/
@available(OSX 10.4, *)
let DRCDTextMCNISRCKey: String

/*!
	@const		DRCDTextTOCKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSData, containing table-of-contents information.
				
				This key is provided for output purposes only, when reading CD-Text from an
				existing disc.  It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let DRCDTextTOCKey: String

/*!
	@const		DRCDTextTOC2Key
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSData, containing additional table-of-contents information.
				
				This key is provided for output purposes only, when reading CD-Text from an
				existing disc.  It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let DRCDTextTOC2Key: String

/*!
	@const		DRCDTextSizeKey
	@discussion	One of the keys for the track dictionaries in a CD-Text block.  The value for this
				key is an NSData, containing information about the number of packs and languages
				associated with each block.
				
				This key is provided for output purposes only, when reading CD-Text from an
				existing disc.  It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let DRCDTextSizeKey: String

/*!
	@function	DRFileGetTypeID
	@abstract	Returns the type identifier of all DRFile objects.
*/
@available(OSX 10.2, *)
func DRFileGetTypeID() -> CFTypeID

/*!
	@typedef	DRLinkType
	@abstract	Link types available for the @link DRFileCreateVirtualLink DRFileCreateVirtualLink @/link function.
*/
typealias DRLinkType = UInt32
var kDRLinkTypeHardLink: Int { get }
var kDRLinkTypeSymbolicLink: Int { get }
var kDRLinkTypeFinderAlias: Int { get }

/*!
	@typedef	DRFileMessage
	@abstract	Messages sent to the @link DRFileProc DRFileProc @/link callback during a burn.
*/
typealias DRFileMessage = UInt32
var kDRFileMessageForkSize: Int { get }
var kDRFileMessagePreBurn: Int { get }
var kDRFileMessageProduceData: Int { get }
var kDRFileMessageVerificationStarting: Int { get }
var kDRFileMessagePostBurn: Int { get }
var kDRFileMessageRelease: Int { get }

/*!
	@typedef	DRFileForkIndex
	@abstract	Index used for accessing the forks of a file.
	@discussion	The data fork and resource fork always have fixed indices.  Other forks
				may be allowed in the future.
*/
typealias DRFileForkIndex = UInt32
var kDRFileForkData: Int { get }
var kDRFileForkResource: Int { get }

/*!
	@typedef	DRFileForkSizeQuery
	@abstract	Type used to define queries on the fork size.
*/
typealias DRFileForkSizeQuery = UInt32
var kDRFileForkSizeActual: Int { get }
var kDRFileForkSizeEstimate: Int { get }

/*!
	@struct		DRFileForkSizeInfo
	@abstract	Structure used when requesting fork sizes.
	@field		fork					(in) which fork is being requested
	@field		query					(in) type of query, estimate or actual
	@field		size					(out) returned size
*/
struct DRFileForkSizeInfo {
  var fork: DRFileForkIndex
  var query: DRFileForkSizeQuery
  var size: UInt64
  init()
  init(fork: DRFileForkIndex, query: DRFileForkSizeQuery, size: UInt64)
}

/*!
	@struct		DRFileProductionInfo
	@abstract	Structure used by the @link DRFileProc DRFileProc @/link callback during production of a track.
	@field		requestedAddress		(out) byte address that the burn engine is requesting
	@field		buffer					(out) buffer to produce into
	@field		reqCount				(out) number of bytes requested
	@field		actCount				(in) number of bytes you actually produced
	@field		blockSize				(out) current block size, you must always return multiples of this
	@field		fork					(out) which fork is being requested
*/
struct DRFileProductionInfo {
  var requestedAddress: UInt64
  var buffer: UnsafeMutablePointer<Void>
  var reqCount: UInt32
  var actCount: UInt32
  var blockSize: UInt32
  var fork: DRFileForkIndex
  init()
  init(requestedAddress: UInt64, buffer: UnsafeMutablePointer<Void>, reqCount: UInt32, actCount: UInt32, blockSize: UInt32, fork: DRFileForkIndex)
}

/*!
	@typedef	DRFileProc
	@abstract	Callback function to produce and manage a file for recording a track.
	@discussion	Your application needs to implement a callback to create files representing
				tracks to burn, and to interact with those tracks by responding to the 
				messages in the @link DRFileMessage DRFileMessage @/link enumeration.
	
				If you name your function <tt>MyDRFileCallback</tt>, you would
				declare it like this:
				
				<pre>
					OSStatus MyDRFileCallback (
						void			*refCon,
						DRFileRef		file,
						DRFileMessage	message,
						void			*ioParam
					);
				</pre>
				
				Your callback places the requested data
				
				If your callback does not support a given function, it should return
				@link //apple_ref/c/econst/kDRFunctionNotSupportedErr kDRFunctionNotSupportedErr @/link.
				
	@param	refCon		Reference context for your use, established when
						the callback is registered.
	@param	file		The file object being produced.
	@param	message		Sent by the Disc Recording engine to indicate the 
						type of data it needs your application to supply. The 
						various messages are defined in the @link DRFileMessage DRFileMessage @/link 
						enumeration.
	@param	ioParam		Parameters are message-specific. See the @link DRFileMessage DRFileMessage @/link 
						enumeration.
	@result				Your application should return @link //apple_ref/c/econst/kDRFunctionNotSupportedErr kDRFunctionNotSupportedErr @/link
						when a message was passed that it doesn't respond to.
*/
typealias DRFileProc = @convention(c) (UnsafeMutablePointer<Void>, DRFile!, DRFileMessage, UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	DRFileCreateReal
	@abstract		Creates a new real file object corresponding to a given FSRef.
	@discussion		A real file object is a file object which corresponds to a real
					file on disk.  The content of the file object corresponds to the
					actual on-disk content of the file.
	@param	fsRef	An <tt>FSRef</tt> reference to a file on-disk.
	@result			The newly-created file, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFileCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFile>!

/*!
	@function	DRFileCreateRealWithURL
	@abstract	Creates a new real file object corresponding to a given file URL.
	@discussion	A real file object is a file object which corresponds to a real
				file on disk.  The content of the file object corresponds to the
				actual on-disk content of the file.
	@param		urlRef					CFURLRef reference to a file on-disk.
	@result		Returns a reference to the newly-created real file object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFileCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFile>!

/*!
	@function	DRFileCreateVirtualWithData
	@abstract			Creates a virtual file object with the specified data.
	@discussion			A virtual file is a file object which does not correspond to any real
						file on disk, but represents a file you want to appear in the file
						structure of the disc you are burning. It is created and modified 
						using Disc Recording's 'content' functions -- see the 
						documentation for DRContentObject.h.
				
						The file data passed in to this function is copied internally. Although 
						it's possible to create files of arbitrary size with this function, you 
						should limit files created in this way to a reasonable size, such as
						100K or less, because each file consumes a corresponding amount of memory.
				
						On multi-fork file systems the file data is used for the data fork.
	@param	baseName	The base name to assign to the new virtual file.
	@param	fileData	A pointer to the data for the file.  May be <tt>NULL</tt> if
						<tt>inFileLength</tt> is zero.
	@param	fileDataLength	The length of data in bytes.
	@result				Returns a reference to the newly-created virtual file object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFileCreateVirtualWithData(baseName: CFString!, _ fileData: UnsafeMutablePointer<Void>, _ fileDataLength: UInt32) -> Unmanaged<DRFile>!

/*!
	@function	DRFileCreateVirtualWithCallback
	@abstract			Creates a virtual file object that will be filled in during data production
						by a callback function.
	@discussion			A virtual file is a file object which does not correspond to any real file
						on disk, but represents a file you want to appear in the file
						structure of the disc you are burning. It is created and modified 
						using Disc Recording's 'content' functions -- see the 
						documentation for DRContentObject.h.
				
						The Disc Recording framework may invoke the callback at any time, and the 
						calls may be made in any order, until the file object has been disposed.
	@param	baseName	The base name to assign to the new virtual file. For information on base
						names and how Disc Recording works with them, see @link //apple_ref/c/func/DRFSObjectSetBaseName DRFSObjectSetBaseName @/link
						and @link //apple_ref/c/func/DRFSObjectSetSpecificName DRFSObjectSetSpecificName @/link.
	@param	fileProc	Your application-implemented callback function to generate file data.
	@param	fileProcRefCon	An optional reference context for the callback to use.
	@result				Returns a reference to the newly-created virtual file object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFileCreateVirtualWithCallback(baseName: CFString!, _ fileProc: DRFileProc!, _ fileProcRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<DRFile>!

/*!
	@function	DRFileCreateVirtualLink
	@abstract			Creates a virtual file or folder object in the form of a link to another
						file or folder in the hierarchy.
	@discussion			Disc Recording currently supports four link types: symbolic links, hard links,
						Finder aliases, and combination symbolic link/Finder aliases.
				
						Links often include relative path information.  Since the relative path
						between two objects can be different depending on the target file system, you
						must specify a target file system when requesting a link.  The file system 
						mask on the newly-created link will automatically be set to ensure the file 
						appears only in that file system.
	@param	original	The file or folder to link to.
	@param	linkType	The type of link to create. See the @link DRLinkType DRLinkType @/link enumeration.
	@param	fsKey		The target file system for the link. The various keys are defined in
						DRContentProperties.h.
	@result				A reference to the newly-created virtual file or folder object.
*/
@available(OSX 10.2, *)
func DRFileCreateVirtualLink(original: DRFSObject!, _ linkType: DRLinkType, _ fsKey: CFString!) -> Unmanaged<DRFile>!

/*!
	@function	DRFolderGetTypeID
	@abstract	Returns the type identifier of all DRFolder instances.
*/
@available(OSX 10.2, *)
func DRFolderGetTypeID() -> CFTypeID

/*!
	@function		DRFolderCreateReal
	@abstract		Creates a new real folder object corresponding to a given FSRef object.
	@discussion		A real folder object is a folder object corresponding to a real
					folder on disk.  The content of the folder object corresponds to the
					actual on-disk content of the folder.  Items cannot be programatically added
					to or removed from a real folder object without making it virtual first --
					see @link DRFolderConvertRealToVirtual DRFolderConvertRealToVirtual @/link.  
	@param	fsRef				A file-system reference to an on-disk folder.
	@result			Returns a reference to the newly-created folder object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFolderCreateReal(fsRef: UnsafePointer<FSRef>) -> Unmanaged<DRFolder>!

/*!
	@function	DRFolderCreateRealWithURL
	@abstract		Creates a new real folder object corresponding to a given file URL.
	@discussion		A real folder object is a folder object corresponding to a real
					folder on disk.  The contents of the folder object corresponds to the
					actual on-disk contents of the folder.  Items cannot be programatically added
					to or removed from a real folder object without making it virtual first --
					see @link DRFolderConvertRealToVirtual DRFolderConvertRealToVirtual @/link.    
	@param	urlRef	A URL reference to an on-disk folder.
	@result			Returns a reference to the newly-created folder object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFolderCreateRealWithURL(urlRef: CFURL!) -> Unmanaged<DRFolder>!

/*!
	@function	DRFolderCreateVirtual
	@abstract			Creates a new, empty virtual folder object.
	@discussion			A virtual folder object is a folder object which does not correspond
						to any real folder on disk, but represents a folder you want to appear 
						in the file structure of the disc you are burning. It is created and modified 
						using Disc Recording's 'content' functions -- see the documentation for 
						DRContentObject.h.
	@param	baseName	The base name to assign to the new virtual folder. For information on base
						names and how Disc Recording works with them, see @link //apple_ref/c/func/DRFSObjectSetBaseName DRFSObjectSetBaseName @/link
						and @link //apple_ref/c/func/DRFSObjectSetSpecificName DRFSObjectSetSpecificName @/link.
	@result				Returns a reference to the newly-created virtual folder object, or <tt>NULL</tt>.
*/
@available(OSX 10.2, *)
func DRFolderCreateVirtual(baseName: CFString!) -> Unmanaged<DRFolder>!

/*!
	@function	DRFolderConvertRealToVirtual
	@abstract			Converts a real folder to a virtual folder.  Conversion happens
						in-place so there is no need to release or reallocate any objects.
	@discussion			The virtual folder created in this way is a snapshot of the on-disk
						folder at the moment of the call.  The newly-created virtual folder
						will contain real folder and file objects corresponding to the
						on-disk children of the original on-disk folder.
				
						If the on-disk folder attributes change, or if children are added to 
						or removed from the on-disk tree during this call, the virtual folder 
						may or may not reflect the changes. It the on-disk attributes change
					 	after this call, the virtual folder will not reflect the changes.

	@param	realFolder	A reference to the folder object to convert.  The caller should pass in
						a reference to a real folder.  On success it will have been converted
						to a virtual folder.
*/
@available(OSX 10.2, *)
func DRFolderConvertRealToVirtual(realFolder: DRFolder!)

/*!
	@function	DRFolderAddChild
	@abstract			Adds a file or folder object reference as a child of a virtual folder 
						object.
	
						This function applies only to virtual folders.  Real folders
						are considered "leaf nodes" and cannot have children.
	@param	parent		A reference to the folder that will be the new parent.
	@param	newChild	A reference to the file or folder object that will be the new child.
*/
@available(OSX 10.2, *)
func DRFolderAddChild(parent: DRFolder!, _ newChild: DRFSObject!)

/*!
	@function	DRFolderRemoveChild
	@abstract			Removes a file or folder object reference so a file or folder is 
						no longer a child  of the specified folder object.

						This function applies only to virtual folders.  Real folders
						are considered "leaf nodes" and cannot have children.
	@param		parent	A reference to the folder that will no longer be the parent of the
						child object.
	@param		child	A reference to the file or folder object that will no longer be
						a child of the parent object.
*/
@available(OSX 10.2, *)
func DRFolderRemoveChild(parent: DRFolder!, _ child: DRFSObject!)

/*!
	@function	DRFolderCountChildren
	@abstract			Obtains the number of children of a virtual folder.
	@discussion			This function applies only to virtual folders. Real folders
						are considered "leaf nodes" and should not be passed to this call.
	@param	folder		The folder reference to query.
	@result				Returns the number of children.
*/
@available(OSX 10.2, *)
func DRFolderCountChildren(folder: DRFolder!) -> UInt32

/*!
	@function	DRFolderCopyChildren
	@abstract			Obtains an array containing the children of a virtual folder.
	@discussion			The order of the children in the array is arbitrary; the various files 
						systems being generated for a burn may have different sorting 
						requirements, so there is no one definitive sort order. The ordering 
						will change only when children are added or removed.
						
						Your application should sort the children consistently and according to 
						the needs of your user interface.
				
						This function applies only to virtual folders.  Real folders
						are considered "leaf nodes" and should not be passed to this call.
	@param	folder		The folder reference to query.
	@result				Returns a CFArray object containing the virtual folder's children.
*/
@available(OSX 10.2, *)
func DRFolderCopyChildren(folder: DRFolder!) -> Unmanaged<CFArray>!

/*!
	@typedef DRFileRef
	@abstract			The type of a reference to a DRFile object.
*/
class DRFile {
}

/*!
	@typedef DRFileRef
	@abstract			The type of a reference to a DRFile object.
*/
typealias DRFileRef = DRFile

/*!
	@typedef DRFolderRef
	@abstract			The type of a reference to a DRFolder object.
*/
class DRFolder {
}

/*!
	@typedef DRFolderRef
	@abstract			The type of a reference to a DRFolder object.
*/
typealias DRFolderRef = DRFolder

/*!
	@typedef DRFSObjectRef
	@abstract			A polymorphic type used for file and folder objects.
*/
typealias DRFSObject = DRType

/*!
	@typedef DRFSObjectRef
	@abstract			A polymorphic type used for file and folder objects.
*/
typealias DRFSObjectRef = DRFSObject

/*!
	@typedef DRFilesystemMask
	@abstract			A mask of values indicating in which filesystems a particular filesystem object should be included.
*/
typealias DRFilesystemMask = UInt32
var kDRFilesystemMaskISO9660: UInt32 { get }
var kDRFilesystemMaskJoliet: UInt32 { get }
var kDRFilesystemMaskUDF: UInt32 { get }
var kDRFilesystemMaskHFSPlus: UInt32 { get }
var kDRFilesystemMaskDefault: UInt32 { get }

/*!	@function	DRFSObjectIsVirtual
	@abstract			Reports whether a file or folder object is real or virtual.
	@param		object	The file or folder object to query.
	@result				Returns <tt>TRUE</tt> if the object is virtual, <tt>FALSE</tt> otherwise.
*/
@available(OSX 10.2, *)
func DRFSObjectIsVirtual(object: DRFSObject!) -> Bool

/*!	@function	DRFSObjectGetRealFSRef
	@abstract			Given a real (as opposed to virtual) file or folder object, obtains a 
						file-system reference to the on-disk file or folder.
	@param		object	The file or folder object to query.
	@param		fsRef	On success, contains a valid FSRef object.
*/
@available(OSX 10.2, *)
func DRFSObjectGetRealFSRef(object: DRFSObject!, _ fsRef: UnsafeMutablePointer<FSRef>)

/*!	@function	DRFSObjectCopyRealURL
	@abstract			Given a real (as opposed to virtual) file or folder object, obtains a 
						URL reference to the on-disk file or folder.
	@param		object	The file or folder object to query.
	@result				Returns a reference to a file URL that specifies the on-disk file or 
						folder, or <tt>NULL</tt> if the <tt>object</tt> parameter does not refer 
						to a real file or folder.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyRealURL(object: DRFSObject!) -> Unmanaged<CFURL>!

/*!	@function	DRFSObjectGetParent
	@abstract			Obtains a reference to the parent object, if any, of a given object 
						in a file/folder hierarchy.
	@param		object	The object reference to query.
	@result				Returns a reference to the object's parent, or <tt>NULL</tt> if there is no parent.
*/
@available(OSX 10.2, *)
func DRFSObjectGetParent(object: DRFSObject!) -> Unmanaged<DRFolder>!

/*!	@function	DRFSObjectCopyBaseName
	@abstract		Obtains the default (base) name for the file or folder object.
	@discussion		The default (base) name of a file or folder is the name from which 
					Disc Recording automatically generates file-system-specific names.  
				
					Disc Recording's content creation API can generate multiple file 
					systems, each of which may require its own naming conventions. To 
					accommodate this need, each file or folder object has a default 
					"base name" which the system alters as necessary to work with the 
					target file system.
						
					Whenever possible, Disc Recording uses the default name unmodified  
					in a generated file system. If the name cannot be used as-is (for example,
					if it contains illegal characters, exceeds name length limitations, 
					doesn't meet the required format, or a name collision is detected),
					then the Disc Recording engine automatically generates an acceptable
					name.
						
					The default name for a real file or folder is the on-disk name of
					the file or folder.
	@param	object	The file or folder object to query.
	@result			Returns a reference to a copy of the default (base) name.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyBaseName(object: DRFSObject!) -> Unmanaged<CFString>!

/*!	@function	DRFSObjectCopySpecificName
	@abstract		Obtains a file-system-specific name for a file or folder object.
	@discussion		When using this function to generate a file-system-specific name, you
					must specify the <tt>fsKey</tt> parameter, as listed in 
					<tt>DRContentProperties.h</tt>, as either @link //apple_ref/c/data/kDRISO9660LevelOne kDRISO9660LevelOne @/link 
					for '8.3' names or @link //apple_ref/c/data/kDRISO9660LevelTwo kDRISO9660LevelTwo @/link for 30-character names. You 
					cannot use the @link //apple_ref/c/data/kDRISO9660 kDRISO9660 @/link constant because it does not 
					distinguish between the level-one and level-two ISO-9660 formats. Use 
					@link //apple_ref/c/data/kDRISO9660 kDRISO9660 @/link only for accessing file and folder object
					properties with the @link DRFSObjectCopyFilesystemProperty DRFSObjectCopyFilesystemProperty @/link or 
					@link DRFSObjectCopyFilesystemProperties DRFSObjectCopyFilesystemProperties @/link functions.
					
	@param	object	The file or folder object to query.
	@param	fsKey	The name-access key for the requested file-system-specific name. Valid keys
					include @link //apple_ref/c/data/kDRISO9660LevelOne kDRISO9660LevelOne @/link for '8.3' names or @link //apple_ref/c/data/kDRISO9660LevelTwo kDRISO9660LevelTwo @/link
					for 30-character names.
	@result			Returns a reference to a file-system-specific name.
*/
@available(OSX 10.2, *)
func DRFSObjectCopySpecificName(object: DRFSObject!, _ fsKey: CFString!) -> Unmanaged<CFString>!

/*!	@function	DRFSObjectCopySpecificNames
	@abstract		Obtains a dictionary containing the file-system-specific names
					for a file or folder object.
	@discussion		The dictionary obtained by this function will include only the names which 
					are to be used in a burn according to the object's effective mask.
	@param	object	The object reference to query.
	@result			Returns a dictionary of file-system-specific names. If the object's 
					effective mask is zero, an empty dictionary is returned. 
*/
@available(OSX 10.2, *)
func DRFSObjectCopySpecificNames(object: DRFSObject!) -> Unmanaged<CFDictionary>!

/*!	@function	DRFSObjectCopyMangledName
	@abstract		Obtains a file-system-specific name for a file or folder object, 
					modified for uniqueness.
	@discussion		The file or folder object's name string will be modified for uniqueness 
					considering its siblings. If the burn were to happen immediately after 
					this call, this is the name which would be used on the resulting disc.
				
					When using this function to obtain a modified name, you must specify
					the <tt>fsKey</tt> parameter, as listed in 
					<tt>DRContentProperties.h</tt>, as either @link //apple_ref/c/data/kDRISO9660LevelOne kDRISO9660LevelOne @/link 
					for '8.3' names or @link //apple_ref/c/data/kDRISO9660LevelTwo kDRISO9660LevelTwo @/link for 30-character names. You 
					cannot use the @link //apple_ref/c/data/kDRISO9660 kDRISO9660 @/link constant because it does not 
					distinguish between the level-one and level-two ISO-9660 formats. Use 
					@link //apple_ref/c/data/kDRISO9660 kDRISO9660 @/link only for accessing file and folder object
					properties with the @link DRFSObjectCopyFilesystemProperty DRFSObjectCopyFilesystemProperty @/link or 
					@link DRFSObjectCopyFilesystemProperties DRFSObjectCopyFilesystemProperties @/link functions.
	@param	object	The object reference to query.
	@param	fsKey	The name-access key for the requested file-system-specific name. Valid keys
					include @link //apple_ref/c/data/kDRISO9660LevelOne kDRISO9660LevelOne @/link for '8.3' names or @link //apple_ref/c/data/kDRISO9660LevelTwo kDRISO9660LevelTwo @/link
					for 30-character names.
	@result			Returns a reference to a file-system-specific name, modified as
					necessary for uniqueness.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyMangledName(object: DRFSObject!, _ fsKey: CFString!) -> Unmanaged<CFString>!

/*!	@function	DRFSObjectCopyMangledNames
	@abstract		Obtains a dictionary containing all of the file-system-specific names
					for a given object, each one modified for uniqueness.
	@discussion		The dictionary will return only the names which are indicated by the
					object's effective mask.  If the object's effective mask is zero, an
					empty dictionary is returned.
	@param	object	The file or folder object reference to query.
	@result			Returns a reference to a dictionary of names, each one modified as 
					necessary for uniqueness.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyMangledNames(object: DRFSObject!) -> Unmanaged<CFDictionary>!

/*!	@function	DRFSObjectCopyFilesystemProperty
	@abstract			Obtains a property for a file or folder object.
	@param	object		The object reference to query.
	@param	fsKey		File system to query.
	@param	propertyKey	The property to query.
	@param	coalesce	If <tt>TRUE</tt> and if the property isn't found in the requested 
						file-system dictionary, this function will go on to check the 
						"all filesystems" properties dictionary.
	@result				Returns a reference to a property, or <tt>NULL</tt> if not found.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyFilesystemProperty(object: DRFSObject!, _ fsKey: CFString!, _ propertyKey: CFString!, _ coalesce: Bool) -> Unmanaged<AnyObject>!

/*!	@function	DRFSObjectCopyFilesystemProperties
	@abstract			Obtains a dictionary of file system properties for a given 
						file or folder object.
	@param	object		Object reference to query.
	@param	fsKey		The file system to query.
	@param	coalesce	If <tt>TRUE</tt>, this function will also get the "all filesystems" 
						properties dictionary and merge it with the requested file-system 
						dictionary.
	@result				Returns a reference to a file or folder object's properties 
						dictionary, or <tt>NULL</tt> if no properties have been set.
*/
@available(OSX 10.2, *)
func DRFSObjectCopyFilesystemProperties(object: DRFSObject!, _ fsKey: CFString!, _ coalesce: Bool) -> Unmanaged<CFDictionary>!

/*!
	@function	DRFSObjectGetFilesystemMask
	@abstract		Obtains the mask indicating in which file systems a file or folder 
					object should appear.
	
	@discussion		If you want all the file systems on a target disc -- such as HFS+ and
					ISO-9660 -- to have the same data, you do not have to set an explicit 
					mask for anything but the root folder. And since Disc Recording 
					automatically assigns a reasonable default mask to the root if none 
					is provided, in most cases you do not even have to set an explicit 
					root-folder mask.
					
					With Disc Recording's file masking system you can specify which items
					in a source file structure will appear in various generated file 
					structures when burning to disc. For example, you may want a Mac OS
					application file or bundle to appear only in an HFS+ tree, and may 
					want a .EXE file to appear only in a Joliet tree.
	
					File-system-specific suppression is handled through the file or folder
					object's file-system mask, a bit field in which a 1 indicates the 
					object will appear in the corresponding file system, and 0 indicates 
					it will not appear.  Masks can define arbitrarily complex trees. In 
					the extreme case, each file system can have its own unique, disjoint
					tree. Such discs, however, may be confusing to the user.
					
					A file or folder object can be considered to have two mask values.  The 
					first is the explicit mask, set by the client unless it is simply 
					the default value of @link kDRFilesystemMaskDefault kDRFilesystemMaskDefault @/link, with all bits set 
					to 1.  The other is the effective mask, which is a derived mask used  
					during a burn.
					
					The Disc Recording engine implements the following rules prior to a burn 
					to derive the effective mask:
	
				<ul>
				<li>A file or folder object's effective mask is equal to the bitwise AND of the 
					object's explicit mask and its parent's effective mask.</li>
					
				<li>An effective mask of 0 removes an object from all file systems. It will
					not be included in the burn.</li>
				</ul>
	
					For example, an explicit mask of 0 forces an effective mask of 0, and an
					explicit mask of @link kDRFilesystemMaskDefault kDRFilesystemMaskDefault @/link implies an effective mask
					equal to the parent's effective mask.
					
					For an object to appear in a file system, its parent folder, and all 
					ancestors, up to the root, must also be in the file system.
	
					When the burn is performed, Disc Recording performs a few additional steps in determining
					the file and folder layouts for each file system.
					
				<ul>
				<li>If your client gives the root folder has an explicit mask of 
					@link kDRFilesystemMaskDefault kDRFilesystemMaskDefault @/link, Disc Recording will assign to the root 
					folder a default explicit mask of its own choosing in an attempt to produce 
					the most cross-platform-compatible disc.
					
					This automatically-selected default root mask depends, among other factors,
					on the type of media to be burned -- CD or DVD.
					
					If you need to generate layouts for specific file systems, you should
					always set a non-default explicit mask for the root folder.
					
					Assigning the root folder a mask of 0 results in undefined behavior.</li>
					
				<li>If your client gives every file and folder object in your source layout an 
					explicit mask of @link kDRFilesystemMaskDefault kDRFilesystemMaskDefault @/link, then every object will
					inherit the mask that Disc Recording chooses for the root folder.</li>
					
				<li>If you set the root folder's mask to a file system that is dependent on 
					another file system not in the mask, Disc Recording resolves the conflict 
					by enabling the required file system.
					
					For example, the Joliet file system requires ISO-9660.  If the root 
					folder's mask is @link kDRFilesystemMaskJoliet kDRFilesystemMaskJoliet @/link only, Disc Recording 
					will automatically enable @link kDRFilesystemMaskISO9660 kDRFilesystemMaskISO9660 @/link as well.</li>
				
				<li>If the root folder's mask requests a file system that cannot coexist with 
					another requested file system, Disc Recording resolves the conflict by 
					disabling one of the conflicting file systems. This is not currently an 
					issue, since no pairs of file systems that can be currently generated are  
					mutually exclusive.
					
					(To provide a hypothetical example of this behavior:  If Disc Recording 
					supported both HFS and HFS+ in a mutually exclusive manner, and the root 
					folder had a mask that enabled both, the burn engine would automatically 
					disable HFS in favor of HFS+.)</li>
				</ul>
					

	@param	object				The file or folder object to query.
	@param	explicitMask		On output, contains the object's explicit mask. May be 
								<tt>NULL</tt> on input.
	@param	effectiveMask		On output, contains the object's effective mask. May be 
								<tt>NULL</tt> on input.
	@result			For convenience, the file or folder object's effective mask is returned.
*/
@available(OSX 10.2, *)
func DRFSObjectGetFilesystemMask(object: DRFSObject!, _ explicitMask: UnsafeMutablePointer<DRFilesystemMask>, _ effectiveMask: UnsafeMutablePointer<DRFilesystemMask>) -> DRFilesystemMask

/*!	@function	DRFSObjectSetBaseName
	@abstract		Sets the base name for a file or folder object.
	@discussion		The default (base) name of a file or folder is the name from which 
					Disc Recording automatically generates file-system-specific names.  
				
					Disc Recording's content creation API can generate multiple file systems,
					each of which may have its own naming conventions. Whenever possible, the 
					base name will be used without modification in a generated file system.
				
					If the base name cannot be used as-is (if, for example, it
					contains illegal characters, exceeds the length requirements, doesn't
					meet the required format, or a name collision is detected), then Disc Recording
					automatically derives an acceptable name that meets the file system's criteria.
				
					Changing a file or folder object's base name will remove any file-system-specific
					name overrides that may have been set in the object's names dictionary.
	@param	object		A reference to the file or folder object to modify.
	@param	baseName	A reference to the new name for the object.
*/
@available(OSX 10.2, *)
func DRFSObjectSetBaseName(object: DRFSObject!, _ baseName: CFString!)

/*!	@function	DRFSObjectSetSpecificName
	@abstract		Changes a file-system-specific name for a file or folder object.
	@discussion		Disc Recording attempts to use the default (base) name of a file or
					folder object. If the default name is illegal, however, Disc Recording
					modifies it to fit the rules for the file system specified with the 
					<tt>fsKey</tt> parameter. 
				
					To ensure that you are always displaying the most current name to the user,
					always follow a call to this function with a call to 
					@link DRFSObjectCopySpecificName DRFSObjectCopySpecificName @/link.
	@param	object	A reference to the file or folder object to modify.
	@param	fsKey	The name-access key for the file-system-specific name you are changing. Valid keys
					include @link //apple_ref/c/data/kDRISO9660LevelOne kDRISO9660LevelOne @/link for '8.3' names or @link //apple_ref/c/data/kDRISO9660LevelTwo kDRISO9660LevelTwo @/link
					for 30-character names.
	@param	specificName	The name to apply to the file or folder object.
*/
@available(OSX 10.2, *)
func DRFSObjectSetSpecificName(object: DRFSObject!, _ fsKey: CFString!, _ specificName: CFString!)

/*!	@function	DRFSObjectSetSpecificNames
	@abstract		Changes all the file-system-specific names for a file or folder object.
	@discussion		Disc Recording attempts to use the default (base) names of a file or
					folder object. If any of the default names are illegal, however, Disc Recording
					modifies them to fit the rules for the file system specified with the 
					<tt>fsKey</tt> parameter. 
				
					To ensure that you are always displaying the most current name to the user,
					always follow a call to this function with a call to 
					@link DRFSObjectCopySpecificNames DRFSObjectCopySpecificNames @/link.
	@param	object			A reference to the file or folder object to modify.
	@param	specificNames	The dictionary containing the names to apply to the file or folder object.
*/
@available(OSX 10.2, *)
func DRFSObjectSetSpecificNames(object: DRFSObject!, _ specificNames: CFDictionary!)

/*!
	@function	DRFSObjectSetFilesystemProperty
	@abstract				Sets a file-system-specific property for a file or folder object.
	@param	object			A reference to the file or folder object to modify.
	@param	fsKey			The file-system for the object property you want to modify.
	@param	propertyKey		The property you want to modify.
	@param	value			The new value for the property.
*/
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemProperty(object: DRFSObject!, _ fsKey: CFString!, _ propertyKey: CFString!, _ value: AnyObject!)

/*!
	@function	DRFSObjectSetFilesystemProperties
	@abstract			Changes file-system properties for a file or folder object.
	@param	object		A reference to the file or folder object to modify.
	@param	fsKey		The file-system for the object properties you want to modify.
	@param	properties	A reference to the dictionary of properties to set.
*/
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemProperties(object: DRFSObject!, _ fsKey: CFString!, _ properties: CFDictionary!)

/*!
	@function	DRFSObjectSetFilesystemMask
	@abstract			Sets the explicit mask for a file or folder object, indicating in 
						which file systems this object should appear.
	@discussion			Refer to the discussion for @link DRFSObjectGetFilesystemMask DRFSObjectGetFilesystemMask @/link 
						for an explanation of explicit and effective masks.
	@param	object		A reference to the file or folder object to modify.
	@param	newMask		The new explicit mask to use.
*/
@available(OSX 10.2, *)
func DRFSObjectSetFilesystemMask(object: DRFSObject!, _ newMask: DRFilesystemMask)

/*! @constant	kDRISOLevel
	@abstract	The key for indicating the ISO level of the ISO-9660 filesystem on the track. 
	@discussion	Value is a CFNumberRef, currently should be 1 or 2.
*/
@available(OSX 10.2, *)
let kDRISOLevel: CFString!

/*!	@constant	kDRVolumeSet
	@abstract	(ISO/Joliet) The key for indicating the volume set name.
	@discussion	Value is a CFStringRef.
*/
@available(OSX 10.2, *)
let kDRVolumeSet: CFString!

/*!	@constant	kDRPublisher
	@abstract	(ISO/Joliet) The key for indicating the publisher string.
	@discussion	Value is a CFStringRef.
*/
@available(OSX 10.2, *)
let kDRPublisher: CFString!

/*!	@constant	kDRDataPreparer
	@abstract	(ISO/Joliet) The key for indicating the data preparer.
	@discussion	Value is a CFStringRef.
*/
@available(OSX 10.2, *)
let kDRDataPreparer: CFString!

/*!	@constant	kDRSystemIdentifier
	@abstract	(ISO/Joliet) The key for indicating the system identifier.
	@discussion	Value is a CFStringRef.
				Only the first 32 characters (ISO) or 16 characters (Joliet)
				will be used, after being mapped into a legal character set.
				Note, this value will NOT be used if Mac extensions are turned
				on - with Mac extensions, the system identifier will always be
				"APPLE COMPUTER, INC., TYPE: 0002" or "APPLE INC., TYPE: 0002"
*/
@available(OSX 10.2, *)
let kDRSystemIdentifier: CFString!

/*!	@constant	kDRApplicationIdentifier
	@abstract	(ISO/Joliet) The key for indicating the application identifier.
	@discussion	Value is a CFStringRef.
				Only the first 32 characters (ISO) or 16 characters (Joliet)
				will be used, after being mapped into a legal character set.
*/
@available(OSX 10.2, *)
let kDRApplicationIdentifier: CFString!

/*!	@constant	kDRCopyrightFile
	@abstract	(ISO/Joliet) The key for indicating the copyright file.
	@discussion	Value is a @link //apple_ref/c/tdef/DRFileRef DRFileRef @/link (which must be in the root directory).
*/
@available(OSX 10.2, *)
let kDRCopyrightFile: CFString!

/*!	@constant	kDRAbstractFile
	@abstract	(ISO/Joliet) The key for indicating the abstract file.
	@discussion	Value is a @link //apple_ref/c/tdef/DRFileRef DRFileRef @/link (which must be in the root directory).
*/
@available(OSX 10.2, *)
let kDRAbstractFile: CFString!

/*!	@constant	kDRBibliographicFile
	@abstract	(ISO/Joliet) The key for indicating the bibliographic file.
	@discussion	Value is a @link //apple_ref/c/tdef/DRFileRef DRFileRef @/link (which must be in the root directory).
*/
@available(OSX 10.2, *)
let kDRBibliographicFile: CFString!

/*! @constant	kDRBlockSize
	@abstract	The key for indicating the block size of the track.
	@discussion	Value is a CFNumberRef, currently always 2048.  Do not change.
*/
@available(OSX 10.2, *)
let kDRBlockSize: CFString!

/*! @constant	kDRDefaultDate
	@abstract	The default date for any unspecified dates in the filesystem.
	@discussion	Value is a CFDateRef.  The current date and time is used if unspecified.
*/
@available(OSX 10.2, *)
let kDRDefaultDate: CFString!

/*!	@constant	kDRVolumeCreationDate
	@abstract	The key for indicating the volume creation date.
	@discussion	Value is a CFDateRef.  @link kDRDefaultDate kDRDefaultDate @/link is used if unspecified.
*/
@available(OSX 10.2, *)
let kDRVolumeCreationDate: CFString!

/*!	@constant	kDRVolumeModificationDate
	@abstract	The key for indicating the volume modification date.
	@discussion	Value is a CFDateRef.  @link kDRDefaultDate kDRDefaultDate @/link is used if unspecified.
*/
@available(OSX 10.2, *)
let kDRVolumeModificationDate: CFString!

/*!	@constant	kDRVolumeCheckedDate
	@abstract	(HFS+) The key for indicating the volume-checked date.
	@discussion	Value is a CFDateRef.  @link kDRDefaultDate kDRDefaultDate @/link is used if unspecified.
*/
@available(OSX 10.2, *)
let kDRVolumeCheckedDate: CFString!

/*!	@constant	kDRVolumeExpirationDate
	@abstract	(ISO/Joliet) The date and time at which the volume expires.
	@discussion	Value is a CFDateRef.  Empty if unspecified.
*/
@available(OSX 10.2, *)
let kDRVolumeExpirationDate: CFString!

/*!	@constant	kDRVolumeEffectiveDate
	@abstract	(ISO/Joliet) The date and time at which the volume is effective.
	@discussion	Value is a CFDateRef.  Empty if unspecified.
*/
@available(OSX 10.2, *)
let kDRVolumeEffectiveDate: CFString!

/*!	@constant	kDRISOMacExtensions
	@abstract	(ISO/Joliet) Whether to add ISO/Joliet Mac extensions when appropriate.
	@discussion	Value is a CFBooleanRef.
*/
@available(OSX 10.2, *)
let kDRISOMacExtensions: CFString!

/*!	@constant	kDRISORockRidgeExtensions
	@abstract	(ISO/Joliet) Whether to add RockRidge (POSIX extensions) when appropriate.
	@discussion	Value is a CFBooleanRef.
*/
@available(OSX 10.2, *)
let kDRISORockRidgeExtensions: CFString!

/*!	@constant	kDRSuppressMacSpecificFiles
	@abstract	Whether to suppress Mac-specific files from non-HFS filesystems.
	@discussion	Value is a CFBooleanRef.
*/
@available(OSX 10.3, *)
let kDRSuppressMacSpecificFiles: CFString!

/*!
	@constant	kDRAllFilesystems
	@abstract	The key for accessing the name or properties for the file in
				all filesystems together.
	@discussion	When this key is used to refer to a name, it refers to the
				base name (which has no naming restrictions).
*/
@available(OSX 10.2, *)
let kDRAllFilesystems: CFString!

/*!
	@constant	kDRISO9660
	@abstract	The key for accessing the ISO-9660 properties for the file.
	@discussion	This key is used to refer specifically to the properties for the file.
	
				This key cannot be used to refer to the name of the file; it is ambiguous,
				since the name may be in either level 1 or level 2 format.
*/
@available(OSX 10.2, *)
let kDRISO9660: CFString!

/*!	@constant	kDRISO9660LevelOne
	@abstract	The key for accessing the ISO-9660 level 1 name for the file.
	@discussion	This key is used to refer specifically to the name generated for ISO-9660 if
				the ISO level is set to 1.  When used for a property, it is equivalent
				in use to the @link kDRISO9660 kDRISO9660 @/link key and acts as a synonym for that key.
				
				ISO9660 level 1 names are in the form typically known as 8.3 - eight
				characters of name and three characters of extension (if it's a file;
				directories can't have extensions).  Character set is limited to
				A-Z, 0-9, and _.
*/
@available(OSX 10.2, *)
let kDRISO9660LevelOne: CFString!

/*!	@constant	kDRISO9660LevelTwo
	@abstract	The key for accessing the ISO-9660 level 2 name for the file.
	@discussion	This key is used to refer specifically to the name generated for ISO-9660 if
				the ISO level is set to 2.  When used for a property, it is equivalent
				in use to the @link kDRISO9660 kDRISO9660 @/link key and acts as a synonym for that key.
	
				ISO9660 level 2 names can be 32 chars long, are limited to a subset
				of the 7-bit ASCII chars (capital letters, numbers, space, punctuation),
				and are only allowed one "." character.
*/
@available(OSX 10.2, *)
let kDRISO9660LevelTwo: CFString!

/*!	@constant	kDRJoliet
	@abstract	The key for accessing the Joliet name/properties for the file.
	@discussion	Joliet names can be 64 precomposed unicode characters long, but are only
				allowed one "." character and many punctuation characters are illegal.
*/
@available(OSX 10.2, *)
let kDRJoliet: CFString!

/*!	@constant	kDRHFSPlus
	@abstract	The key for accessing the HFS+ name/properties for the file.
	@discussion	HFS+ names can be up to 255 decomposed unicode characters long.
*/
@available(OSX 10.2, *)
let kDRHFSPlus: CFString!

/*!	@constant	kDRUDF
	@abstract	The key for accessing the UDF name/properties for the file.
*/
@available(OSX 10.4, *)
let kDRUDF: CFString!

/*!	@constant	kDRISO9660VersionNumber
	@abstract	The property key for the ISO9660 version number for the object.
	@discussion	Value is a CFNumber, default value is 1.
*/
@available(OSX 10.2, *)
let kDRISO9660VersionNumber: CFString!

/*!	@constant	kDRInvisible
	@abstract	The property key for the invisibility of the object.
	@discussion	Value is a CFBooleanRef.
*/
@available(OSX 10.2, *)
let kDRInvisible: CFString!

/*! @constant	kDRCreationDate
	@abstract	The property key for the item's creation date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRCreationDate: CFString!

/*! @constant	kDRContentModificationDate
	@abstract	The property key for the item's content modification date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRContentModificationDate: CFString!

/*! @constant	kDRAttributeModificationDate
	@abstract	The property key for the item's attribute modification date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRAttributeModificationDate: CFString!

/*! @constant	kDRAccessDate
	@abstract	The property key for the item's last-accessed date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRAccessDate: CFString!

/*! @constant	kDRBackupDate
	@abstract	The property key for the item's backup date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRBackupDate: CFString!

/*!	@constant	kDRRecordingDate
	@abstract	The property key for the item's recording date.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRRecordingDate: CFString!

/*!	@constant	kDREffectiveDate
	@abstract	The property key for the item's effective date, the date at which
				the contents become valid.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDREffectiveDate: CFString!

/*!	@constant	kDRExpirationDate
	@abstract	The property key for the item's expiration date, the date at which
				the contents become no longer valid.
	@discussion	Value is a CFDateRef.
*/
@available(OSX 10.2, *)
let kDRExpirationDate: CFString!

/*!	@constant	kDRPosixFileMode
	@abstract	The posix file mode.
	@discussion	Value is a CFNumber.
*/
@available(OSX 10.2, *)
let kDRPosixFileMode: CFString!

/*!	@constant	kDRPosixUID
	@abstract	The posix file UID.
	@discussion	Value is a CFNumber.
*/
@available(OSX 10.2, *)
let kDRPosixUID: CFString!

/*!	@constant	kDRPosixGID
	@abstract	The posix file GID.
	@discussion	Value is a CFNumber.
*/
@available(OSX 10.2, *)
let kDRPosixGID: CFString!

/*!	@constant	kDRHFSPlusTextEncodingHint
	@abstract	The property key for the item's text encoding hint (HFS+ only).
	@discussion	Value is a CFNumber.  This value is used by the MacOS to help when converting
				the natively UTF-16 filename into an 8-bit-per-character representation (such
				as MacRoman, Shift-JIS, or UTF8).  If not set, default behavior is to call
				@link //apple_ref/c/func/CFStringGetMostCompatibleMacStringEncoding CFStringGetMostCompatibleMacStringEncoding @/link(@link //apple_ref/c/func/CFStringGetSmallestEncoding CFStringGetSmallestEncoding @/link()).
*/
@available(OSX 10.2, *)
let kDRHFSPlusTextEncodingHint: CFString!

/*!	@constant	kDRHFSPlusCatalogNodeID
	@abstract	The property key for the item's catalog node ID (HFS+ only).
	@discussion	Value is a CFNumber.  Currently, this value if set is only a suggestion.
				The burn engine will attempt to use this node ID, but may use another value
				if it needs to resolve conflicts.  Default behavior is to allocate node IDs
				incrementally from @link //apple_ref/c/econst/kHFSFirstUserCatalogNodeID kHFSFirstUserCatalogNodeID @/link.
*/
@available(OSX 10.2, *)
let kDRHFSPlusCatalogNodeID: CFString!

/*!	@constant	kDRMacFileType
	@abstract	The property key for a file's type (MacOS only).
	@discussion	Value is a CFDataRef containing an OSType.
*/
@available(OSX 10.2, *)
let kDRMacFileType: CFString!

/*!	@constant	kDRMacFileCreator
	@abstract	The property key for a file's creator (MacOS only).
	@discussion	Value is a CFDataRef containing an OSType.
*/
@available(OSX 10.2, *)
let kDRMacFileCreator: CFString!

/*! @constant	kDRMacWindowBounds
	@abstract	The property key for the window bounds for a folder (MacOS only).
	@discussion	Value is a CFDataRef containing a Rect.
*/
@available(OSX 10.2, *)
let kDRMacWindowBounds: CFString!

/*!	@constant	kDRMacIconLocation
	@abstract	The property key for the item's icon location in its parent folder (MacOS only).
	@discussion	Value is a CFDataRef containing a Point.
*/
@available(OSX 10.2, *)
let kDRMacIconLocation: CFString!

/*!	@constant	kDRMacScrollPosition
	@abstract	The property key for the folder's scroll position (MacOS only).
	@discussion	Value is a CFDataRef containing a Point.
*/
@available(OSX 10.2, *)
let kDRMacScrollPosition: CFString!

/*!	@constant	kDRMacWindowView
	@abstract	The property key for the folder's window view (MacOS only).
	@discussion	Value is a CFNumber.
*/
@available(OSX 10.2, *)
let kDRMacWindowView: CFString!

/*!	@constant	kDRMacFinderFlags
	@abstract	The property key for the item's Finder flags (MacOS only).
	@discussion	Value is a CFNumber.  The "invisible" bit is ignored - use @link kDRInvisible kDRInvisible @/link instead.
*/
@available(OSX 10.2, *)
let kDRMacFinderFlags: CFString!

/*!	@constant	kDRMacExtendedFinderFlags
	@abstract	The property key for the item's extended Finder flags (MacOS only).
	@discussion	Value is a CFNumber.
*/
@available(OSX 10.2, *)
let kDRMacExtendedFinderFlags: CFString!

/*!	@constant	kDRMacFinderHideExtension
	@abstract	The property key for hiding the extension of the object.
	@discussion	A CFBooleanRef indicating whether the extension should be hidden in the Finder or not.
				The default is false and only applies to files.
*/
@available(OSX 10.5, *)
let kDRMacFinderHideExtension: CFString!

/*!	@const		kDRUDFWriteVersion
	@discussion	Optional key. This property key defines the version for the UDF
				structures written to disk. Values are definde in UDF Version types.
*/
@available(OSX 10.4, *)
let kDRUDFWriteVersion: CFString!

/*!	@const		kDRUDFVersion102
	@discussion	This value is used in @link kDRUDFWriteVersion kDRUDFWriteVersion @/link.
*/
@available(OSX 10.4, *)
let kDRUDFVersion102: CFString!

/*!	@const		kDRUDFVersion150
	@discussion	This value is used in @link kDRUDFWriteVersion kDRUDFWriteVersion @/link.
*/
@available(OSX 10.4, *)
let kDRUDFVersion150: CFString!

/*!
	@const		kDRUDFPrimaryVolumeDescriptorNumber
	@discussion	Optional key. This property key defines the primary volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFPrimaryVolumeDescriptorNumber: CFString!

/*!
	@const		kDRUDFVolumeSequenceNumber
	@discussion	Optional key. This property key defines the volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFVolumeSequenceNumber: CFString!

/*!
	@const		kDRUDFMaxVolumeSequenceNumber
	@discussion	Optional key. This property key defines the maximum volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFMaxVolumeSequenceNumber: CFString!

/*!
	@const		kDRUDFInterchangeLevel
	@discussion	Optional key. This property key defines the volume interchange level.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFInterchangeLevel: CFString!

/*!
	@const		kDRUDFMaxInterchangeLevel
	@discussion	Optional key. This property key defines the maximum volume interchange level number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFMaxInterchangeLevel: CFString!

/*!
	@const		kDRUDFApplicationIdentifierSuffix
	@discussion	Optional key.  A CFData object containing at most 8 bytes of data.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFApplicationIdentifierSuffix: CFString!

/*!
	@const		kDRUDFVolumeSetIdentifier
	@discussion	Optional key. The Volume Set Identifier for the UDF volume set. If this key
				is not present, @link kDRVolumeSet kDRVolumeSet @/link will be used if present.
				The Volume Set Identifier is composed of the Volume Set Timestamp, the 
				Implementation Use, and a the string contained in this property.
*/
@available(OSX 10.4, *)
let kDRUDFVolumeSetIdentifier: CFString!

/*!
	@const		kDRUDFVolumeSetTimestamp
	@discussion	Optional key. 
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFVolumeSetTimestamp: CFString!

/*!
	@const		kDRUDFVolumeSetImplementationUse
	@discussion	Optional key. A CFData object containing at most 8 bytes of data.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let kDRUDFVolumeSetImplementationUse: CFString!

/*!	@constant	kDRUDFRealTimeFile
	@abstract	Optional key. Specifies whether this file is to be marked as a UDF Real-Time file.
	@discussion	Value is a CFBooleanRef.
*/
@available(OSX 10.4, *)
let kDRUDFRealTimeFile: CFString!

/*!	@constant	kDRUDFExtendedFilePermissions
	@abstract	Optional key. Specifies the extended UDF file permissions of this file.
	@discussion	Value is a CFNumberRef.
				Bit 0: Change attributes for others (low order bit)
				Bit 1: Delete permissions for others
				Bit 2: Change attributes for group
				Bit 3: Delete permissions for group
				Bit 4: Change attributes for owner
				Bit 5: Delete permissions for owner
				Bit 6 & 7: Reserved
				If this key is not present, @link kDRPosixFileMode kDRPosixFileMode @/link will be used with the above bits
				being set to the corresponding write bit for owner, group, and others.
				If @link kDRPosixFileMode kDRPosixFileMode @/link is not present, the file mode from the file on disc will
				be used, again using the write bit for these permissions.
*/
@available(OSX 10.4, *)
let kDRUDFExtendedFilePermissions: CFString!

/*!
	@typedef DRFilesystemTrackRef
	A DRFilesystemTrack is just a special DRTrack.  The type ID of a DRFilesystemTrack
	is the same as the type ID of a DRTrack.
*/
typealias DRFilesystemTrack = DRTrackRef

/*!
	@typedef DRFilesystemTrackRef
	A DRFilesystemTrack is just a special DRTrack.  The type ID of a DRFilesystemTrack
	is the same as the type ID of a DRTrack.
*/
typealias DRFilesystemTrackRef = DRFilesystemTrack

/*!
	@function	DRFilesystemTrackCreate
	@abstract	Creates a filesystem track capable of burning a folder.
	@discussion	You can set the filesystem track's properties using the calls
				in DRCoreTrack.h - see also DRContentProperties.h for a list
				of settable track properties.
	@param		rootFolder		The root folder for the filesystem.
	@result		A DRFilesystemTrack capable of burning the track.
*/
@available(OSX 10.2, *)
func DRFilesystemTrackCreate(rootFolder: DRFolder!) -> Unmanaged<DRFilesystemTrack>!

/*!
	@function	DRFilesystemTrackEstimateOverhead
	@abstract	Provides an estimate of the approximate size that should be reserved
				for directory structures on a disc.  
	@discussion	This call provides a simple estimate of approximate overhead before any data
				has been specified, for situations where such information may be useful
				ahead of time.  One such example is in Finder burning, when a disk image
				is created that is sized to fit a newly-inserted disc.
				
				The result of this function is merely an estimate, and the actual number of
				blocks required may be lower or higher depending on the data to burn.  For
				more accurate results, wait until the burn is ready to start, create a
				DRFilesystemTrack, and then call @link //apple_ref/c/func/DRTrackEstimateLength DRTrackEstimateLength @/link  If size returned by that
				function is greater than the actual space available, then the burn will not
				succeed: ask the user to remove some data and try the burn again.
	@param		numBlocks		The number of blocks on the disc.
	@param		blockSize		The size of blocks on the disc (usually 2048).
	@param		fsMask			The requested filesystem mask, or @link kDRFilesystemMaskDefault kDRFilesystemMaskDefault @/link.
	@result		The number of blocks needed for filesystem overhead on a typical disc of this size.
*/
@available(OSX 10.3, *)
func DRFilesystemTrackEstimateOverhead(numBlocks: UInt64, _ blockSize: UInt32, _ fsMask: DRFilesystemMask) -> UInt64

/*!
	@typedef DRAudioTrackRef
	A DRAudioTrack is just a special DRTrack.  The type ID of a DRAudioTrack
	is the same as the type ID of a DRTrack.
*/
typealias DRAudioTrackRef = DRAudioTrack

/*!
	@typedef DRAudioTrackRef
	A DRAudioTrack is just a special DRTrack.  The type ID of a DRAudioTrack
	is the same as the type ID of a DRTrack.
*/
typealias DRAudioTrack = DRTrackRef

/*!
	@function	DRAudioTrackCreate
	@abstract	Creates an audio track capable of burning RedBook CD audio from a file.
	@discussion	This function creates a track object configured and primed to output RedBook audio
				CD data. It accepts any file readable by QuickTime and extracts the audio data
				(if any) from the file, translating that into the correct format for output
				to the disc.
	@param		audioFile	An FSRef referencing the file to write.
	@result		A DRAudioTrack capable of burning the track.
*/
@available(OSX 10.3, *)
func DRAudioTrackCreate(audioFile: UnsafePointer<FSRef>) -> Unmanaged<DRAudioTrack>!

/*!
	@function	DRAudioTrackCreateWithURL
	@abstract	Creates an audio track capable of burning RedBook CD audio from a file.
	@discussion	This function creates a track object configured and primed to output RedBook audio
				CD data. It accepts any file readable by QuickTime and extracts the audio data
				(if any) from the file, translating that into the correct format for output
				to the disc.
	@param		audioFileURL	A file CFURL referencing the on-disk file to write.
	@result		A DRAudioTrack capable of burning the track.
*/
@available(OSX 10.3, *)
func DRAudioTrackCreateWithURL(audioFileURL: CFURL!) -> Unmanaged<DRAudioTrack>!

/*!
	@typedef DRBurnRef
	A reference to DRBurn instances.
*/
class DRBurn {
}

/*!
	@typedef DRBurnRef
	A reference to DRBurn instances.
*/
typealias DRBurnRef = DRBurn

/*!
	@function	DRBurnGetTypeID
	@abstract	Obtains the type identifier of all DRBurn objects.
	@result		A Core Foundation type identifier.
*/
@available(OSX 10.2, *)
func DRBurnGetTypeID() -> CFTypeID

/*!
	@function	DRBurnCreate
	@abstract	Creates a new burn.
	@param		device		A reference to the device to burn to. If this parameter is not a 
							valid DRDevice, the behavior is undefined.
	@result		Returns reference to a new DRBurn instance.
*/
@available(OSX 10.2, *)
func DRBurnCreate(device: DRDevice!) -> Unmanaged<DRBurn>!

/*!
	@function	DRBurnWriteLayout
	@abstract	Writes the specified track layout to disc.
	@discussion	The object passed into this function describes the layout of the disc.
				There are three possible layout configurations:
				<ul>
				<li>For a multisession burn, the layout must be a valid CFArray object containing 
				 multiple CFArrays, each of which contains one or more valid DRTrack objects.</li>
				 <li>For a single-session, multitrack burn, the layout must be a valid CFArray object
				 containing one or more valid DRTrack objects.</li>
				 <li>For a single-session, single-track burn, the layout must be a valid
				 DRTrack object.</li>
				 </ul>
				 If either of these configurations are not met or the values contained in the
				 array(s) are not valid DRTrack objects, the behavior is undefined.
	@param		burn	The burn that should be started. If this parameter 
						is not a valid DRBurn object, the behavior is undefined. 
	@param		layout	An object describing the layout of the data on disc. The most common layout 
						consists of a CFArray object whose elements are DRTrack objects. The other layout
						options are a lone DRTrack object, and a CFArray of homogeneous CFArrays of 
						DRTracks. If  the layout is not one of these kinds, or if any of the objects is 
						not valid, this function's behavior is undefined.
	@result		An error code indicating if the burn could begin.
*/
@available(OSX 10.2, *)
func DRBurnWriteLayout(burn: DRBurn!, _ layout: AnyObject!) -> OSStatus

/*!
	@function	DRBurnAbort
	@abstract	Stops the burn.
	@discussion	Aborting a burn may make CD unusable depending on the amount of data
				written. If nothing has been written then the disc can be
				reused as a blank. If all the data has been written (and a
				verification is in progress, for example) then the disc will be usable
				and the data will be intact, unless the verification would have failed. 
				Otherwise, the disc will be unusable.
				
				If the burn has not started or has already completed, this function does nothing.
	@param		burn	The burn that should be stopped. If this parameter 
						does not contain a valid DRBurn object, the behavior is undefined. 
*/
@available(OSX 10.2, *)
func DRBurnAbort(burn: DRBurn!)

/*!
	@function	DRBurnCopyStatus
	@abstract	Obtains the progress and status of the burn.
	@discussion	Returns a CFDictionary object containing the progress and status of the burn. 
				This dictionary will contain the state, percentage complete, and any errors reported.
	@param		burn	The burn for which status is wanted. If this parameter is not a valid
				DRBurn object, the behavior is undefined.
	@result		Returns a reference to a CFDictionary object. The reference is implicitly retained 
				by the caller. This is the same dictionary sent to observers of the 
				@link kDRBurnStatusChangedNotification kDRBurnStatusChangedNotification @/link notification.
*/
@available(OSX 10.2, *)
func DRBurnCopyStatus(burn: DRBurn!) -> Unmanaged<CFDictionary>!

/*!
	@function	DRBurnGetDevice
	@abstract	Obtains a reference to the device associated with a burn.
	@param		burn	The burn for which to get the device reference. If this parameter 
						is not a valid DRBurn object, the behavior is undefined. 
	@result		Returns a reference of type @link DRDeviceRef DRDeviceRef @/link. The caller does not implicitly retain the reference
				and is not responsible for releasing it.
*/
@available(OSX 10.2, *)
func DRBurnGetDevice(burn: DRBurn!) -> Unmanaged<DRDevice>!

/*!
	@function	DRBurnSetProperties
	@abstract	Sets the properties of the burn.
	@param		burn		The burn for which to set the properties. If this parameter 
							is not a valid DRBurn object, the behavior is undefined. 
	@param		properties	A reference to a CFDictionary object. If this
							parameter does not reference a valid CFDictionary object the 
							behavior is undefined.
*/
@available(OSX 10.2, *)
func DRBurnSetProperties(burn: DRBurn!, _ properties: CFDictionary!)

/*!
	@function	DRBurnGetProperties
	@abstract	Obtains properties of the burn.
	@param		burn		The burn for which to get properties. If this parameter 
							is NULL the behavior is undefined.
	@result		Returns a reference to a CFDictionary object. The caller does not implicitly retain 
				the reference and is not responsible for releasing it.
*/
@available(OSX 10.2, *)
func DRBurnGetProperties(burn: DRBurn!) -> Unmanaged<CFDictionary>!

/*!
	@const			kDRBurnStatusChangedNotification
	@discussion		The notification sent when a DRBurn object has updated status.
*/
@available(OSX 10.2, *)
let kDRBurnStatusChangedNotification: CFString!

/*!
	@const          kDRBurnRequestedSpeedKey
	@abstract		The requested speed of the burn.
	@discussion 	This burn property key corresponds to a CFNumber object containing the speed at 
					which the burn should run, expressed as a floating point value in kilobytes per 
					second where 1 kilobyte = 1,000 bytes. If this key is not present, the requested 
					maximum burn speed defaults to @link kDRDeviceBurnSpeedMax kDRDeviceBurnSpeedMax @/link.
					
					The speed at which the burn will run depends on several factors including the 
					speed of the bus to which the drive is connected, the data rate capacity of the,  
					disc, the sustained rate at which data can be produced, and the limit your 
					application sets in the @link kDRMaxBurnSpeedKey kDRMaxBurnSpeedKey @/link track property keys. For example, a 16x 
					drive connected over USB 1.0 results in a maximum sustainable throughput to the 
					drive of just 2x due to the bandwidth limitation of the bus.
					
					Some faster drives have a minimum burn speed. In the case of a drive whose minimum 
					speed is 4x, for example, requesting a 1x burn will result in an actual burn speed 
					of 4x.
*/
@available(OSX 10.2, *)
let kDRBurnRequestedSpeedKey: CFString!

/*!
	@const		kDRBurnAppendableKey
	@abstract	Flag indicating whether or not the disc should remain appendable after the burn.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				if the disc should still be appendable after the burn.
				If this key is not present, the burn will default to a value 
				of <tt>false</tt> and the disc will be closed.
				
				Most CD formats do not allow unclosed discs, and many types of CD readers will 
				not work with discs that are left appendable. Don't change the value of this 
				key unless you understand the consequences.
*/
@available(OSX 10.2, *)
let kDRBurnAppendableKey: CFString!

/*!
	@const		kDRBurnOverwriteDiscKey
	@abstract	Flag indicating whether the disc should be appended to or overwritten.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				if the disc will be overwritten from block zero for the burn.
				If this key is not present, the burn will default to a value 
				of <tt>false</tt> and the disc will be appended.
				
				Overwriting requires the media either be blank or erasable,
				and is functionally equivalent to an erase followed by a burn.
*/
@available(OSX 10.3, *)
let kDRBurnOverwriteDiscKey: CFString!

/*!
	@const		kDRBurnVerifyDiscKey
	@abstract	Flag indicating whether the disc will be verified after the burn.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				if the disc will be verified after being burned.
				If this key is not present, the burn will default to a value 
				of <tt>true</tt> and the disc will be verified.
				
				Verification requires each DRTrack object to specify its
				verification method by way of the kDRVerificationTypeKey key in the track
				properties dictionary.  If none of the DRTrack objects in the burn have specified
				a verification method, verification will not occur.
*/
@available(OSX 10.2, *)
let kDRBurnVerifyDiscKey: CFString!

/*!
	@const		kDRBurnCompletionActionKey
	@abstract	The action to take upon burn completion, with a default of eject.
	@discussion	This burn property key corresponds to a CFString object containing one of the available completion
				actions for disc handling.
				
				If this key is not present, the burn will default to a value 
				of @link kDRBurnCompletionActionEject kDRBurnCompletionActionEject @/link and the disc will 
				be ejected.
*/
@available(OSX 10.2, *)
let kDRBurnCompletionActionKey: CFString!

/*!
	@const		kDRBurnUnderrunProtectionKey
	@abstract	Flag indicating whether burn underrun protection will be on or off.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				whether burn underrun protection will be on or off, for devices which
				support it.
				
				Burn underrun protection is on by default for drives which support it. 
				Clients do need to set this value except to explicitly disable underrun
				protection.
				
				If this key is not present, the burn will default to a value 
				of <tt>true</tt> and burn underrun protection will enabled, if the drive
				supports it.
*/
@available(OSX 10.2, *)
let kDRBurnUnderrunProtectionKey: CFString!

/*!
	@const		kDRBurnTestingKey
	@abstract	Flag indicating whether to perform a test or normal burn.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				whether the burn will be a test or not.
				
				If testing is set and your application calls the DRBurnWriteLayout 
				function, the burn process proceeds as if data would be written to 
				the disc--but the laser is not turned on to full power so the disc is not 
				modified.

                If this key is not present or the selected burning device does not support test burning,
		        the burn will default to a value of <tt>false</tt> and a normal burn will occur.
*/
@available(OSX 10.2, *)
let kDRBurnTestingKey: CFString!

/*!
	@const		kDRSynchronousBehaviorKey
	@abstract	Flag indicating whether to burn synchronously or asynchronously.
	@discussion	This burn property key corresponds to a CFBoolean object containing a flag indicating 
				if burn operations will behave synchronously.  If this key is
				not present, it will default to a value of <tt>false</tt> and
				burn operations will behave asynchronously.
				
				Synchronous operations do not post status notifications and
				do not return until they are completed.  Status can 
				be queried at any time using the @link DRBurnCopyStatus DRBurnCopyStatus @/link function, and will 
				remain valid even after the burn operation has finished.
*/
@available(OSX 10.2, *)
let kDRSynchronousBehaviorKey: CFString!

/*!
	@const		kDRBurnFailureActionKey
	@abstract	The action to take upon burn failure, with a default of eject.
	@discussion	This burn property key corresponds to a CFString object containing one of the available failure
				actions for disc handling.
				
				If this key is not present, the burn will default to a value 
				of @link kDRBurnFailureActionEject kDRBurnFailureActionEject @/link and the disc will 
				be ejected.
*/
@available(OSX 10.3, *)
let kDRBurnFailureActionKey: CFString!

/*!
	@const		kDRMediaCatalogNumberKey
	@abstract	The Media Catalog Number (MCN) to write to disc.
	@discussion	This burn property key corresponds to a CFData object containing exactly 13 bytes of data
				to be written to the disc as the Media Catalog Number (MCN).
				If this key is not present it will default to all zeroes,
				indicating that an MCN is not supplied.
				
				This value is the standard UPC/EAN product number, and should conform to the
				specifications of the UCC and EAN.  See <a href="http://www.ean-int.org">http://www.ean-int.org</a> and
				<a href="http://www.uc-council.org">http://www.uc-council.org</a> for more information.
*/
@available(OSX 10.3, *)
let kDRMediaCatalogNumberKey: CFString!

/*!
	@const		DRBurnDoubleLayerL0DataZoneBlocksKey
	@discussion	This burn property key corresponds to a CFNumber containing the number of blocks desired
				for the layer 0 data zone on a double layer writable disc.
				
				The size of the layer 0 data zone dictates where the transition point is from layer 0 to
				layer 1. If this key is present, the data zone size will be set prior to the start of the
				burn using the value for this key. If it is not present, the default layer 0 data zone will 
				be used (half the available blocks on an empty disc).
				
				The transition point can be specified two ways. If the value specified in this key is
				greater than 1.0, then it will designate an absolute block number for the transition point. In
				this case, the block number should be a multiple of 16 and at least 40000h per specification. If
				the value is less than 1.0, it will specify the percentage of the burn that should reside on
				layer 0. A typical value is 0.5, designating half the burn for each layer. A value of 0.0 or 1.0
				will not change the layer 0 transition point.
*/
@available(OSX 10.4, *)
let kDRBurnDoubleLayerL0DataZoneBlocksKey: CFString!

/*!
	@const		kDRBurnStrategyKey
	@abstract	One or more suggested burn strategies.
	@discussion	This burn property key corresponds to a CFString object, or to a CFArray object containing
				CFString objects, indicating the suggested burn strategy or strategies.  
				If this key is not present, the burn engine picks an appropriate burn 
				strategy automatically--so most clients do not need to specify a burn strategy.
				
				When more than one strategy is suggested, the burn engine attempts to
				use the first strategy in the list which is available.  A burn strategy
				will never be used if it cannot write the required data. For example, the 
				track-at-once (TAO) strategy cannot write CD-Text.
				
				This presence of this key alone is just a suggestion--if the burn
				engine cannot fulfill the request it will burn using whatever
				strategy is available.  To convert the suggestion into a requirement, add the
				@link kDRBurnStrategyIsRequiredKey kDRBurnStrategyIsRequiredKey @/link key with a value of <tt>true</tt>.
				
				Before using this key you should ensure that the device
				supports the strategy or strategies requested. Do this by checking the
				burn strategy keys in the device's write capabilities dictionary.
*/
@available(OSX 10.3, *)
let kDRBurnStrategyKey: CFString!

/*!
	@const		kDRBurnStrategyIsRequiredKey
	@abstract	Flag indicating whether to attempt to enforce the specified burn strategies.
	@discussion	This burn property key corresponds to a CFBoolean object indicating whether the burn
				strategy or strategies listed for the @link kDRBurnStrategyKey kDRBurnStrategyKey @/link key are
				the only ones allowed.  If this key is not present, the burn will 
				behave as though the key were <tt>false</tt>.
				
				If this key's value is set to <tt>true</tt> and the device does
				not support any of the suggested burn strategies, the burn
				will fail with a return value of @link //apple_ref/c/econst/kDRDeviceBurnStrategyNotAvailableErr kDRDeviceBurnStrategyNotAvailableErr @/link.
				
				If this key's value is set to <tt>false</tt> and the device does
				not support any of the suggested burn strategies, the engine
				will choose an alternate burn strategy. The burn strategy
				used will provide an equivalent disc.
*/
@available(OSX 10.3, *)
let kDRBurnStrategyIsRequiredKey: CFString!

/*!
	@const		kDRCDTextKey
	@discussion	This burn property key corresponds to a @link //apple_ref/c/tdef/DRCDTextBlockRef DRCDTextBlockRef @/link object, or to an array of @link //apple_ref/c/tdef/DRCDTextBlockRef DRCDTextBlockRef @/link
				objects, containing the CD-Text information for the disc.  If this key
				is not present, the burn will not write CD-Text.
				
				Before using this key you should ensure that the device
				supports CD-Text by checking the value of the @link //apple_ref/c/data/kDRDeviceCanWriteCDTextKey kDRDeviceCanWriteCDTextKey @/link
				key in the device's write capabilities dictionary.
				
				If this value is set to <tt>true</tt> and the device does
				not support writing CD-Text, the burn will fail with a value of
				@link //apple_ref/c/econst/kDRDeviceCantWriteCDTextErr kDRDeviceCantWriteCDTextErr @/link.  
*/
@available(OSX 10.4, *)
let kDRCDTextKey: CFString!

/*! 
	@const			kDRBurnCompletionActionEject
	@abstract		A CFString object indicating that the drive should eject the disc 
					when the burn completes.
*/
@available(OSX 10.2, *)
let kDRBurnCompletionActionEject: CFString!

/*! 
	@const			kDRBurnCompletionActionMount	
	@abstract		A CFString object indicating that the Disc Recording engine should mount the 
					disc on the desktop when the burn completes.
*/
@available(OSX 10.2, *)
let kDRBurnCompletionActionMount: CFString!

/*! 
	@const			kDRBurnFailureActionEject	
	@abstract		A CFString object indicating that the drive should eject the disc 
					if the burn fails.
*/
@available(OSX 10.3, *)
let kDRBurnFailureActionEject: CFString!

/*! 
	@const			kDRBurnFailureActionNone	
	@abstract		A CFString object indicating that the drive should do nothing with the disc 
					if the burn fails.
*/
@available(OSX 10.3, *)
let kDRBurnFailureActionNone: CFString!

/*!
	@const		kDRBurnStrategyCDTAO
	@abstract	A CFString object representing the track-at-once (TAO) burn strategy for CD.
*/
@available(OSX 10.3, *)
let kDRBurnStrategyCDTAO: CFString!

/*!
	@const		kDRBurnStrategyCDSAO
	@abstract	A CFString object representing the session-at-once (SAO) burn strategy for CD.
*/
@available(OSX 10.3, *)
let kDRBurnStrategyCDSAO: CFString!

/*!
	@const		kDRBurnStrategyDVDDAO
	@abstract	A CFString object representing the disc-at-once (DAO) burn strategy for DVD.
	
	@discussion	This strategy applies only to DVDs. It is not valid when burning to CD media.
*/
@available(OSX 10.3, *)
let kDRBurnStrategyDVDDAO: CFString!

/*!
	@const		kDRBurnStrategyBDDAO
	@abstract	A CFString object representing the disc-at-once (DAO) burn strategy for BD.
	
	@discussion	This strategy applies only to BDs (Blu-ray).
*/
@available(OSX 10.5, *)
let kDRBurnStrategyBDDAO: CFString!
var kDRCDTextEncodingISOLatin1Modified: Int { get }
var kDRCDTextEncodingASCII: Int { get }
var kDRCDTextGenreCodeUnknown: Int { get }
var kDRCDTextGenreCodeAdultContemporary: Int { get }
var kDRCDTextGenreCodeAlternativeRock: Int { get }
var kDRCDTextGenreCodeChildrens: Int { get }
var kDRCDTextGenreCodeClassical: Int { get }
var kDRCDTextGenreCodeContemporaryChristian: Int { get }
var kDRCDTextGenreCodeCountry: Int { get }
var kDRCDTextGenreCodeDance: Int { get }
var kDRCDTextGenreCodeEasyListening: Int { get }
var kDRCDTextGenreCodeErotic: Int { get }
var kDRCDTextGenreCodeFolk: Int { get }
var kDRCDTextGenreCodeGospel: Int { get }
var kDRCDTextGenreCodeHipHop: Int { get }
var kDRCDTextGenreCodeJazz: Int { get }
var kDRCDTextGenreCodeLatin: Int { get }
var kDRCDTextGenreCodeMusical: Int { get }
var kDRCDTextGenreCodeNewAge: Int { get }
var kDRCDTextGenreCodeOpera: Int { get }
var kDRCDTextGenreCodeOperetta: Int { get }
var kDRCDTextGenreCodePop: Int { get }
var kDRCDTextGenreCodeRap: Int { get }
var kDRCDTextGenreCodeReggae: Int { get }
var kDRCDTextGenreCodeRock: Int { get }
var kDRCDTextGenreCodeRhythmAndBlues: Int { get }
var kDRCDTextGenreCodeSoundEffects: Int { get }
var kDRCDTextGenreCodeSoundtrack: Int { get }
var kDRCDTextGenreCodeSpokenWord: Int { get }
var kDRCDTextGenreCodeWorldMusic: Int { get }

/*!
	@function	DRCDTextBlockCreateArrayFromPackList
	@abstract	Parses raw CD-Text data into DRCDTextBlock objects.
	@discussion	You can use this function to parse any data blob containing CD-Text PACKs,
				such as the result of DRDeviceReadCDText, or the data returned by the
				IOKit ioctl DKIOCCDREADTOC with format=5.  
				
				The CFData should be sized to fit the exact number of PACKs.  Each PACK
				occupies 18 bytes, and the 4-byte header from a READ TOC command may
				optionally be included.
	@param		packs		CFDataRef containing raw CD-Text PACKs.
	@result		A CFArray object containing DRCDTextBlock objects describing the information
				in the raw PACKs, or NULL if the data could not be parsed.  The caller
				is responsible for releasing this array.
*/
@available(OSX 10.4, *)
func DRCDTextBlockCreateArrayFromPackList(packs: CFData!) -> Unmanaged<CFArray>!

/*!
	@typedef 	DRCDTextBlockRef
	@abstract	A reference to DRCDTextBlock instances.
*/
class DRCDTextBlock {
}

/*!
	@typedef 	DRCDTextBlockRef
	@abstract	A reference to DRCDTextBlock instances.
*/
typealias DRCDTextBlockRef = DRCDTextBlock

/*!
	@function	DRCDTextBlockGetTypeID
	@abstract	Returns the type identifier for all DRCDTextBlock instances.
	@result		A Core Foundation type identifier.
*/
@available(OSX 10.4, *)
func DRCDTextBlockGetTypeID() -> CFTypeID

/*!
	@function	DRCDTextBlockCreate
	@abstract	Creates a CD-Text block with the provided contents.
	@param		language	A CFString describing an ISO 639 language code.  CD-Text allows
							the concept of an unknown language, which can be represented here
							by an empty string.
	@param		encoding	A CFStringEncoding value supported by the CD-Text format.
	@result		A new CD-Text block.
*/
@available(OSX 10.4, *)
func DRCDTextBlockCreate(language: CFString!, _ encoding: CFStringEncoding) -> Unmanaged<DRCDTextBlock>!

/*!
	@function	DRCDTextBlockGetProperties
	@abstract	Returns properties of the CD-Text block.
	@param		block		The CD-Text block to query. If this parameter is not a valid
							CD-Text block object reference, the behavior is undefined.
	@result		A CFDictionary object containing the properties 
				of the specified CD-Text block. The caller does not implicitly retain the reference,
				and is not responsible for releasing it.
*/
@available(OSX 10.4, *)
func DRCDTextBlockGetProperties(block: DRCDTextBlock!) -> Unmanaged<CFDictionary>!

/*!
	@function	DRCDTextBlockSetProperties
	@abstract	Sets the properties of the CD-Text block.
	@param		block		The CD-Text block to modify.
	@param		properties	A CFDictionary object containing the CD-Text block 
							properties. If this parameter is not a valid dictionary object
							reference, the behavior is undefined.
*/
@available(OSX 10.4, *)
func DRCDTextBlockSetProperties(block: DRCDTextBlock!, _ properties: CFDictionary!)

/*!
	@function	DRCDTextBlockGetTrackDictionaries
	@abstract	Returns the array of track dictionaries for a given block.
	@param		block		The CD-Text block to query.
	@result		A CFArray object containing immutable dictionaries of CFString objects, 
				each of which contains CD-Text information.
	@discussion	Each item in the array is a dictionary, which in turn holds key-value encoded
				information about a track or disc.  Array index 0 holds information about the
				disc, index 1 holds information about track 1, index 2 holds information about
				track 2, and so on.  The caller does not implicitly retain the reference,
				and is not responsible for releasing it.
*/
@available(OSX 10.4, *)
func DRCDTextBlockGetTrackDictionaries(block: DRCDTextBlock!) -> Unmanaged<CFArray>!

/*!
	@function	DRCDTextBlockSetTrackDictionaries
	@abstract	Sets an array of track dictionaries for a given CD-Text block.
	@param		block		The CD-Text block to modify.
	@param		array		A CFArray object containing immutable dictionaries of 
							CFString objects, each of which contains CD-Text information.
	@discussion	Each item in the array is a dictionary, which in turn holds key-value encoded
				information about the track or disc.  Array index 0 holds information about the
				disc, index 1 holds information about track 1, index 2 holds information about
				track 2, and so on.
				
				The incoming strings are automatically modified to conform to the character
				set specified in the language block. Calling the DRCDTextCopyTrackArray()
				function immediately after DRCDTextSetTrackArray() returns the modified values, which
				may not be the same as the ones you passed in but correspond to what
				will actually be used.
*/
@available(OSX 10.4, *)
func DRCDTextBlockSetTrackDictionaries(block: DRCDTextBlock!, _ array: CFArray!)

/*!
	@function	DRCDTextBlockGetValue
	@abstract	Returns one specific value for a track.
	@param		block		The CD-Text block to query.
	@param		trackIndex	The Track index, in the range 0-99, to query. If this value is greater than the number
							of tracks in the language block, the function returns NULL.
	@param		key			The specific key to look for.
	@discussion	This function looks up the value for the specified track index and key, and returns the
				value.  The returned value will be a CFString, CFData, or CFNumber object,
				or will be NULL if no key was found.  The caller does not implicitly retain the
				reference, and is not responsible for releasing it.
	@result		A Core Foundation type reference reference to a copy of the specified CD-Text block value.  
*/
@available(OSX 10.4, *)
func DRCDTextBlockGetValue(block: DRCDTextBlock!, _ trackIndex: CFIndex, _ key: CFString!) -> Unmanaged<AnyObject>!

/*!
	@function	DRCDTextBlockSetValue
	@abstract	Sets one specific value for a track.
	@param		block		The CD-Text block to modify.
	@param		trackIndex	The track index, in the range 0-99, to modify. If this value is greater than the number
							of tracks in the language block, the function creates new entries in
							the track array as needed.
	@param		key			A key indicating the value to set.
	@param		value		The new textual value.
	@discussion	The CD-Text value may be a CFString, CFData, or CFNumber object, but should correspond
				to the type defined in the description of the key.
				
				If the incoming value is a string, it is automatically modified to conform to
				the character set of the language block. Calling the  DRCDTextCopyValue() function
				immediately after DRCDTextSetValue() returns the modified value, which
				may not be the same as the one you passed in but corresponds to
				what will actually be used.
				
				Setting a value to NULL removes the key from the specified track dictionary.
*/
@available(OSX 10.4, *)
func DRCDTextBlockSetValue(block: DRCDTextBlock!, _ trackIndex: CFIndex, _ key: CFString!, _ value: AnyObject!)

/*!
	@function	DRCDTextBlockFlatten
	@abstract	Flattens the CD-Text block to determine whether any information will be truncated.
	@param		block		The CD-Text block to flatten.
	@discussion	When burning your CD-Text information to a CD, Disc Recording will automatically
				truncate some of the information you've specified if it does not fit. 
				
				The size limit for CD-Text is approximately 3K per block.  This limit
				is approximate because of overhead and because duplicate strings can sometimes be 
				combined.  The only way to determine the final byte size of a CD-Text block is to 
				ask Disc Recording to flatten it.  You can then determine whether 
				truncation will be needed.
				
				Disc Recording's truncation preserves the most important information and provides 
				the simplest user experience.  If you do not wish to use Disc Recording's automatic 
				truncation, it is your responsibility to ensure that you provide CD-Text block 
				content that fits.
				
				Following is a simple algorithm to avoid having your CD-Text data truncated:
				<ol>
				<li>Call DRCDTextBlockFlatten.
				<li>If the result is 0, no truncation is necessary. Stop.
				<li>Otherwise, truncation will occur -- edit or remove some data.
				<li>Repeat.
				</ol>
				
	@result		The number of bytes that will be truncated from the CD-Text block.  If this
				function returns 0, no truncation will occur.
*/
@available(OSX 10.4, *)
func DRCDTextBlockFlatten(block: DRCDTextBlock!) -> UInt32

/*!
	@const		kDRCDTextLanguageKey
	@discussion	This is a required property key for a CD-Text block.  Its value is a
				reference to a CFString object containing the ISO 639 language code
				describing the language for the text of the block.  CD-Text allows the
				concept of an unknown language, which is represented here by an empty
				string.
				
				You can change a block's language after creating the block.
*/
@available(OSX 10.4, *)
let kDRCDTextLanguageKey: CFString!

/*!
	@const		kDRCDTextCharacterCodeKey
	@discussion	This is a required property key for a CD-Text block.  Its value 
				is a reference to a CFNumber object containing the Red Book character set value
				for the text of the block.
				
				The value is not a CFStringEncoding or an NSStringEncoding data type and should 
				not be used as such.
				
				This property should remain constant once a block is created.  If you change
				it after creating a block, the results are undefined.
*/
@available(OSX 10.4, *)
let kDRCDTextCharacterCodeKey: CFString!

/*!
	@const		kDRCDTextCFStringEncodingKey
	@discussion	This is a required property key for a CD-Text block.  Its value
				is a reference to a CFNumber object containing the CFStringEncoding value for the 
				text of the block.
				
				This property should remain constant once a block is created.   If you change
				it after creating a block, the results are undefined.
*/
@available(OSX 10.4, *)
let kDRCDTextCFStringEncodingKey: CFString!

/*!
	@const		kDRCDTextCopyrightAssertedForSpecialMessagesKey
	@discussion	This is an optional property key for a CD-Text block.  Its value
				is a reference to a CFBoolean object that indicates whether copyright is asserted on the
				block text associated with the kDRCDTextSpecialMessageKey key.
				
				If this value is not specified, no copyright is asserted for the text.
*/
@available(OSX 10.4, *)
let kDRCDTextCopyrightAssertedForSpecialMessagesKey: CFString!

/*!
	@const		kDRCDTextCopyrightAssertedForNamesKey
	@discussion	This is an optional property key for a CD-Text block.  Its value
				is a reference to a CFBoolean object that indicates whether copyright is asserted on the
				names in the block, which include the values associated with the kDRCDTextPerformerKey, 
				kDRCDTextSongwriterKey, kDRCDTextComposerKey, and kDRCDTextArrangerKey keys.
				
				If this value is not specified, no copyright is asserted for these items.
*/
@available(OSX 10.4, *)
let kDRCDTextCopyrightAssertedForNamesKey: CFString!

/*!
	@const		kDRCDTextCopyrightAssertedForTitlesKey
	@discussion	This is an optional property key for a CD-Text block.  Its value
				is a reference to a CFBoolean object that indicates whether copyright is asserted on the
				disc or track title associated with the kDRCDTextTitleKey key.
				
				If this value is not specified, no copyright is asserted for this text.
*/
@available(OSX 10.4, *)
let kDRCDTextCopyrightAssertedForTitlesKey: CFString!

/*!
	@const		kDRCDTextTitleKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the title for a track or, if for the disc info block, 
				for the disc as a whole.
*/
@available(OSX 10.4, *)
let kDRCDTextTitleKey: CFString!

/*!
	@const		kDRCDTextPerformerKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the name of the performer for a track or, if for the disc info block, 
				for the disc as a whole.
*/
@available(OSX 10.4, *)
let kDRCDTextPerformerKey: CFString!

/*!
	@const		kDRCDTextSongwriterKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the name of the songwriter for a track or, if for the disc info block, 
				for the disc as a whole.
*/
@available(OSX 10.4, *)
let kDRCDTextSongwriterKey: CFString!

/*!
	@const		kDRCDTextComposerKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the name of the composer for a track or, if for the disc info block, 
				for the disc as a whole.
*/
@available(OSX 10.4, *)
let kDRCDTextComposerKey: CFString!

/*!
	@const		kDRCDTextArrangerKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the name of the arranger for a track or, if for the disc info block, 
				for the disc as a whole.
*/
@available(OSX 10.4, *)
let kDRCDTextArrangerKey: CFString!

/*!
	@const		kDRCDTextSpecialMessageKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				a text message that may be displayed to the user by some players.
*/
@available(OSX 10.4, *)
let kDRCDTextSpecialMessageKey: CFString!

/*!
	@const		kDRCDTextDiscIdentKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains disc 
				identifying information such as the catalog number and name of the record 
				company, point of sale code, year, and so on.  Each item shall be separated by a slash ("/").
				
				In compliance with the CD-Text specifications, this string is always encoded using
				the kDRCDTextEncodingISOLatin1Modified encoding, regardless of the block's encoding.
				
				This key is valid only for the disc as a whole, namely for array index 0. It is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let kDRCDTextDiscIdentKey: CFString!

/*!
	@const		kDRCDTextGenreKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains
				the name of the genre for the disc as a whole.

				In compliance with the CD-Text specifications, this string is always encoded using
				the kDRCDTextEncodingISOLatin1Modified encoding, regardless of the block's encoding.
				
				This key is valid only for the disc as a whole, namely for array index 0. It is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let kDRCDTextGenreKey: CFString!

/*!
	@const		kDRCDTextGenreCodeKey
	@discussion	A CD-Text block dictionary key whose value, a CFNumber object, contains
				the numeric code of the genre for the disc as a whole as listed in 
				the CD-Text Genres enumeration.
				
				This key is valid only for the disc as a whole, namely for array index 0. It is ignored
				when set in the dictionaries for tracks.
*/
@available(OSX 10.4, *)
let kDRCDTextGenreCodeKey: CFString!

/*!
	@const		kDRCDTextClosedKey
	@discussion	A CD-Text block dictionary key whose value, a CFString object, contains  
				arbitrary disc information. The text format is arbitrary and is up to the content 
				provider.  This information is private and players should not display it to the user 
				of the disc.
				
				In compliance with the CD-Text specifications, this string is always encoded using
				the kDRCDTextEncodingISOLatin1Modified encoding, regardless of the block's encoding.
*/
@available(OSX 10.4, *)
let kDRCDTextClosedKey: CFString!

/*!
	@const		kDRCDTextMCNISRCKey
	@discussion	A CD-Text block dictionary key whose value, a CFData object, contains either 
				13 bytes of Media Catalog Number (MCN, for the disc as a whole) or 12 bytes of 
				International Standard Recording Code (ISRC, for tracks).
				
				This information can also be specified in the burn and track properties.  CD-Text
				simply provides an alternative, possibly redundant, way to encode this information.
				If the MCN or ISRC data was specified in the properties for the burn or track, this
				value should be the same.  See the descriptions of kDRMediaCatalogNumberKey
				and kDRTrackISRCKey for more details on the precise format of the data.
*/
@available(OSX 10.4, *)
let kDRCDTextMCNISRCKey: CFString!

/*!
	@const		kDRCDTextTOCKey
	@discussion	A CD-Text block dictionary key whose value, a CFData object, contains
				table-of-contents information.
				
				This key is for output use only, when reading CD-Text from a disc.  
				It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let kDRCDTextTOCKey: CFString!

/*!
	@const		kDRCDTextTOC2Key
	@discussion	A CD-Text block dictionary key whose value, a CFData object, contains
				additional table-of-contents information.
				
				This key is for output use only, when reading CD-Text from a disc.  
				It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let kDRCDTextTOC2Key: CFString!

/*!
	@const		kDRCDTextSizeKey
	@discussion	A CD-Text block dictionary key whose value, a CFData object, contains
				information about the number of packs and languages associated with each block.
				
				This key is for output use only, when reading CD-Text from a disc.  
				It is ignored when specified in a burn.
*/
@available(OSX 10.4, *)
let kDRCDTextSizeKey: CFString!

/*!
	@typedef DRDeviceRef
	This is the type of a reference to DRDevices.
*/
class DRDevice {
}

/*!
	@typedef DRDeviceRef
	This is the type of a reference to DRDevices.
*/
typealias DRDeviceRef = DRDevice

/*!
	@function	DRDeviceGetTypeID
	@abstract	Returns the type identifier of all DRDevice instances.
*/
@available(OSX 10.2, *)
func DRDeviceGetTypeID() -> CFTypeID

/*!
	@function	DRCopyDeviceArray
	@abstract	Returns an array of all writable devices connected to the system.
	@discussion	FireWire, USB, and other technologies allow users to connect and disconnect
				devices while a computer is on. The device array returned by this function
				is a snapshot that is not guaranteed to stay current for the lifetime
				of a process.
				
				Since device connections are dynamic, a better option than this function is to 
				maintain a list of attached devices by listening for 
				@link kDRDeviceAppearedNotification kDRDeviceAppearedNotification @/link and @link kDRDeviceDisappearedNotification kDRDeviceDisappearedNotification @/link
				notifications. This function is most useful for initially populating a list of 
				devices.
	@result		A CFArray containing the devices attached to the system at the time the
				function is called.
*/
@available(OSX 10.2, *)
func DRCopyDeviceArray() -> Unmanaged<CFArray>!

/*!
	@function	DRDeviceCopyDeviceForBSDName
	@abstract	Returns the device reference corresponding to the BSD device name.
	@param		name	The /dev entry for the device (i.e., disk1)
	@result		A DRDevice reference for the device corresponding to the BSD name.
*/
@available(OSX 10.2, *)
func DRDeviceCopyDeviceForBSDName(name: CFString!) -> Unmanaged<DRDevice>!

/*!
	@function	DRDeviceCopyDeviceForIORegistryEntryPath
	@abstract	Returns the device reference corresponding to the IORegistry entry.
	@param		path	The IORegistry entry path corresponding to the device. 
	@result		A DRDevice reference for the device corresponding to the IORegistry entry path.
*/
@available(OSX 10.2, *)
func DRDeviceCopyDeviceForIORegistryEntryPath(path: CFString!) -> Unmanaged<DRDevice>!

/*!
	@function	DRDeviceIsValid
	@abstract	Determines whether the device is still attached and turned on.
	@discussion	Devices can be removed from a system while a client has a reference to them. This function 
				allows clients to check if a device reference they are holding is still usable.
	@param		device	The device reference to check.
	@result		A boolean indicating whether the device reference is still usable (TRUE)
				or not (FALSE).
*/
@available(OSX 10.2, *)
func DRDeviceIsValid(device: DRDevice!) -> Bool

/*!
	@function	DRDeviceOpenTray
	@abstract	Commands a device to open up its tray.
	@discussion	This function will open the tray of the device, if it has one, if and only if
				the device does not currently have mounted media. 
	@param		device		Device to open.
	@result		An error code indicating if the tray could be opened.
*/
@available(OSX 10.2, *)
func DRDeviceOpenTray(device: DRDevice!) -> OSStatus

/*!
	@function	DRDeviceCloseTray
	@abstract	Commands a device to close its tray.
	@discussion	This function will close the tray of the device, if it has one. 
	@param		device		Device to close.
	@result		An error code indicating if the tray could be closed.
*/
@available(OSX 10.2, *)
func DRDeviceCloseTray(device: DRDevice!) -> OSStatus

/*!
	@function	DRDeviceEjectMedia
	@abstract	Commands a device to unmount and eject media.
	@discussion	If media is present but cannot be unmounted, this function will fail and return
				an error.  If there is no media in the device, this function is
				equivalent to @link DRDeviceOpenTray DRDeviceOpenTray @/link.
	@param		device		Device to eject.
	@result		An error code indicating whether the media could be ejected.
*/
@available(OSX 10.2, *)
func DRDeviceEjectMedia(device: DRDevice!) -> OSStatus

/*!
	@function	DRDeviceAcquireMediaReservation
	@abstract	Indicates an interest in reserving blank media.
	@discussion	Blank media participates in a reservation system thats allows applications
				to express claims on blank media to other applications. Indicating an
				interest to reserve blank media does not guarantee acquisition--there may be
				other applications that have indicated an interest in the same media.
				
				Your application will receive a @link kDRDeviceStatusChangedNotification kDRDeviceStatusChangedNotification @/link 
				notification with a value of <tt>true</tt> for the @link kDRDeviceMediaIsReservedKey kDRDeviceMediaIsReservedKey @/link
				when a blank media reservation has been acquired.
				
				This function may be called multiple times. Each time it is called, a call to
				@link DRDeviceReleaseMediaReservation DRDeviceReleaseMediaReservation @/link must be made at a later time or the
				process will never fully rescind its interest in the blank media reservation.
	@param		device	The device reference for which to indicate an interest.
*/
@available(OSX 10.2, *)
func DRDeviceAcquireMediaReservation(device: DRDevice!)

/*!
	@function	DRDeviceReleaseMediaReservation
	@abstract	Rescind an interest in the blank media reservation.
	@discussion	If the process currently has a reservation, it will be released 
				and passed on to the next interested process.
	@param		device	The device reference for which to rescind an interest.
*/
@available(OSX 10.2, *)
func DRDeviceReleaseMediaReservation(device: DRDevice!)

/*!
	@function	DRDeviceAcquireExclusiveAccess
	@abstract	Attempts to acquire an exclusive access session with the device.
	@discussion	If this function succeeds, the device becomes unusable by any other process.
				All volumes mounted from media in the drive must be unmounted before
				exclusive access can be granted.  The Disc Recording engine attempts to
				unmount volumes for you, but this call will fail if some volumes could
				not be unmounted.
				
				Your application may call this function multiple times. Each time,
				a call to @link DRDeviceReleaseExclusiveAccess DRDeviceReleaseExclusiveAccess @/link must be made at a later time
				or the process will never release its exclusive access.
	@param		device	The device reference for which to acquire exclusive access.
	@result		An error code indicating whether exclusive access could be acquired.
*/
@available(OSX 10.2, *)
func DRDeviceAcquireExclusiveAccess(device: DRDevice!) -> OSStatus

/*!
	@function	DRDeviceReleaseExclusiveAccess
	@abstract	Release exclusive access to a device.
	@discussion	This function will release one request for exclusive access made by a process
				that called DRDeviceAcquireExclusiveAccess. A call to this function must be
				made for every call to @link DRDeviceAcquireExclusiveAccess DRDeviceAcquireExclusiveAccess @/link, otherwise the process
				will never release its exclusive access.
	@param		device	The device reference for which to release exclusive access.
*/
@available(OSX 10.2, *)
func DRDeviceReleaseExclusiveAccess(device: DRDevice!)

/*!
	@function	DRDeviceCopyInfo
	@abstract	Returns information about the device.
	@discussion	This function returns information that identifies the device and describes 
				its capabilites. The information includes the vendor's name, the product 
				identifier, whether the device can burn CDs or DVDs, and so on.
	@param		device		The device to query.
	@result		A CFDictionary object identifying the device and its capabilities.
*/
@available(OSX 10.2, *)
func DRDeviceCopyInfo(device: DRDevice!) -> Unmanaged<CFDictionary>!

/*!
	@function	DRDeviceCopyStatus
	@abstract	Returns the status of the device.
	@discussion	This function returns information about the status of the device. This
				information includes whether media is present or not, and, if present, 
				a descripton of the media including its size, kind, and so on. 
	@param		device		The device to query.
	@result		A CFDictionary object describing the status of the device and 
				any media it contains.
*/
@available(OSX 10.2, *)
func DRDeviceCopyStatus(device: DRDevice!) -> Unmanaged<CFDictionary>!

/*!
	@const kDRDeviceAppearedNotification
	@discussion	Notification sent when a device has become available.
				Because users can connect and disconnect FireWire, USB, and other devices while a
				computer is on, you should maintain your own list of attached devices and rely on notifications
				to keep the list current.
*/
@available(OSX 10.2, *)
let kDRDeviceAppearedNotification: CFString!

/*!
	@const kDRDeviceDisappearedNotification
	@discussion	Notification sent when a device is no longer available.
				Because users can connect and disconnect FireWire, USB, and other devices while a
				computer is on, you should maintain your own list of attached devices and rely on notifications
				to keep the list current.
 */
@available(OSX 10.2, *)
let kDRDeviceDisappearedNotification: CFString!

/*!
	@const kDRDeviceStatusChangedNotification
	@discussion	Notification sent when a device's status changes, usually because a disc
				has been inserted or removed.  The value of the info parameter for your notification 
				callback is equivalent to the dictionary object reference returned from a call to 
				@link DRDeviceCopyStatus DRDeviceCopyStatus @/link.
*/
@available(OSX 10.2, *)
let kDRDeviceStatusChangedNotification: CFString!

/*!
	@const kDRDeviceSupportLevelKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object indicating how well the engine supports the device.
*/
@available(OSX 10.2, *)
let kDRDeviceSupportLevelKey: CFString!

/*!
	@const kDRDeviceIORegistryEntryPathKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object containing a copy of the path to the device entry in the IORegistry.
*/
@available(OSX 10.2, *)
let kDRDeviceIORegistryEntryPathKey: CFString!

/*!
	@const kDRDeviceVendorNameKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object containing the vendor name extracted from the device.
*/
@available(OSX 10.2, *)
let kDRDeviceVendorNameKey: CFString!

/*!
	@const kDRDeviceProductNameKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object containing the product name extracted from the device.
*/
@available(OSX 10.2, *)
let kDRDeviceProductNameKey: CFString!

/*!
	@const kDRDeviceFirmwareRevisionKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object containing the firmware revision extracted from the device.
*/
@available(OSX 10.2, *)
let kDRDeviceFirmwareRevisionKey: CFString!

/*!
	@const kDRDevicePhysicalInterconnectKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object containing the type of the bus the device is on.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectKey: CFString!

/*!
	@const kDRDevicePhysicalInterconnectLocationKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this
				key is a reference to a CFString object containing the physical interconnect location.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectLocationKey: CFString!

/*!
	@const kDRDeviceWriteCapabilitiesKey
	@discussion	A key for the dictionary object  returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key is 
				a reference to a CFString object describing the capabilities the drive has for writing to different 
				media.
*/
@available(OSX 10.2, *)
let kDRDeviceWriteCapabilitiesKey: CFString!

/*!
	@const kDRDeviceLoadingMechanismCanEjectKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key
				is a reference to a CFBoolean object that indicates if the loading mechanism of the drive can eject.
*/
@available(OSX 10.3, *)
let kDRDeviceLoadingMechanismCanEjectKey: CFString!

/*!
	@const kDRDeviceLoadingMechanismCanInjectKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key
				is a reference to a CFBoolean object that indicates if the loading mechanism of the drive can inject.
*/
@available(OSX 10.3, *)
let kDRDeviceLoadingMechanismCanInjectKey: CFString!

/*!
	@const kDRDeviceLoadingMechanismCanOpenKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key
				is a reference to a CFBoolean object that indicates if the loading mechanism of the drive can open.
*/
@available(OSX 10.3, *)
let kDRDeviceLoadingMechanismCanOpenKey: CFString!

/*!
	@const kDRDeviceWriteBufferSizeKey
	@discussion	A key for the dictionary object returned by @link DRDeviceCopyInfo DRDeviceCopyInfo @/link. The value of this key
				is a reference to a CFNumber object containing the size of the write buffer of the device.
*/
@available(OSX 10.3, *)
let kDRDeviceWriteBufferSizeKey: CFString!

/*!
	@const kDRDeviceSupportLevelNone
	@discussion	One value for the @link kDRDeviceSupportLevelKey kDRDeviceSupportLevelKey @/link dictionary key. This value indicates
				the engine does not support the device and it cannot be used.
*/
@available(OSX 10.2, *)
let kDRDeviceSupportLevelNone: CFString!

/*!
	@const kDRDeviceSupportLevelUnsupported
	@discussion	One value for the @link kDRDeviceSupportLevelKey kDRDeviceSupportLevelKey @/link dictionary key. This value indicates
				the device is unsupported but the Disc Recording engine will try to use it anyway.
*/
@available(OSX 10.3, *)
let kDRDeviceSupportLevelUnsupported: CFString!

/*!
	@const kDRDeviceSupportLevelVendorSupported
	@discussion	One value for the @link kDRDeviceSupportLevelKey kDRDeviceSupportLevelKey @/link dictionary key. This value
				indicates the device vendor has provided support for the device.
*/
@available(OSX 10.2, *)
let kDRDeviceSupportLevelVendorSupported: CFString!

/*!
	@const kDRDeviceSupportLevelAppleSupported
	@discussion	One value for the @link kDRDeviceSupportLevelKey kDRDeviceSupportLevelKey @/link dictionary key. This value
				indicates that Apple has provided support for the device.
*/
@available(OSX 10.2, *)
let kDRDeviceSupportLevelAppleSupported: CFString!

/*!
	@const kDRDeviceSupportLevelAppleShipping
	@discussion	One value for the @link kDRDeviceSupportLevelKey kDRDeviceSupportLevelKey @/link dictionary key. This value indicates that Apple
				has provided support for the device and it has shipped in a machine made by Apple.
*/
@available(OSX 10.2, *)
let kDRDeviceSupportLevelAppleShipping: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectATAPI
	@discussion	One value for the @link kDRDevicePhysicalInterconnectKey kDRDevicePhysicalInterconnectKey @/link dictionary key. This value indicates that the
				device is connected by an ATAPI interface.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectATAPI: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectFibreChannel
	@discussion	One value for the @link kDRDevicePhysicalInterconnectKey kDRDevicePhysicalInterconnectKey @/link dictionary key. This value indicates that the
				device is connected by a Fibre Channel interface.
*/
@available(OSX 10.3, *)
let kDRDevicePhysicalInterconnectFibreChannel: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectFireWire
	@discussion	One value for the @link kDRDevicePhysicalInterconnectKey kDRDevicePhysicalInterconnectKey @/link dictionary key. This value indicates that the
				device is connected by a FireWire interface.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectFireWire: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectUSB
	@discussion	One value for the @link kDRDevicePhysicalInterconnectKey kDRDevicePhysicalInterconnectKey @/link dictionary key. This value indicates that the
				device is connected by a USB interface.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectUSB: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectSCSI
	@discussion	One value for the @link kDRDevicePhysicalInterconnectKey kDRDevicePhysicalInterconnectKey @/link dictionary key. This value indicates that the
				device is connected by a SCSI interface.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectSCSI: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectLocationInternal
	@discussion	One value for the @link kDRDevicePhysicalInterconnectLocationKey kDRDevicePhysicalInterconnectLocationKey @/link dictionary key.
				This value indicates that the device is on an internal bus.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectLocationInternal: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectLocationExternal
	@discussion	One value for the @link kDRDevicePhysicalInterconnectLocationKey kDRDevicePhysicalInterconnectLocationKey @/link dictionary key.
				This value indicates that the device is on an external bus.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectLocationExternal: CFString!

/*!
	@const	kDRDevicePhysicalInterconnectLocationUnknown
	@discussion	One value for the @link kDRDevicePhysicalInterconnectLocationKey kDRDevicePhysicalInterconnectLocationKey @/link dictionary key.
				This value indicates that the software cannot determine whether the device is
				on an internal or external bus.
*/
@available(OSX 10.2, *)
let kDRDevicePhysicalInterconnectLocationUnknown: CFString!

/*!
	@const kDRDeviceCanWriteKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to any type of media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteKey: CFString!

/*!
	@const kDRDeviceCanWriteCDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to some type of CD-based media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteCDKey: CFString!

/*!
	@const kDRDeviceCanWriteCDRKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to CD-R media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteCDRKey: CFString!

/*!
	@const kDRDeviceCanWriteCDRWKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to CD-RW media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteCDRWKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to some type of DVD-based media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteDVDKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDRKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD-R media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteDVDRKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDRDualLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD-R DL media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteDVDRDualLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDRWKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD-RW media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteDVDRWKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDRWDualLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD-RW DL media.
 */
@available(OSX 10.5, *)
let kDRDeviceCanWriteDVDRWDualLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDRAMKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD-RAM media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteDVDRAMKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDPlusRKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD+R media.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteDVDPlusRKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDPlusRDoubleLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD+R double
				layer media.
*/
@available(OSX 10.4, *)
let kDRDeviceCanWriteDVDPlusRDoubleLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDPlusRWKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD+RW media.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteDVDPlusRWKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDPlusRWDoubleLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to DVD+RW double layer media.
 */
@available(OSX 10.5, *)
let kDRDeviceCanWriteDVDPlusRWDoubleLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteBDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to some type of BD-based (Blu-ray) media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteBDKey: CFString!

/*!
	@const kDRDeviceCanWriteBDRKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to BD-R media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteBDRKey: CFString!

/*!
	@const kDRDeviceCanWriteBDREKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to BD-RE media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteBDREKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to some type of HD DVD-based media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDRKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to HD DVD-R media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDRKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDRDualLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to HD DVD-R DL media.
 */
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDRDualLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDRAMKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to HD DVD-RAM media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDRAMKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDRWKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to HD DVD-RW media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDRWKey: CFString!

/*!
	@const kDRDeviceCanWriteHDDVDRWDualLayerKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write to HD DVD-RW DL media.
*/
@available(OSX 10.5, *)
let kDRDeviceCanWriteHDDVDRWDualLayerKey: CFString!

/*!
	@const kDRDeviceCanWriteCDTextKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write CD-Text information.
*/
@available(OSX 10.2, *)
let kDRDeviceCanWriteCDTextKey: CFString!

/*!
	@const kDRDeviceCanWriteIndexPointsKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write index points to CD media.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteIndexPointsKey: CFString!

/*!
	@const kDRDeviceCanWriteISRCKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can write International
				Standard Recording Code (ISRC) to CD media.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteISRCKey: CFString!

/*!
	@const kDRDeviceCanWriteCDTAOKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device supports a track-at-once (TAO)
				burn strategy for CD.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteCDTAOKey: CFString!

/*!
	@const kDRDeviceCanWriteCDSAOKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device supports a session-at-once (SAO)
				burn strategy for CD.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteCDSAOKey: CFString!

/*!
	@const kDRDeviceCanWriteCDRawKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device supports a raw mode 
				burn strategy for CD.

				A raw mode burn writes client-defined lead-in, program area, and lead-out data to CD media 
				in a single pass. It supports options such as single-pass writing of a multisession 
				disc. The Multi-Media Command Set (MMC) standard name for this strategy is "raw" but it 
				is often called disc-at-once (DAO).
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteCDRawKey: CFString!

/*!
	@const kDRDeviceCanWriteDVDDAOKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device supports a disc-at-once (DAO)
				burn strategy on DVD media. This burn strategy does not apply to CD media.
*/
@available(OSX 10.3, *)
let kDRDeviceCanWriteDVDDAOKey: CFString!

/*!
	@const kDRDeviceCanTestWriteCDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can perform a test write to CD media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanTestWriteCDKey: CFString!

/*!
	@const kDRDeviceCanTestWriteDVDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device can perform a test write to DVD media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanTestWriteDVDKey: CFString!

/*!
	@const kDRDeviceCanUnderrunProtectCDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device has burn underrun protection when
				writing to CD media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanUnderrunProtectCDKey: CFString!

/*!
	@const kDRDeviceCanUnderrunProtectDVDKey
	@discussion	A key for the @link kDRDeviceWriteCapabilitiesKey kDRDeviceWriteCapabilitiesKey @/link dictionary in the device info dictionary.  The value
				is a reference to a CFBoolean object indicating whether the device has burn underrun protection when
				writing to DVD media.
*/
@available(OSX 10.2, *)
let kDRDeviceCanUnderrunProtectDVDKey: CFString!

/*!
	@const kDRDeviceIsBusyKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFBoolean object indicating if the device is busy.
*/
@available(OSX 10.2, *)
let kDRDeviceIsBusyKey: CFString!

/*!
	@const kDRDeviceIsTrayOpenKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFBoolean object indicating if the device's tray is open.
*/
@available(OSX 10.2, *)
let kDRDeviceIsTrayOpenKey: CFString!

/*!
	@const kDRDeviceMaximumWriteSpeedKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFNumber object containing the maximum write speed in KB/s, where 1KB = 1000 bytes.
*/
@available(OSX 10.2, *)
let kDRDeviceMaximumWriteSpeedKey: CFString!

/*!
	@const kDRDeviceCurrentWriteSpeedKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFNumber object containing the current write speed in KB/s, where 1KB = 1000 bytes.
*/
@available(OSX 10.2, *)
let kDRDeviceCurrentWriteSpeedKey: CFString!

/*!
	@const kDRDeviceMediaStateKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFString object containing information about the state of the media.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaStateKey: CFString!

/*!
	@constant kDRDeviceMediaInfoKey
	@discussion A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFDictionary object containing information about the media in the drive.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaInfoKey: CFString!

/*!
	@const kDRDeviceBurnSpeedsKey
	@discussion	A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key 
				is a reference to a CFArray object containing the available burn speeds. This key may not
				be accessible if there is no disc in the drive.
*/
@available(OSX 10.2, *)
let kDRDeviceBurnSpeedsKey: CFString!

/*!
	@constant kDRDeviceTrackRefsKey
	@discussion A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFArray object containing a list of DRTrack objects describing any tracks that
				are already on the disc.
*/
@available(OSX 10.3, *)
let kDRDeviceTrackRefsKey: CFString!

/*!
	@constant kDRDeviceTrackInfoKey
	@discussion A key for the dictionary returned by @link DRDeviceCopyStatus DRDeviceCopyStatus @/link. The value of this key is 
				a reference to a CFDictionary object containing dictionaries describing on-disc tracks.  DRTrackRef
				dictionaries from the kDRDeviceTrackRefsKey constant are used as keys into this dictionary.
*/
@available(OSX 10.3, *)
let kDRDeviceTrackInfoKey: CFString!

/*!
	@const	kDRDeviceMediaStateMediaPresent
	@discussion	One value for the @link kDRDeviceMediaStateKey kDRDeviceMediaStateKey @/link dictionary key. This value indicates that some
				kind of media is present in the drive.  Check the value of the kDRDeviceMediaInfoKey dictionary key
				for specific media information.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaStateMediaPresent: CFString!

/*!
	@const	kDRDeviceMediaStateInTransition
	@discussion	One value for the @link kDRDeviceMediaStateKey kDRDeviceMediaStateKey @/link dictionary key. This value indicates that the
				media is in transition, typically spinning up after being inserted or
				spinning down in preparation for ejecting.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaStateInTransition: CFString!

/*!
	@const	kDRDeviceMediaStateNone
	@discussion	One value for the @link kDRDeviceMediaStateKey kDRDeviceMediaStateKey @/link dictionary key. This value indicates that there is
				no disc present in the drive.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaStateNone: CFString!

/*!
	@const kDRDeviceMediaBSDNameKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key 
				is a reference to a CFString object containing the BSD name assigned to the device.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaBSDNameKey: CFString!

/*!
	@const kDRDeviceMediaIsBlankKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFBoolean
				object indicating whether the media is blank and has no data on it.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaIsBlankKey: CFString!

/*!
	@const kDRDeviceMediaIsAppendableKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFBoolean
				object indicating whether the disc is appendable -- in other words, whether new sessions can be written.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaIsAppendableKey: CFString!

/*!
	@const kDRDeviceMediaIsOverwritableKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFBoolean
				object indicating whether the disc is writable -- in other words, whether it can be fully (re)written.
*/
@available(OSX 10.3, *)
let kDRDeviceMediaIsOverwritableKey: CFString!

/*!
	@const kDRDeviceMediaIsErasableKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key 
				is a reference to a CFBoolean object indicating whether the disc can be erased.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaIsErasableKey: CFString!

/*!
	@const kDRDeviceMediaIsReservedKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFBoolean
				object indicating whether the disc is reserved for exclusive use by the current process.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaIsReservedKey: CFString!

/*!
	@const kDRDeviceMediaBlocksOverwritableKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the number of writable blocks on the disc.
*/
@available(OSX 10.3, *)
let kDRDeviceMediaBlocksOverwritableKey: CFString!

/*!
	@const kDRDeviceMediaBlocksFreeKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the number of free blocks on the disc.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaBlocksFreeKey: CFString!

/*!
	@const kDRDeviceMediaBlocksUsedKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the number of blocks used by data on the disc.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaBlocksUsedKey: CFString!

/*!
	@const kDRDeviceMediaDoubleLayerL0DataZoneBlocksKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the number of blocks on layer 0 of a double layer burnable disc.
*/
@available(OSX 10.4, *)
let kDRDeviceMediaDoubleLayerL0DataZoneBlocksKey: CFString!

/*!
	@const kDRDeviceMediaTrackCountKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the total number of tracks on the disc in all sessions.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTrackCountKey: CFString!

/*!
	@const kDRDeviceMediaSessionCountKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key is a reference to a CFNumber
				object containing the number of sessions on the disc.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaSessionCountKey: CFString!

/*!
	@const kDRDeviceMediaClassKey
	@discussion	A key for the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key 
				is a reference to a CFString object indicating the class of media present in the drive.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaClassKey: CFString!

/*!
	@const kDRDeviceMediaTypeKey
	@discussion	A key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary. The value of this key 
				is a reference to a CFString object indicating the type of media present in the drive.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeKey: CFString!

/*!
	@const	kDRDeviceMediaClassCD
	@discussion	One value for the @link kDRDeviceMediaClassKey kDRDeviceMediaClassKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is CD-based.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaClassCD: CFString!

/*!
	@const	kDRDeviceMediaClassDVD
	@discussion	One value for the @link kDRDeviceMediaClassKey kDRDeviceMediaClassKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is DVD-based.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaClassDVD: CFString!

/*!
	@const	kDRDeviceMediaClassBD
	@discussion	One value for the @link kDRDeviceMediaClassKey kDRDeviceMediaClassKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is BD-based (Blu-ray).
*/
@available(OSX 10.5, *)
let kDRDeviceMediaClassBD: CFString!

/*!
	@const	kDRDeviceMediaClassHDDVD
	@discussion	One value for the @link kDRDeviceMediaClassKey kDRDeviceMediaClassKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is HD DVD-based.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaClassHDDVD: CFString!

/*!
	@const	kDRDeviceMediaClassUnknown
	@discussion	One value for the @link kDRDeviceMediaClassKey kDRDeviceMediaClassKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the media class is unknown.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaClassUnknown: CFString!

/*!
	@const	kDRDeviceMediaTypeCDROM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a CD-ROM.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeCDROM: CFString!

/*!
	@const	kDRDeviceMediaTypeCDR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a CD-R.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeCDR: CFString!

/*!
	@const	kDRDeviceMediaTypeCDRW
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a CD-RW.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeCDRW: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDROM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-ROM.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeDVDROM: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDRAM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-RAM.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeDVDRAM: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-R.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeDVDR: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDRDualLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-R DL.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeDVDRDualLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDRW
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-RW.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeDVDRW: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDRWDualLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD-RW DL.
 */
@available(OSX 10.5, *)
let kDRDeviceMediaTypeDVDRWDualLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDPlusR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD+R.
*/
@available(OSX 10.3, *)
let kDRDeviceMediaTypeDVDPlusR: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDPlusRDoubleLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the media info dictionary.
				This value indicates that the disc is a DVD+R Double Layer.
*/
@available(OSX 10.4, *)
let kDRDeviceMediaTypeDVDPlusRDoubleLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDPlusRW
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a DVD+RW.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeDVDPlusRW: CFString!

/*!
	@const	kDRDeviceMediaTypeDVDPlusRWDoubleLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the media info dictionary.
			This value indicates that the disc is a DVD+RW Double Layer.
 */
@available(OSX 10.5, *)
let kDRDeviceMediaTypeDVDPlusRWDoubleLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeBDR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a BD-R.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeBDR: CFString!

/*!
	@const	kDRDeviceMediaTypeBDR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a BD-RE.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeBDRE: CFString!

/*!
	@const	kDRDeviceMediaTypeBDROM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a BD-ROM.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeBDROM: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDROM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-ROM.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDROM: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDR
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-R.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDR: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDRDualLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-R DL.
 */
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDRDualLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDRAM
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-RAM.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDRAM: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDRW
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-RW.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDRW: CFString!

/*!
	@const	kDRDeviceMediaTypeHDDVDRWDualLayer
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc is a HD DVD-RW DL.
*/
@available(OSX 10.5, *)
let kDRDeviceMediaTypeHDDVDRWDualLayer: CFString!

/*!
	@const	kDRDeviceMediaTypeUnknown
	@discussion	One value for the @link kDRDeviceMediaTypeKey kDRDeviceMediaTypeKey @/link dictionary key in the @link kDRDeviceMediaInfoKey kDRDeviceMediaInfoKey @/link dictionary.
				This value indicates that the disc type is unknown.
*/
@available(OSX 10.2, *)
let kDRDeviceMediaTypeUnknown: CFString!

/*!
	@const	kDRDeviceBurnSpeedCD1x
	@discussion			A predefined value for the minimum CD burn speed of 176.4 kilobytes 
						per second, where 1 kilobyte = 1,000 bytes.
*/
@available(OSX 10.2, *)
let kDRDeviceBurnSpeedCD1x: Float

/*!
	@const	kDRDeviceBurnSpeedDVD1x
	@discussion			A predefined value for the minimum DVD burn speed of 1,385.0 kilobytes 
						per second, where 1 kilobyte = 1,000 bytes.
*/
@available(OSX 10.2, *)
let kDRDeviceBurnSpeedDVD1x: Float

/*!
	@const	kDRDeviceBurnSpeedBD1x
	@discussion			A predefined value for the minimum BD burn speed of 4,496.0 kilobytes 
						per second, where 1 kilobyte = 1,000 bytes.
*/
@available(OSX 10.5, *)
let kDRDeviceBurnSpeedBD1x: Float

/*!
	@const	kDRDeviceBurnSpeedHDDVD1x
	@discussion			A predefined value for the minimum HD DVD burn speed of 4,496.0 kilobytes 
 per second, where 1 kilobyte = 1,000 bytes.
 */
@available(OSX 10.5, *)
let kDRDeviceBurnSpeedHDDVD1x: Float

/*!
	@const	kDRDeviceBurnSpeedMax
	@discussion			A predefined value used to request the maximum speed at which a device can 
						perform a burn. On receiving a burn request of kDRDeviceBurnSpeedMax, a drive
						selects the highest usable speed given its capabilities, the bus bandwidth, and
						the capabilities of the recordable disc.
*/
@available(OSX 10.2, *)
let kDRDeviceBurnSpeedMax: Float

/*!
	@function	DRDeviceKPSForXFactor
	@abstract	Converts from media type specific X-factors to K/s values.
	@discussion	Since X-factors are media type specific and DiscRecording uses K/s values to
				specify burn speeds, this function can be used to easily and accurately convert
				from raw K/s values to X-factors when appropriate.
	@param		deviceOrMediaType	Either a DRDeviceRef for a device containing media, or a
									CFStringRef corresponding to a media type.
				xfactor		A media type specific X-factor, corresponding to the media type identified
							by the deviceOrMediaType param, that will be converted into K/s.
	@result		The media type specific X-factor converted to K/s, or 0 if the X-factor could not
				be converted to a K/s value.
*/
@available(OSX 10.5, *)
func DRDeviceKPSForXFactor(deviceOrMediaType: DRType!, _ xfactor: Float) -> Float

/*!
	@function	DRDeviceXFactorForKPS
	@abstract	Converts from K/s values to media type specific X-factors.
	@discussion	Since DiscRecording uses K/s values to specify burn speeds and X-factors are
				media type specific, this function can be used to easily and accurately convert
				from X-factors to raw K/s values when appropriate.
	@param		deviceOrMediaType	Either a DRDeviceRef for a device containing media, or a
									CFStringRef corresponding to a media type.
				kps		The K/s value to be converted into an X-factor, corresponding to the
						media type identified by the deviceOrMediaType param.
	@result		The K/s value converted to media type specific X-factor, or 0 if the K/s value
				could not be converted to a media type specfic X-factor.
*/
@available(OSX 10.5, *)
func DRDeviceXFactorForKPS(deviceOrMediaType: DRType!, _ kps: Float) -> Float

/*!
	@typedef DREraseRef
	This is the type of a reference to DRErases.
*/
class DRErase {
}

/*!
	@typedef DREraseRef
	This is the type of a reference to DRErases.
*/
typealias DREraseRef = DRErase

/*!
	@function	DREraseGetTypeID
	@abstract	Obtains the type identifier of all DRErase instances.
*/
@available(OSX 10.2, *)
func DREraseGetTypeID() -> CFTypeID

/*!
	@function	DREraseCreate
	@abstract	Creates a new eraser.
	@param		device		A reference to the device to erase. If this parameter is not a 
							valid DRDevice, the behavior is undefined.
	@result		Returns a reference to a new DRErase opaque type.
*/
@available(OSX 10.2, *)
func DREraseCreate(device: DRDevice!) -> Unmanaged<DRErase>!

/*!
	@function	DREraseStart
	@abstract	Begin the erase process.
	@param		erase		The eraser object that should be started. If this parameter 
							is not a valid DRErase oject, the behavior is undefined.
	@result		An error code indicating if the erase could be started.
*/
@available(OSX 10.2, *)
func DREraseStart(erase: DRErase!) -> OSStatus

/*!
	@function	DREraseCopyStatus
	@abstract	Obtains the status of the erase process.
	@discussion	This function obtains a reference to a CFDictionary object containing the status of the erase process, including the 
				percentage complete and any errors reported. The reference is implicitly retained 
				by the caller. This is the same dictionary sent to observers of @link kDREraseStatusChangedNotification kDREraseStatusChangedNotification @/link.
	@param		erase		The eraser object that status is wanted on. 
	@result		Returns a reference to a CFDictionary object. 
*/
@available(OSX 10.2, *)
func DREraseCopyStatus(erase: DRErase!) -> Unmanaged<CFDictionary>!

/*!
	@const kDREraseStatusChangedNotification
	@discussion	The notification sent when a DRErase object has updated status.
*/
@available(OSX 10.2, *)
let kDREraseStatusChangedNotification: CFString!

/*!
	@function	DREraseGetDevice
	@abstract	Obtains a reference to the device containing the disc to erase.
	@param		erase	The eraser containing a reference to the device. If this parameter 
						is not a valid DRErase object, the behavior is undefined. 
	@result		Returns reference to the device containing the disc to erase.
*/
@available(OSX 10.2, *)
func DREraseGetDevice(erase: DRErase!) -> Unmanaged<DRDevice>!

/*!
	@function	DREraseSetProperties
	@abstract	Sets the properties of the erase process.
	@param		erase		The erase process to set the properties of. If this parameter 
							is not a valid DRErase object, the behavior is undefined. 
	@param		properties	A CFDictionary object containing the erase properties. If this
							parameter is not a valid CFDictionary object the behavior is undefined.
*/
@available(OSX 10.2, *)
func DREraseSetProperties(erase: DRErase!, _ properties: CFDictionary!)

/*!
	@function	DREraseGetProperties
	@abstract	Returns properties of the erase.
	@param		erase		The erase process to get the properties of. If this parameter 
							is not a valid DRErase object, the behavior is undefined. 
	@result		Returns a CFDictionary object containing the erase properties.
*/
@available(OSX 10.2, *)
func DREraseGetProperties(erase: DRErase!) -> Unmanaged<CFDictionary>!

/*!
	@const kDREraseTypeKey
	@discussion	This key points to a CFString object describing the type of erase to be performed.
				If this key is not present, a @link kDREraseTypeQuick kDREraseTypeQuick @/link erase type is assumed.
*/
@available(OSX 10.2, *)
let kDREraseTypeKey: CFString!

/*!
	@const kDREraseTypeQuick
	@discussion	A CFString object indicating the erase operation should do the minimal amount of
				work to make the disc appear blank. This operation typically takes only a
				minute or two.
*/
@available(OSX 10.2, *)
let kDREraseTypeQuick: CFString!

/*!
	@const kDREraseTypeComplete
	@discussion	A CFString object indicating the erase operation should erase every byte on the
				disc. This operation is slow, taking on the order of 30 minutes.
*/
@available(OSX 10.2, *)
let kDREraseTypeComplete: CFString!
var kDRFirstErr: UInt32 { get }
var kDRInternalErr: UInt32 { get }
var kDRDeviceAccessErr: UInt32 { get }
var kDRDeviceBusyErr: UInt32 { get }
var kDRDeviceCommunicationErr: UInt32 { get }
var kDRDeviceInvalidErr: UInt32 { get }
var kDRDeviceNotReadyErr: UInt32 { get }
var kDRDeviceNotSupportedErr: UInt32 { get }
var kDRMediaBusyErr: UInt32 { get }
var kDRMediaNotPresentErr: UInt32 { get }
var kDRMediaNotWritableErr: UInt32 { get }
var kDRMediaNotSupportedErr: UInt32 { get }
var kDRMediaNotBlankErr: UInt32 { get }
var kDRMediaNotErasableErr: UInt32 { get }
var kDRMediaInvalidErr: UInt32 { get }
var kDRBurnUnderrunErr: UInt32 { get }
var kDRBurnNotAllowedErr: UInt32 { get }
var kDRDataProductionErr: UInt32 { get }
var kDRVerificationFailedErr: UInt32 { get }
var kDRTooManyTracksForDVDErr: UInt32 { get }
var kDRBadLayoutErr: UInt32 { get }
var kDRUserCanceledErr: UInt32 { get }
var kDRFunctionNotSupportedErr: UInt32 { get }
var kDRSpeedTestAlreadyRunningErr: UInt32 { get }
var kDRInvalidIndexPointsErr: UInt32 { get }
var kDRDoubleLayerL0DataZoneBlocksParamErr: UInt32 { get }
var kDRDoubleLayerL0AlreadySpecifiedErr: UInt32 { get }
var kDRAudioFileNotSupportedErr: UInt32 { get }
var kDRBurnPowerCalibrationErr: UInt32 { get }
var kDRBurnMediaWriteFailureErr: UInt32 { get }
var kDRTrackReusedErr: UInt32 { get }
var kDRFileModifiedDuringBurnErr: UInt32 { get }
var kDRFileLocationConflictErr: UInt32 { get }
var kDRTooManyNameConflictsErr: UInt32 { get }
var kDRFilesystemsNotSupportedErr: UInt32 { get }
var kDRDeviceBurnStrategyNotAvailableErr: UInt32 { get }
var kDRDeviceCantWriteCDTextErr: UInt32 { get }
var kDRDeviceCantWriteIndexPointsErr: UInt32 { get }
var kDRDeviceCantWriteISRCErr: UInt32 { get }
var kDRDeviceCantWriteSCMSErr: UInt32 { get }
var kDRDevicePreGapLengthNotValidErr: UInt32 { get }

/*!
	@function 	DRCopyLocalizedStringForDiscRecordingError
	@abstract 	Maps an operating system error code to a localized string.
	@discussion If a localized string cannot be found, this function returns the error code 
				as a string.
	@param 		osError 	The OS error code.
	@result 	A value of type CFStringRef which contains the localized string. 
				This reference is implicitly retained by the caller. 
*/
func DRCopyLocalizedStringForDiscRecordingError(osError: OSStatus) -> Unmanaged<CFString>!

/*!
	@function 	DRCopyLocalizedStringForSenseCode
	@abstract 	Maps a SCSI sense code to a localized string.
	@discussion This function takes a sense code and finds the corresponding localized string. 
				If a localized string cannot be found, it returns the sense code as a string.
	@param 		senseCode 	A sense code generated by a device conforming to the SCSI standard.
	@result 	A value of type CFStringRef containing the localized string. 
				This reference is implicitly retained by the caller. 
*/
func DRCopyLocalizedStringForSenseCode(senseCode: UInt8) -> Unmanaged<CFString>!

/*!
	@function 	DRCopyLocalizedStringForAdditionalSense
	@abstract 	Maps the Additional Sense Code (ASC) and Additional Sense Key Qualifier (ASCQ) to a localized string.
	@discussion This function takes an ASC/ASCQ pair and finds the correct localized string corresponding
				to that pair. The function attempts to find the exact pair, followed by one of the range ASC codes.
				If neither of those can be found, it will determine if the pair is reserved or is a vendor specific pair and will
				return a string indicating that. If a localized string cannot be found, it will return the ASC and ASCQ codes 
				as a string.
	@param 		ASC 	The Additional Sense Code generated by a device conforming the SCSI standard.
	@param 		ASCQ 	The Additional Sense Code Qualifier generated by a device conforming to the SCSI standard.
	@result 	A value of type CFStringRef containing the localized string. 
				This reference is implicitly retained by the caller. 
*/
func DRCopyLocalizedStringForAdditionalSense(ASC: UInt8, _ ASCQ: UInt8) -> Unmanaged<CFString>!

/*!
	@const kDRErrorStatusKey
	@discussion	A key for the DRErrorStatus dictionary, returned by any of the <tt>DRxxxCopyStatus</tt> calls or
				<tt>kDRxxxStatusChangedNotifications</tt>, to describe a failure.  The value of this key is a
				CFDictionary object containing error code and device sense information.
*/
@available(OSX 10.2, *)
let kDRErrorStatusKey: CFString!

/*!
	@const kDRErrorStatusErrorKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFNumber object containing
				the OSStatus value corresponding to the failure.
*/
@available(OSX 10.2, *)
let kDRErrorStatusErrorKey: CFString!

/*!
	@const kDRErrorStatusErrorStringKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFString object containing
				the localized string describing the kDRErrorStatusErrorKey key.  This value is optional and
				may not be present if a suitable string does not exist to describe the failure.
*/
@available(OSX 10.2, *)
let kDRErrorStatusErrorStringKey: CFString!

/*!
	@const kDRErrorStatusErrorInfoStringKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFString object containing
				a string providing additional information for the error.  This value is optional and
				may not be present if a suitable string does not exist to describe the failure.
*/
@available(OSX 10.4, *)
let kDRErrorStatusErrorInfoStringKey: CFString!

/*!
	@const kDRErrorStatusSenseKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFData object containing
				the device sense data describing the failure.  This value is optional and may not be
				present if the failure was not device-related, or if the device failed in a way which
				did not provide meaningful sense data.
*/
@available(OSX 10.2, *)
let kDRErrorStatusSenseKey: CFString!

/*!
	@const kDRErrorStatusSenseCodeStringKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFString object containing
				the localized string describing the sense key from the sense data for the failure.
				This value is optional and will not be present if the kDRErrorStatusSenseKey key is not present
				or if a suitable string does not exist to describe the failure.
*/
@available(OSX 10.2, *)
let kDRErrorStatusSenseCodeStringKey: CFString!

/*!
	@const kDRErrorStatusAdditionalSenseStringKey
	@discussion	A key for the DRErrorStatus dictionary. The value of this key is a CFString object containing
				the localized string describing the additonal sense from the sense data for the
				failure.  This value is optional and will not be present if the kDRErrorStatusSenseKey key is
				not present or if a suitable string does not exist to describe the failure.
*/
@available(OSX 10.2, *)
let kDRErrorStatusAdditionalSenseStringKey: CFString!

/*!
	@typedef DRNotificationCenterRef
	@abstract	The type of a reference to a DRNotificationCenter object.
*/
class DRNotificationCenter {
}

/*!
	@typedef DRNotificationCenterRef
	@abstract	The type of a reference to a DRNotificationCenter object.
*/
typealias DRNotificationCenterRef = DRNotificationCenter

/*!
    @typedef 	DRNotificationCallback
    @abstract	Delivers a notification.
    @param 		center		The notification center that this callback is associated with.
    @param		observer	The observer specified when this callback was added.
    @param		name		The notification name.
    @param		object		The object that this notification is associated with, or
    						<tt>NULL</tt> when there is no associated object.
    @param		info		A dictionary object containing additional
    						notification information, or <tt>NULL</tt> when
    						there is no associated object.
*/
typealias DRNotificationCallback = @convention(c) (DRNotificationCenter!, UnsafeMutablePointer<Void>, CFString!, DRType!, CFDictionary!) -> Void

/*!
	@function	DRNotificationCenterGetTypeID
	@abstract	Returns the type identifier of all DRNotificationCenter instances.
*/
@available(OSX 10.2, *)
func DRNotificationCenterGetTypeID() -> CFTypeID

/*!
	@function	DRNotificationCenterCreate
	@abstract	Creates a notification center that can be used to register for
				and receive asyncronous notifications.
	@result		Returns reference to a new DRNotificationCenter object.
*/
@available(OSX 10.2, *)
func DRNotificationCenterCreate() -> Unmanaged<DRNotificationCenter>!

/*!
	@function	DRNotificationCenterCreateRunLoopSource
	@abstract	Creates a run-loop source object for a notification center.
	@param		center	The notification center that the new run-loop source 
						object is for.
								
						If this parameter is not a valid DRNotificationCenter
						object, the behavior is undefined. 
	@result				Returns a reference to a CFRunLoopSource object.
*/
@available(OSX 10.2, *)
func DRNotificationCenterCreateRunLoopSource(center: DRNotificationCenter!) -> Unmanaged<CFRunLoopSource>!

/*!
	@function	DRNotificationCenterAddObserver
	@abstract	Adds an observer callback for a notification center.
    @param 		center		The notification center that the new observer callback 
    						is for.
    @param 		observer	The observer callback to add, which gets passed to the callback.
    @param 		callback	The observer callback to use for notification delivery.
    @param 		name		The notification name for adding the observer.
    @param 		object		The object the notification name is associated with.
*/
@available(OSX 10.2, *)
func DRNotificationCenterAddObserver(center: DRNotificationCenter!, _ observer: UnsafePointer<Void>, _ callback: DRNotificationCallback!, _ name: CFString!, _ object: DRType!)

/*!
	@function	DRNotificationCenterRemoveObserver
	@abstract	Removes an observer callback from a notification center.
    @param 		center		The notification center that the observer callback will be removed from.
    @param 		observer	The observer callback to remove.
    @param 		name		The notification name for removing the observer callback.
    @param 		object		The object the notification name is associated with.
*/
@available(OSX 10.2, *)
func DRNotificationCenterRemoveObserver(center: DRNotificationCenter!, _ observer: UnsafePointer<Void>, _ name: CFString!, _ object: DRType!)

/*!
	@typedef	DRTypeRef
	@abstract	An untyped, generic reference to any Disc Recording object.
	@discussion @link DRTypeRef DRTypeRef @/link is one of the base types defined in Disc Recording, used as a 
				placeholder for parameter and return type in several polymorphic functions. 
				It is a generic object reference that can take a reference to any other 
				Disc Recording object.

*/
typealias DRTypeRef = DRType

/*!
	@typedef	DRTypeRef
	@abstract	An untyped, generic reference to any Disc Recording object.
	@discussion @link DRTypeRef DRTypeRef @/link is one of the base types defined in Disc Recording, used as a 
				placeholder for parameter and return type in several polymorphic functions. 
				It is a generic object reference that can take a reference to any other 
				Disc Recording object.

*/
typealias DRType = CFTypeRef

/*!
	@typedef	DRRefConRetainCallback
	@abstract	A callback used by a Disc Recording object to obtain 
				ownership of its <tt>refCon</tt> (reference context) data.
	@discussion If you name your function <tt>MyDRRefConRetainCallback</tt>, you would 
				declare it like this:
	
				<pre>
					void MyDRRefConRetainCallback (void *refCon);
				</pre>
				
				This callback returns the value to store as the reference context for 
				a Disc Recording object, typically the <tt>refCon</tt> parameter  
				passed to the callback -- but your callback may return any value
				as the reference context.
*/
typealias DRRefConRetainCallback = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>

/*!
	@typedef	DRRefConReleaseCallback
	@abstract	A callback used by a Disc Recording object to relinquish 
				ownership of its <tt>refCon</tt> (reference context) data.
	@discussion If you name your function <tt>MyDRRefConReleaseCallback</tt>, you would 
				declare it like this:
	
				<pre>
					void MyDRRefConReleaseCallback (void *refCon);
				</pre>
*/
typealias DRRefConReleaseCallback = @convention(c) (UnsafePointer<Void>) -> Void

/*!
	@struct		DRRefConCallbacks
	@abstract	Contains a set of callbacks for use by a Disc Recording object in managing its
				reference context.
	@field		version	The version of this structure. The value must be a known version, or zero.
	@field		retain	An optional callback used by a Disc Recording object to retain its reference 
						context. When <tt>NULL</tt>, the Disc Recording object will not retain the  
						reference context when set.
	@field		release An optional callback used by a Disc Recording object to remove a retain 
						previously added for its reference context. When <tt>NULL</tt>, the Disc
						Recording objecting will not release its reference context when the 
						object is destroyed or when a new reference context value is set.
*/
struct DRRefConCallbacks {
  var version: UInt
  var retain: DRRefConRetainCallback!
  var release: DRRefConReleaseCallback!
  init()
  init(version: UInt, retain: DRRefConRetainCallback!, release: DRRefConReleaseCallback!)
}

/*!
	@constant kDRRefConCFTypeCallbacks
	@abstract	A predefined @link DRRefConCallbacks DRRefConCallbacks @/link structure containing a set of callbacks
				appropriate for use when the reference context is a <tt>CFType</tt> object.
*/
let kDRRefConCFTypeCallbacks: DRRefConCallbacks

/*!
	@function	DRSetRefCon
	@abstract	Sets the Disc Recording object's reference context value.
	@param		ref		A generic reference to any Disc Recording object whose reference context you 
						want to set.
	@param		refCon	The reference context value to set for the Disc Recording object. If
						the the Disc Recording object's reference context is not <tt>NULL</tt> when 
						a new value is set, the previous <tt>refCon</tt> value will be released
						using the release callback previously set, if any. The new 
						<tt>refCon</tt> value will be retained by the Disc Recording object using the
						retain callback previously set, if any.
						
						You may pass a value of <tt>NULL</tt>, which results in the Disc Recording 
						object having no value in its reference context.
	@param		callbacks	A pointer to a @link DRRefConCallbacks DRRefConCallbacks @/link structure initialized with the 
							callbacks for the Disc Recording object to use on its reference context.
							A copy of the contents of the callbacks structure is made, so that 
							a pointer to a structure on the stack can be passed in, or can be 
							reused for multiple object references.
							
							If  the structure's version field does not contain a known value, this 
							function's behavior is undefined. The <tt>retain</tt> field may be <tt>NULL</tt>,  
							in which case the Disc Recording object will not retain the reference 
							context when set. The <tt>release</tt> field may also be <tt>NULL</tt>, in which  
							case the Disc Recording object will not release its reference context 
							when the object is destroyed or when a new reference context value is set.
							
							If this parameter itself is <tt>NULL</tt>, this function behaves as if a 
							valid structure of version 0 and with all fields <tt>NULL</tt> 
							had been passed in.
							
							If any of the callback structure's fields are not valid pointers to functions 
							of the correct type, or if this parameter is not a valid pointer to a 
							@link DRRefConCallbacks DRRefConCallbacks @/link callbacks structure, this function's behavior 
							is undefined.
*/
@available(OSX 10.2, *)
func DRSetRefCon(ref: DRType!, _ refCon: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<DRRefConCallbacks>)

/*!
	@function	DRGetRefCon
	@abstract	Gets the Disc Recording object's reference context value.
	@param		ref		A generic reference to any Disc Recording object whose <tt>refCon</tt> value
						you want to get.
	@result		The value currently stored in the Disc Recording object's reference context.
*/
@available(OSX 10.2, *)
func DRGetRefCon(ref: DRType!) -> UnsafeMutablePointer<Void>

/*!
@function	DRCopyLocalizedStringForValue
	@abstract	Maps a framework key to a localized string.
	@discussion If a localized string cannot be found, this function returns the specified value as a string
	@param		value		The key/string to be localized
	@result		A value of type CFStringRef which contains the localized string.  */
@available(OSX 10.5, *)
func DRCopyLocalizedStringForValue(value: CFString!) -> Unmanaged<CFString>!

/*!
	@const kDRStatusStateKey
	@abstract	The state of the burn or erase operation.
	@discussion	A key for the status dictionaries. The value of this key is a CFString object indicating 
				the current state of the burn or erase operation.
*/
@available(OSX 10.2, *)
let kDRStatusStateKey: CFString!

/*!
	@const kDRStatusPercentCompleteKey
	@abstract	The burn or erase operation's percentage of completion.
	@discussion	A key for the status dictionaries. The value of this key is 
				a CFNumber object containing the precentage of completion for the burn 
				or erase operation, expressed as a foating point number from 0 to 1.
*/
@available(OSX 10.2, *)
let kDRStatusPercentCompleteKey: CFString!

/*!
	@const kDRStatusCurrentSpeedKey
	@abstract	The current burn or erase speed.
	@discussion	A key for the burn status dictionary. The value of this key is 
				a CFNumber object containing the current burn or erase speed.
*/
@available(OSX 10.2, *)
let kDRStatusCurrentSpeedKey: CFString!

/*!
	@const kDRStatusCurrentSessionKey
	@abstract	The number of the burn session.
	@discussion	A key for the burn status dictionary. The value of this key is 
				a CFNumber object containing the number of the current burn session.
*/
@available(OSX 10.2, *)
let kDRStatusCurrentSessionKey: CFString!

/*!
	@const kDRStatusCurrentTrackKey
	@abstract	The number of the track being burned.
	@discussion	A key for the status dictionaries. The value of this key is 
				a CFNumber object containing the number of the track being burned.
*/
@available(OSX 10.2, *)
let kDRStatusCurrentTrackKey: CFString!

/*!
	@const kDRStatusTotalSessionsKey
	@abstract	The total number of burn sessions.
	@discussion	A key for the status dictionaries. The value of this key is 
				a CFNumber object containing the total number of sessions being burned.
*/
@available(OSX 10.2, *)
let kDRStatusTotalSessionsKey: CFString!

/*!
	@const kDRStatusTotalTracksKey
	@abstract	The number of tracks in the current session.
	@discussion	A key for the status dictionaries. The value of this key is 
				a CFNumber object containing the total number of tracks being burned in the current session.
*/
@available(OSX 10.2, *)
let kDRStatusTotalTracksKey: CFString!

/*!
	@const kDRStatusEraseTypeKey
	@abstract	The type of erase operation.
	@discussion	A key for the erase status dictionary. The value of this key is 
				a CFString object containing the type of erase operation -- either @link kDREraseTypeQuick kDREraseTypeQuick @/link
				or @link kDREraseTypeComplete kDREraseTypeComplete @/link.
*/
@available(OSX 10.2, *)
let kDRStatusEraseTypeKey: CFString!

/*!
	@const kDRStatusStateNone
	@abstract	The burn or erase operation has not begun.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link dictionary key. This value indicates the
				burn or erase operation has not yet begun.
*/
@available(OSX 10.2, *)
let kDRStatusStateNone: CFString!

/*!
	@const kDRStatusStatePreparing
	@abstract	The burn or erase operation is preparing to begin.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link dictionary key. This value indicates the
				burn or erase operation is preparing to begin.
*/
@available(OSX 10.2, *)
let kDRStatusStatePreparing: CFString!

/*!
	@const kDRStatusStateVerifying
	@abstract	The burn or erase operation is being verified.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link dictionary key. This value indicates the
				operation is verifying what it did.
*/
@available(OSX 10.2, *)
let kDRStatusStateVerifying: CFString!

/*!
	@const kDRStatusStateDone
	@abstract	The burn or erase operation finished successfully.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link dictionary key. This value indicates the
				burn or erase operation finished and succeeded.
*/
@available(OSX 10.2, *)
let kDRStatusStateDone: CFString!

/*!
	@const kDRStatusStateFailed
	@abstract	The burn or erase operation failed.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link dictionary key. This value indicates the
				burn or erase operation finished but failed.
*/
@available(OSX 10.2, *)
let kDRStatusStateFailed: CFString!

/*!
	@const kDRStatusStateSessionOpen
	@abstract	The burn session is opening.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn engine is opening a session on disc. The number of the session being opened
				is available as the value for the @link kDRStatusCurrentSessionKey kDRStatusCurrentSessionKey @/link dictionary key.
*/
@available(OSX 10.2, *)
let kDRStatusStateSessionOpen: CFString!

/*!
	@const kDRStatusStateTrackOpen
	@abstract	The burn session is opening a track.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn engine is opening a track on disc. The number of the track being opened
				is available as the value for the @link kDRStatusCurrentTrackKey kDRStatusCurrentTrackKey @/link dictionary key.
*/
@available(OSX 10.2, *)
let kDRStatusStateTrackOpen: CFString!

/*!
	@const kDRStatusStateTrackWrite
	@abstract	The burn session is writing a track.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn engine is writing a track on disc. The number of the track being written
				is available as the value for the in @link kDRStatusCurrentTrackKey kDRStatusCurrentTrackKey @/link dictionary key.
*/
@available(OSX 10.2, *)
let kDRStatusStateTrackWrite: CFString!

/*!
	@const kDRStatusStateTrackClose
	@abstract	The burn session is closing a track.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn engine is closing a track on disc. The number of the track being closed
				is available as the value for the @link kDRStatusCurrentTrackKey kDRStatusCurrentTrackKey @/link dictionary key.
*/
@available(OSX 10.2, *)
let kDRStatusStateTrackClose: CFString!

/*!
	@const kDRStatusStateSessionClose
	@abstract	The burn session is closing.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn engine is closing a session on disc. The number of the session being closed
				is available as the value for the @link kDRStatusCurrentSessionKey kDRStatusCurrentSessionKey @/link dictionary key.
*/
@available(OSX 10.2, *)
let kDRStatusStateSessionClose: CFString!

/*!
	@const kDRStatusStateFinishing
	@abstract	The burn session is finishing.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the burn status dictionary. 
				This value indicates the burn is finishing--closing the last session, writing the TOC, and so on.
*/
@available(OSX 10.2, *)
let kDRStatusStateFinishing: CFString!

/*!
	@const kDRStatusStateErasing
	@abstract	The disc is being erased.
	@discussion	A value for the @link kDRStatusStateKey kDRStatusStateKey @/link key in the erase status dictionary. 
				This value indicates the erase is currently in progress.
*/
@available(OSX 10.2, *)
let kDRStatusStateErasing: CFString!

/*!
	@const kDRStatusProgressInfoKey
	@abstract	A dictionary of extended progress information.
	@discussion A key for the status dictionary. The value of this key is a reference to a CFDictionary
				object containing extended progress information.
*/
@available(OSX 10.4, *)
let kDRStatusProgressInfoKey: CFString!

/*!
	@const kDRStatusProgressCurrentKPS
	@abstract	The current burn speed in kilobytes per second.
	@discussion This is an optional key within the kDRStatusProgressInfo dictionary. The value of this
				key, if present, is a CFNumber object containing the write speed of the burn.
*/
@available(OSX 10.4, *)
let kDRStatusProgressCurrentKPS: CFString!

/*!
	@const kDRStatusProgressCurrentXFactor
	@abstract	The current burn speed in a media appropriate x-factor
	@discussion This is an optional key within the kDRStatusProgressInfo dictionary. The value of this
				key, if present, is a CFNumber object containing the appropriate x-factor for the media.
*/
@available(OSX 10.4, *)
let kDRStatusProgressCurrentXFactor: CFString!

/*!
	@typedef DRTrackRef
	A reference to a DRTrack object.
*/
class DRTrack {
}

/*!
	@typedef DRTrackRef
	A reference to a DRTrack object.
*/
typealias DRTrackRef = DRTrack

/*!
	@function	DRTrackGetTypeID
	@abstract	Returns the Core Foundation type identifier of all DRTrack instances.
*/
@available(OSX 10.2, *)
func DRTrackGetTypeID() -> CFTypeID

/*!
	@typedef	DRTrackMessage
	@abstract	Messages sent to the @link DRTrackCallbackProc DRTrackCallbackProc @/link callback.
*/
typealias DRTrackMessage = UInt32

/*!
    @typedef 	DRTrackCallbackProc
    @abstract	Callback defined in the client to produce track data for recording.
	@discussion	If your callback does not support a given function, it should return
				a value of @link //apple_ref/c/econst/kDRFunctionNotSupportedErr kDRFunctionNotSupportedErr @/link. 
    @param 		track		The track with this callback is associated.
    @param		message		Indicates the type of data requested as one of the constants
    						in the Track Messages enumeration.
 	@param		ioParam		Parameters are message-specific.
    @result 	Error code.  Your client application should return a value of @link //apple_ref/c/econst/kDRFunctionNotSupportedErr kDRFunctionNotSupportedErr @/link
				when a message is received that you don't respond to, and a value of noErr when
				the message is handled successfully.  Any other error will cause
				the burn to immediately fail with the value you return as the error code.
*/
typealias DRTrackCallbackProc = @convention(c) (DRTrack!, DRTrackMessage, UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	DRTrackCreate
	@abstract	Creates a new track object.
	@param		properties	A CFDictionary object containing the track properties. If this
							parameter is not a valid CFDictionary object the behavior is undefined.
	@param		callback	A pointer to a @link DRTrackCallbackProc DRTrackCallbackProc @/link callback. If this callback is NULL
							the behavior is undefined.
	@result		A reference to the new DRTrack object.
*/
@available(OSX 10.2, *)
func DRTrackCreate(properties: CFDictionary!, _ callback: DRTrackCallbackProc!) -> Unmanaged<DRTrack>!

/*!
	@function	DRTrackSetProperties
	@abstract	Sets the properties of the track.
	@param		track		The track whose properties will be set. If this parameter 
							is not a valid DRTrack object, the behavior is undefined. 
	@param		properties	A CFDictionary object containing the track properties. If this
							parameter is not a valid CFDictionary object the behavior is undefined.
*/
@available(OSX 10.2, *)
func DRTrackSetProperties(track: DRTrack!, _ properties: CFDictionary!)

/*!
	@function	DRTrackGetProperties
	@abstract	Returns the properties of the track.
	@param		track		The track whose properties will be retrieved. If this parameter 
							is not a valid DRTrack object, the behavior is undefined. 
	@result		A CFMutableDictionary object containing the track properties.
*/
@available(OSX 10.2, *)
func DRTrackGetProperties(track: DRTrack!) -> Unmanaged<CFDictionary>!

/*!
	@function	DRTrackSpeedTest
	@abstract	Tests the speed at which data can be produced.
	@discussion	Runs a test track-production cycle, calling the produceData callback for the specified 
				number of milliseconds or until the specified number of bytes have been 
				produced, whichever comes first.
				
				Use this function to verify that the produceData callback can produce data fast 
				enough to satisfy the data throughput requirements of the burn.
				
				This function will automatically set a value for the @link kDRMaxBurnSpeedKey kDRMaxBurnSpeedKey @/link key in the track's
				properties dictionary, with a value equal to the return result.
	@param		track			The track to test. 
	@param		howManyMilliseconds	The maximum duration for the test production cycle. The 
								test may not run for the full requested duration if the byte limit
								is reached first. If this parameter is 0, the result is
								undefined.
	@param		howManyBytes	The maximum number of bytes of data the client should produce before
								completing the test. The test may not produce the requested number of bytes 
								if the time limit is reached first. If this parameter is 0, the result 
								is undefined. 
	@result		The maximum throughput obtained during the test cycle.
*/
@available(OSX 10.2, *)
func DRTrackSpeedTest(track: DRTrack!, _ howManyMilliseconds: UInt32, _ howManyBytes: UInt32) -> Float

/*!
	@function	DRTrackEstimateLength
	@abstract	Asks the track producer for a block size estimate.
	@discussion	This function calls the track producer to ask it to estimate the block size
				needed for its data.  This call is passed through to the @link DRTrackCallbackProc DRTrackCallbackProc @/link
				track production callback as @link kDRTrackMessageEstimateLength kDRTrackMessageEstimateLength @/link.
				
				For some types of tracks, this call may be very expensive.  For example,
				a file system track (@link DRFilesystemTrackRef DRFilesystemTrack @/link) may need to iterate through folders 
				on disk to provide an accurate estimate. If a large number of files and folders 
				are involved, this call may take 30 seconds or more.  Since your
				main thread should not block for this long, you may wish to call this
				function on a separate thread.
				
				The return value is the size in blocks that is specified in the
				track's properties dictionary.
				
	@param		track		The track to query.
	@result		The size of the track in blocks.
*/
@available(OSX 10.3, *)
func DRTrackEstimateLength(track: DRTrack!) -> UInt64

/*!
	@const		kDRTrackLengthKey
	@discussion	Required Key. This key corresponds to a CFNumber object containing the length of 
				the track data in blocks.
*/
@available(OSX 10.2, *)
let kDRTrackLengthKey: CFString!

/*!
	@const		kDRBlockSizeKey
	@discussion	Required key. This key corresponds to a CFNumber object containing the size
				of each block of the track. Common values are defined in the @link //apple_ref/c/tag/Block%32Sizes Block Sizes @/link
				enumeration.
*/
@available(OSX 10.2, *)
let kDRBlockSizeKey: CFString!

/*!
	@const		kDRBlockTypeKey
	@discussion	Required key. This key corresponds to a CFNumber object containing the type
				of each block of the track. Common values are defined in the @link //apple_ref/c/tag/Block%32Types Block Types @/link
				enumeration.
*/
@available(OSX 10.2, *)
let kDRBlockTypeKey: CFString!

/*!
	@const		kDRDataFormKey
	@discussion	Required key. This key corresponds to a CFNumber object containing the data format
				of each block of the track. Common values are defined in the @link //apple_ref/c/tag/Data%32Forms Data Forms @/link
				enumeration.
*/
@available(OSX 10.2, *)
let kDRDataFormKey: CFString!

/*!
	@const		kDRSessionFormatKey
	@discussion	Required key. This key corresponds to a CFNumber object containing the session format
				of the track. Common values are defined in the @link //apple_ref/c/tag/Session%32Mode Session Mode @/link enumeration.
*/
@available(OSX 10.2, *)
let kDRSessionFormatKey: CFString!

/*!
	@const		kDRTrackModeKey
	@discussion	Required key. This key corresponds to a CFNumber object containing the track mode
				of the track. Common values are defined in the @link //apple_ref/c/tag/Track%32Modes Track Modes @/link enumeration.
*/
@available(OSX 10.2, *)
let kDRTrackModeKey: CFString!

/*!
	@const		kDRVerificationTypeKey
	@discussion	Optional key. This track property key corresponds to a CFString object indicating the kind of verification
				that should be performed. If the key is not present, no verification will take 
				place.
*/
@available(OSX 10.2, *)
let kDRVerificationTypeKey: CFString!

/*!
	@const		kDRDVDCopyrightInfoKey
	@discussion	Optional key. This track property key corresponds to a CFData object containing Multi-Media Command 
				(MMC) copyright data. This data will be sent directly to the drive. If this key is 
				not present, no copyright information will be sent.
*/
@available(OSX 10.2, *)
let kDRDVDCopyrightInfoKey: CFString!

/*!
	@const		kDRDVDTimestampKey
	@discussion	Optional key. This track property key corresponds to a CFData object containing Multi-Media Command 
				(MMC) timestamp data. This data will be sent directly to the drive. If this key 
				is not present, no timestamp will be sent.
*/
@available(OSX 10.2, *)
let kDRDVDTimestampKey: CFString!

/*!
	@const		kDRBufferZone1DataKey
	@discussion	Optional key. This track property key corresponds to a CFData object containing the data to
				write to Buffer Zone 1 on drives which support it, such as the Pioneer DVR-S201.
				This data will be sent directly to the drive. If this key is not present, no 
				Buffer Zone 1 data will be sent.
*/
@available(OSX 10.2, *)
let kDRBufferZone1DataKey: CFString!

/*!
	@const		kDRMaxBurnSpeedKey
	@discussion	Optional key. This track property key corresponds to a CFNumber object containing  
				the maximum sustained rate at which your application will request data from the 
				track callback, in units of kilobytes per second where 1 kilobyte = 1,000 bytes.
				
				The value for @link kDRMaxBurnSpeedKey kDRMaxBurnSpeedKey @/link must be greater than the drive's minimum burn 
				speed. It is usually safe to specify the appropriate flavor of 1x 
				(@link kDRDeviceBurnSpeedCD1x kDRDeviceBurnSpeedCD1x @/link or @link kDRDeviceBurnSpeedDVD1x kDRDeviceBurnSpeedDVD1x @/link), but some drives cannot slow  
				all the way down to 1x.
				
				Given the capabilities of the drive, the bus, and the recordable disc, the burn speed used 
				when writing a layout will generally be the highest data rate possible that is less 
				than or equal to the value of @link kDRMaxBurnSpeedKey kDRMaxBurnSpeedKey @/link for every track, as well as less
				than or equal to the value of the @link kDRBurnRequestedSpeedKey kDRBurnRequestedSpeedKey @/link key for the burn object.
				
				When this key is not present, the requested maximum sustained data rate defaults
				to a value of infinity. In this case, the Disc Recording engine assumes that your 
				track callback can produce data at any rate requested.
*/
@available(OSX 10.2, *)
let kDRMaxBurnSpeedKey: CFString!

/*!
	@const		kDRPreGapLengthKey
	@discussion	Optional key. This track property key corresponds to a CFNumber object containing the length in blocks of 
				empty space, or pregap, to be recorded before the track. If this key is not
				present the Disc Recording engine will assume a 2 second, or 150 block, pregap.
*/
@available(OSX 10.2, *)
let kDRPreGapLengthKey: CFString!

/*!
	@const		kDRPreGapIsRequiredKey
	@discussion	Optional key. This track property key corresponds to a CFBoolean object indicating whether 
				the pregap listed for the track is required.  If this key is not present, 
				the track will behave as though the key were <tt>false</tt>.
				
				If this key's value is set to <tt>true</tt> and the device does
				not support the exact pregap length, the burn
				will fail with a return value of @link //apple_ref/c/econst/kDRDevicePregapLengthNotAvailableErr @/link.
				
				If this key's value is set to <tt>false</tt> and the device does
				not support the suggested pregap length, the engine
				will choose an alternate pregap length. 
*/
@available(OSX 10.4, *)
let kDRPreGapIsRequiredKey: CFString!

/*!
	@const		kDRTrackISRCKey
	@discussion	Optional key. For CD-DA audio tracks only.  This track property key corresponds to a CFData
				object containing exactly 12 bytes, which will be written to the disc as the
				International Standard Recording Code (ISRC).  If this key is not present,
				no ISRC data is written.
				
				The use of this value should conform to the specifications of the IFPI.  See
				<a href="http://www.ifpi.org/isrc">http://www.ifpi.org/isrc</a> for details on the ISRC standard.
				
				Not all drives can write ISRC data. If this key is present in any track and 
				the drive cannot write ISRC data, the burn will fail with a return value of 
				@link //apple_ref/c/econst/kDRDeviceCantWriteISRCErr kDRDeviceCantWriteISRCErr @/link.
*/
@available(OSX 10.3, *)
let kDRTrackISRCKey: CFString!

/*!
	@const		kDRIndexPointsKey
	@discussion	Optional key. For CD tracks only.  This track property key corresponds to a CFArray object
				containing CFNumber objects	describing index points within the track.  Each 
				index point is specified as a number of blocks, equivalent to frames, relative 
				to the start of the track.  There are 75 blocks in one second of CD audio.  No 
				more than 98 index points may be specified for a track.
				
				Not all drives can write index points, and not all consumer CD players report or 
				use them.  If this key is present in any track and the drive cannot write index 
				points, the burn will fail with a return value of @link //apple_ref/c/econst/kDRDeviceCantWriteIndexPointsErr kDRDeviceCantWriteIndexPointsErr @/link.
*/
@available(OSX 10.3, *)
let kDRIndexPointsKey: CFString!

/*!
	@const		kDRAudioPreEmphasisKey
	@discussion	Optional key. For CD-DA audio tracks only. This track property key corresponds to a CFBoolean
				value indicating whether the track includes pre-emphasis of 50/15 microseconds.
				If this key is not present, the engine will use a default value of
				<tt>false</tt>.  On the disc, this key corresponds to bit 0 of the
				control field in sub-channel Q.
*/
@available(OSX 10.3, *)
let kDRAudioPreEmphasisKey: CFString!

/*!
	@const		kDRAudioFourChannelKey
	@discussion	Optional key. For CD-DA audio tracks only. This track property key corresponds to a CFBoolean
				value indicating whether the track data has four channels, as opposed to the
				two channels of normal stereo.  If this key is not present, the engine
				will use a default value of <tt>false</tt> and standard two-channel stereo
				is assumed.
				
				Four-channel audio is supported in the Red Book standard but never 
				caught on. It is probably being replaced by SACD, so you probably shouldn't 
				attempt to use it.
				
				On the disc, this key corresponds to bit 3 of the control field in
				sub-channel Q.
*/
@available(OSX 10.3, *)
let kDRAudioFourChannelKey: CFString!

/*!
	@const		kDRSerialCopyManagementStateKey
	@discussion	Optional key. For CD tracks only.  This track property key corresponds to a CFString value
				indicating the Serial Copy Management System (SCMS) state of the track.  If 
				this key is not present, no SCMS data is written.
				
				Not all drives are capable of writing SCMS data.  If this key is present in any
				track and the drive cannot write SCMS, the burn will fail with a return value
				of @link //apple_ref/c/econst/kDRDeviceCantWriteSCMSErr kDRDeviceCantWriteSCMSErr @/link.
*/
@available(OSX 10.3, *)
let kDRSerialCopyManagementStateKey: CFString!

/*!
	@const		kDRVerificationTypeNone
	@discussion	One value for the @link kDRVerificationTypeKey kDRVerificationTypeKey @/link dictionary key. This value indicates
				the engine will not do any sort of verification on the track data.
*/
@available(OSX 10.2, *)
let kDRVerificationTypeNone: CFString!

/*!
	@const		kDRVerificationTypeProduceAgain
	@discussion	One value for the @link kDRVerificationTypeKey kDRVerificationTypeKey @/link dictionary key. This value indicates
				the engine will start another production cycle and the client 
				simply produces data again from the start.
				
				Note that this verification mode currently only works with data CDs and DVDs.
*/
@available(OSX 10.2, *)
let kDRVerificationTypeProduceAgain: CFString!

/*!
	@const		kDRVerificationTypeReceiveData
	@discussion	One value for the @link kDRVerificationTypeKey kDRVerificationTypeKey @/link dictionary key. This value indicates
				the engine will read data from the disc and send it to the client
				through a series of calls to the callback.
*/
@available(OSX 10.2, *)
let kDRVerificationTypeReceiveData: CFString!

/*!
	@const		kDRVerificationTypeChecksum
	@discussion One value for the @link kDRVerificationTypeKey kDRVerificationTypeKey @/link dictionary key. This value indicates
				the engine will verify the track data with an internally calculated checksum.
*/
@available(OSX 10.4, *)
let kDRVerificationTypeChecksum: CFString!

/*!
	@const		kDRSCMSCopyrightFree
	@discussion	One value for the @link kDRSerialCopyManagementStateKey kDRSerialCopyManagementStateKey @/link dictionary key. This value indicates that
				the track has no copying restrictions.  Copies of this track should also be
				copyright free.
*/
@available(OSX 10.3, *)
let kDRSCMSCopyrightFree: CFString!

/*!
	@const		kDRSCMSCopyrightProtectedOriginal
	@discussion	One value for the @link kDRSerialCopyManagementStateKey kDRSerialCopyManagementStateKey @/link dictionary key. This value indicates that
				the track is an original subject to copyright protection.  Digital copying of
				this track should be allowed, but copies should be marked with appropriate Serial Copy 
				Management System (SCMS) data.
*/
@available(OSX 10.3, *)
let kDRSCMSCopyrightProtectedOriginal: CFString!

/*!
	@const		kDRSCMSCopyrightProtectedCopy
	@discussion	One value for the @link kDRSerialCopyManagementStateKey kDRSerialCopyManagementStateKey @/link dictionary key. This value indicates that
				the track is a first-generation copy of an original that was subject to copy
				protection.  No further digital copying should be allowed.
*/
@available(OSX 10.3, *)
let kDRSCMSCopyrightProtectedCopy: CFString!

/*!
	@const		kDRNextWritableAddressKey
	@discussion	This key corresponds to a CFNumber object containing the Logical Block Address (LBA)
				of the next writable address in the track. This key is not present in closed tracks.
*/
@available(OSX 10.3, *)
let kDRNextWritableAddressKey: CFString!

/*!
	@const		kDRTrackStartAddressKey
	@discussion	This key corresponds to a CFNumber object containing the Logical Block Address (LBA)
				of the start address for the track.
*/
@available(OSX 10.3, *)
let kDRTrackStartAddressKey: CFString!

/*!
	@const		kDRFreeBlocksKey
	@discussion	This key corresponds to a CFNumber object containing the length, in blocks, which is
				still available in a writable track.
*/
@available(OSX 10.3, *)
let kDRFreeBlocksKey: CFString!

/*!
	@const		kDRTrackNumberKey
	@discussion	This key corresponds to a CFNumber object containing the physical track number of a track.
*/
@available(OSX 10.3, *)
let kDRTrackNumberKey: CFString!

/*!
	@const		kDRSessionNumberKey
	@discussion	This key corresponds to a CFNumber object containing the physical session number of a track.
*/
@available(OSX 10.3, *)
let kDRSessionNumberKey: CFString!

/*!
	@const		kDRTrackTypeKey
	@discussion	This key corresponds to a CFString object indicating the type of track. Possible values are 
				@link kDRTrackTypeInvisible kDRTrackTypeInvisible @/link, @link kDRTrackTypeIncomplete kDRTrackTypeIncomplete @/link, 
				@link kDRTrackTypeReserved kDRTrackTypeReserved @/link , or @link kDRTrackTypeClosed kDRTrackTypeClosed @/link.
*/
@available(OSX 10.3, *)
let kDRTrackTypeKey: CFString!

/*!
	@const		kDRTrackIsEmptyKey
	@discussion	This key corresponds to a CFBoolean object and indicates whether the track is empty.
*/
@available(OSX 10.3, *)
let kDRTrackIsEmptyKey: CFString!

/*!
	@const		kDRTrackPacketTypeKey
	@discussion	This key corresponds to a CFString value indicating the kind of packets being written.
*/
@available(OSX 10.3, *)
let kDRTrackPacketTypeKey: CFString!

/*!
	@const		kDRTrackPacketSizeKey
	@discussion	This key corresponds to a CFNumber object that contains the number of blocks per packet for
				the disc. It will only be present if the disc contains fixed packets. This key
				will contain '16' for DVD media, and typically contains either '16' or '32' for CD media.
*/
@available(OSX 10.3, *)
let kDRTrackPacketSizeKey: CFString!

/*!
	@const		kDRTrackTypeInvisible
	@discussion	One value for the @link kDRTrackTypeKey kDRTrackTypeKey @/link dictionary key. This value indicates the track is 
				invisible and available for writing. If it is packet written and not closed, 
				the kDRTrackPacketType key will be present along with the kDRTrackPacketSize keys.
*/
@available(OSX 10.3, *)
let kDRTrackTypeInvisible: CFString!

/*!
	@const		kDRTrackTypeIncomplete
	@discussion	One value for the @link kDRTrackTypeKey kDRTrackTypeKey @/link dictionary key. This value indicates the track is 
				not invisible or reserved and is available for writing.
*/
@available(OSX 10.3, *)
let kDRTrackTypeIncomplete: CFString!

/*!
	@const		kDRTrackTypeReserved
	@discussion	One value for the @link kDRTrackTypeKey kDRTrackTypeKey @/link dictionary key. This value indicates the track is 
				reserved for writing.
*/
@available(OSX 10.3, *)
let kDRTrackTypeReserved: CFString!

/*!
	@const		kDRTrackTypeClosed
	@discussion	One value for the @link kDRTrackTypeKey kDRTrackTypeKey @/link dictionary key. This value indicates the track has been
				written and is closed.
*/
@available(OSX 10.3, *)
let kDRTrackTypeClosed: CFString!

/*!
	@const		kDRTrackPacketTypeFixed
	@discussion	One value for the @link kDRTrackPacketTypeKey kDRTrackPacketTypeKey @/link dictionary key. This value indicates the disc is 
				writen with fixed sized packets.  When this value is present the kDRPacketSizeKey 
				dictionary key will also be present.
*/
@available(OSX 10.3, *)
let kDRTrackPacketTypeFixed: CFString!

/*!
	@const		kDRTrackPacketTypeVariable
	@discussion	One value for the @link kDRTrackPacketTypeKey kDRTrackPacketTypeKey @/link dictionary key. This value indicates the disc is 
				written with sequential, variable-sized packets.  When this key is present, the 
				kDRPacketSizeKey dictionary key will not be.
*/
@available(OSX 10.3, *)
let kDRTrackPacketTypeVariable: CFString!

/*!
	@const		kDRBurnKey
	@discussion	This key corresponds to the DRBurn object for which the PreBurn message applies.
*/
@available(OSX 10.2, *)
let kDRBurnKey: CFString!

/*!
	@const          kDRSubchannelDataFormKey
	@discussion     The property whose value is the data mode of the subchannel data sent to the drive.
					If this key is not present, the track will default to a value of @link DRSubchannelDataFormNone DRSubchannelDataFormNone @/link
					and no subchannel information will be requested from the producer.
					
					Subchannel data is returned from the producer in the same production method that produces normal user data. 
					Normally a producer returns user data in chunks of @link DRBlockSizeKey DRBlockSizeKey @/link size. When subchannel
					data is also produced, the producer is expected to return user data of DRBlockSizeKey in length with an additonal
					96 bytes of subchannel data. Depending on the data form specified in this key, the format of this 96 bytes is 
					either in raw or pack format. When subchannel data is requested from the producer, the @link DRFlagSubchannelDataRequested
					DRFlagSubchannelDataRequested @/link flag is set in the <i>flags</i> parameter of 
					producePreGapForTrack:intoBuffer:length:atAddress:blockSize:ioFlags:
					or produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: and blockSize is increased by 96 bytes.
*/
@available(OSX 10.5, *)
let kDRSubchannelDataFormKey: CFString!

/*!
	@constant		kDRSubchannelDataFormNone
	@discussion 	A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
					subchannel data will not be provided by the producer.
*/
@available(OSX 10.5, *)
let kDRSubchannelDataFormNone: CFString!

/*!
	@const			kDRSubchannelDataFormPack
	@discussion		A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
					producer will be asked to provide pack format subchannel data for the track. If this form is selected,
					the drive will perform P and Q parity calculations on each pack and interleave the packs before writing them to 
					disc.
					This corresponds to a subchannel data form of 0xC0.
*/
@available(OSX 10.5, *)
let kDRSubchannelDataFormPack: CFString!

/*!
	@const			kDRSubchannelDataFormRaw
	@discussion		A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
					producer will be asked to provide raw format subchannel data for the track. If this form is selected,
					the producer must have performed P and Q parity calculations for each pack and done proper interleaving of the subchannel
					data. The drive will fill in the P-Q subchannel information and write the R-W subchannel data as is to the disc.
					This corresponds to a subchannel data form of 0x40.
*/
@available(OSX 10.5, *)
let kDRSubchannelDataFormRaw: CFString!
var kDRBlockSizeAudio: Int { get }
var kDRBlockSizeMode1Data: Int { get }
var kDRBlockSizeMode2Data: Int { get }
var kDRBlockSizeMode2Form1Data: Int { get }
var kDRBlockSizeMode2Form2Data: Int { get }
var kDRBlockSizeDVDData: Int { get }
var kDRBlockTypeAudio: Int { get }
var kDRBlockTypeMode1Data: Int { get }
var kDRBlockTypeMode2Data: Int { get }
var kDRBlockTypeMode2Form1Data: Int { get }
var kDRBlockTypeMode2Form2Data: Int { get }
var kDRBlockTypeDVDData: Int { get }
var kDRDataFormAudio: Int { get }
var kDRDataFormMode1Data: Int { get }
var kDRDataFormMode2Data: Int { get }
var kDRDataFormMode2Form1Data: Int { get }
var kDRDataFormMode2Form2Data: Int { get }
var kDRDataFormDVDData: Int { get }
var kDRTrackModeAudio: Int { get }
var kDRTrackMode1Data: Int { get }
var kDRTrackMode2Data: Int { get }
var kDRTrackMode2Form1Data: Int { get }
var kDRTrackMode2Form2Data: Int { get }
var kDRTrackModeDVDData: Int { get }
var kDRSessionFormatAudio: Int { get }
var kDRSessionFormatMode1Data: Int { get }
var kDRSessionFormatCDI: Int { get }
var kDRSessionFormatCDXA: Int { get }
var kDRSessionFormatDVDData: Int { get }
var kDRFlagSubchannelDataRequested: Int { get }
var kDRFlagNoMoreData: Int { get }
var kDRTrackMessagePreBurn: Int { get }
var kDRTrackMessageProduceData: Int { get }
var kDRTrackMessageVerificationStarting: Int { get }
var kDRTrackMessageVerifyData: Int { get }
var kDRTrackMessageVerificationDone: Int { get }
var kDRTrackMessagePostBurn: Int { get }
var kDRTrackMessageEstimateLength: Int { get }
var kDRTrackMessageProducePreGap: Int { get }
var kDRTrackMessageVerifyPreGap: Int { get }

/*!
	@struct		DRTrackProductionInfo
	@abstract	Parmeter block used for data production.
	@field		buffer				In - The buffer to produce into. This buffer is passed into the
									track production callback and only the contents should be modified.
	@field		reqCount			In - The number of bytes requested by the engine.
	@field		actCount			Out - The number of bytes actually produced (between 0 and reqCount).
	@field		flags				InOut - Miscellaneous flags. Flags are passed into the track production callback  
									callback from the Disc Recording engine and the callback can set flags to be 
									passed back to the engine.
	@field		blockSize			In - The block size the engine is expecting. For best results, return 
									multiples of this size. 
	@field		requestedAddress	In - The byte address that the burn engine is requesting from the 
									object (0-based). This increments when you send data, as one 
									would expect. 
*/
struct DRTrackProductionInfo {
  var buffer: UnsafeMutablePointer<Void>
  var reqCount: UInt32
  var actCount: UInt32
  var flags: UInt32
  var blockSize: UInt32
  var requestedAddress: UInt64
  init()
  init(buffer: UnsafeMutablePointer<Void>, reqCount: UInt32, actCount: UInt32, flags: UInt32, blockSize: UInt32, requestedAddress: UInt64)
}

/*!
	@class 		DRDevice
	@abstract	Represents a CD or DVD burner connected to the computer.
	@discussion	
				<h3>About Devices</h3>
				A DRDevice DRDevice represents a physical CD/DVD drive connected to the computer. This class is 
				mainly for informational purposes since the device is configured by the burn 
				engine before beginning to optimally handle the burn. The basis for obtaining the
				device information is through two methods @link //apple_ref/occ/instm/DRDevice/info info @/link 
				and @link //apple_ref/occ/instm/DRDevice/status status @/link. @link //apple_ref/occ/instm/DRDevice/info info @/link returns 
				information pertaining to the drive as a whole and is not affected by the state 
				of any media in the drive. @link //apple_ref/occ/instm/DRDevice/status status @/link returns information about the media in the drive as
				well as those bits of information directly affected by the media (maximum burn speed,
				BSD dev node name, etc.)
	
				<h3>Obtaining Device instances</h3>
				The programmer cannot directly create DRDevices. Devices are managed by the burn engine
				and are asked for by client code. The preferred way of obtaining an instance is
				by registering with the @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link and listening for the 
				@link DRDeviceAppearedNotification DRDeviceAppearedNotification @/link. This notification is sent to all
				observers when a device is first detected by the burn engine (such as when a device
				is plugged in or turned on). A registered  observer is guaranteed to receive all 
				@link DRDeviceAppearedNotification DRDeviceAppearedNotifications @/link. When a client registers for the 
				@link DRDeviceAppearedNotification DRDeviceAppearedNotification @/link, the engine will ensure that
				the client gets notified of all devices currently connected to the machine. When a device
				is removed, registed observers will receive a @link DRDeviceDisappearedNotification DRDeviceDisappearedNotification @/link.
				
				It's also possible to obtain a device instance from its IORegistry path 
				(@link //apple_ref/occ/clm/DRDevice/deviceForIORegistryEntryPath: deviceForIORegistryEntryPath: @/link) 
				or the BSD /dev node name (@link //apple_ref/occ/clm/DRDevice/deviceForBSDName: deviceForBSDName: @/link).
				If you have a reference to a device instance, you can determine if the physical device
				is still valid and connected by sending the @link //apple_ref/occ/instm/DRDevice/isValid isValid @/link method to the instance.
				
				<h3>Device Control</h3>
				There is a limited set of operations that can be performed on a device. The most
				important of these is <i>media reservation</i>. Reserving media is a process by which
				applications arbitrate for blank media. An application registers interest in 
				obtaining a media reservation by caling @link //apple_ref/occ/instm/DRDevice/acquireMediaReservation acquireMediaReservation @/link and gives up
				its interest by calling @link //apple_ref/occ/instm/DRDevice/releaseMediaReservation releaseMediaReservation @/link. Asking to acquire a reservation does
				not mean you will get it! Another application may already have the reservation and 
				will refuse to give it up to you. In this case, the only thing to do is to play fair and
				wait until the @link DRDeviceMediaIsReservedKey DRDeviceMediaIsReservedKey @/link indicates that your app has obtained 
				the reservation.
				
				The device tray can be opened (@link //apple_ref/occ/instm/DRDevice/openTray openTray @/link) or 
				closed (@link //apple_ref/occ/instm/DRDevice/closeTray closeTray @/link) and media 
				can be ejected (@link //apple_ref/occ/instm/DRDevice/ejectMedia ejectMedia @/link).
*/
class DRDevice : NSObject {

  /*! 
     	@method 		devices
     	@abstract		Obtains a static list of devices connected to the computer.
  	@discussion		Returns all CD/DVD devices connected to the computer at the time this 
  					method is called. Since devices can come and go at any time, the output of this 
  					method is simply a snapshot of the set of devices connected.
      @result  		An NSArray of DRDevices.
  */
  class func devices() -> [AnyObject]!

  /*! 
     	@method 		deviceForBSDName:
     	@abstract		Obtains a DRDevice for the device corresponding to the bsd /dev node.
  	@discussion		If the device is not an authoring device (i.e., CDR, CDRW, DVR-R, etc), returns nil.
     	@param 			bsdName	The bsd /dev node name.
      @result  		An autoreleased DRDevice object.
  */
  /*not inherited*/ init!(forBSDName bsdName: String!)

  /*! 
     	@method 		deviceForIORegistryEntryPath:
     	@abstract		Obtains a DRDevice for the device at the path.
  	@discussion		If the device is not an authoring device (i.e., CDR, CDRW, DVR-R, etc), returns nil.
     	@param 			path	The IORegistry path to the device you wish to obtain a DRDEvice for.
      @result  		An autoreleased DRDevice object.
  */
  /*not inherited*/ init!(forIORegistryEntryPath path: String!)

  /*!
  	@method			isValid
  	@abstract		Returns whether or not the device represented by the receiver is still attached
  					to the computer.
  	@discussion		Because of the way some physical interconnects work, a device
  					which is unplugged and replugged in does not necessarily look like the same
  					device to the computer and would be invalid in that instance. 
  	@result			Returns <i>YES</i> if device is valid and <i>NO</i> if not.
  */
  func isValid() -> Bool

  /*!
  	@method			info
  	@abstract		Returns a dictionary of information describing the device.
  	@discussion		The information returned include the types of media the device can write to, how 
  					it's connected and its identifying information such as the vendor and product name.
  	@result			An NSDictionary containing device information.
  */
  func info() -> [NSObject : AnyObject]!

  /*!
  	@method			status
  	@abstract		Returns a dictionary of information describing the media in the device.
  	@discussion		In addition to information about the media (type, space available/used, etc),
  					the dictionary returned includes those pieces of information about the device 
  					itself which are in part determined by the media (i.e., maximum burn speed).
  	@result			An NSDictionary containing media information.
  */
  func status() -> [NSObject : AnyObject]!

  /*!
  	@method			openTray
  	@abstract		Commands the device to open its tray.
  	@discussion		Does nothing if the device does not have a tray (slotload). If there is media in
  					the drive this method will do nothing and return false. In this case use 
  					@link //apple_ref/occ/instm/DRDevice/ejectMedia ejectMedia @/link to eject the media and open the tray. 
  	@result			Returns <i>YES</i> if the tray could be opened and <i>NO</i> if not.
  */
  func openTray() -> Bool

  /*!
  	@method			closeTray
  	@abstract		Commands the device to close its tray.
  	@discussion		Does nothing if the device does not have a tray (slotload).
  	@result			Returns <i>YES</i> if the tray could be closed and <i>NO</i> if not.
  */
  func closeTray() -> Bool

  /*!
  	@method			ejectMedia
  	@abstract		Commands the device to eject the media.
  	@discussion		This command first unmounts any volumes associated with the media and
  					then ejects the media from the drive. If the media could not be ejected, 
  					most likely this is because a volume associated with the media could not be unmounted.
  	@result			Returns <i>YES</i> if the media could be ejected and <i>NO</i> if not.
  */
  func ejectMedia() -> Bool

  /*!
  	@method			acquireExclusiveAccess
  	@abstract		Attempts to acquire an exclusive access session with the device.
  	@discussion		Acquiring exclusive access to the device prevents any process
  					other than the one acquiring access from communicating with the
  					device. So once exclusive access is granted, the device is unusable by any other process. 
  					Because of this all volumes mounted from media in the drive must be unmounted
  					before exclusive access can be granted. 
  	
  					Exclusive access can be acquired multiple times. Each time this method
  					is called, a call to @link //apple_ref/occ/instm/DRDevice/releaseExclusiveAccess releaseExclusiveAccess @/link> must be made at a later time,
  					otherwise the process will never release its exclusive access.
  	@result			Returns <i>YES</i> if the exclusinve access is acquired and <i>NO</i> if not.
  */
  func acquireExclusiveAccess() -> Bool

  /*!
  	@method			releaseExclusiveAccess
  	@abstract		Releases the latest exclusive access request for the device.
  	@discussion		A call to this method must be made for every call to @link //apple_ref/occ/instm/DRDevice/acquireExclusiveAccess acquireExclusiveAccess @/link, 
  					otherwise the process will never release its exclusive access.
  */
  func releaseExclusiveAccess()

  /*!
  	@method			acquireMediaReservation
  	@abstract		Indicate an interest in the blank media reservation.
  	@discussion		Blank media participates in a reservation system that allows applications to express
  					their claim on blank media to other applications.  Indicating an interest in the reservation
  					isn't enough to assume it's been acquired, as there are likely to be other applications in
  					the system who have also indicated an interest in the blank media reservation.  You will
  					receive a @link DRDeviceStatusChangedNotification DRDeviceStatusChangedNotification @/link with a value of <tt>TRUE</tt> for the
  					@link DRDeviceMediaIsReservedKey DRDeviceMediaIsReservedKey @/link when the blank media reservation has been acquired.
  					
  					This function may be called multiple times. Each time it is called, a call to
  					@link //apple_ref/occ/instm/DRDevice/releaseMediaReservation releaseMediaReservation @/link must be made at a later time, otherwise the process will
  					never fully rescind its interest in the blank media reservation.
  */
  func acquireMediaReservation()

  /*!
  	@method			releaseMediaReservation
  	@abstract		Releases any media reservation that might be in place for the device.
  	@discussion		If media is inserted and reserved, then the reservation will be passed 
  					on to the next process with a reservation request.
  */
  func releaseMediaReservation()

  /*!
  	@method			isEqualToDevice:
  	@abstract		Compares the receiver to another device.
  	@param			otherDevice	Another DRDevice instance to compare to the receiver.
  	@result			Returns <i>YES</i> if the receiver is equal to otherDevice.
  */
  func isEqualTo(otherDevice: DRDevice!) -> Bool
  init()
}

/*! 
	@category		DRDevice (InfoConvenience)
   	@discussion		This category on DRDevice defines methods that make retrieving
   					the more commonly accessed DRDevice information dictionary properties easier.
*/
extension DRDevice {

  /*!
  	@method		writesCD
  	@discussion	Reports the device's ability to burn to CD-type media.
  	@result		Returns <i>YES</i> if the device has the ability to write to CD-R media.
  */
  func writesCD() -> Bool

  /*!
  	@method		writesDVD
  	@discussion	Reports the device's ability to burn to DVD-type media.
  	@result		Returns <i>YES</i> if the device has the ability to write to DVD media.
  */
  func writesDVD() -> Bool

  /*!
  	@method		displayName
  	@discussion	Returns an NSString suitable for display in the user interface.
  */
  func displayName() -> String!

  /*!
  	@method		ioRegistryEntryPath
  	@discussion	Returns the path to the device in the IO Registry.
  */
  func ioRegistryEntryPath() -> String!
}

/*! 
	@category		DRDevice (StatusConvenience)
   	@discussion		This category on DRDevice defines methods that make retrieving
   					the more commonly accessed DRDevice status dictionary properties easier.
*/
extension DRDevice {

  /*!
  	@method		mediaIsPresent
  	@discussion	Reports the presence of the media.
  */
  func mediaIsPresent() -> Bool

  /*!
  	@method		mediaIsTransitioning
  	@discussion	Returns <i>YES</i> if the media is in transition (spinning up or down for example).
  */
  func mediaIsTransitioning() -> Bool

  /*!
  	@method		mediaIsBusy
  	@discussion	Returns <i>YES</i> if the media is in use by some process - even the one
  				making this call.
  */
  func mediaIsBusy() -> Bool

  /*!
  	@method		mediaType
  	@discussion	Returns the type of media currently inserted into the device.
  */
  func mediaType() -> String!

  /*!
  	@method		mediaIsBlank
  	@discussion	Returns <i>YES</i> the media in the device is blank.
  */
  func mediaIsBlank() -> Bool

  /*!
  	@method		mediaIsAppendable
  	@discussion	Returns <i>YES</i> if the media in the device can have more data appended to
  				any existing data.
  */
  func mediaIsAppendable() -> Bool

  /*!
  	@method		mediaIsOverwritable
  	@discussion	Returns <i>YES</i> if the media in the device can be fully (re)written.
  */
  func mediaIsOverwritable() -> Bool

  /*!
  	@method		mediaIsErasable
  	@discussion	Returns <i>YES</i> if the media can be erased (i.e., CD-RW, DVD-RW, etc).
  */
  func mediaIsErasable() -> Bool

  /*!
  	@method		mediaIsReserved
  	@discussion	Returns <i>YES</i> if the application calling this method currently holds
  				the reservation on the media.
  */
  func mediaIsReserved() -> Bool

  /*!
  	@method		mediaSpaceOverwritable
  	@discussion	Returns the amount of writable space on the media.
  */
  func mediaSpaceOverwritable() -> DRMSF!

  /*!
  	@method		mediaSpaceUsed
  	@discussion	Returns the amount of used space on the media.
  */
  func mediaSpaceUsed() -> DRMSF!

  /*!
  	@method		mediaSpaceFree
  	@discussion	Returns the amount of free space on the media.
  */
  func mediaSpaceFree() -> DRMSF!

  /*!
  	@method		trayIsOpen
  	@discussion	Reports the tray state of the device.
  	@result		Returns <i>YES</i> if the device has a tray and it is open.
  */
  func trayIsOpen() -> Bool

  /*!
  	@method		bsdName
  	@discussion	Returns the bsd /dev node name.
  */
  func bsdName() -> String!
}

/*!
	@const	DRDeviceBurnSpeedCD1x		176.4 KB/sec.
*/
@available(OSX 10.2, *)
let DRDeviceBurnSpeedCD1x: Float

/*!
	@const	DRDeviceBurnSpeedDVD1x	1385.0 KB/sec.
*/
@available(OSX 10.2, *)
let DRDeviceBurnSpeedDVD1x: Float

/*!
	@const	DRDeviceBurnSpeedBD1x	4496.0 KB/sec.
*/
@available(OSX 10.5, *)
let DRDeviceBurnSpeedBD1x: Float

/*!
@const	DRDeviceBurnSpeedHDDVD1x	4568.0 KB/sec.
 */
@available(OSX 10.5, *)
let DRDeviceBurnSpeedHDDVD1x: Float

/*!
	@const		DRDeviceBurnSpeedMax
	@discussion	A value representing the maximum speed at which a device can burn. The
				actual speed will vary from device to device.
*/
@available(OSX 10.2, *)
let DRDeviceBurnSpeedMax: Float

/*!
	@const	 	DRDeviceAppearedNotification
	@discussion	Posted by a @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link when a device is added to the system.

				This notification is registered for only by name. 
				
				The object associated with this notification
				is the the device that has appeared. The userInfo is the same dictionary 
				returned by @link //apple_ref/occ/instm/DRDevice/info info @/link for that device. 
*/
@available(OSX 10.2, *)
let DRDeviceAppearedNotification: String

/*!
	@const		DRDeviceDisappearedNotification
	@discussion	Posted by a @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link when a device is removed from the system.
	
				The object associated with this notification
				is the the device that has disappeared. The userInfo is the same dictionary 
				returned by @link //apple_ref/occ/instm/DRDevice/info info @/link for that device. 
*/
@available(OSX 10.2, *)
let DRDeviceDisappearedNotification: String

/*!
	@const	 	DRDeviceStatusChangedNotification
	@discussion	Posted by a @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link when the media
				in a device changes state. This can include being ejected, inserted, becoming busy, 
				etc. 
				
				The object for this notification is the device who's media is changing state.
				The userInfo for this notification is the same dictionary returned by @link //apple_ref/occ/instm/DRDevice/status status @/link for 
				that device. 
*/
@available(OSX 10.2, *)
let DRDeviceStatusChangedNotification: String

/*!
	@const		DRDeviceSupportLevelKey	
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString describing the support level the device enjoys from the engine.
*/
@available(OSX 10.2, *)
let DRDeviceSupportLevelKey: String

/*!
	@const		DRDeviceIORegistryEntryPathKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString containing the path of the device in the IO Registry.
*/
@available(OSX 10.2, *)
let DRDeviceIORegistryEntryPathKey: String

/*!
	@const		DRDeviceWriteCapabilitiesKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSDictionary containing the capabilities of the device for writing different kinds of media.
*/
@available(OSX 10.2, *)
let DRDeviceWriteCapabilitiesKey: String

/*!
	@const		DRDeviceVendorNameKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString containing the vendor name extracted from the device.
*/
@available(OSX 10.2, *)
let DRDeviceVendorNameKey: String

/*!
	@const		DRDeviceProductNameKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString containing the product name extracted from the device.
*/
@available(OSX 10.2, *)
let DRDeviceProductNameKey: String

/*!
	@const		DRDeviceFirmwareRevisionKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString containing the firmeware revision extracted from the device.
*/
@available(OSX 10.2, *)
let DRDeviceFirmwareRevisionKey: String

/*!
	@const		DRDevicePhysicalInterconnectKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString describing the connection of the device to the computer.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectKey: String

/*!
	@const		DRDevicePhysicalInterconnectLocationKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSString describing the location of the device (e.g. internal/external).
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectLocationKey: String

/*!
	@const DRDeviceLoadingMechanismCanEjectKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSNumber describing if the loading mechanism of the drive can eject.
*/
@available(OSX 10.3, *)
let DRDeviceLoadingMechanismCanEjectKey: String

/*!
	@const DRDeviceLoadingMechanismCanInjectKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSNumber describing if the loading mechanism of the drive can inject.
*/
@available(OSX 10.3, *)
let DRDeviceLoadingMechanismCanInjectKey: String

/*!
	@const DRDeviceLoadingMechanismCanOpenKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSNumber describing if the loading mechanism of the drive can open.
*/
@available(OSX 10.3, *)
let DRDeviceLoadingMechanismCanOpenKey: String

/*!
	@const DRDeviceWriteBufferSizeKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/info info @/link method.
				NSNumber containing the size of the write buffer of the device.
*/
@available(OSX 10.3, *)
let DRDeviceWriteBufferSizeKey: String

/*!
	@const		DRDeviceSupportLevelNone
	@discussion	One of the values for @link DRDeviceSupportLevelKey DRDeviceSupportLevelKey @/link. This value indicates 
				this device is not supported.
*/
@available(OSX 10.2, *)
let DRDeviceSupportLevelNone: String

/*!
	@const DRDeviceSupportLevelUnsupported
	@discussion	One of the values for @link DRDeviceSupportLevelKey DRDeviceSupportLevelKey @/link. This value indicates
				the device is unsupported, but the engine will try to use it anyway.
*/
@available(OSX 10.3, *)
let DRDeviceSupportLevelUnsupported: String

/*!
	@const		DRDeviceSupportLevelVendorSupported
	@discussion	One of the values for @link DRDeviceSupportLevelKey DRDeviceSupportLevelKey @/link. This value indicates 
				this device has been tested by a third party for support.
*/
@available(OSX 10.2, *)
let DRDeviceSupportLevelVendorSupported: String

/*!
	@const		DRDeviceSupportLevelAppleSupported
	@discussion	One of the values for @link DRDeviceSupportLevelKey DRDeviceSupportLevelKey @/link. This value indicates 
				this device has been tested by Apple for support.
*/
@available(OSX 10.2, *)
let DRDeviceSupportLevelAppleSupported: String

/*!
	@const		DRDeviceSupportLevelAppleShipping
	@discussion	One of the values for @link DRDeviceSupportLevelKey DRDeviceSupportLevelKey @/link. This value indicates 
				this device is shipping in some Apple machine.
*/
@available(OSX 10.2, *)
let DRDeviceSupportLevelAppleShipping: String

/*!
	@const		DRDevicePhysicalInterconnectATAPI
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectKey DRDevicePhysicalInterconnectKey @/link.
				Device is connected on an ATAPI interface.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectATAPI: String

/*!
	@const		DRDevicePhysicalInterconnectFibreChannel
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectKey DRDevicePhysicalInterconnectKey @/link.
				Device is connected through a Fibre Channel interface.
*/
@available(OSX 10.3, *)
let DRDevicePhysicalInterconnectFibreChannel: String

/*!
	@const		DRDevicePhysicalInterconnectFireWire
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectKey DRDevicePhysicalInterconnectKey @/link.
				Device is connected through a Firewire interface.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectFireWire: String

/*!
	@const		DRDevicePhysicalInterconnectSCSI
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectKey DRDevicePhysicalInterconnectKey @/link.
				Device is connected on a SCSI interface.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectSCSI: String

/*!
	@const		DRDevicePhysicalInterconnectUSB
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectKey DRDevicePhysicalInterconnectKey @/link.
				Device is connected through a USB interface.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectUSB: String

/*!
	@const		DRDevicePhysicalInterconnectLocationInternal
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectLocationKey DRDevicePhysicalInterconnectLocationKey @/link.
				Device is connected to the machine internally.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectLocationInternal: String

/*!
	@const		DRDevicePhysicalInterconnectLocationExternal
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectLocationKey DRDevicePhysicalInterconnectLocationKey @/link.
				Device is connected to the machine externally.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectLocationExternal: String

/*!
	@const		DRDevicePhysicalInterconnectLocationUnknown
	@discussion	One of the possible values of the @link DRDevicePhysicalInterconnectLocationKey DRDevicePhysicalInterconnectLocationKey @/link.
				It's not known how the device is connected.
*/
@available(OSX 10.2, *)
let DRDevicePhysicalInterconnectLocationUnknown: String

/*!
	@const 		DRDeviceCanWriteKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to some type of media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteKey: String

/*!
	@const		DRDeviceCanWriteCDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to some type of CD based media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteCDKey: String

/*!
	@const		DRDeviceCanWriteCDRKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to CD-R media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteCDRKey: String

/*!
	@const		DRDeviceCanWriteCDRWKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to CD-RW media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteCDRWKey: String

/*!
	@const		DRDeviceCanWriteDVDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to some type of DVD based media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteDVDKey: String

/*!
	@const		DRDeviceCanWriteDVDRKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD-R media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteDVDRKey: String

/*!
	@const		DRDeviceCanWriteDVDRDualLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				 NSNumber containing a boolean value indicating whether the device can write to DVD-R DL media.
 */
@available(OSX 10.5, *)
let DRDeviceCanWriteDVDRDualLayerKey: String

/*!
	@const		DRDeviceCanWriteDVDRWKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD-RW media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteDVDRWKey: String

/*!
	@const		DRDeviceCanWriteDVDRWDualLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD-RW DL media.
 */
@available(OSX 10.5, *)
let DRDeviceCanWriteDVDRWDualLayerKey: String

/*!
	@const		DRDeviceCanWriteDVDRAMKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD-RAM media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteDVDRAMKey: String

/*!
	@const		DRDeviceCanWriteDVDPlusRKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD+R media.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteDVDPlusRKey: String

/*!
	@const		DRDeviceCanWriteDVDPlusRDoubleLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD+R DL media.
*/
@available(OSX 10.4, *)
let DRDeviceCanWriteDVDPlusRDoubleLayerKey: String

/*!
	@const		DRDeviceCanWriteDVDPlusRWKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD+RW media.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteDVDPlusRWKey: String

/*!
	@const		DRDeviceCanWriteDVDPlusRWDoubleLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to DVD+RW DL media.
 */
@available(OSX 10.5, *)
let DRDeviceCanWriteDVDPlusRWDoubleLayerKey: String

/*!
	@const		DRDeviceCanWriteBDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to some type of BD (Blu-ray) based media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteBDKey: String

/*!
	@const		DRDeviceCanWriteBDRKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to BD-R media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteBDRKey: String

/*!
	@const		DRDeviceCanWriteBDREKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to BD-RE media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteBDREKey: String

/*!
	@const		DRDeviceCanWriteHDDVDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to some type of HDDVD based media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDKey: String

/*!
	@const		DRDeviceCanWriteHDDVDRKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to HD DVD-R media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDRKey: String

/*!
	@const		DRDeviceCanWriteHDDVDRDualLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
 NSNumber containing a boolean value indicating whether the device can write to HD DVD-R DL media.
 */
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDRDualLayerKey: String

/*!
	@const		DRDeviceCanWriteHDDVDRAMKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to HD DVD-RAM media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDRAMKey: String

/*!
	@const		DRDeviceCanWriteHDDVDRWKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to HD DVD-RW media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDRWKey: String

/*!
	@const		DRDeviceCanWriteHDDVDRWDualLayerKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write to HD DVD-RW DL media.
*/
@available(OSX 10.5, *)
let DRDeviceCanWriteHDDVDRWDualLayerKey: String

/*!
	@const		DRDeviceCanWriteCDTextKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write CD-Text information to media.
*/
@available(OSX 10.2, *)
let DRDeviceCanWriteCDTextKey: String

/*!
	@const		DRDeviceCanWriteIndexPointsKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write index points to CD media.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteIndexPointsKey: String

/*!
	@const		DRDeviceCanWriteISRCKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can write ISRC to CD media.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteISRCKey: String

/*!
	@const		DRDeviceCanWriteCDTAOKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports a TAO (track-at-once)
				burn strategy for CD.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteCDTAOKey: String

/*!
	@const		DRDeviceCanWriteCDSAOKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports a SAO (session-at-once)
				burn strategy for CD.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteCDSAOKey: String

/*!
	@const		DRDeviceCanWriteCDRawKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports a raw mode burn strategy for CD.
				Raw mode is sometimes incorrectly referred to as DAO (disc-at-once).
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteCDRawKey: String

/*!
	@const		DRDeviceCanWriteDVDDAOKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports a DAO (disc-at-once)
				burn strategy on DVD media.
*/
@available(OSX 10.3, *)
let DRDeviceCanWriteDVDDAOKey: String

/*!
	@const		DRDeviceCanTestWriteCDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can perform a test burn to CD media.
*/
@available(OSX 10.2, *)
let DRDeviceCanTestWriteCDKey: String

/*!
	@const		DRDeviceCanTestWriteDVDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device can perform a test burn to DVD media.
*/
@available(OSX 10.2, *)
let DRDeviceCanTestWriteDVDKey: String

/*!
	@const		DRDeviceCanUnderrunProtectCDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports burn underrun protection when writing to CD media.
*/
@available(OSX 10.2, *)
let DRDeviceCanUnderrunProtectCDKey: String

/*!
	@const		DRDeviceCanUnderrunProtectDVDKey
	@discussion	One of the keys in the @link DRDeviceWriteCapabilitiesKey DRDeviceWriteCapabilitiesKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the device supports burn underrun protection when writing to DVD media.
*/
@available(OSX 10.2, *)
let DRDeviceCanUnderrunProtectDVDKey: String

/*!
	@const		DRDeviceIsBusyKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSNumber containing a boolean value indicating whether the device is busy or not.
*/
@available(OSX 10.2, *)
let DRDeviceIsBusyKey: String

/*!
	@const		DRDeviceIsTrayOpenKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSNumber containing a boolean value indicating whether the device's tray is open or not.
*/
@available(OSX 10.2, *)
let DRDeviceIsTrayOpenKey: String

/*!
	@const		DRDeviceMaximumWriteSpeedKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSNumber containing the maximum burning speed of this device.
*/
@available(OSX 10.2, *)
let DRDeviceMaximumWriteSpeedKey: String

/*!
	@const		DRDeviceCurrentWriteSpeedKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSNumber containing the current burning speed of this device.
*/
@available(OSX 10.2, *)
let DRDeviceCurrentWriteSpeedKey: String

/*!
	@const		DRDeviceMediaStateKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSString describing the state of the media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaStateKey: String

/*!
	@const		DRDeviceMediaInfoKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSDictionary of information describing the media currently in the device. 
				This key may not be present if no media is inserted.
*/
@available(OSX 10.2, *)
let DRDeviceMediaInfoKey: String

/*!
	@const		DRDeviceBurnSpeedsKey
	@discussion	One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSArray containing the possible burn speeds available to use.
				This key may not be present if no media is inserted.
*/
@available(OSX 10.2, *)
let DRDeviceBurnSpeedsKey: String

/*!
	@const		DRDeviceTrackRefsKey
	@discussion One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSArray containing a list of @link //apple_ref/occ/cl/DRTrack DRTrack @/link objects describing any tracks that
				are already on the disc.
*/
@available(OSX 10.3, *)
let DRDeviceTrackRefsKey: String

/*!
	@const		DRDeviceTrackInfoKey
	@discussion One of the keys in the dictionary returned by the @link //apple_ref/occ/instm/DRDevice/status status @/link method.
				NSDictionary containing NSDictionaries describing the tracks.  @link //apple_ref/occ/cl/DRTrack DRTracks @/link
				from the @link DRDeviceTrackRefsKey DRDeviceTrackRefsKey @/link are used as keys into this dictionary.
*/
@available(OSX 10.3, *)
let DRDeviceTrackInfoKey: String

/*!
	@const		DRDeviceMediaStateMediaPresent
	@discussion	One of the possible values for the @link DRDeviceMediaStateKey DRDeviceMediaStateKey @/link.
				Device contains media of some type.
*/
@available(OSX 10.2, *)
let DRDeviceMediaStateMediaPresent: String

/*!
	@const		DRDeviceMediaStateInTransition
	@discussion	One of the possible values for the @link DRDeviceMediaStateKey DRDeviceMediaStateKey @/link.
				The media is transitioning from one state to another (i.e., being spun up/down).
*/
@available(OSX 10.2, *)
let DRDeviceMediaStateInTransition: String

/*!
	@const		DRDeviceMediaStateNone
	@discussion	One of the possible values for the @link DRDeviceMediaStateKey DRDeviceMediaStateKey @/link.
				No media is present in the device.
*/
@available(OSX 10.2, *)
let DRDeviceMediaStateNone: String

/*!
	@const		DRDeviceMediaBSDNameKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSString containing the BSD /dev node name assigned to the media in the device.
*/
@available(OSX 10.2, *)
let DRDeviceMediaBSDNameKey: String

/*!
	@const		DRDeviceMediaIsBlankKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing a boolean value indicating whether data has previously been written to the media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaIsBlankKey: String

/*!
	@const		DRDeviceMediaIsAppendableKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing a boolean value indicating that data can be appended to the exisiting data (if any).
*/
@available(OSX 10.2, *)
let DRDeviceMediaIsAppendableKey: String

/*!
	@const		DRDeviceMediaIsOverwritableKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing a boolean value indicating that the data on the disc (if any) can be overwritten.
				Rewritable media can always be erased, and then rewritten in its entirety, so it is always considered overwritable.

				Write-once media, if its blank, can also be written in its entirety and is also considered overwritable.

				Write-once media, that has been partially written, can never again enter a state where it is entirely writable and will have lost its overwritable designation.
*/
@available(OSX 10.3, *)
let DRDeviceMediaIsOverwritableKey: String

/*!
	@const		DRDeviceMediaIsErasableKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing a boolean value indicating whether this media can be erased.
*/
@available(OSX 10.2, *)
let DRDeviceMediaIsErasableKey: String

/*!
	@const		DRDeviceMediaIsReservedKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing a boolean value indicating whether the media is reserved for exclusive use by 
				the current process.
*/
@available(OSX 10.2, *)
let DRDeviceMediaIsReservedKey: String

/*!
	@const		DRDeviceMediaOverwritableSpaceKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				MSF value of the amount of writable space available on the media to be written to - if that media can be overwritten. 
				Media that can be overwitten is designated through the @link DRDeviceMediaIsOverwritableKey DRDeviceMediaIsOverwritableKey @/link.
				
				The overwritable space is the amount of space on the disc that would be available if any data currently
				on the disc is first erased. 
*/
@available(OSX 10.3, *)
let DRDeviceMediaOverwritableSpaceKey: String

/*!
	@const		DRDeviceMediaFreeSpaceKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				MSF value of the amount of space available on the media to be written to. If the media already contains data 
				and this value will be less than the normal maximum size of the disc. This value will normally only 
				be used if the intent is to append data onto an open disc.
*/
@available(OSX 10.2, *)
let DRDeviceMediaFreeSpaceKey: String

/*!
	@const		DRDeviceMediaUsedSpaceKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				MSF value of the amount of space currently used for exising data.
*/
@available(OSX 10.2, *)
let DRDeviceMediaUsedSpaceKey: String

/*!
	@const		DRDeviceMediaBlocksOverwritableKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the total amount of writable space available (in blocks) on the media to be written to - if that media can be overwritten. 
				Media that can be overwitten is designated through the @link DRDeviceMediaIsOverwritableKey DRDeviceMediaIsOverwritableKey @/link.

				The overwritable space is the amount of space on the disc that would be available if any data currently
				on the disc is first erased. 
*/
@available(OSX 10.3, *)
let DRDeviceMediaBlocksOverwritableKey: String

/*!
	@const		DRDeviceMediaBlocksFreeKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the amount of space available (in blocks) on the media to be written to. If the media already contains data 
				and this value will be less than the normal maximum size of the disc. This value will normally only 
				be used if the intent is to append data onto an open disc.
*/
@available(OSX 10.2, *)
let DRDeviceMediaBlocksFreeKey: String

/*!
	@const		DRDeviceMediaBlocksUsedKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the amount of space currently used (in blocks) for exising data.
*/
@available(OSX 10.2, *)
let DRDeviceMediaBlocksUsedKey: String

/*!
	@const		DRDeviceMediaDoubleLayerL0DataZoneBlocksKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the amount of space available (in blocks) on layer 0 of a double layer
				piece of media.
*/
@available(OSX 10.4, *)
let DRDeviceMediaDoubleLayerL0DataZoneBlocksKey: String

/*!
	@const		DRDeviceMediaTrackCountKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the number of tracks present on the media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTrackCountKey: String

/*!
	@const		DRDeviceMediaSessionCountKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSNumber containing the current number of sessions present on the media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaSessionCountKey: String

/*!
	@const DRDeviceMediaClassKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary. 
				NSString containing the class of media present in the drive.
*/
@available(OSX 10.2, *)
let DRDeviceMediaClassKey: String

/*!
	@const		DRDeviceMediaTypeKey
	@discussion	One of the keys in the @link DRDeviceMediaInfoKey DRDeviceMediaInfoKey @/link dictionary.
				NSString containing the type of media inserted in the device.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeKey: String

/*!
	@const	DRDeviceMediaClassCD
	@discussion	One possible value of the @link DRDeviceMediaClassKey DRDeviceMediaClassKey @/link. Indicates the media
				is some type of CD based media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaClassCD: String

/*!
	@const	DRDeviceMediaClassDVD
	@discussion	One possible value of the @link DRDeviceMediaClassKey DRDeviceMediaClassKey @/link. Indicates the media
				is some type of DVD based media.
*/
@available(OSX 10.2, *)
let DRDeviceMediaClassDVD: String

/*!
	@const	DRDeviceMediaClassBD
	@discussion	One possible value of the @link DRDeviceMediaClassKey DRDeviceMediaClassKey @/link. Indicates the media
				is some type of BD (Blu-ray) based media.
*/
@available(OSX 10.5, *)
let DRDeviceMediaClassBD: String

/*!
	@const	DRDeviceMediaClassHDDVD
	@discussion	One possible value of the @link DRDeviceMediaClassKey DRDeviceMediaClassKey @/link. Indicates the media
				is some type of HD DVD based media.
*/
@available(OSX 10.5, *)
let DRDeviceMediaClassHDDVD: String

/*!
	@const	DRDeviceMediaClassUnknown
	@discussion	One possible value of the @link DRDeviceMediaClassKey DRDeviceMediaClassKey @/link.  Indicates the media
				class is unknown.
*/
@available(OSX 10.2, *)
let DRDeviceMediaClassUnknown: String

/*!
	@const		DRDeviceMediaTypeCDROM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a CD-ROM.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeCDROM: String

/*!
	@const		DRDeviceMediaTypeCDR
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a CD-R.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeCDR: String

/*!
	@const		DRDeviceMediaTypeCDRW
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a CD-RW.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeCDRW: String

/*!
	@const		DRDeviceMediaTypeDVDROM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD-ROM.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeDVDROM: String

/*!
	@const		DRDeviceMediaTypeDVDRAM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD-RAM.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeDVDRAM: String

/*!
	@const		DRDeviceMediaTypeDVDR
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD-R.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeDVDR: String

/*!
@const		DRDeviceMediaTypeDVDRDualLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
 Media is a DVD-R DL.
 */
@available(OSX 10.5, *)
let DRDeviceMediaTypeDVDRDualLayer: String

/*!
	@const		DRDeviceMediaTypeDVDRW
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD-RW.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeDVDRW: String

/*!
	@const		DRDeviceMediaTypeDVDRWDualLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD-RW DL.
 */
@available(OSX 10.5, *)
let DRDeviceMediaTypeDVDRWDualLayer: String

/*!
	@const		DRDeviceMediaTypeDVDPlusR
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD+R.
*/
@available(OSX 10.3, *)
let DRDeviceMediaTypeDVDPlusR: String

/*!
	@const		DRDeviceMediaTypeDVDPlusRDoubleLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD+R Double Layer.
*/
@available(OSX 10.4, *)
let DRDeviceMediaTypeDVDPlusRDoubleLayer: String

/*!
	@const		DRDeviceMediaTypeDVDPlusRW
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD+RW.
*/
@available(OSX 10.3, *)
let DRDeviceMediaTypeDVDPlusRW: String

/*!
	@const		DRDeviceMediaTypeDVDPlusRWDoubleLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a DVD+RW Double Layer.
 */
@available(OSX 10.5, *)
let DRDeviceMediaTypeDVDPlusRWDoubleLayer: String

/*!
	@const		DRDeviceMediaTypeBDR
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a BD-R.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeBDR: String

/*!
	@const		DRDeviceMediaTypeBDRE
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a BD-RE.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeBDRE: String

/*!
	@const		DRDeviceMediaTypeBDROM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a BD-ROM.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeBDROM: String

/*!
	@const		DRDeviceMediaTypeHDDVDROM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-ROM.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDROM: String

/*!
	@const		DRDeviceMediaTypeHDDVDR
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-R.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDR: String

/*!
	@const		DRDeviceMediaTypeHDDVDRDualLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-R DL.
 */
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDRDualLayer: String

/*!
	@const		DRDeviceMediaTypeHDDVDRAM
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-RAM.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDRAM: String

/*!
	@const		DRDeviceMediaTypeHDDVDRW
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-RW.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDRW: String

/*!
	@const		DRDeviceMediaTypeHDDVDRWDualLayer
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				Media is a HD DVD-RW DL.
*/
@available(OSX 10.5, *)
let DRDeviceMediaTypeHDDVDRWDualLayer: String

/*!
	@const		DRDeviceMediaTypeUnknown
	@discussion	One of the possible values of the @link DRDeviceMediaTypeKey DRDeviceMediaTypeKey @/link.
				The type of the media cannot be determined.
*/
@available(OSX 10.2, *)
let DRDeviceMediaTypeUnknown: String

/*!
	@class		DRErase
	@abstract	A DRErase object handles the process of erasing a rewritable CD or DVD disc.
	@discussion	Each time you want to erase a disc, an instance of this class needs to be created.
	
				When an instance is created, you pass in an instance of @link //apple_ref/occ/cl/DRDevice DRDevice @/link to let the object 
				know what device to erase. This object is retained for the life of the DRErase instance. 
			
				A DRErase object will send out notifications through the @link //apple_ref/occ/cl/DRNotificationCenter DRNotificationCenter @/link mechanism to 
				broadcast the erase state to any interested observers. However, if for some reason you don't want
				to use notifications, you can poll the erase object at any time for the current status using
				@link //apple_ref/occ/instm/DRErase/status status @/link. This is not recommended in any 
				application using a run loop, because it involves polling.

				Here's an example that shows you how to use this class:
				
				<pre>@textblock
				- (void) doErase																							
				{
					DRDevice*       device;
					DRErase*        erase;
				
					// Determine correct device to erase...
					
					erase = [[DRErase alloc] initWithDevice:device];
					
					// we'll do a quick erase. It's typically all that's needed.
					[erase setEraseType:DREraseTypeQuick];
					
					// register to receive notification about the erase status.
					[[DRNotificationCenter currentRunLoopCenter] addObserver:self
																	selector:&#x40;selector(eraseNotification:)
																		name:DREraseStatusChangedNotification
																	  object:erase];
								   
					 // start the erase
					 [erase start];
				}
				
				- (void) eraseNotification:(NSNotification*)notification
				{
					DRErase*        erase = [notification object];
					NSDictionary*   status = [notification userInfo];
					
					// Do what you wish with the notification...
				}
				@/textblock</pre>
*/
class DRErase : NSObject {

  /*!
  	@method			eraseForDevice:
  	@abstract		Creates and returns an erase object.
  	@discussion		An erase object created with this method is ready to erase media.
     	@param 			device	Device to use for the erase.
      @result  		An autoreleased DRErase object.
  */
  /*not inherited*/ init!(forDevice device: DRDevice!)

  /*!
  	@method			initWithDevice:
  	@abstract		Initializes an erase object.
  	@discussion		An erase object created with this method is ready to erase media.
     	@param 			device	Device to use for the erase.
      @result  		A DRErase object.
  */
  init!(device: DRDevice!)

  /*!
  	@method			start
  	@abstract		Begin the process of erasing media.
  	@discussion		This method only kicks off the erase. Once the erasure starts,
  					control returns to the caller. The caller can monitor the progress 
  					of the erase by listening for a notification or by polling @link //apple_ref/occ/instm/DRErase/status status @/link.
  */
  func start()

  /*!
  	@method			status
  	@abstract		Returns a dictionary containing the status of the erase.
  	@discussion		The same dictionary is returned 
  					through the @link //apple_ref/occ/data/DREraseStatusChangedNotification DREraseStatusChangedNotification @/link notification.
  	@result			An NSDictionary containing the status of the erase.
  */
  func status() -> [NSObject : AnyObject]!

  /*! 
     	@method 		properties
     	@abstract		Returns the properties dictionary of the erase.
      @result  		An NSDictionary containing the properties of the erase.
  */
  func properties() -> [NSObject : AnyObject]!

  /*! 
     	@method 		setProperties:
     	@abstract		Sets the properties dictionary of the erase
     	@param 			properties	NSDictionary of the properties to set.
  */
  func setProperties(properties: [NSObject : AnyObject]!)

  /*! 
     	@method 		device
     	@abstract		Returns the device being used for the erase.
      @result  		The DRDevice the erase will use.
  */
  func device() -> DRDevice!
  init()
}

/*! 
	@category		DRErase (PropertyConvenienceMethods)
   	@discussion		This category on DRErase defines methods that make setting and retrieving
   					the various DRErase properties easier.
*/
extension DRErase {

  /*!
  	@method			eraseType
  	@abstract		Returns the type of erase to be performed.
  	@result			An NSString
  */
  func eraseType() -> String!

  /*!
  	@method			setEraseType:
  	@abstract		Sets the type of erase to perform.
  	@param			type	The type of erase.
  */
  func setEraseType(type: String!)
}

/*!
	@const		DREraseTypeKey
	@discussion	The key for the erase's properties dictionary storing the type of 
				erase to perform 
*/
@available(OSX 10.2, *)
let DREraseTypeKey: String
@available(OSX 10.2, *)
let DREraseTypeQuick: String

/*!	
	@const		DREraseTypeComplete	
	@discussion	An NString value for the @link DREraseTypeKey DREraseTypeKey @/link. 
				Configures the erase object to perform a complete erase, erasing every byte on the
				disk. This operation is slow (on the order of 30 minutes) to complete.
*/
@available(OSX 10.2, *)
let DREraseTypeComplete: String
@available(OSX 10.2, *)
let DREraseStatusChangedNotification: String

/*!
	@typedef	DRFilesystemInclusionMask
	@abstract	Mask value determing the presence of a DRFSObject in a specific filesystem.
	@discussion	 The filesystem
				mask is a bitfield which contains a 1 if the object will appear in the corresponding filesystem,
				and 0 otherwise. 
*/
typealias DRFilesystemInclusionMask = UInt32
var DRFilesystemInclusionMaskISO9660: Int { get }
var DRFilesystemInclusionMaskJoliet: Int { get }
var DRFilesystemInclusionMaskUDF: Int { get }
var DRFilesystemInclusionMaskHFSPlus: Int { get }

/*!
	@class			DRFSObject
	@abstract		Abstract base class for the content creation framework

	@discussion		<h3>About Content Creation</h3>
				Content creation provides an interface for dynamic filesystem creation, allowing
				complex filesystem hierarchies to be created and burned on-the-fly without having
				to generate a complete on-disk representation.
				
				DRFSObject is the root object for the objects contained in the Objective C 
				content creation hierarchy. Through DRFSObject, file and folder objects
				inherit a basic interface to getting and setting filesystem properties,
				names and masks. The DRFSObject class is an abstract class, there are no
				methods available to create a DRFSObject directly, you create @link //apple_ref/occ/cl/DRFile DRFile @/link and
				@link //apple_ref/occ/cl/DRFolder DRFolder @/link objects instead.
				
				
				<h3>Real and Virtual Objects</h3>
				The interface is designed around folder and file objects which are laid out
				in a one-parent-many-children hierarchy - this should be a familiar concept for
				anyone who's ever used a modern filesystem.  There are two kinds of objects in
				this API; "real" objects and "virtual" objects, and the distinction is important.
				
				<ul>
				<li>A <i>real</i> file or folder object corresponds directly to a file or folder
					on disk.  The data for a real file object comes directly from the on-disk file.
					The hierarchy underneath a real folder object corresponds 1:1 to the
					hierarchy underneath the folder in the on-disk filesystem.</li>
				
				<li>A <i>virtual</i> file or folder object does not have any actual representation
					on disk.  The data for a virtual file object is specified through the API or
					in a callback function.  The hierarchy underneath a virtual folder object 
					is specified through the API.</li>
				</ul>
				
				
				<h3>Creating a Virtual Hierarchy</h3>
				In the hierarchy specified through this API, only virtual folders may be assigned
				children.  Real files, virtual files, and real folders are all considered leaf
				nodes and may not have children.  (Real folders may of course contain files and
				folders, but the files and folders are specified by the on-disk representation and
				may not be changed through the API unless the real folder is made virtual first.)
				
				A hierarchy may be as simple as a single real folder, or it can be as complicated
				as needed - for example, a virtual folder with a deep hierarchy of children which are
				a complex mix of real files, virtual files, real folders, and virtual folders.
				
				
				<h3>Converting From Real To Virtual</h3>
				A real folder can be dynamically converted to a virtual folder, in which case
				its first level of children is read and converted into a virtual hierarchy.  The children
				thus created will all be real.  For example: A real folder named <i>root</i> is converted
				into a virtual folder.  The on-disk folder contains a file named <i>file1</i> and
				a folder named <i>folder2</i>.  After conversion, the result is a virtual folder named
				<i>root</i> with two children: the real file <i>file1</i> and the real folder <i>folder2</i>.
				
				
				<h3>Base Names and Specific Names</h3>
				Because the content creation API is able to generate multiple filesystems which
				require multiple varied naming conventions, a sensible system for naming is required.
				Thus each file has a <i>base name</i> which corresponds to its default name in any filesystem. 
				Whenever possible, the base name will be used in the generated filesystem without
				modification.
			
				The initial base name for a real object is the name of the corresponding object
				on disk.  The initial base name for a virtual object is specified when the object
				is created.  The base names for both real and virtual objects may be modified using the
				@link //apple_ref/occ/instm/DRFSObject/setBaseName: setBaseName: @/link method.
				
				Inside a particular filesytem, if the base name cannot be used as-is (if, for example, it contains illegal
				characters, exceeds the length requirements, or otherwise doesn't meet the required format)
				then an acceptable name that meets the filesystem's criteria will be generated
				automatically from the base name.  The name which is acceptable to a given filesystem
				is that file's <i>specific name</i> for that filesystem.
				
				A specific name may be obtained and modified through this API, or may be left empty to
				be automatically generated from the base name.  When a specific name is set through the API,
				it will be modified to ensure that the name is legal according to the particular filesystem.
				
				Even when a specific name is set or generated through the API, it may not be the actual name
				used on the disc.  If an object's specific name conflicts with the specific name of another
				of the object's siblings in that filesystem, one or both specific names will be <i>mangled</i>
				to obtain a unique name before burning, usually by adding a numeric mangle code such as _001
				to each name.
				
				There are two APIs available for getting the specific name from an object:
				
				<ul>
				<li>@link //apple_ref/occ/instm/DRFSObject/specificNameForFilesystem: specificNameForFilesystem: @/link returns the unmodified specific name, which would be used if there were
				no conflicts.</li>
				
				<ul>@link //apple_ref/occ/instm/DRFSObject/mangledNameForFilesystem: mangledNameForFilesystem: @/link returns a modified specific name, mangled if necessary,
				which is guaranteed to be unique amongst its siblings in the filesystem.</li>
				</ul>
 
				The filesystem keys are detailed in <b>Filesystem data accessors</b>.  Most of the keys are 
				straightforward; however, ISO-9660
				is a special case, since there are two possible naming conventions for ISO-9660, level 1
				(8.3, limited charset) and level 2 (30 chars, marginally expanded charset).  You can't
				specify DRISO9660 when obtaining a name; instead, you must explicitly specify whether
				you want the level 1 or level 2 name with DRISO9660LevelOne or DRISO9660LevelTwo.
				
				If the object's
				name does not conflict with any of its siblings, @link //apple_ref/occ/instm/DRFSObject/mangledNameForFilesystem: mangledNameForFilesystem: @/link will return the same
				value as @link //apple_ref/occ/instm/DRFSObject/specificNameForFilesystem: specificNameForFilesystem: @/link.  The converse is not necessarily true -- one object may get
				the actual specific name, and other files with name collisions will be mangled.
				
				@link //apple_ref/occ/instm/DRFSObject/mangledNameForFilesystem: mangledNameForFilesystem: @/link will check each of the object's siblings in the hierarchy and mangle to
				resolve any filename conflicts, so it can be a much more expensive call than @link //apple_ref/occ/instm/DRFSObject/specificNameForFilesystem: specificNameForFilesystem: @/link,
				taking at worst O(N^2) time where N is the number of siblings.  However, actual performance
				tends to be much better, closer to O(N), particularly when there are only a few collisions.
				@link //apple_ref/occ/instm/DRFSObject/mangledNameForFilesystem: mangledNameForFilesystem: @/link has the advantage of allowing you to see (and to show the user) the exact
				names which would be generated on the disc if the burn were started immediately.
				
				Both @link //apple_ref/occ/instm/DRFSObject/specificNameForFilesystem: specificNameForFilesystem: @/link and @link //apple_ref/occ/instm/DRFSObject/mangledNameForFilesystem: mangledNameForFilesystem: @/link will cache information when possible, so
				that names are only generated and mangled when necessary.  Adding or removing children
				from a folder, or changing the base or specific name on an object, may cause
				the cached names of the object's children or siblings to be recomputed.
				
				
				<h3>Properties and Other Meta-Data</h3>
				Properties are generally accessed similarly to names.  Each object has overall
				properties which apply to every filesystem, and it may also have different properties
				in each filesystem.  For example, a file which has no relevance for a MacOS user
				may be marked invisible in the HFS+ tree, but be visible in the Joliet tree.
				
				The properties, like names, are also differentiated by filesystem. There is one
				properties dictionary for @link DRAllFilesystems DRAllFilesystems @/link, and one properties dictionary for each
				individual filesystem - @link DRISO9660 DRISO9660 @/link, @link DRJoliet DRJoliet @/link, @link DRHFSPlus DRHFSPlus @/link, etc.  
			
				The properties for @link DRAllFilesystems DRAllFilesystems @/link are treated as the base value, and then the
				properties in the specific filesystem dictionary are treated as overrides.
				
				When obtaining properties with @link //apple_ref/occ/instm/DRFSObject/propertyForKey:inFilesystem:mergeWithOtherFilesystems: propertyForKey:inFilesystem:mergeWithOtherFilesystems: @/link or
				@link //apple_ref/occ/instm/DRFSObject/propertiesForFilesystem:mergeWithOtherFilesystems: propertiesForFilesystem:mergeWithOtherFilesystems: @/link, you can specify whether you want to
				automatically coalesce the properties between the specified filesystem dictionary and
				the "all filesystems" dictionary.  This is useful if you want to obtain the effective
				value of the property, because it will return the value from the "all filesystems"
				dictionary if the specific filesystem does not assign an override. 
				
					
				
				<h3>Filesystem Masks</h3>
				It's possible to suppress generation of particular items in a folder tree.  For example,
				you may want a MacOS application file or bundle to only appear in the HFS+ tree, and
				want an .EXE file to only appear in the Joliet tree.
				
				Filesystem-specific suppression is handled through the @link //apple_ref/c/tag/DRFilesystemInclusionMask%32constants filesystem mask @/link.  The filesystem
				mask is a bitfield which contains a 1 if the object will appear in the corresponding filesystem,
				and 0 otherwise.  This can be used to generate arbitrarily complex trees, where in the most
				complex case each filesystem may theoretically have its own unique and disjoint tree.
				(Such discs are discouraged, however, since they may be confusing to the user.)
				
				An object can be considered to have two mask values.  The first one is the <i>explicit mask</i>
				which has been set by the client, and may be zero if no mask has been set.  The other is the
				<i>effective mask</i>, which is the actual mask which will be used.
				
				If the explicit mask is non-zero, then the object's effective mask is equal to the
				bitwise AND of the object's explicit mask and its parent's effective mask.
				
				If the explicit mask is zero, the object will use the same mask as its parent.  (In
				other words, the effective mask is equal to the parent's effective mask.)
				
				If the root of the hierarchy does not have an explicit mask set, the effective mask of
				the root and all its descendants will be zero.
				
				The explicit mask may be cleared by changing it to zero.  By doing this, the
				object's explicit mask becomes zero and its effective mask will be inherited
				from its parent.
				
				If an object's effective mask is zero, it will not be included in the burn.  The major
				exception to this rule is when the root folder's explicit/effective mask is zero - when
				this happens, DiscRecording will assign a default mask, typically one which will result in
				the most cross-platform disc possible.
				
				If the effective mask of the root is zero at the time of the burn, DiscRecording will
				automatically pick a default mask, typically one which will result in the most
				cross-platform disc possible.
				
				Some combinations of filesystem mask have special requirements; for example, Joliet is
				based on ISO-9660, and requires that ISO-9660 be enabled on at least the root object.
				(You can still have something appear in Joliet but not ISO-9660, however.)  Some
				combinations in the future may be mutually exclusive. 
				
				You do not have to set an explicit mask for anything but the root if you want all
				filesystems to have the same data.  Since DiscRecording will automatically assign
				a mask if none is provided, you do not even have to set an explicit mask for the root.
				
				
				<h3>Symbolic Link Translation</h3>
				During the burn, when a symbolic link is encountered in the on-disk filesystem corresponding
				to a real file or folder, the semantics of the link will be preserved as closely as possible.
				If the link contains an absolute path, it will be copied unmodified.  If the link contains a
				relative path, it will be modified to contain an appropriate path.  An important detail to
				recognize is that since naming requirements vary between filesystems, the appropriate
				path may be different for each filesystem.
				
				For example, a relative link to
				"my long, long directory/this: is an unusual$ filename.with_extension" 
				will be modified to contain something like the following.  Note that each component of
				the path has been modified to conform to the rules of the target filesystem.
				
				<ul>
				<li>ISO-9660 level 1: "MYLONGLO/THISISAN.WIT"</li>
				<li>ISO-9660 level 2: "MY LONG LONG DIRECTORY/THIS: IS AN UNU.WITH_EXTENSION"</li>
				<li>Joliet:           "my long, long directory/this: is an unusual filename.with_extension"</li>
				<li>HFS+:             "my long, long directory/this: is an unusual$ filename.with_extension"</li>
				</ul>
 
				The burn engine will make an effort to appropriately translate each component of the path.
				However, it's still possible that the symlink might break in complex cases.
				(For example, in the case of a relative-path symlink which traverses through an absolute-path
				symlink, or when there are filename conflicts along a symlink's path which the burn
				engine has to resolve by mangling.)
				
				The burn engine's symlink preservation is usually good enough for most situations in which
				symlinks are used.  And, when the source filesystem is the same as the target filesystem,
				symlinks will be preserved perfectly.  (For example, the HFS+ filesystem generated from
				an HFS+ source should never have symlink problems.)
				
				However, the odds of symlink failure go up when there are complex arrangements of symlinks,
				or when there are filename collisions which the burn engine resolves by mangling. 
				
				This is expected behavior.  At present, the only way to create a perfect symlink which
				is guaranteed to have a correct path on <b>all</b> filesystems is to create a virtual symlink
				using @link //apple_ref/occ/clm/DRFSObject/symLinkPointingTo:inFilesystem: symLinkPointingTo:inFilesystem: @/link.  
*/
class DRFSObject : NSObject {

  /*!
  	@method		isVirtual
  	@abstract	Indicates whether the receiver is real or virtual.
  	@result		<i>YES</i> if the receiver is virtual and <i>NO</i> if real.	
  */
  func isVirtual() -> Bool

  /*!
  	@method		sourcePath
  	@abstract	Returns the path to a real object.
  	@discussion	This method only applies to DRFSObjects pointing to real objects.
  	@result		A path
  */
  func sourcePath() -> String!

  /*!
  	@method		parent
  	@abstract	Returns the parent folder (if any) of the receiver in the content hierarchy.
  	@result		A @link //apple_ref/occ/cl/DRFolder DRFolder @/link object.	
  */
  func parent() -> DRFolder!

  /*!
  	@method		baseName
  	@abstract	Returns the base name for the receiver.
  	@discussion		The base name is the name from which any necessary filesystem-specific
  				names are automatically generated.  
  				
  				Because the content creation API is able to generate multiple filesystems
  				which require multiple varied naming conventions, a sensible system for
  				naming is required.  Thus each file has a base name which corresponds
  				to its default name in any filesystem.
  				
  				Whenever possible, the base name will be used in the generated filesystem
  				without modification.  If the name cannot be used as-is (if, for example, it
  				contains illegal characters, exceeds the length requirements, doesn't
  				meet the required format, or a name collision is detected) then an acceptable
  				name that meets the filesystem's criteria will be generated automatically
  				from the base name.
  				
  				The default base name for a real file or folder is the actual on-disk
  				name of the item.
  	@result		The base name of the object.	
  */
  func baseName() -> String!

  /*!
  	@method		setBaseName:
  	@abstract	Sets the base name for the receiver.
  	@discussion	The base name is the name from which any necessary filesystem-specific
  				names are automatically generated.  
  				
  				Because the content creation API is able to generate multiple filesystems
  				which require multiple varied naming conventions, a sensible system for
  				naming is required.  Thus each file has a base name which corresponds
  				to its default name in any filesystem.
  				
  				Whenever possible, the base name will be used in the generated filesystem
  				without modification.  If the name cannot be used as-is (if, for example, it
  				contains illegal characters, exceeds the length requirements, doesn't
  				meet the required format, or a name collision is detected) then an acceptable
  				name that meets the filesystem's criteria will be generated automatically
  				from the base name.
  				
  				The default base name for a real file or folder is the actual on-disk
  				name of the item.
  	@param		baseName The new base name of the object.	
  */
  func setBaseName(baseName: String!)

  /*!
  	@method		specificNameForFilesystem:
  	@abstract	Returns a single filesystem-specific name for the receiver.
  	@param		filesystem	The filesystem to return the name from.
  	@result		An NSString containing the name of the file.
  */
  func specificNameForFilesystem(filesystem: String!) -> String!

  /*!
  	@method		specificNames
  	@abstract	Returns all the filesystem-specific names for the receiver.
  	@param		filesystem	The filesystem to return the name from.
  	@result		An NSDictionary containing the name of the file on all the filesystems.
  */
  func specificNames() -> [NSObject : AnyObject]!

  /*!
  	@method		setSpecificName:forFilesystem:
  	@abstract	Sets the name used for the receiver in a particular filesystem.
  	@discussion	Every effort will be made to use the name passed in.  However, if
  				a name is illegal, it will be modified to fit the rules for the 
  				filesystem's names.  Because of this, you should always call
  				@link //apple_ref/occ/instm/DRFSObject/specificNameForFilesystem: specificNameForFilesystem: @/link after to ensure
  				that you are always displaying the most current names to the user.	
  	@param		name	The name to set.
  	@param		filesystem	The filesystem to set the name for.
  */
  func setSpecificName(name: String!, forFilesystem filesystem: String!)

  /*!
  	@method		setSpecificNames:
  	@abstract	Sets the names used for the receiver in the different filesystems all at once.
  	@discussion	Takes an NSDictionary of filesystem keys with corresponding name strings as
  				their values for each specific filesystem name that should be set.
  			
  				Every effort will be made to use the names passed in.  However, if
  				a name is illegal, it will be modified to fit the rules for that
  				filesystem's names.  Because of this, you should always call
  				@link //apple_ref/occ/instm/DRFSObject/specificNames specificNames @/link after @link //apple_ref/occ/instm/DRFSObject/setSpecificNames: setSpecificNames: @/link to ensure
  				that you are always displaying the most current names to the user.
  	@param		specificNames	The names to set.
  */
  func setSpecificNames(specificNames: [NSObject : AnyObject]!)

  /*!
  	@method		mangledNameForFilesystem:
  	@abstract	Returns a single filesystem-specific name for the receiver, mangled for uniqueness.
  	@discussion	The string will be mangled for uniqueness amongst its siblings; if the burn
  				were to happen immediately after this call, this is the name which would be used 
  				on the resulting disc.
  	@param		filesystem	The filesystem to set the name for.
  	@result		The name of the file mangled for filesystem constraints.
  */
  func mangledNameForFilesystem(filesystem: String!) -> String!

  /*!
  	@method		mangledNames
  	@abstract	Returns a dictionary containing all of the filesystem-specific names
  				for the receiver, each one mangled for uniqueness.
  	@discussion	The dictionary will return only the names which are indicated by the
  				receiver's effective mask.  If the receiver's effective mask is zero, an
  				empty dictionary is returned.
  	@result		An NSDictionary containing the filesystem-specific mangled file names.
  */
  func mangledNames() -> [NSObject : AnyObject]!

  /*!
  	@method		propertyForKey:inFilesystem:mergeWithOtherFilesystems:
  	@abstract	Returns a file/folder property specified by key for the specified filesystem.
  	@discussion	Normally you would call this method with merge set to <i>YES</i> since you are interested in the 
  				property that will be used when writing the object to disc. But if you have a need to determine
  				what property is set just for a specific filesystem, then pass in <i>NO</i> for merge. In this case 
  				only the specific filesystem is checked. So if @link DRHFSPlus DRHFSPlus @/link is passed in for filesystem and
  				merge is <i>NO</i> then the property returned is the value set for the HFS+ filesytem only. If
  				that property has not been directly set for HFS+ yet, then the returned value will be nil.
  	@param		key	The property to return.
  	@param		filesystem	The filesystem to look in.
  	@param		merge		If <i>YES</i>, also look for the property in the umbrella @link DRAllFilesystems DRAllFilesystems @/link.
  	@result		The value associated with the property.
  */
  func propertyForKey(key: String!, inFilesystem filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> AnyObject!

  /*!
  	@method		propertiesForFilesystem:mergeWithOtherFilesystems:
  	@abstract	Returns all the filesystem properties set for the specified filesystem.
  	@discussion	Normally you would call this method with merge set to <i>YES</i> since you are interested in the 
   				set of properties that will be used when writing the object to disc. But if you have a need to determine
   				what properties are set just for a specific filesystem, then pass in <i>NO</i> for merge. In this case 
   				only the specific filesystem is checked. So if filesystem is set to @link DRHFSPlus DRHFSPlus @/link and
   				merge is <i>NO</i> then the properties dictionary contains the values set for the HFS+ filesytem only. If
   				no properties have been directly set for HFS+ yet, then this properties dictionary will be empty.
  	@param		filesystem	The filesystem to look in.
  	@param		merge		If <i>YES</i>, also look for properties in the umbrella @link DRAllFilesystems DRAllFilesystems @/link.
  	@result		A dictionary of property values.
  */
  func propertiesForFilesystem(filesystem: String!, mergeWithOtherFilesystems merge: Bool) -> [NSObject : AnyObject]!

  /*!
  	@method		setProperty:forKey:inFilesystem:
  	@abstract	Sets the value of the receiver's property specified by key for the specific
  				filesystem.
  	@discussion	The property is set only in the filesystem dictionary specified by filesystem. 
   				@link DRAllFilesystems DRAllFilesystems @/link may be specified as the filesystem in which case
  				the umbrella property affecting all filesystems at once will be set. Setting
  				a property for @link DRAllFilesystems DRAllFilesystems @/link does not preclude setting a filesystem specific 
  				property.
  	@param		property	The value of the property.
  	@param		key			The property key.
  	@param		filesystem	The filesystem to set the property in.
  */
  func setProperty(property: AnyObject!, forKey key: String!, inFilesystem filesystem: String!)

  /*!
  	@method		setProperties:inFilesystem:
  	@abstract	Sets the value of all the receiver's properties specified by the keys in properties
  				for the specific filesystem.
  	@discussion	The properties are set only in the filesystem dictionary specified by filesystem. 
  				@link DRAllFilesystems DRAllFilesystems @/link may be specified as the filesystem 
  				in which case he umbrella property affecting all filesystems at once will be set. 
  				Setting properties for @link DRAllFilesystems DRAllFilesystems @/link does not preclude setting a filesystem specific 
  				property.
  	@param		properties	The value of the property.
  	@param		filesystem	The filesystem to set the property in.
  */
  func setProperties(properties: [NSObject : AnyObject]!, inFilesystem filesystem: String!)

  /*!
  	@method		explicitFilesystemMask
  	@abstract	Returns the explicit filesystem mask set for the reciever.
  	@discussion	The explicit mask is one that has been explicitly set by a client 
  				through the @link //apple_ref/occ/instm/DRFSObject/setExplicitFilesystemMask: setExplicitFilesystemMask: @/link method.
  	@result		A filesystem mask
  */
  func explicitFilesystemMask() -> DRFilesystemInclusionMask

  /*!
  	@method		setExplicitFilesystemMask:
  	@abstract	Sets the filesystems the receiver will be included on.
  	@discussion	The effective mask for an item cannot be more inclusive than the 
  				effective mask of it's parent. If the mask set for a child is more inclusive than its parent's mask,
  				those filesystems not allowed by the parent will be stripped from the resulting effective mask of the
  				child.
  	@param		mask	A filesystem mask
  */
  func setExplicitFilesystemMask(mask: DRFilesystemInclusionMask)

  /*!
  	@method		effectiveFilesystemMask
  	@abstract	Returns the effective filesystem mask set for the reciever.
  	@discussion	The parent filesystem mask is taken into account for the receiver.
  	@result		A filesystem mask
  */
  func effectiveFilesystemMask() -> DRFilesystemInclusionMask
  init()
}

/*!
	@const		DRAllFilesystems
	@discussion	The key for accessing the name or properties for the file in
				all filesystems together. When this key is used to refer to a name, it refers to the
				base name (which has no naming restrictions).
*/
@available(OSX 10.2, *)
let DRAllFilesystems: String

/*!
	@const		DRISO9660
	@discussion	The key for accessing the ISO-9660 properties for the file.
				This key is used to refer specifically to the properties for the file.
	
				This key cannot be used to refer to the name of the file; it is ambiguous,
				since the name may be in either level 1 or level 2 format.
*/
@available(OSX 10.2, *)
let DRISO9660: String

/*!
	@const		DRISO9660LevelOne
	@discussion	The key for accessing the ISO-9660 level 1 name for the file.
				This key is used to refer specifically to the name generated for ISO-9660 if
				the ISO level is set to 1.  When used for a property, it is equivalent
				in use to the @link DRISO9660 DRISO9660 @/link key and acts as a synonym for that key.
				
				ISO9660 level 1 names are in the form typically known as 8.3 - eight
				characters of name and three characters of extension (if it's a file;
				directories can't have extensions).  Character set is limited to
				A-Z, 0-9, and _.
*/
@available(OSX 10.2, *)
let DRISO9660LevelOne: String

/*!
	@const		DRISO9660LevelTwo
	@discussion	The key for accessing the ISO-9660 level 2 name for the file.
				This key is used to refer specifically to the name generated for ISO-9660 if
				the ISO level is set to 2.  When used for a property, it is equivalent
				in use to the @link DRISO9660 DRISO9660 @/link key and acts as a synonym for that key.
	
				ISO9660 level 2 names can be 32 chars long, are limited to a subset
				of the 7-bit ASCII chars (capital letters, numbers, space, punctuation),
				and are only allowed one "." character.
*/
@available(OSX 10.2, *)
let DRISO9660LevelTwo: String

/*!
	@const		DRJoliet
	@discussion	The key for accessing the Joliet name/properties for the file.
				Joliet names can be 64 precomposed unicode characters long, but are only
				allowed one "." character and many punctuation characters are illegal.
*/
@available(OSX 10.2, *)
let DRJoliet: String

/*!
	@const		DRHFSPlus
	@discussion	The key for accessing the HFS+ name/properties for the file.
				HFS+ names can be up to 255 decomposed unicode characters long.
*/
@available(OSX 10.2, *)
let DRHFSPlus: String

/*!
	@const		DRUDF
	@discussion	The key for accessing the UDF name/properties for the file.
*/
@available(OSX 10.4, *)
let DRUDF: String

/*!
	@const		DRISO9660VersionNumber
	@discussion	NSNumber containing the ISO9660 version number for the object. Default value is 1.
*/
@available(OSX 10.2, *)
let DRISO9660VersionNumber: String

/*!
	@const		DRInvisible
	@discussion	NSBoolean indicating whether the item is invisibile or not.
*/
@available(OSX 10.2, *)
let DRInvisible: String

/*!
	@const		DRCreationDate
	@discussion	NSDate containing the item's creation date.
*/
@available(OSX 10.2, *)
let DRCreationDate: String

/*!
	@const		DRContentModificationDate
	@discussion	NSDate containing the item's content modification date.
*/
@available(OSX 10.2, *)
let DRContentModificationDate: String

/*!
	@const		DRAttributeModificationDate
	@discussion	NSDate containing the item's attribute modification date.
*/
@available(OSX 10.2, *)
let DRAttributeModificationDate: String

/*!
	@const		DRAccessDate
	@discussion	NSDate containing the item's last-accessed date.
*/
@available(OSX 10.2, *)
let DRAccessDate: String

/*!
	@const		DRBackupDate
	@discussion	NSDate containing the item's backup date.
*/
@available(OSX 10.2, *)
let DRBackupDate: String

/*!
	@const		DREffectiveDate
	@discussion	NSDate containing the item's effective date.
*/
@available(OSX 10.2, *)
let DREffectiveDate: String

/*!
	@const		DRExpirationDate
	@discussion	NSDate containing the item's expiration date.
*/
@available(OSX 10.2, *)
let DRExpirationDate: String

/*!
	@const		DRRecordingDate
	@discussion	NSDate containing the item's recording date.
*/
@available(OSX 10.2, *)
let DRRecordingDate: String

/*!
	@const		DRPosixFileMode
	@discussion	NSNumber containing the item's POSIX file mode.
*/
@available(OSX 10.2, *)
let DRPosixFileMode: String

/*!
	@const		DRPosixUID
	@discussion	NSNumber containing the item's POSIX UID.
*/
@available(OSX 10.2, *)
let DRPosixUID: String

/*!
	@const		DRPosixGID
	@discussion	NSNumber containing the item's POSIX GID.
*/
@available(OSX 10.2, *)
let DRPosixGID: String

/*!
	@const		DRHFSPlusTextEncodingHint
	@discussion	NSNumber containing the item's text encoding hint (HFS+ only).
				
				This value is used by the MacOS to help when converting
				the natively UTF-16 filename into an 8-bit-per-character representation (such
				as MacRoman, Shift-JIS, or UTF8).  If not set, default behavior is to call
				@link //apple_ref/c/func/CFStringGetMostCompatibleMacStringEncoding CFStringGetMostCompatibleMacStringEncoding @/link(@link //apple_ref/c/func/CFStringGetSmallestEncoding CFStringGetSmallestEncoding @/link()).
*/
@available(OSX 10.2, *)
let DRHFSPlusTextEncodingHint: String

/*!
	@const		DRHFSPlusCatalogNodeID
	@discussion	NSNumber containing item's catalog node ID (HFS+ only).
				Currently, this value if set is only a suggestion.
				The burn engine will attempt to use this node ID, but may use another value
				if it needs to resolve conflicts.  Default behavior is to allocate node IDs
				incrementally from @link //apple_ref/c/econst/kHFSFirstUserCatalogNodeID kHFSFirstUserCatalogNodeID @/link.
*/
@available(OSX 10.2, *)
let DRHFSPlusCatalogNodeID: String

/*!
	@const		DRMacFileType
	@discussion	NSData containing the OSType for the file type (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacFileType: String

/*!
	@const		DRMacFileCreator
	@discussion	NSData containing the OSType for the file creator (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacFileCreator: String

/*!
	@const		DRMacWindowBounds
	@discussion	NSData containing a Rect (not NSRect) for the window bounds for a folder (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacWindowBounds: String

/*!
	@const		DRMacIconLocation
	@discussion	NSData containing a Point (not NSPoint) for the item's icon location in its parent folder (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacIconLocation: String

/*!
	@const		DRMacScrollPosition
	@discussion	NSData containing a Point (not NSPoint) for the folder's scroll position (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacScrollPosition: String

/*!
	@const		DRMacWindowView
	@discussion	NSNumber containing the folder's window view type (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacWindowView: String

/*!
	@const		DRMacFinderFlags
	@discussion	NSNumber containing the item's Finder flags (MacOS only). The invisible bit is ignored - use DRInvisible instead.
*/
@available(OSX 10.2, *)
let DRMacFinderFlags: String

/*!
	@const		DRMacExtendedFinderFlags
	@discussion	NSNumber containing the item's extended Finder flags (MacOS only).
*/
@available(OSX 10.2, *)
let DRMacExtendedFinderFlags: String

/*!
	@const		DRMacFinderHideExtension
	@discussion	A BOOL indicating whether the extension should be hidden in the Finder or not.
				The default is false and only applies to files.
*/
@available(OSX 10.5, *)
let DRMacFinderHideExtension: String

/*!
	@const		DRUDFWriteVersion
	@discussion	Optional key. This property key defines the version for the UDF
				structures written to disk. Values are definde in UDF Version types.
*/
@available(OSX 10.4, *)
let DRUDFWriteVersion: String

/*!
	@const		DRUDFVersion102
	@discussion	This value is used in @link DRUDFWriteVersion DRUDFWriteVersion @/link.
*/
@available(OSX 10.4, *)
let DRUDFVersion102: String

/*!
	@const		DRUDFVersion150
	@discussion	This value is used in @link DRUDFWriteVersion DRUDFWriteVersion @/link.
*/
@available(OSX 10.4, *)
let DRUDFVersion150: String

/*!
	@const		DRUDFPrimaryVolumeDescriptorNumber
	@discussion	Optional key. NSNumber containing the primary volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFPrimaryVolumeDescriptorNumber: String

/*!
	@const		DRUDFVolumeSequenceNumber
	@discussion	Optional key. NSNumber containing the volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFVolumeSequenceNumber: String

/*!
	@const		DRUDFMaxVolumeSequenceNumber
	@discussion	Optional key. NSNumber containing the maximum volume sequence number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFMaxVolumeSequenceNumber: String

/*!
	@const		DRUDFInterchangeLevel
	@discussion	Optional key. NSNumber containing the volume interchange level.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFInterchangeLevel: String

/*!
	@const		DRUDFMaxInterchangeLevel
	@discussion	Optional key. NSNumber containing the maximum volume interchange level number.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFMaxInterchangeLevel: String

/*!
	@const		DRUDFApplicationIdentifierSuffix
	@discussion	Optional key. NSData object of up to 8 bytes in length, for application use.
				The presence of this key requires the @link //apple_ref/occ/data/DRApplicationIdentifier DRApplicationIdentifier @/link key.
*/
@available(OSX 10.4, *)
let DRUDFApplicationIdentifierSuffix: String

/*!
	@const		DRUDFVolumeSetIdentifier
	@discussion	Optional key. The Volume Set Identifier for the UDF volume set. If this key
				is not present, @link //apple_ref/occ/data/DRVolumeSet DRVolumeSet @/link will be used if present.
				The Volume Set Identifier is composed of the Volume Set Timestamp, the 
				Implementation Use, and a the string contained in this property.
*/
@available(OSX 10.4, *)
let DRUDFVolumeSetIdentifier: String

/*!
	@const		DRUDFVolumeSetTimestamp
	@discussion	Optional key. An NSDate object for the volume set timestamp.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFVolumeSetTimestamp: String

/*!
	@const		DRUDFVolumeSetImplementationUse
	@discussion	Optional key. An NSData object (8 bytes in length) for implementation use data.
				See the UDF specs for details.
*/
@available(OSX 10.4, *)
let DRUDFVolumeSetImplementationUse: String

/*!
	@const		DRUDFRealTimeFile
	@discussion	NSNumber indicating whether the file is a UDF Real-Time file.
*/
@available(OSX 10.4, *)
let DRUDFRealTimeFile: String

/*!
	@const		DRUDFExtendedFilePermissions
	@abstract	NSNumber indicating the extended UDF file permissions of this file.
	@discussion	Bit 0: Change attributes for others (low order bit)
				Bit 1: Delete permissions for others
				Bit 2: Change attributes for group
				Bit 3: Delete permissions for group
				Bit 4: Change attributes for owner
				Bit 5: Delete permissions for owner
				Bit 6 & 7: Reserved
				If this key is not present, @link DRPosixFileMode DRPosixFileMode @/link will be used with the above bits
				being set to the corresponding write bit for owner, group, and others.
				If @link DRPosixFileMode DRPosixFileMode @/link is not present, the file mode from the file on disc will
				be used, again using the write bit for these permissions.
*/
@available(OSX 10.4, *)
let DRUDFExtendedFilePermissions: String

/*!
	@class		DRFile
	@abstract	Represents a file to be created on the disc.
	@discussion A file can be either a pointer to an exiting file (residing on a hard drive for example)
				or can be created at burn time from data passed into the file object as requested. DRFiles can only exist inside of virtual
				@link //apple_ref/occ/cl/DRFolder DRFolder @/link objects.
*/
class DRFile : DRFSObject {

  /*! 
     	@method 		initWithPath:
     	@abstract		Initializes a real file object
  	@discussion		This type of DRFile reads in data from an 
  					existing file located at path and burns that data to disc.
     	@param 			path	The path to an existing file.
      @result  		An DRFile object.
  */
  init!(path: String!)
  init()
}

/*! 
   	@category		DRFile (VirtualFiles)
   	@discussion 	This category on DRFile defines methods that allow the file to 
   					be specified using data passed in at creation time.
*/
extension DRFile {

  /*! 
     	@method 		virtualFileWithName:data:
     	@abstract		Creates a virtual file object
  	@discussion		This type of DRFile burns the data passed in to disc, creating a
  					file with the passed in name.
     	@param 			name	The name of the file on disc.
     	@param			data	The data that will become the contents of the file on the disc.
      @result  		An autoreleased DRFile object.
  */
  class func virtualFileWithName(name: String!, data: NSData!) -> DRFile!

  /*! 
     	@method 		virtualFileWithName:dataProducer:
     	@abstract		Creates a virtual file object
  	@discussion		This type of DRFile burns the data produced to the output disc, creating a
  					file with the passed in name.
     	@param 			name	The name of the file on disc.
     	@param			data	The data that will become the contents of the file on the disc.
      @result  		An autoreleased DRFile object.
  */
  class func virtualFileWithName(name: String!, dataProducer producer: AnyObject!) -> DRFile!

  /*! 
     	@method 		initWithName:data:
     	@abstract		Initializes a virtual file object
  	@discussion		This type of DRFile burns the data passed in to the output disc, creating a
  					file with the passed in name.
     	@param 			name	The name of the file on output disc.
     	@param			data	The data that will become the contents of the file on the output disc.
      @result  		A DRFile object.
  */
  init!(name: String!, data: NSData!)

  /*! 
     	@method 		initWithName:dataProducer:
     	@abstract		Initializes a virtual file object
  	@discussion		This type of DRFile burns the data produced to the output disc, creating a
  					file with the passed in name.
     	@param 			name		The name of the file on output disc.
     	@param			producer	The object supplying the file data to the burn.
      @result  		A DRFile object.
  */
  init!(name: String!, dataProducer producer: AnyObject!)
}

/*! 
	@category		DRFile (VirtualLinks)
   	@discussion		This category on DRFile defines methods that allow various
					link/alias files to be created on the resulting disc which may not
					exist in the source.
*/
extension DRFile {

  /*! 
     	@method 		hardLinkPointingTo:inFilesystem:
     	@abstract		Creates a hard link to another file on the output disc.
     	@param 			original	The file to point he hard link to
     	@param			filesystem	The filesystem this link will exist on.
      @result  		An autoreleased DRFile object.
  */
  class func hardLinkPointingTo(original: DRFile!, inFilesystem filesystem: String!) -> DRFile!

  /*! 
     	@method 		symLinkPointingTo:inFilesystem:
     	@abstract		Creates a symbolic link to another file on the output disc.
     	@param 			original	The file to point he hard link to
     	@param			filesystem	The filesystem this link will exist on.
      @result  		An autoreleased DRFile object.
  */
  class func symLinkPointingTo(original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!

  /*! 
     	@method 		finderAliasPointingTo:inFilesystem:
     	@abstract		Creates a Finder alias to another file on the output disc.
     	@param 			original	The file to point he hard link to
     	@param			filesystem	The filesystem this link will exist on.
      @result  		An autoreleased DRFile object.
  */
  class func finderAliasPointingTo(original: DRFSObject!, inFilesystem filesystem: String!) -> DRFile!

  /*! 
     	@method 		initWithLinkType:pointingTo:inFilesystem:
     	@abstract		Initializes a file object to point to another file on the output disc.
     	@param 			linkType	The type of link that will be created.
     	@param 			original	The file to point he hard link to
     	@param			filesystem	The filesystem this link will exist on.
      @result  		A DRFile object.
  */
  init!(linkType: String!, pointingTo original: DRFSObject!, inFilesystem filesystem: String!)
}

/*!
	@const		DRLinkTypeHardLink
	@discussion	A hard link.
*/
@available(OSX 10.2, *)
let DRLinkTypeHardLink: String

/*!
	@const		DRLinkTypeSymbolicLink
	@discussion	A symbolic link.
*/
@available(OSX 10.2, *)
let DRLinkTypeSymbolicLink: String

/*!
	@const		DRLinkTypeFinderAlias
	@discussion	A Finder alias.
*/
@available(OSX 10.2, *)
let DRLinkTypeFinderAlias: String

/*!
	@typedef	DRFileFork
	@abstract	Index used for accessing the forks of a file.
	@discussion	The data fork and resource fork always have fixed indices.  Other forks
				may be allowed in the future.
*/
typealias DRFileFork = UInt32
var DRFileForkData: Int { get }
var DRFileForkResource: Int { get }

/*!
	@protocol	DRFileDataProduction
	@abstract	Informal protocol describing methods implemented by the file data producer.
	@discussion	This protocol defines those methods that a file data producer 
				instance must implement. A file data producer is the object that
				resposible for providing the file data to the burn engine on request
*/
protocol DRFileDataProduction {

  /*! 
     	@method 		calculateSizeOfFile:fork:estimating:
     	@abstract		Calculates the size of the specified fork of a file.
     	@discussion		This method may be sent at any time after the file object has been instantiated. 
  					Requests that the recevier calculate the byte size of a file's fork (for instance, data fork or resource fork).
  
  					If estimate is <i>YES</i>, you are being asked for an estimate of the final 
  					fork size, perhaps to provide an estimate of the track size, and do not 
  					have to be exact.  Estimates should err on the high side; it's better to 
  					overestimate than underestimate. An estimate call may be made at any time.
  
  					If estimate is <i>NO</i>, you are being asked for
  					the actual fork size, to be used in the burn.  This call is only
  					made in the burn phase.
     	@param 			file	The file object.
     	@param 			fork	The fork of the file whose size is to be calculated.
     	@param			estimate	If the file size should be estimated or exact.
      @result  		The length of the file's fork.
  */
  func calculateSizeOf(file: DRFile!, fork: DRFileFork, estimating estimate: Bool) -> UInt64

  /*! 
     	@method 		prepareFileForBurn:
     	@abstract		Prepare the file object for burning.
     	@discussion		Sent to the recevier before the burn begins. This would be an appropriate 
  					method to open files, or do any other prep work needed.  The disc's entire 
  					hierarchy is completely in place and can be queried if needed. 
  									
  					After this call, the burn's content is locked down, and you should be
  					able to respond to the @link //apple_ref/occ/intfm/DRFileDataProduction/calculateSizeOfFile:fork:estimating: calculateSizeOfFile:fork:estimating: @/link messages with exact values.
     	@param 			file	The file object.
      @result  		<i>YES</i> if the burn should proceed.
  */
  func prepareFileForBurn(file: DRFile!) -> Bool

  /*! 
     	@method 		produceFile:fork:intoBuffer:length:atAddress:blockSize:
     	@abstract		Produces the specified fork contents for burning.
     	@discussion		Sent during the burn (after the @link //apple_ref/occ/intfm/DRFileDataProduction/prepareFileForBurn prepareFileForBurn @/link message) requesting that the receiver
  					produce the specified fork contents. 
  									
  					The recevier should fill up the buffer passed in as full as possible 
  					and then return control to the caller. While burning keeping the drive's buffer full is 
  					of utmost importance, so you should not perform lengthy operations or block for data in this method.
  					This method should return the number of bytes actually in the buffer or 0 to indicate that there
  					was an error producing the data.
  					
  					You may be asked to produce twice, once during the actual burn and once during 
  					verification depending on the verification type of the track.
     	@param 			file	The file object.
     	@param 			fork	The fork of the file to produce.
     	@param			buffer	The buffer to produce data into.
     	@param			bufferLength	The length of the buffer to produce data into
     	@param			address	The byte address in the file that the burn engine is requesting
     	@param			blockSize	The size of the track blocks
  	@result			The number of bytes produced.
  */
  func produce(file: DRFile!, fork: DRFileFork, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32) -> UInt32

  /*! 
     	@method 		prepareFileForVerification:
     	@abstract		Prepare the file object for verification.
     	@discussion		Sent during the burn (after production and before the @link //apple_ref/occ/intfm/DRFileDataProduction/cleanupFileAfterBurn: cleanupFileAfterBurn: @/link message) to 
     					indicate that verification is about to begin. Now would be a good
  					time to rewind to the start of the file, reset state machines, or do whatever else 
  					is needed to prepare to produce again.
     	@param 			file	The file object.
  	@result			<i>YES</i> to indicate that the verification should proceed and <i>NO</i> to indicate a failure occurred.
  */
  func prepareFileForVerification(file: DRFile!) -> Bool

  /*! 
     	@method 		cleanupFileAfterBurn:
     	@abstract		Cleanup the file object once the burn is complete.
     	@discussion		Sent to the receiver after the burn completes. This would be an appropriate 
  					place to close files, or do any other teardown work needed.  This message will 
  					always be sent regardless of whether the burn succeeded or failed
     	@param 			file	The file object.
  */
  func cleanupFileAfterBurn(file: DRFile!)
}

/*!
	@class		DRFolder
	@abstract	Represents a folder to be created on the burned disc.
	@discussion	DRFolders can be either a &ldquo;real&rdquo; folder pointing to an existing folder 
				(residing on a hard drive for example) or can be a &ldquo;virtual&rdquo; folder which exists
				only on the resulting burned disc. 
				A DRFolder pointing to an existing folder cannot have it's 
				contents changed - only those files/folders which are children of the actual folder on disk will 
				be included on the resulting disc. Virtual folders are entirely created 
				programatically and any virtual folder structure can exist and be burned 
				to disc. It is possible to convert a real folder to a virtual folder 
				using the @link //apple_ref/occ/intm/DRFolder/makeVirtual makeVirtual @/link method.
*/
class DRFolder : DRFSObject {

  /*! 
     	@method 		initWithPath:
     	@abstract		Initializes a real file object
  	@discussion		Initializes a DRFolder object that will use the folder contents of
  					the folder located at path as a source.
     	@param 			path	The path to an existing folder.
      @result  		A DRFolder object.
  */
  init!(path: String!)
  init()
}

/*! 
	@category		DRFolder (VirtualFolders)
   	@discussion		This category on DRFolder defines methods that allow creation
   					and manipulation of folders on the output disc that do not exist
   					on the source media.
*/
extension DRFolder {

  /*! 
     	@method 		virtualFolderWithName:
     	@abstract		Creates a virtual folder object
  	@discussion		Creates and initializes a DRFolder object that will be populated with 
  					specified @link //apple_ref/occ/cl/DRFile DRFile @/link and DRFolder objects at runtime.
     	@param 			name	The name of the folder on the output disc.
      @result  		An autoreleased DRFolder object.
  */
  class func virtualFolderWithName(name: String!) -> DRFolder!

  /*! 
     	@method 		initWithName:
     	@abstract		Initializes a virtual file object
  	@discussion		Initializes a DRFolder object that will be populated with 
  					specified @link //apple_ref/occ/cl/DRFile DRFile @/link and DRFolder objects at runtime.
     	@param 			name	The name of the folder on the output disc.
      @result  		A DRFolder object.
  */
  init!(name: String!)

  /*! 
     	@method 		makeVirtual
     	@abstract		Changes the real DRFolder object into a virtual DRFolder object.
  	@discussion		The virtual folder created in this way is a snapshot of the on-disk
  					folder at the moment of the call.  The newly created virtual folder
  					will contain <b>real</b> folder and file objects corresponding to the
  					on-disk children of the original on-disk folder.
  								
  					If the on-disk folder is modified (eg, if the folder attributes change, 
  					or if children are added to or removed from the on-disk tree):
  					<i>during</i> this call, the virtual folder <b>may or may not</b> reflect the changes.
  					If modified <i>after</i> this call, the virtual folder <b>will</b> not reflect
  					the changes.
  */
  func makeVirtual()

  /*! 
     	@method 		addChild:
     	@abstract		Adds an object reference (either a file or folder) as a child of
  					a virtual folder object.
  	@discussion		This method only applies to virtual folders.  Real folders
  					are considered leaf nodes and cannot have children.
  	@param			child	The child to add to the folder
  */
  func addChild(child: DRFSObject!)

  /*! 
     	@method 		removeChild:
     	@abstract		Removes an object reference (either a file or folder) as a child of
  					a virtual folder object.
  	@discussion		This method only applies to virtual folders.  Real folders
  					are considered leaf nodes and cannot have children.
  	@param			child	The child to remove from the folder
  */
  func removeChild(child: DRFSObject!)

  /*! 
     	@method 		count
     	@abstract		Returns the number of children of a virtual folder. 
     	@discussion		This method returns a
  					shallow count of only those children that are immediately contained 
  					within the virtual folder.
  					
  					This method only applies to virtual folders.  Real folders
  					are considered leaf nodes and should not be messaged with this call.
  	@result			A count of the number of children.
  */
  func count() -> Int

  /*! 
     	@method 		children
     	@abstract		Returns an array containing the children of a virtual folder.
  	@discussion		The order of children in the array is arbitrary -- since the various filesystems being
  					generated may have different sorting requirements, there is no one true
  					way to sort the children.  The ordering will change only when children
  					are added or removed.  You should sort the children according to the needs
  					of your display, and in a consistent manner.
  								
  					This function only applies to virtual folders.  Real folders
  					are considered leaf nodes and should not be passed into this call.
  	@result			An NSArray of @link //apple_ref/occ/cl/DRFile DRFile @/link and DRFolder objects.
  */
  func children() -> [AnyObject]!
}

/*!
	@class		DRMSF
	@abstract	Representation of a time interval expressed in minutes, seconds and frames. 
	@discussion	On CDs, minutes/seconds/frames are used to identify positioning on a disc (which is 
				most useful on an audio disc), but applies to any position on a disc no matter what type of 
				data is present.
				
				A frame is equivalent to a sector or block in normal disk parlance. 75 frames make up one
				second, so a 2 second pause (typical pregap size) is 150 frames. 
*/
class DRMSF : NSNumber {

  /*!
  	@method		msf
  	@abstract	Creates an msf object with no length/time.
  	@result		An autoreleased DRMSF object.
  */
  class func msf() -> DRMSF!

  /*!
  	@method		msfWithFrames
  	@abstract	Creates an msf object whose length is frames.
  	@result		An autoreleased DRMSF object.
  */
  class func msfWithFrames(frames: UInt32) -> DRMSF!

  /*!
  	@method		msfWithString
  	@abstract	Creates an msf object initialized to the value represented by string
  	@result		An autoreleased DRMSF object.
  */
  class func msfWith(string: String!) -> DRMSF!

  /*!
  	@method		initWithFrames
  	@abstract	Initializes an msf object whose length is frames.
  	@result		A DRMSF object.
  */
  init!(frames: UInt32)

  /*!
  	@method		initWithString
  	@abstract	Initializes an msf object initialized to the value represented by string
  	@result		A DRMSF object.
  */
  init!(string: String!)

  /*!
  	@method		minutes
  	@abstract	Returns the number of minutes represented by the receiver.
  	@discussion	If the receiver represents 
  				a non integral number of minutes, only the whole minute value is returned. For example
  				an DRMSF value of 5:30:72 will return 5 from a message to @link //apple_ref/occ/instm/DRMSF/minutes minutes @/link.
  */
  func minutes() -> UInt32

  /*!
  	@method		seconds
  	@abstract	Returns the number of seconds represented by the receiver.
  	@discussion	If the receiver represents 
  				a non integral number of seconds, only the whole second value is returned. For example
  				an DRMSF value of 5:30:72 will return 30 from a message to @link //apple_ref/occ/instm/DRMSF/seconds seconds @/link.
  */
  func seconds() -> UInt32

  /*!
  	@method		frames
  	@abstract	Returns the number of frames represented by the receiver.
  	@discussion	This method differs from @link //apple_ref/occ/instm/DFMSF/sectors sectors @/link in that it
  				returns to the caller the number of frames remaining in the current second. For example
  				an DRMSF value of 5:30:72 will return 72 from a message to @link //apple_ref/occ/instm/DRMSF/frames frames @/link.
  */
  func frames() -> UInt32

  /*!
  	@method		sectors
  	@abstract	Returns the total number of frames/sectors represented by the receiver.
  	@discussion	This method differs from @link //apple_ref/occ/instm/DRMSF/frames frames @/link in that it
  				returns to the caller the total number of frames/sectors represented by the object.
  				For example an DRMSF value of 5:30:72 will return 24822 from a message to @link //apple_ref/occ/instm/DRMSF/sectors sectors @/link.
  */
  func sectors() -> UInt32

  /*!
  	@method		msfByAdding
  	@abstract	Adds an msf to the receiver.
  	@param		msf	The msf to add to the receiver
  	@result		A new DRMSF object totalling the sum of the reciever and msf
  */
  func msfByAdding(msf: DRMSF!) -> DRMSF!

  /*!
  	@method		msfBySubtracting
  	@abstract	Subtracts an msf to the receiver.
  	@param		msf	The msf to subtract from the receiver
  	@result		A new DRMSF object totalling the difference of the reciever and msf
  */
  func msfBySubtracting(msf: DRMSF!) -> DRMSF!

  /*!
  	@method		description
  	@abstract	Returns a textual representation of the receiver.
  	@result		NSString containing a textual representation of the object with the standard formatting.
  */
  func description() -> String!

  /*!
  	@method		descriptionWithFormat
  	@abstract	Returns a textual representation of the receiver.
  	@discussion	The format string is very similar to
  				a printf-style format string with %-escaped formatting characters.
  				
  				<ul>
  				<li>%%	A "%" character</li>
  				<li>%m	Minutes as a decimal number</li>
  				<li>%s	Seconds as a decimal number</li>
  				<li>%f	Frames as a decimal number</li>
  				</ul>
  				
  				In addition to these formatting characters an optional length specifier can come between then
  				% and the formatting character. This length specifier will force the field in question to 
  				be at least that wide. For example a format specifier of "%02m:%02s" will cause a 
  				DRMSF object representing 3 minutes 9 seconds to be formatted as "03:09". 
  			
  				A formatter is aware of and respects rounding. If a bit of the msf is not zero, but the format
  				does not display that value, the next higher value will be increased by one to reflect that.
  				Extending our example above, an DRMSF with a value of 3 minutes, 9 seconds, 15 frames using a 
  				format specfier of "%02m:%02s", will be formatted as "03:10" since the 15 frames rounds up the
  				seconds to the next value
  	@param		format	The format of the description string.
  	@result		NSString containing a textual representation of the object utilizing the specified format.
  */
  func descriptionWithFormat(format: String!) -> String!

  /*!
  	@method		isEqualToMSF
  	@abstract	Compares on emsf to another.
  	@param		otherDRMSF	The msf to compare to the receiver
  	@result		<i>YES</i> if the two object are equal, <i>NO</i> otherwise.
  */
  func isEqualTo(otherDRMSF: DRMSF!) -> Bool
  init?(coder aDecoder: NSCoder)
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  @available(OSX 10.5, *)
  init(integer value: Int)
  @available(OSX 10.5, *)
  init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}

/*!
	@class		DRMSFFormatter
	@abstract	NSFormatter subclass
	@discussion Instances of DRMSFFormatter format the textual representation of cells that contain 
				MSF objects and convert textual representations of msf values into MSF objects.
				DRMSFFormatters are typically instantiated in IB using the DiscRecording Interface builder palette.
*/
class DRMSFFormatter : NSFormatter {

  /*!
  	@method 	initWithFormat:
  	@abstract	Initializes the formatter with the format string
  	@param		format	An NString specifying the printf-style format string.
  	@result		A DRMSFFormatter
  */
  init!(format: String!)

  /*!
  	@method 	format
  	@abstract	Returns the format string to the caller
  */
  func format() -> String!

  /*!
  	@method 	setFormat:
  	@abstract	Sets the format string of the receiver
  	@discussion	The format string is very similar to
  				a printf-style format string with %-escaped formatting characters.
  				
  				<ul>
  				<li>%%	A "%" character</li>
  				<li>%m	Minutes as a decimal number</li>
  				<li>%s	Seconds as a decimal number</li>
  				<li>%f	Frames as a decimal number</li>
  				</ul>
  				
  				In addition to these formatting characters an optional length specifier can come between then
  				% and the formatting character. This length specifier will force the field in question to 
  				be at least that wide. for example a format specifier of "%02m:%02s" will cause a 
  				DRMSF object representing 3 minutes 9 seconds to be formatted as "03:09". 
  			
  				A formatter is aware of and respects rounding. If a bit of the msf is not zero, but the format
  				does not display that value, the next higher value will be increased by one to reflect that.
  				Extending our example above, an DRMSF with a value of 3 minutes, 9 seconds, 15 frames using a 
  				format specfier of "%02m:%02s", will be formatted as "03:10" since the 15 frames rounds up the
  				seconds to the next value
  	@param		format	An NString specifying the printf-style format string.
  */
  func setFormat(format: String!)
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
	@class 		DRNotificationCenter
	@discussion	A DRNotificationCenter object (or simply, notification center) is
				essentially a notification dispatch table. It notifies all observers of
				notifications meeting specific criteria. This information is encapsulated in
				NSNotification objects, also known as notifications. Client objects register
				themselves with the notification center as observers of specific notifications
				posted by DiscRecording. When an event occurs, DiscRecording posts an appropriate
				notification to the notification center. The notification center dispatches a
				message to each registered observer, passing the notification as the sole
				argument.
				
				There are two main differences between a DRNotificationCenter and the
				NSNotificationCenter from Foundation. First is that only Disc Recording
				posts notifications received through this mechanism. You use this to 
				obtain device plug/unplug events, burn status, etc. Second, there can be
				multple notification centers active at once. Each run loop of your application
				will have it's own notification center and notifications from that notification
				center will be posted to the runloop it was created on.
*/
class DRNotificationCenter : NSObject {

  /*!
  	@method			currentRunLoopCenter
  	@abstract		Creates an initializes a DRNotificationCenter
  	@discussion		The instance returned sends Disc Recording notifications only
  					to the current run loop. If you want to receive notifications 
  					on another run loop, this method must be called from that runloop.
  	@result			A shared DRNotificationCenter object.
  */
  class func currentRunLoop() -> DRNotificationCenter!

  /*!
  	@method			addObserver:selector:name:object:
  	@abstract		Adds an observer to the receiver.
  	@discussion		Registers anObserver to receive notifications with the name notificationName
  					and/or containing anObject. When a notification of name notificationName
  					containing the object anObject is posted, anObserver receives an aSelector
  					message with this notification as the argument. The method for the selector
  					specified in aSelector must have one and only one argument. If notificationName
  					is nil, the notification center notifies the observer of all notifications with
  					an object matching anObject. If anObject is nil, the notification center
  					notifies the observer of all notifications with the name notificationName.
  					
  					The notification center does not retain anObserver or anObject. Therefore, you
  					should always send @link //apple_ref/occ/instm/DRNotificationCenter/removeObserver:name:object: removeObserver:name:object: @/link to the notification center 
  					before releasing these objects.
  	@param			observer	The observer to send notifications to.
  	@param			aSelector	The selector to call
  	@param			notificationName	The notification to listen for
  	@param			anObject	The object to limit notifications for.
  */
  func addObserver(observer: AnyObject!, selector aSelector: Selector, name notificationName: String!, object anObject: AnyObject!)

  /*!
  	@method			removeObserver:name:object:
  	@abstract		Removes anObserver from receiving notifications.
  	@discussion		Removes anObserver as the observer of notifications with the name
  					notificationName and object anObject from the receiver. Be sure to invoke this
  					method before deallocating the observer object or any object specified in 
  					@link //apple_ref/occ/instm/DRNotificationCenter/addObserver:selector:name:object: addObserver:selector:name:object: @/link.
  	@param			observer	The observer to remove
  	@param			aName		The notification the remove the observer from.
  	@param			anObject	The object the observer was listening for.
  */
  func removeObserver(observer: AnyObject!, name aName: String!, object anObject: AnyObject!)
  init()
}

/*!
	@const DRStatusStateKey
	@discussion	A key for the status dictionaries. 
				NSString indicating the current state of the operation.
*/
@available(OSX 10.2, *)
let DRStatusStateKey: String

/*!
	@const DRStatusPercentCompleteKey
	@discussion	A key for the status dictionaries. 
				NSNumber containing the percent complete of the operation expressed as
				a floating point number from 0 to 1.
*/
@available(OSX 10.2, *)
let DRStatusPercentCompleteKey: String

/*!
	@const DRStatusCurrentSessionKey
	@discussion	A key for the burn status dictionary. 
				NSNumber indicating the current session being burned.
*/
@available(OSX 10.2, *)
let DRStatusCurrentSessionKey: String

/*!
	@const DRStatusCurrentTrackKey
	@discussion	A key for the status dictionaries. 
				NSNumber indicating the current track being burned.
*/
@available(OSX 10.2, *)
let DRStatusCurrentTrackKey: String

/*!
	@const DRStatusTotalSessionsKey
	@discussion	A key for the status dictionaries. 
				NSNumber indicating the total number of sessions being burned.
*/
@available(OSX 10.2, *)
let DRStatusTotalSessionsKey: String

/*!
	@const DRStatusTotalTracksKey
	@discussion	A key for the status dictionaries. 
				NSNumber indicating the total number of tracks in the current session being burned.
*/
@available(OSX 10.2, *)
let DRStatusTotalTracksKey: String

/*!
	@const DRStatusCurrentSpeedKey
	@discussion	A key for the burn status dictionary. 
				NSNumber indicating the current burn speed.
*/
@available(OSX 10.2, *)
let DRStatusCurrentSpeedKey: String

/*!
	@const DRStatusEraseTypeKey
	@discussion	A key for the erase status dictionary. 	
				NSString indicating the type of erase operation.
*/
@available(OSX 10.2, *)
let DRStatusEraseTypeKey: String

/*!
	@const DRStatusStateNone
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link. Indicates the
				operation has not yet begun.
*/
@available(OSX 10.2, *)
let DRStatusStateNone: String

/*!
	@const DRStatusStatePreparing
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link. Indicates the
				operation is preparing to begin.
*/
@available(OSX 10.2, *)
let DRStatusStatePreparing: String

/*!
	@const DRStatusStateVerifying
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link. Indicates the
				operation is verifying what it did.
*/
@available(OSX 10.2, *)
let DRStatusStateVerifying: String

/*!
	@const DRStatusStateDone
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link. Indicates the
				operation is finished and it succeeded.
*/
@available(OSX 10.2, *)
let DRStatusStateDone: String

/*!
	@const DRStatusStateFailed
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link. Indicates the
				operation is finished and it failed.
*/
@available(OSX 10.2, *)
let DRStatusStateFailed: String

/*!
	@const DRStatusStateSessionOpen
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is opening a session on disc. The exact session being opened
				is contained in @link DRStatusCurrentSessionKey DRStatusCurrentSessionKey @/link.
*/
@available(OSX 10.2, *)
let DRStatusStateSessionOpen: String

/*!
	@const DRStatusStateTrackOpen
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is opening a track on disc. The exact track being opened
				is contained in @link DRStatusCurrentTrackKey DRStatusCurrentTrackKey @/link.
*/
@available(OSX 10.2, *)
let DRStatusStateTrackOpen: String

/*!
	@const DRStatusStateTrackWrite
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is writing a track on disc. The exact track being written
				is contained in @link DRStatusCurrentTrackKey DRStatusCurrentTrackKey @/link.
*/
@available(OSX 10.2, *)
let DRStatusStateTrackWrite: String

/*!
	@const DRStatusStateTrackClose
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is closing a track on disc. The exact track being closed
				is contained in @link DRStatusCurrentTrackKey DRStatusCurrentTrackKey @/link.
*/
@available(OSX 10.2, *)
let DRStatusStateTrackClose: String

/*!
	@const DRStatusStateSessionClose
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is closing a session on disc. The exact session being closing
				is contained in @link DRStatusCurrentSessionKey DRStatusCurrentSessionKey @/link.
*/
@available(OSX 10.2, *)
let DRStatusStateSessionClose: String

/*!
	@const DRStatusStateFinishing
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the burn status dictionary. 
				Indicates the burn is finishing up (closing the last session, writing the TOC, etc).
*/
@available(OSX 10.2, *)
let DRStatusStateFinishing: String

/*!
	@const DRStatusStateErasing
	@discussion	One possible value for @link DRStatusStateKey DRStatusStateKey @/link in the erase status dictionary. 
				Indicates the erase is currently in progress.
*/
@available(OSX 10.2, *)
let DRStatusStateErasing: String

/*!
	@const DRStatusProgressInfoKey
	@abstract	A dictionary of extended progress information.
	@discussion A key for the status dictionary. The value of this key is a reference to a NSDictionary
				object containing extended progress information.
*/
@available(OSX 10.4, *)
let DRStatusProgressInfoKey: String

/*!
	@const DRStatusProgressCurrentKPS
	@abstract	The current burn speed in kilobytes per second.
	@discussion This is an optional key within the @link DRStatusProgressInfoKey DRStatusProgressInfoKey @/link dictionary. The value of this
				key, if present, is a NSNumber object containing the write speed of the burn.
*/
@available(OSX 10.4, *)
let DRStatusProgressCurrentKPS: String

/*!
	@const DRStatusProgressCurrentXFactor
	@abstract	The current burn speed in a media appropriate x-factor
	@discussion This is an optional key within the @link DRStatusProgressInfoKey DRStatusProgressInfoKey @/link dictionary. The value of this
				key, if present, is a NSNumber object containing the appropriate x-factor for the media.
*/
@available(OSX 10.4, *)
let DRStatusProgressCurrentXFactor: String

/*!
	@const		DRErrorStatusKey
	@discussion	The key in the status dictionary for the error dictionary.
*/
@available(OSX 10.2, *)
let DRErrorStatusKey: String

/*!
	@const		DRErrorStatusErrorKey
	@discussion	An NSNumber containing the OS error code for the error.
*/
@available(OSX 10.2, *)
let DRErrorStatusErrorKey: String

/*!
	@const		DRErrorStatusErrorStringKey
	@discussion	An NSString describing the error in a user appropriate manner.
*/
@available(OSX 10.2, *)
let DRErrorStatusErrorStringKey: String

/*!
	@const		DRErrorStatusErrorInfoStringKey
	@discussion	An NSString describing extended error information in a user appropriate manner.
*/
@available(OSX 10.4, *)
let DRErrorStatusErrorInfoStringKey: String

/*!
	@const		DRErrorStatusSenseKey
	@discussion	An NSData object containing the raw RBC sense information structure reported by the device.
				If no sense is reported, this key will not be present.
*/
@available(OSX 10.2, *)
let DRErrorStatusSenseKey: String

/*!
	@const		DRErrorStatusSenseCodeStringKey
	@discussion	An NSString describing the RBC sense code returned by the device.
				If no sense is reported, this key will not be present.
*/
@available(OSX 10.2, *)
let DRErrorStatusSenseCodeStringKey: String

/*!
	@const		DRErrorStatusAdditionalSenseStringKey
	@discussion	An NSString describing the RBC additional sense code and additional 
				sense code qualifier pair returned by the device.
				If no sense is reported, this key will not be present.
*/
@available(OSX 10.2, *)
let DRErrorStatusAdditionalSenseStringKey: String

/*!
	@class 		DRTrack
	@abstract	The DRTrack class represents a track on the burned disc.
	@discussion	
	<h3>About tracks</h3>

	A DRTrack provides data to the for the burn and contains a description of the 
	track on disc (length, block type, data format, etc). 
	Data is provided for the burn in a real-time thread. It is up to the track to 
	provide this data in a timely manner, otherwise a burn underrun can occur and
	ruin a disc.
	
	<h3>Data Production</h3>

	DRTracks do not typically store or cache the data to be written to disk, instead the 
	data is streamed to the disc from some data producer as it's needed. This is 
	accomplished through an object associated with the track when the track is created 
	called the <i>track producer</i>. A track producer is a class you create that implements 
	the @link DRTrackDataProduction DRTrackDataProduction @/link informal protocol. This protocol defines all of 
	the methods that a track object will call during a burn to obtain data.
	
	<h3>Track Properties</h3>

	A DRTrack object contains several properties which define the track for the burn.
	These properties are stored in an NSDictionary and are accessed through the @link //apple_ref/occ/instm/DRTrack/properties properties @/link
	and @link //apple_ref/occ/instm/DRTrack/setProperties: setProperties: @/link methods. 
	
	There are several properties that are required to be present and if they are not, will 
	cause the burn to fail. These are:
	
	<ul>
	<li>@link DRTrackLengthKey DRTrackLengthKey @/link	Length of the track</li>
	<li>@link DRBlockSizeKey DRBlockSizeKey @/link	Size in bytes of each track block</li>
	<li>@link DRBlockTypeKey DRBlockTypeKey @/link	Type of each track block</li>
	<li>@link DRDataFormKey DRDataFormKey @/link		Data form of each block in the track</li>
	<li>@link DRSessionFormatKey DRSessionFormatKey @/link Session format of the track</li>
	<li>@link DRTrackModeKey DRTrackModeKey @/link	Track mode of the track</li>
	</ul>
		
	The possible values of these properties are defined in the Mt. Fuji (IFF-8090i) 
	specification for CD/DVD devices. It's up to you to understand the possible values
	and meanings of each. 
	
	All other keys contained in the properties dictionary are optional and can be omitted.
*/
class DRTrack : NSObject {

  /*!
  	@method			initWithProducer:
  	@abstract		Initializes a DRTrack with the producer
  	@param			producer	The object to use as the data producer
  	@result			A DRTrack
  */
  init!(producer: AnyObject!)

  /*! 
     	@method 		properties
     	@abstract		Returns the properties dictionary of the track.
      @result  		An NSDictionary containing the properties of the track.
  */
  func properties() -> [NSObject : AnyObject]!

  /*! 
     	@method 		setProperties:
     	@abstract		Sets the properties dictionary of the track
     	@param 			properties	NSDictionary of the properties to set.
  */
  func setProperties(properties: [NSObject : AnyObject]!)

  /*! 
     	@method 		testProductionSpeedForInterval:
     	@abstract		Tests the production speed for a specified interval.
     	@discussion		Runs a fake "production" cycle, repeatedly asking the receiver for data by calling
  					it's producer's @link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataIntoBuffer:length:atAddress:blockSize:ioFlags: produceDataIntoBuffer:length:atAddress:blockSize:ioFlags: @/link for the 
  					specified time interval.
  						
  					Use this function to verify that the the production code can produce data fast 
  					enough to satisfy the data throughput requirements of the burn. 
  					
  					Returns the calculated maximum speed the at which the receiver can produce data. 
  					This value should be used when setting up a burn to limit the burn speed
     	@param 			interval	The length of the test in seconds.
     	@result			The maximum speed data can be produced at.
  */
  func testProductionSpeedForInterval(interval: NSTimeInterval) -> Float

  /*! 
     	@method 		testProductionSpeedForLength:
     	@abstract		Tests the production speed for a specified byte count.
     	@discussion		Runs a fake "production" cycle, repeatedly asking the receiver for data by calling
  					it's producer's @link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataIntoBuffer:length:atAddress:blockSize:ioFlags: produceDataIntoBuffer:length:atAddress:blockSize:ioFlags: @/link until 
  					the specified length number of bytes have been produced.
  						
  					Use this function to verify that the the production code can produce data fast 
  					enough to satisfy the data throughput requirements of the burn. 
  					
  					Returns the calculated maximum speed the at which the receiver can produce data. 
  					This value should be used when setting up a burn to limit the burn speed
     	@param 			length	The length of the test in bytes.
     	@result			The maximum speed data can be produced at.
  */
  func testProductionSpeedForLength(length: UInt32) -> Float

  /*!
  	@method		estimateLength
  	@abstract	Asks the track producer for a size estimate.
  	@discussion	This method calls the track producer to ask it to estimate the size
  				needed for its data.
  				
  				For some types of track, this call may be very expensive. For example,
  				a DRFilesystemTrack may need to iterate folders on disk to provide an
  				accurate estimate, which (if a large number of files and folders are
  				involved) can cause this call to take 30 seconds or more. Since your
  				main thread should not be allowed to block for this long, you may wish
  				to call this function on a separate thread.
  	@result		The estimated length of the track.
  */
  func estimateLength() -> UInt64
  init()
}

/*! 
	@category		DRTrack (PropertyConvenience)
   	@discussion		This category on DRTrack defines methods that make setting and retrieving
   					the various DRTrack properties easier.
*/
extension DRTrack {

  /*! 
     	@method 		length
     	@abstract		Returns the length of the track data.
     	@discussion		The length returned does not include the length of the pregap. Only the length
     					of the track data itself is returned.
  	@result			A DRMSF representing the length of the track.
  */
  func length() -> DRMSF!

  /*! 
     	@method 		preGap
     	@abstract		Returns the length of the pre gap.
      @discussion		This is a simple wrapper to obtain the @link DRPreGapLengthKey DRPreGapLengthKey @/link. If the @link DRPreGapLengthKey DRPreGapLengthKey @/link 
      				property has not been set for the track this method will return a zero-length @link //apple_ref/occ/cl/DRMSF DRMSF @/link 
      				object (0m:0s:0f).
    	@result			A DRMSF representing the length of the pre gap.
  */
  func preGap() -> DRMSF!

  /*! 
     	@method 		setPreGap:
     	@abstract		Sets the length of the pre gap.
      @discussion		This is a simple wrapper to set the @link DRPreGapLengthKey DRPreGapLengthKey @/link.
  	@param			preGap	the pre gap length.
  */
  func setPreGap(preGap: DRMSF!)
}

/*!
	@protocol 	DRTrackDataProduction
	@abstract	Informal protocol describing methods implemented by a track data producer.
	@discussion	
	The DRTrackDataProduction informal protocol defines those methods that a track data producer 
	instance can implement. A track data producer is the object that is
	resposible for providing the track data to the burn engine on request. 
	
	In concept a track data producer similar to an NSTable data source in Cocoa. 
	Each producer method receives a pointer to the track it should produce data for. 
	There is one method that <b>must</b> be implemented -
	@link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: @/link.
	
	The methods of this protocol will be called in roughly this order:
	
	<ol type="1">
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/prepareTrackForBurn: prepareTrackForBurn: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/producePreGapForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: producePreGapForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/prepareTrackForVerification: prepareTrackForVerification: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/cleanupTrackAfterVerification: cleanupTrackAfterVerification: @/link</li>
	<li>@link //apple_ref/occ/intfm/DRTrackDataProduction/cleanupTrackAfterBurn: cleanupTrackAfterBurn: @/link</li>
	</ol>
	
	If verification of the disc is not requested, or a track omits or defines 
	@link DRVerificationTypeKey DRVerificationTypeKey @/link to be @link DRVerificationTypeNone DRVerificationTypeNone @/link, then 
	@link //apple_ref/occ/intfm/DRTrackDataProduction/prepareTrackForVerification: prepareTrackForVerification: @/link, 
	@link //apple_ref/occ/intfm/DRTrackDataProduction/verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: @/link and
	@link //apple_ref/occ/intfm/DRTrackDataProduction/cleanupTrackAfterVerification: cleanupTrackAfterVerification: @/link
	will not be called.
	
	During a burn, @link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: @/link is called
	very frequently in a real-time thread. Because of this, it is of utmost importance that
	this method very effficient and does not perform any long task, since by doing so, the
	burn may fail because data is not available to write to the disc.
*/
protocol DRTrackDataProduction {

  /*!
  	@method			estimateLengthOfTrack:
  	@abstract		Estimates the size of the track to be burned.
  	@discussion		This message is sent outside of a burn cycle in response to a -estimateLength message 
  					sent to the track.
  					
  					
  	@param			track	The track object for which to estimate the size
  	@result			The number of blocks of data that the track will occupy. The estimate should be 
  					reasonably accurate, and no smaller than the actual size that will be needed.
  */
  func estimateLengthOf(track: DRTrack!) -> UInt64

  /*!
  	@method			prepareTrack:forBurn:toMedia:
  	@abstract		Prepares the track for burning.
  	@discussion		Called before any burning starts. Do any sort of setup that needs to be performed
  					(such as opening files). This method can calculate and update the exact track length
  					that will be burned.
  					
  					Since this method is called before the laser is turned on, this method can perform 
  					time consuming tasks. 
  	@param			track	The track object being burned
  	@param			burn	The burn object controlling the burn
  	@param			mediaInfo	The media being burned to. This is the same dictionary as returned by @link //apple_ref/occ/instm/DRDevice/status -[DRDevice status] @/link.
  	@result			<i>YES</i> to indicate that the burn should proceed and <i>NO</i> to indicate a failure occurred.
  */
  @available(OSX 10.0, *)
  func prepare(track: DRTrack!, forBurn burn: DRBurn!, toMedia mediaInfo: [NSObject : AnyObject]!) -> Bool

  /*!
  	@method			cleanupTrackAfterBurn:
  	@abstract		Cleans up the track after the burn completes.
  	@discussion		Called after burning is complete. Typically you'll clean up what was setup in <b>prepareTrackForBurn</b>. 
  					Since this method is called after the laser is turned off and the burn is finished, 
  					this method can perform time consuming tasks. 
  	@param			track	The track object being burned
  	@result			<i>YES</i> to indicate that the burn should proceed and <i>NO</i> to indicate a failure occurred.
  */
  func cleanupTrackAfterBurn(track: DRTrack!)

  /*!
  	@method			producePreGapForTrack:intoBuffer:length:atAddress:blockSize:ioFlags:
  	@abstract		Produces the pregap data.
  	@discussion		This method is called to obtain data for the track's pregap. If the @link DRPreGapLengthKey DRPreGapLengthKey @/link 
  					key is present in the track properties, the track producer will be asked for the pregap 
  					data first. If the producer implements this selector, then it's the responsibility
  					of the producer to provide data for the pregap, otherwise that length of 
  					silence will be produced by DiscRecording.
  					
  					The buffer passed in will be a multiple of blockSize (bufferLength == blockSize * N, where N > 1) 
  					and should be filled as full as possible with data. address is the sector address on the disc from
  					the start of the track that is the buffer will be written to.
  					
  					Since while burning, keeping the drive's buffer full is 
  					of utmost importance, you should not perform lengthy operations or block for data in this method.
  					This method should return the number of bytes actually in the buffer or 0 to indicate that there
  					was an error producing the data.. 
  	@param			track	The track object being burned
  	@param			buffer	The buffer to place data into
  	@param			bufferLength	The length of buffer
  	@param			address	The on-disc address of where data will be written
  	@param			blockSize	the size of each block on the disc. It's best to return a multiple of this size.
  	@param			flags	flags
  	@result			The number of bytes produced.
  */
  func producePreGapFor(track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> UInt32

  /*!
  	@method			produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags:
  	@abstract		Produces the track data.
  	@discussion		This method is called many times over the course of a burn to obtain data for the track. 
  					The buffer passed in will be a multiple of blockSize (bufferLength == blockSize * N, where N > 1) 
  					and should be filled as full as possible with data. address is the sector address on the disc from
  					the start of the track that is the buffer will be written to.
  					
  					Since while burning, keeping the drive's buffer full is 
  					of utmost importance, you should not perform lengthy operations or block for data in this method.
  					This method should return the number of bytes actually in the buffer or 0 to indicate that there
  					was an error producing the data.. 
  	@param			track	The track object being burned
  	@param			buffer	The buffer to place data into
  	@param			bufferLength	The length of buffer
  	@param			address	The on-disc address of where data will be written
  	@param			blockSize	the size of each block on the disc. It's best to return a multiple of this size.
  	@param			flags	flags
  	@result			The number of bytes produced.
  */
  func produceDataFor(track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> UInt32

  /*!
  	@method			prepareTrackForVerification:
  	@abstract		Prepare the track to be verified.
  	@discussion		This method is called after the burn complets writing data to disc and before verification
  					phase starts. Now would be a good time to prepare to produce data again by rewinding to the start
  					of files, etc. 
  	@param			track	The track object being burned
  	@result			<i>YES</i> to indicate that the verification should proceed and <i>NO</i> to indicate a failure occurred.
  */
  func prepareTrackForVerification(track: DRTrack!) -> Bool

  /*!
  	@method			verifyPreGapForTrack:inBuffer:length:atAddress:blockSize:ioFlags:
  	@abstract		Checks the integrity track pregap after a burn.
  	@discussion		If the class implementing this method asks for a verification type of @link DRVerificationTypeReceiveData DRVerificationTypeReceiveData @/link, 
  					then a series of calls to this method will start. It's up to the class to reproduce the pregap
  					again and compare it to the data passed in buffer. The buffer passed in will be a multiple of blockSize 
  					(bufferLength == blockSize * N, where N > 1). address is the sector address on the disc from
  					the start of the track that is the buffer was written to.
  	@param			track	The track object being burned
  	@param			buffer	The data read in from the track to compare with
  	@param			bufferLength	The length of buffer
  	@param			address	The on-disc address of where data will was read from.
  	@param			blockSize	the size of each block on the disc. It's best to return a multiple of this size.
  	@param			flags	flags
  	@result			<i>YES</i> to indicate that the data compared successfully and <i>NO</i> to indicate a failure occurred.
  */
  func verifyPreGapFor(track: DRTrack!, inBuffer buffer: UnsafePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> Bool

  /*!
  	@method			verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags:
  	@abstract		Cleans up the track after the burn completes.
  	@discussion		If the class implementing this method asks for a verification type of @link DRVerificationTypeReceiveData DRVerificationTypeReceiveData @/link, 
  					then a series of calls to this method will start. It's up to the class to reproduce the data
  					again and compare it to the data passed in buffer. The buffer passed in will be a multiple of blockSize 
  					(bufferLength == blockSize * N, where N > 1). address is the sector address on the disc from
  					the start of the track that is the buffer was written to.
  	@param			track	The track object being burned
  	@param			buffer	The data read in from the track to compare with
  	@param			bufferLength	The length of buffer
  	@param			address	The on-disc address of where data will was read from.
  	@param			blockSize	the size of each block on the disc. It's best to return a multiple of this size.
  	@param			flags	flags
  	@result			<i>YES</i> to indicate that the data compared successfully and <i>NO</i> to indicate a failure occurred.
  */
  func verifyDataFor(track: DRTrack!, inBuffer buffer: UnsafePointer<Int8>, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>) -> Bool

  /*!
  	@method			cleanupTrackAfterVerification:
  	@abstract		Cleans up the track after the verification completes.
  	@discussion		Once the verification phase is complete, this method is called. The class implementing
  					the method has a chance to do anything up to and including failing the verification. 
  	@param			track	The track object being burned
  	@result			Return <i>YES</i> to indicate success, <i>NO</i> to indicate failure.
  */
  func cleanupTrackAfterVerification(track: DRTrack!) -> Bool
}

/*!
	@const		DRTrackLengthKey
	@discussion	NSNumber representing the length of the track
*/
@available(OSX 10.2, *)
let DRTrackLengthKey: String

/*!
	@const		DRBlockSizeKey
	@discussion	NSNumber containing the size in bytes of each track block. 
				See the Mt. Fuji (INF-8090i) specification for CD/DVD devices for possible
				values for this property.
*/
@available(OSX 10.2, *)
let DRBlockSizeKey: String

/*!
	@const		DRBlockTypeKey
	@discussion	NSNumber containing the type of each track block.
				See the Mt. Fuji (INF-8090i) specification for CD/DVD devices for possible
				values for this property.
*/
@available(OSX 10.2, *)
let DRBlockTypeKey: String

/*!
	@const		DRDataFormKey
	@discussion	NSNumber containing the data form of each block in the track.
				See the Mt. Fuji (INF-8090i) specification for CD/DVD devices for possible
				values for this property.
*/
@available(OSX 10.2, *)
let DRDataFormKey: String

/*!
	@const		DRSessionFormatKey
	@discussion	NSNumber containing the session format of the track.
				See the Mt. Fuji (INF-8090i) specification for CD/DVD devices for possible
				values for this property.
*/
@available(OSX 10.2, *)
let DRSessionFormatKey: String

/*!
	@const		DRTrackModeKey
	@discussion	NSNumber containing the track mode of the track.
				See the Mt. Fuji (INF-8090i) specification for CD/DVD devices for possible
				values for this property.
*/
@available(OSX 10.2, *)
let DRTrackModeKey: String

/*!
	@const		DRVerificationTypeKey
	@discussion	NSString indicating the type of verification to be performed. If this is not
				present, the track will not be verified.
*/
@available(OSX 10.2, *)
let DRVerificationTypeKey: String

/*!
	@const		DRMaxBurnSpeedKey
	@discussion	NSNumber containing the maximum burn speed at which data can be produced. 
				The speed is represented in KB/s (1 KB = 1000 bytes).  This key can only
				be used to limit the speed at which the burn runs.
*/
@available(OSX 10.2, *)
let DRMaxBurnSpeedKey: String

/*!
	@const		DRPreGapLengthKey
	@discussion	For CD tracks only.  NSNumber containing the length of silence or data at the
				beginning of the track.  This defaults to 2 seconds of silence. If this 
				key is present, the track producer will be asked for the pregap data first.
				If the producer implements the proper selector, then it's the responsibility
				of the producer to provide data for the pregap, otherwise that length of 
				silence will be produced by Disc Recording.
*/
@available(OSX 10.2, *)
let DRPreGapLengthKey: String

/*!
	@const		DRPreGapIsRequiredKey
	@discussion	For CD tracks only. NSNumber indicating whether the pregap listed for the 
				track is required.  If this key is not present, the track will behave as 
				though the key were <i>NO</i>.
				
				If this key's value is set to <i>YES</i> and the device does
				not support the exact pregap length, the burn
				will fail with a return value of @link //apple_ref/c/econst/kDRDevicePregapLengthNotAvailableErr kDRDevicePregapLengthNotAvailableErr @/link.
				
				If this key's value is set to <i>YES</i> and the device does
				not support any of the suggested pregap length, the engine
				will choose an alternate pregap length. 
*/
@available(OSX 10.5, *)
let DRPreGapIsRequiredKey: String

/*!
	@const		DRDVDTimestampKey
	@discussion	For DVD tracks only.  NSData containing the DVD timestamp structure sent
				through the SEND DVD STRUCTURE command.  The contents of this will be
				sent directly to the drive.
*/
@available(OSX 10.2, *)
let DRDVDTimestampKey: String

/*!
	@const		DRDVDCopyrightInfoKey
	@discussion	For DVD tracks only.  NSData containing the DVD copyright info structure
				sent through the SEND DVD STRUCTURE command.  The contents of this will
				be sent directly to the drive.
*/
@available(OSX 10.2, *)
let DRDVDCopyrightInfoKey: String

/*!
	@const		DRTrackISRCKey
	@discussion	For CD-DA audio tracks only.  This key points to an NSData containing
				exactly 12 bytes, which will be written to the disc as the International
				Standard Recording Code (ISRC).  If this key is not present, no ISRC
				is written.
				
				The use of this value should conform to the specifications of the IFPI. See
				<a href="http://www.ifpi.org/isrc/">http://www.ifpi.org/isrc/</a> for more details on the ISRC standard.
				
				Not all drives are capable of the write modes necessary to write the ISRC.
				If this key is present in any track and the drive cannot write the ISRC, the
				burn will fail with @link //apple_ref/c/econst/kDRDeviceCantWriteISRCErr kDRDeviceCantWriteISRCErr @/link.
*/
@available(OSX 10.3, *)
let DRTrackISRCKey: String

/*!
	@const		DRIndexPointsKey
	@discussion	For CD tracks only. This key points to an NSArray of NSNumbers, indicating
				the index points inside the track.  Each index point is specified as a number
				of blocks (frames) relative to the start of the track.  There are 75 blocks
				in one second of CD audio.  No more than 98 index points may be specified
				for a track.
				
				Not all drives are capable of writing index points, and not all consumer
				CD players report or use them.  If this key is present in any track and the
				drive cannot write index points, the burn will fail with
				@link //apple_ref/c/econst/kDRDeviceCantWriteIndexPointsErr kDRDeviceCantWriteIndexPointsErr @/link.
*/
@available(OSX 10.3, *)
let DRIndexPointsKey: String

/*!
	@const		DRAudioPreEmphasisKey
	@discussion	For CD-DA audio tracks only. This key points to a BOOL value indicating
				whether the track includes pre-emphasis of 50/15us.  If this key is not
				present, the engine will use a default value of NO.  On the media, this
				key corresponds to bit 0 of the control field in sub-channel Q.
*/
@available(OSX 10.3, *)
let DRAudioPreEmphasisKey: String

/*!
	@const		DRAudioFourChannelKey
	@discussion	For CD-DA audio tracks only. This key points to a BOOL value indicating
				whether the track data has four channels, as opposed to the
				two channels of normal stereo.  If this key is not present, the engine
				will use a default value of NO and standard two-channel stereo
				is assumed.
				
				Note that while four-channel is technically allowed in the Red Book,
				it never caught on and is probably being replaced by SACD, so
				you probably shouldn't attempt to use it.
				
				On the media, this key corresponds to bit 3 of the control field in
				sub-channel Q.
*/
@available(OSX 10.3, *)
let DRAudioFourChannelKey: String

/*!
	@const		DRSerialCopyManagementStateKey
	@discussion	For CD tracks only.  This key points to an NSString value indicating the
				SCMS state of the track.  If this key is not present, no SCMS data is
				written.
				
				Not all drives are capable of writing SCMS.  If this key is present in
				any track and the drive cannot write SCMS, the burn will fail with
				@link //apple_ref/c/econst/kDRDeviceCantWriteSCMSErr kDRDeviceCantWriteSCMSErr @/link.
*/
@available(OSX 10.3, *)
let DRSerialCopyManagementStateKey: String

/*!
	@const		DRVerificationTypeProduceAgain
	@discussion	One of the possible values of the @link DRVerificationTypeKey DRVerificationTypeKey @/link.
				The engine will simply begin another production cycle and start calling 
				@link //apple_ref/occ/intfm/DRTrackDataProduction/produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: @/link again.
*/
@available(OSX 10.2, *)
let DRVerificationTypeProduceAgain: String

/*!
	@const		DRVerificationTypeReceiveData
	@discussion	One of the possible values of the @link DRVerificationTypeKey DRVerificationTypeKey @/link.
				The engine will begin reading data from the disc and calling
				@link //apple_ref/occ/intfm/DRTrackDataProduction/verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: verifyDataForTrack:inBuffer:length:atAddress:blockSize:ioFlags: @/link.
*/
@available(OSX 10.2, *)
let DRVerificationTypeReceiveData: String

/*!
	@const		DRVerificationTypeChecksum
	@discussion	One of the possible values of the @link DRVerificationTypeKey DRVerificationTypeKey @/link.
				The engine will verify the track data with an internally calculated checksum.
*/
@available(OSX 10.4, *)
let DRVerificationTypeChecksum: String

/*!
	@const		DRVerificationTypeNone
	@discussion	One of the possible values of the @link DRVerificationTypeKey DRVerificationTypeKey @/link.
				No verification is desired, so verification will be skipped.
*/
@available(OSX 10.2, *)
let DRVerificationTypeNone: String

/*!
	@const		DRSCMSCopyrightFree
	@discussion	One possible value for the @link DRSerialCopyManagementStateKey DRSerialCopyManagementStateKey @/link.  Indicates that
				the track has no copying restrictions.  Copies of this track should also be
				copyright free.
*/
@available(OSX 10.3, *)
let DRSCMSCopyrightFree: String

/*!
	@const		DRSCMSCopyrightProtectedOriginal
	@discussion	One possible value for the @link DRSerialCopyManagementStateKey DRSerialCopyManagementStateKey @/link.  Indicates that
				the track is an original subject to copyright protection.  Digital copying of
				this track should be allowed, but copies should be marked with SCMS.
*/
@available(OSX 10.3, *)
let DRSCMSCopyrightProtectedOriginal: String

/*!
	@const		DRSCMSCopyrightProtectedCopy
	@discussion	One possible value for the @link DRSerialCopyManagementStateKey DRSerialCopyManagementStateKey @/link.  Indicates that
				the track is a first-generation copy of an original that was subject to copy
				protection.  No further digital copying should be allowed.
*/
@available(OSX 10.3, *)
let DRSCMSCopyrightProtectedCopy: String

/*!
	@const		DRNextWritableAddressKey
	@discussion	NSNumber containing the LBA of the next writable address
				in the track. This key is not present in closed tracks.
*/
@available(OSX 10.3, *)
let DRNextWritableAddressKey: String

/*!
	@const		DRTrackStartAddressKey
	@discussion	NSNumber containing the LBA of the start address for the
				track.
*/
@available(OSX 10.3, *)
let DRTrackStartAddressKey: String

/*!
	@const		DRFreeBlocksKey
	@discussion	NSNumber containing the length, in blocks, which is
				still available in a writable track.
*/
@available(OSX 10.3, *)
let DRFreeBlocksKey: String

/*!
	@const		DRTrackNumberKey
	@discussion	NSNumber containing the physical track number of a track.
*/
@available(OSX 10.3, *)
let DRTrackNumberKey: String

/*!
	@const		DRSessionNumberKey
	@discussion	NSNumber containing the physical session number of a track.
*/
@available(OSX 10.3, *)
let DRSessionNumberKey: String

/*!
	@const		DRTrackTypeKey
	@discussion	NSString indicating the type of track. Possible values are: 
				@link DRTrackTypeInvisible DRTrackTypeInvisible @/link, @link DRTrackTypeIncomplete DRTrackTypeIncomplete @/link, 
				@link DRTrackTypeReserved DRTrackTypeReserved @/link or @link DRTrackTypeClosed DRTrackTypeClosed @/link.
*/
@available(OSX 10.3, *)
let DRTrackTypeKey: String

/*!
	@const		DRTrackIsEmptyKey
	@discussion	NSNumber containing a BOOL value and indicates whether the track is empty.
*/
@available(OSX 10.3, *)
let DRTrackIsEmptyKey: String

/*!
	@const		DRTrackPacketTypeKey
	@discussion	NSString indicating the kind of packets being written.
*/
@available(OSX 10.3, *)
let DRTrackPacketTypeKey: String

/*!
	@const		DRTrackPacketSizeKey
	@discussion	NSNumber containing the number of blocks per packet for
				the disc. It will only be present if the disc contains fixed packets. This key
				will contain 16 for DVD media, and typically contains either 16 or 32 for CD media.
*/
@available(OSX 10.3, *)
let DRTrackPacketSizeKey: String

/*!
	@const		DRTrackTypeInvisible
	@discussion	If this is the value of the @link DRTrackTypeKey DRTrackTypeKey @/link then the track is invisible and
				available to writing. If it is packet written and not closed, DRPacketTypeKey will
				be present, along with DRTrackPacketType and DRTrackPacketSize keys.
*/
@available(OSX 10.3, *)
let DRTrackTypeInvisible: String

/*!
	@const		DRTrackTypeIncomplete
	@discussion	If this is the value of the @link DRTrackTypeKey DRTrackTypeKey @/link then the track is not invisible or
				reserved and is available for writing.
*/
@available(OSX 10.3, *)
let DRTrackTypeIncomplete: String

/*!
	@const		DRTrackTypeReserved
	@discussion	If this is the value of the @link DRTrackTypeKey DRTrackTypeKey @/link then the track is reserved for writing.
*/
@available(OSX 10.3, *)
let DRTrackTypeReserved: String

/*!
	@const		DRTrackTypeClosed
	@discussion	If this is the value of the @link DRTrackTypeKey DRTrackTypeKey @/link then the track has been
				written and is closed.
*/
@available(OSX 10.3, *)
let DRTrackTypeClosed: String

/*!
	@const		DRTrackPacketTypeFixed
	@discussion	If this is the value of the @link DRTrackPacketTypeKey DRTrackPacketTypeKey @/link then the disc is writen with
				fixed sized packets.  When this value is present the DRPacketSizeKey will also be
				present.
*/
@available(OSX 10.3, *)
let DRTrackPacketTypeFixed: String

/*!
	@const		DRTrackPacketTypeVariable
	@discussion	If this is the value of the @link DRTrackPacketTypeKey DRTrackPacketTypeKey @/link then the disc is written with
				sequential variable sized packets.  The presence of this value indicates the lack
				of the DRPacketSizeKey.
*/
@available(OSX 10.3, *)
let DRTrackPacketTypeVariable: String

/*!
	@const		DRISOLevel
	@discussion	NSNumber containing the ISO level of the ISO-9660 filesystem on the track. Currently should be 1 or 2.
*/
@available(OSX 10.2, *)
let DRISOLevel: String

/*!
	@const		DRVolumeSet
	@discussion	NSString indicating the volume set name for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRVolumeSet: String

/*!
	@const		DRPublisher
	@discussion	NSString indicating the publisher for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRPublisher: String

/*!
	@const		DRDataPreparer
	@discussion	NSString indicating the data preparer for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRDataPreparer: String

/*!
	@const		DRApplicationIdentifier
	@discussion	NSString indicating the application identifier for ISO, Joliet and UDF volumes.
*/
@available(OSX 10.2, *)
let DRApplicationIdentifier: String

/*!
	@const		DRSystemIdentifier
	@discussion	NSString indicating the system identifier for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRSystemIdentifier: String

/*!
	@const		DRCopyrightFile
	@discussion	DRFile pointing to the copyright file for ISO and Joliet volumes. The file must be in the root directory.
*/
@available(OSX 10.2, *)
let DRCopyrightFile: String

/*!
	@const		DRAbstractFile
	@discussion	DRFile pointing to the abstract file for ISO and Joliet volumes. The file must be in the root directory.
*/
@available(OSX 10.2, *)
let DRAbstractFile: String

/*!
	@const		DRBibliographicFile
	@discussion	DRFile pointing to the bibliographic file for ISO and Joliet volumes. The file must be in the root directory.
*/
@available(OSX 10.2, *)
let DRBibliographicFile: String

/*!
	@const		DRBlockSize
	@discussion	NSNumber indicating the block size of the track. Currently always 2048.  Do not change.
*/
@available(OSX 10.2, *)
let DRBlockSize: String

/*!
	@const		DRDefaultDate
	@discussion	NSDate containing the default date to use for any unspecified dates in the filesystem. The current date and time is used if unspecified.
*/
@available(OSX 10.2, *)
let DRDefaultDate: String

/*!
	@const		DRVolumeCreationDate
	@discussion	NSDate containing the volume creation date. DRDefaultDate is used if unspecified.
*/
@available(OSX 10.2, *)
let DRVolumeCreationDate: String

/*!
	@const		DRVolumeModificationDate
	@discussion	NSDate containing the volume modification date. DRDefaultDate is used if unspecified.
*/
@available(OSX 10.2, *)
let DRVolumeModificationDate: String

/*!
	@const		DRVolumeCheckedDate
	@discussion		NSDate containing the volume-checked date for HFS+ volumes. DRDefaultDate is used if unspecified.
*/
@available(OSX 10.2, *)
let DRVolumeCheckedDate: String

/*!
	@const		DRVolumeExpirationDate
	@discussion	NSDate containing the volume expiration date for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRVolumeExpirationDate: String

/*!
	@const		DRVolumeEffectiveDate
	@discussion	NSDate containing the date and time at which the volume is effective for ISO and Joliet volumes.
*/
@available(OSX 10.2, *)
let DRVolumeEffectiveDate: String

/*!
	@const		DRISOMacExtensions
	@discussion	NSBoolean indicating whether the track should have Mac extensions.
*/
@available(OSX 10.2, *)
let DRISOMacExtensions: String

/*!
	@const		DRISORockRidgeExtensions
	@discussion	NSBoolean indicating whether the track should have RockRidge (POSIX) extensions.
*/
@available(OSX 10.2, *)
let DRISORockRidgeExtensions: String

/*!
	@const		DRSuppressMacSpecificFiles
	@discussion	NSBoolean indicating whether the track should suppress Mac-specific files from
				non-HFS filesystems.
*/
@available(OSX 10.3, *)
let DRSuppressMacSpecificFiles: String
var DRFlagSubchannelDataRequested: Int { get }

/*!
	@const          DRSubchannelDataFormKey
	@discussion     The property whose value is the data mode of the subchannel data sent to the drive.
					If this key is not present, the track will default to a value of @link DRSubchannelDataFormNone DRSubchannelDataFormNone @/link
					and no subchannel information will be requested from the producer.

					Subchannel data is returned from the producer in the same production method that produces normal user data. 
					Normally a producer returns user data in chunks of @link DRBlockSizeKey DRBlockSizeKey @/link size. When subchannel
					data is also produced, the producer is expected to return user data of DRBlockSizeKey in length with an additonal
					96 bytes of subchannel data. Depending on the data form specified in this key, the format of this 96 bytes is 
					either in raw or pack format. When subchannel data is requested from the producer, the @link DRFlagSubchannelDataRequested
					DRFlagSubchannelDataRequested @/link flag is set in the <i>flags</i> parameter of 
					producePreGapForTrack:intoBuffer:length:atAddress:blockSize:ioFlags:
					or produceDataForTrack:intoBuffer:length:atAddress:blockSize:ioFlags: and blockSize is increased by 96 bytes.
*/
@available(OSX 10.5, *)
let DRSubchannelDataFormKey: String

/*!
	@constant		DRSubchannelDataFormNone
	@discussion 	A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
 					subchannel data will not be provided by the producer.
*/
@available(OSX 10.5, *)
let DRSubchannelDataFormNone: String

/*!
	@const			DRSubchannelDataFormPack
	@discussion		A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
					producer will be asked to provide pack format subchannel data for the track. If this form is selected,
					the drive will perform P and Q parity calculations on each pack and interleave the packs before writing them to 
					disc.
					This corresponds to a subchannel data form of 0xC0.
*/
@available(OSX 10.5, *)
let DRSubchannelDataFormPack: String

/*!
	@const			DRSubchannelDataFormRaw
	@discussion		A value for @link DRSubchannelDataFormKey DRSubchannelDataFormKey @/link indicating that the 
					producer will be asked to provide raw format subchannel data for the track. If this form is selected,
					the producer must have performed P and Q parity calculations for each pack and done proper interleaving of the subchannel
					data. The drive will fill in the P-Q subchannel information and write the R-W subchannel data as is to the disc.
					This corresponds to a subchannel data form of 0x40.
*/
@available(OSX 10.5, *)
let DRSubchannelDataFormRaw: String

/*!
	@category DRTrack(AudioContentCreation)
	@discussion This category on @link //apple_ref/occ/cl/DRTrack DRTrack @/link creates a track configured to burn audio data to disc.
				It implements two methods @link //apple_ref/occ/clm/DRTrack/trackForAudioOfLength:producer: trackForAudioOfLength:producer: @/link
				and @link //apple_ref/occ/clm/DRTrack/trackForAudioFile: trackForAudioFile: @/link which
				create and return a fully configured track to the caller.
*/
extension DRTrack {

  /*!
  	@method			trackForAudioOfLength:producer:
  	@abstract		Creates a DRTrack capable of burning RedBook CD audio.
  	@discussion		This method configures a track object configured to accept standard RedBook audio
  					CD data. It is up to the client to provide that data to the 
  					track object through the producer object. The producer is an object
  					which implements the @link //apple_ref/occ/intf/DRTrackDataProduction DRTrackDataProduction @/link protocol.
  	@param			length		The length of the track that will be produced.
  	@param			producer	The object to use as the data producer
  	@result			An autoreleased DRTrack
  */
  /*not inherited*/ init!(forAudioOfLength length: DRMSF!, producer: AnyObject!)

  /*!
  	@method			trackForAudioFile:
  	@abstract		Creates a DRTrack capable of burning RedBook CD audio from a QuickTime readable file.
  	@discussion		This method creates a track object configured and primed to output RedBook audio
  					CD data. It accepts any file readable by QuickTime and extracts the audio data
  					(if any) from the file, translating that into the correct format for output
  					to the disc.
  	@param			path	The path to the file. This file must be one that can be read by
  							QuickTime. 
  	@result			An autoreleased DRTrack
  */
  /*not inherited*/ init!(forAudioFile path: String!)
}

/*!
	@category DRTrack (DataContentCreation)
	@discussion	This category on @link //apple_ref/occ/cl/DRTrack DRTrack @/link creates a track instance which is set up to burn
				a @link //apple_ref/occ/cl/DRFolder DRFolder @/link to disc. It implements only one method, @link //apple_ref/occ/clm/DRTrack/trackForRootFolder: trackForRootFolder: @/link which
				creates and returns a fully configured track to the caller.
*/
extension DRTrack {

  /*!
  	@method			trackForRootFolder:
  	@abstract		Creates a DRTrack capable of burning a folder to disc.
  	@discussion		Additional track properties can be set controlling the various 
  					filesystems to be generated. See the documentation for @link //apple_ref/occ/cl/DRTrack DRTrack @/link for more info.
  	@param			rootFolder		The root of the volume to be created.
  	@result			An autoreleased DRTrack
  */
  /*not inherited*/ init!(forRootFolder rootFolder: DRFolder!)
}
