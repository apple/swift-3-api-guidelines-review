

/*!
	@typedef	AVB17221ACMPInterfaceCompletion:
	@abstract	The prototype for the completion handler block for command messages.
 */
typealias AVB17221ACMPInterfaceCompletion = (Error?, AVB17221ACMPMessage) -> Void

/*!
 @protocol	AVB17221ACMPClient
 @abstract	AVB17221ACMPClient is an objective-c protocol for classes intending to receive callbacks from AVB1722ACMPInterface.
 @discussion	AVB17221ACMPClient is an objective-c protocol for classes intending to receive callbacks from AVB1722ACMPInterface.
 There is a separate callback for each IEEE Std 1722.1™-2013 AVDECC Connection Managment Protocol (ACMP) command and response messages.
 */
protocol AVB17221ACMPClient {

  /*!
   @method		ACMPDidReceiveCommand:onInterface:
   @abstract	Handle a received AECP command.
   @param		message		An instance of a subclass of AVB17221ACMPMessage appropriate for the message type.
   @param		anInterface	The AVB17221ACMPInterface the message was received on.
   @result		YES if the message was processed, NO otherwise.
   */
  @available(OSX 10.8, *)
  func acmpDidReceiveCommand(message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool

  /*!
   @method		ACMPDidReceiveResponse:onInterface:
   @abstract	Handle a received AECP response.
   @param		message		An instance of a subclass of AVB17221ACMPMessage appropriate for the message type.
   @param		anInterface	The AVB17221ACMPInterface the message was received on.
   @result		YES if the message was processed, NO otherwise.
   */
  @available(OSX 10.8, *)
  func acmpDidReceiveResponse(message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool
}

/*!
	@class		AVB17221ACMPInterface
	@abstract	AVB17221ACMPInterface is a concrete subclass of AVB1722ControlInterface providing the access to the IEEE Std 1722.1™-2013 AVDECC Connection Management Protocol interface.
	@discussion	AVB17221ACMPInterface is a concrete subclass of AVB1722ControlInterface providing the access to the IEEE Std 1722.1™-2013 AVDECC Connection Management Protocol (ACMP) interface.
				It provides callbacks per entity EntityID via a handler object implementing the AVB17221ACMPClient protocol. AVB17221ACMPInterface objects
				are typically not created directly but are created indirectly and accessed via the acmp property of the AVBInterface object.
 */
@available(OSX 10.8, *)
class AVB17221ACMPInterface : AVB1722ControlInterface {

  /*!
  	@property	multicastDestinationAddress
  	@abstract	An AVBMACAddress of the multicast destination MAC address being used for all ACMP messages on the interface.
  	@discussion	The MAC Address pointed to by the property is pre-initialized with the IEEE Std 1722.1™-2013 standard value, 91:e0:f0:01:00:00
   */
  @NSCopying var multicastDestinationAddress: AVBMACAddress { get }

  /*!
  	@method		AVB17221ACMPInterfaceWithInterfaceNamed:
  	@abstract	Creates an autoreleased instance of AVB17221ACMPInterfaceWithInterfaceNamed for the specified network interface with the specified BSD name.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		An autoreleased instance of the control service class.
   */
  /*not inherited*/ init(interfaceNamed anInterfaceName: String)

  /*!
  	@method		setHandler:forEntityID:
  	@abstract	Add an object implementing the AVB17221ACMPClient protocol as a handler for messages to or from a specified EntityID.
  	@param		handler	The object which will handle all of the commands and responses.
  	@param		targetEntityID	The EntityID of the entity the messages are to or from.
  	@result		YES if the handler was added, NO if there is already a handler or if the routing ID couldn't be added.
   */
  @available(OSX 10.9, *)
  func setHandler(handler: AVB17221ACMPClient, forEntityID targetEntityID: UInt64) -> Bool

  /*!
  	@method		removeHandlerForEntityID:
  	@abstract	Removed a handler  for messages to or from a specified EntityID.
  	@param		targetEntityID	The EntityID of the entity the messages are to or from.
   */
  @available(OSX 10.9, *)
  func removeHandlerForEntityID(targetEntityID: UInt64)

  /*!
  	@method		sendACMPResponseMessage:
  	@abstract	Send an ACMP response message.
  	@param		message	A pointer to an AVB17221ACMPMessage struct containing the ACMP message to send.
  	@result		kIOReturnSuccess if the message was successfully sent, otherwise an error indicating failure reason.
  	@discussion	This method synchronizes access to sending ACMP messages, and can safely be called from multiple threads and while handling a received command.
   */
  func sendACMPResponseMessage(message: AVB17221ACMPMessage) throws

  /*!
  	@method		sendACMPCommandMessage:completionHandler:
  	@abstract	Send an ACMP command message.
  	@param		message	A pointer to an AVB17221ACMPMessage struct containing the ACMP message.
  	@param		completionHandler	A block containing code to execute when the command has been sent or timed out.
  	@result		kIOReturnSuccess if the message was successfully sent, otherwise an error indicating failure reason.
  	@discussion	This method synchronizes access to sending ACMP messages, and can safely be called from multiple threads. The completionHandler 
  				is synchronized with the reception of messages from the kernel object providing the command transport. This method handles the retry
  				and message timeout per the IEEE Std 1722.1™-2013 standard timeouts.
   */
  func sendACMPCommand(message: AVB17221ACMPMessage, completionHandler: AVB17221ACMPInterfaceCompletion) -> Bool

  /*!
  	@method		initWithInterfaceName:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterfaceName	The BSD name of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)

  /*!
  	@method		initWithInterface:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterface	The AVBInterface object of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}

/*!
	@class		AVB17221ACMPMessage
	@abstract	AVB17221ACMPMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Connection Management Protocol message.
	@discussion	AVB17221ACMPMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Connection Management Protocol (ACMP) message.
 */
@available(OSX 10.8, *)
class AVB17221ACMPMessage : Object, Copying {

  /*!
  	@property	messageType
  	@abstract	The message_type field of the ACMP message.
   */
  var messageType: AVB17221ACMPMessageType

  /*!
  	@property	status
  	@abstract	The status field of the ACMP message.
   */
  var status: AVB17221ACMPStatusCode

  /*!
  	@property	streamID
  	@abstract	The stream_id field of the ACMP message.
   */
  var streamID: UInt64

  /*!
  	@property	controllerGUID
  	@abstract	The controller_entity_id field of the ACMP message.
   */
  @available(OSX 10.9, *)
  var controllerEntityID: UInt64

  /*!
  	@property	talkerEntityID
  	@abstract	The talker_entity_id field of the ACMP message.
   */
  @available(OSX 10.9, *)
  var talkerEntityID: UInt64

  /*!
  	@property	listenerEntityID
  	@abstract	The listener_entity_id field of the ACMP message.
   */
  @available(OSX 10.9, *)
  var listenerEntityID: UInt64

  /*!
  	@property	talkerUniqueID
  	@abstract	The talker_unique_id field of the ACMP message.
   */
  var talkerUniqueID: UInt16

  /*!
  	@property	listenerUniqueID
  	@abstract	The listener_unique_id field of the ACMP message.
   */
  var listenerUniqueID: UInt16

  /*!
  	@property	destinationMAC
  	@abstract	The dest_mac field of the ACMP message.
   */
  @NSCopying var destinationMAC: AVBMACAddress?

  /*!
  	@property	connectionCount
  	@abstract	The connection_count field of the ACMP message.
   */
  var connectionCount: UInt16

  /*!
  	@property	sequenceID
  	@abstract	The sequence_id field of the ACMP message.
   */
  var sequenceID: UInt16

  /*!
  	@property	flags
  	@abstract	The flags field of the ACMP message.
   */
  var flags: AVB17221ACMPFlags

  /*!
  	@property	vlanID
  	@abstract	The stream_vlan_id field of the ACMP message.
   */
  var vlanID: UInt16

  /*!
  	@property	sourceMAC
  	@abstract	The source_mac field of the ACMP message.
   */
  @NSCopying var sourceMAC: AVBMACAddress?
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*!
 @protocol	AVB17221AECPClient
 @abstract	AVB17221AECPClient is an objective-c protocol for classes intending to receive callbacks from an AVB1722AECPInterface instance.
 @discussion	AVB17221AECPClient is an objective-c protocol for classes intending to receive callbacks from an AVB1722AECPInterface instance.
 Commands and responses are provided with separate callbacks.
 */
protocol AVB17221AECPClient {

  /*!
   @method		AECPDidReceiveCommand:onInterface:
   @abstract	Handle a received AECP command.
   @param		message		An instance of a subclass of AVB17221AECPMessage appropriate for the message type.
   @param		anInterface	The AVB17221AECPInterface the message was received on.
   @result		YES if the message was processed, NO otherwise.
   */
  @available(OSX 10.8, *)
  func aecpDidReceiveCommand(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool

  /*!
   @method		AECPDidReceiveResponse:onInterface:
   @abstract	Handle a received AECP response.
   @param		message		An instance of a subclass of AVB17221AECPMessage appropriate for the message type.
   @param		anInterface	The AVB17221AECPInterface the message was received on.
   @result		YES if the message was processed, NO otherwise.
   */
  @available(OSX 10.8, *)
  func aecpDidReceiveResponse(message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
}

/*!
 @typedef	AVB17221AECPInterfaceCompletion:
 @abstract	The prototype for the completion handler block for AECP command messages.
 */
typealias AVB17221AECPInterfaceCompletion = (Error?, AVB17221AECPMessage) -> Void

/*!
	@class		AVB17221AECPInterface
	@abstract	AVB17221AECPInterface is a concrete subclass of AVB1722ControlInterface providing the access to the IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol interface.
	@discussion	AVB17221AECPInterface is a concrete subclass of AVB1722ControlInterface providing the access to the IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP) interface.
				It provides callbacks per entity EntityID via a handler object implementing the AVB17221AECPClient protocol. AVB17221AECPInterface objects
				are typically not created directly but are created indirectly and accessed via the aecp property of the AVBInterface object.
 */
@available(OSX 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {

  /*!
  	@method		AECPInterfaceWithInterfaceNamed:
  	@abstract	Creates an autoreleased instance of AVB17221AECPInterfaceWithInterfaceNamed for the specified network interface with the specified BSD name.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		An autoreleased instance of the control service class.
   */
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)

  /*!
  	@method		setHandler:forEntityID:
  	@abstract	Add an object implementing the AVB17221AECPClient protocol as a handler for messages to or from a specified Entity ID.
  	@param		handler	The object which will handle all of the commands and responses.
  	@param		targetEntityID	The EntityID of the entity the messages are to or from.
  	@result		YES if the handler was added, NO if there is already a handler or if the routing ID couldn't be added.
   */
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -setCommandHandler:forEntityID: and -setResponseHandler:forControllerEntityID: instead.")
  func setHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool

  /*!
  	@method		removeHandlerForEntityID:
  	@abstract	Removed a handler  for messages to or from a specified EntityID.
  	@param		targetEntityID	The EntityID of the entity the messages are to or from.
   */
  @available(OSX, introduced=10.9, deprecated=10.11, message="Use -removeCommandHandlerForEntityID: or -removeResponseHandlerForControllerEntityID: instead.")
  func removeHandlerForEntityID(targetEntityID: UInt64)

  /*!
  	@method		setCommandHandler:forEntityID:
  	@abstract	Add an object implementing the AVB17221AECPClient protocol as a handler for command messages to a specified Entity ID.
  	@param		handler	The object which will handle all of the commands.
  	@param		targetEntityID	The Entity ID of the entity the messages are to.
  	@result		YES if the handler was added, NO if there is already a handler or if the routing ID couldn't be added.
   */
  @available(OSX 10.11, *)
  func setCommandHandler(handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool

  /*!
  	@method		removeCommandHandlerForEntityID:
  	@abstract	Removed a handler for command messages to or from a specified EntityID.
  	@param		targetEntityID	The EntityID of the entity the messages are to.
   */
  @available(OSX 10.11, *)
  func removeCommandHandlerForEntityID(targetEntityID: UInt64)

  /*!
  	@method		setResponseHandler:forControllerEntityID:
  	@abstract	Add an object implementing the AVB17221AECPClient protocol as a handler for response messages for a specified controller EntityID.
  	@param		handler	The object which will handle all of the responses for the Controller Entity ID.
  	@param		controllerEntityID	The Entity ID of the controller the messages are for.
  	@result		YES if the handler was added, NO if there is already a handler or if the routing ID couldn't be added.
   */
  @available(OSX 10.11, *)
  func setResponseHandler(handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool

  /*!
  	@method		removeResponseHandlerForControllerEntityID:
  	@abstract	Removed a handler for response messages to or from a specified EntityID.
  	@param		controllerEntityID	The EntityID of the controller the messages are for.
   */
  @available(OSX 10.11, *)
  func removeResponseHandlerForControllerEntityID(controllerEntityID: UInt64)

  /*!
  	@method		sendCommand:toMACAddress:completionHandler:
  	@abstract	Send an AECP command message.
  	@param		message	An instance of a subclass of AVB17221AECPMessage which contains the command message.
  	@param		destMAC	The MAC address of the end station to send the message to.
  	@param		completionHandler	A block containing code to execute when the command has been sent or timed out.
  	@result		A BOOL indicating success or failure
  	@discussion	This method synchronizes access to the kernel service providing transport for the message. This method is safe to call from any thread.
   */
  func sendCommand(message: AVB17221AECPMessage, to destMAC: AVBMACAddress, completionHandler: AVB17221AECPInterfaceCompletion) -> Bool

  /*!
  	@method		sendResponse:toMACAddress:error:
  	@abstract	Send an AECP response.
  	@param		message	An instance of a subclass of AVB17221AECPMessage which contains the response message.
  	@param		destMAC	The MAC address of the end station to send the message to. This argument needs to points to kIOEthernetAddressSize bytes of memory.
  	@result		IOReturn indicating success or failure and reason for failure.
  	@discussion	This method synchronizes access to the kernel service providing transport for the message. This method is safe to call from any thread. 
   */
  func sendResponse(message: AVB17221AECPMessage, to destMAC: AVBMACAddress) throws

  /*!
  	@method		initWithInterfaceName:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterfaceName	The BSD name of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)

  /*!
  	@method		initWithInterface:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterface	The AVBInterface object of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}

/*!
	@class		AVB17221AECPMessage
	@abstract	AVB17221AECPMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol message.
	@discussion	AVB17221AECPMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP) message.
				This class is a abstract class providing the support for the common format shared between the different
				AECP message types.
 */
@available(OSX 10.8, *)
class AVB17221AECPMessage : Object, Copying {

  /*!
  	@property	messageType
  	@abstract	The message_type field of the AECP message.
   */
  var messageType: AVB17221AECPMessageType

  /*!
  	@property	status
  	@abstract	The status field of the AECP message.
   */
  var status: AVB17221AECPStatusCode

  /*!
  	@property	targetEntityID
  	@abstract	The target_entity_id field of the AECP message.
   */
  @available(OSX 10.9, *)
  var targetEntityID: UInt64

  /*!
  	@property	controllerEntityID
  	@abstract	The controller_entity_id field of the AECP message.
   */
  @available(OSX 10.9, *)
  var controllerEntityID: UInt64

  /*!
  	@property	sequenceID
  	@abstract	The sequence_id field of the AECP message.
   */
  var sequenceID: UInt16

  /*!
  	@property	sourceMAC
  	@abstract	The source_mac field of the AECP message.
   */
  @NSCopying var sourceMAC: AVBMACAddress
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/*!
 @class		AVB17221AECPAEMMessage
 @abstract	AVB17221AECPAEMMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol, AVDECC Entity Model message.
 @discussion	AVB17221AECPAEMMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP), AVDECC Entity Model (AEM) message.
 This class is a concrete subclass of AVB17221AECPMessage which provides support for the AEM messages.
 */
@available(OSX 10.8, *)
class AVB17221AECPAEMMessage : AVB17221AECPMessage {

  /*!
  	@property	commandType
  	@abstract	The command_type field of the AECP AEM message.
   */
  var commandType: AVB17221AEMCommandType

  /*!
  	@property	unsolicited
  	@abstract	The u field of the AECP AEM message.
   */
  var isUnsolicited: Bool

  /*!
   @property	controllerRequest
   @abstract	The cr field of the AECP AEM message.
   */
  @available(OSX 10.9, *)
  var isControllerRequest: Bool

  /*!
  	@property	commandSpecificData
  	@abstract	The command_specific_data field of the AECP AEM message.
   */
  @NSCopying var commandSpecificData: Data?

  /*!
  	@method		commandMessage
  	@abstract	This method returns an AVB17221AECPAEMMessage instance setup as an AEM command.
  	@result		An AVB17221AECPAEMMessage instance pre-setup as an AEM command.
   */
  class func command() -> AVB17221AECPAEMMessage

  /*!
  	@method		responseMessage
  	@abstract	This method returns an AVB17221AECPAEMMessage instance setup as an AEM response.
  	@result		An AVB17221AECPAEMMessage instance pre-setup as an AEM response.
   */
  class func response() -> AVB17221AECPAEMMessage
  init()
}

/*!
	@class		AVB17221AECPAddressAccessMessage
	@abstract	AVB17221AECPAddressAccessMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol, Address Access message.
	@discussion	AVB17221AECPAddressAccessMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP), Address Access message.
				This class is a concrete subclass of AVB17221AECPMessage which provides support for the Address Access messages.
 */
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {

  /*!
  	@property	tlvs
  	@abstract	An array of AVB17221AECPAddressAccessTLV objects representing the tlv_data field of the AECP Address Access message.
   */
  var tlvs: [AVB17221AECPAddressAccessTLV]?

  /*!
  	@method		commandMessage
  	@abstract	This method returns an AVB17221AECPAddressAccessMessage instance setup as an Address Access command.
  	@result		An AVB17221AECPAddressAccessMessage instance pre-setup as an Address Access command.
   */
  class func command() -> AVB17221AECPAddressAccessMessage

  /*!
  	@method		responseMessage
  	@abstract	This method returns an AVB17221AECPAEMMessage instance setup as an Address Access response.
  	@result		An AVB17221AECPAddressAccessMessage instance pre-setup as an Address Access response.
   */
  class func response() -> AVB17221AECPAddressAccessMessage
  init()
}

/*!
	@class		AVB17221AECPAddressAccessTLV
	@abstract	AVB17221AECPAddressAccessTLV encapsulates a TLV from an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol, Address Access message.
	@discussion	AVB17221AECPAddressAccessTLV encapsulates a TLV from an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP), Address Access message.
 */
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessTLV : Object {

  /*!
  	@property	mode
  	@abstract	The mode field of the Address Access TLV.
   */
  var mode: AVB17221AECPAddressAccessTLVMode

  /*!
  	@property	address
  	@abstract	The address field of the Address Access TLV.
   */
  var address: UInt64

  /*!
  	@property	memoryData
  	@abstract	The memory_data field of the Address Access TLV.
   */
  @NSCopying var memoryData: Data?
  init()
}

/*!
	@class		AVB17221AECPAVCMessage
	@abstract	AVB17221AECPAVCMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol, Legacy AV/C message.
	@discussion	AVB17221AECPAVCMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP), Legacy AV/C message.
				This class is a concrete subclass of AVB17221AECPMessage which provides support for the Legacy AV/C messages.
 */
@available(OSX 10.8, *)
class AVB17221AECPAVCMessage : AVB17221AECPMessage {

  /*!
  	@property	commandResponse
  	@abstract	The avc_command_response field of the AECP AEM message.
   */
  @NSCopying var commandResponse: Data?
  init()
}

/*!
	@class		AVB17221AECPVendorMessage
	@abstract	AVB17221AECPVendorMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol, Vendor Unique message.
	@discussion	AVB17221AECPVendorMessage encapsulates an IEEE Std 1722.1™-2013 AVDECC Enumeration and Control Protocol (AECP), Vendor Unique message.
				This class is a concrete subclass of AVB17221AECPMessage which provides support for the AEM messages.
 */
@available(OSX 10.8, *)
class AVB17221AECPVendorMessage : AVB17221AECPMessage {

  /*!
  	@property	protocolID
  	@abstract	The protocol_id field of the AECP Vendor Unique message.
   */
  var protocolID: UInt64

  /*!
  	@property	protocolSpecificData
  	@abstract	The protocol_specific_data field of the AECP Vendor Unique message.
   */
  @NSCopying var protocolSpecificData: Data?
  init()
}

/*!
	@class		AVB17221Entity
	@abstract	AVB17221Entity class represents an entity that has been discovered on the network.
	@discussion	AVB17221Entity class represents an entity that has been discovered on the network.
				AVB17221Entity objects are created by the AVB17221EntityDiscovery object as they are discovered, 
				and passed around to the discovery delegates when notifying them of changes in the state of the network.
				Changes include an entity being added, removed or rediscovered. Entities register themselves to receive
				automatic updates when any of the discovery values change.
 */
@available(OSX 10.8, *)
class AVB17221Entity : Object {

  /*!
  	@property	localEntity
  	@abstract	YES if the entity is published locally on the machine and NO if the entity has been discovered on the network.
   */
  var isLocalEntity: Bool

  /*!
  	@property	timeToLive
  	@abstract	The number of seconds left until the entity registration times out.
   */
  var timeToLive: UInt8

  /*!
  	@property	entityID
  	@abstract	The Unique Identifier (entity_id) of the entity.
   */
  @available(OSX 10.9, *)
  var entityID: UInt64

  /*!
  	@property	entityModelID
  	@abstract	The Entity Model Unique Identifier (entity_model_id) of the entity.
   */
  @available(OSX 10.9, *)
  var entityModelID: UInt64

  /*!
  	@property	entityCapabilities
  	@abstract	The entity_capabilities of the entity.
   */
  var entityCapabilities: AVB17221ADPEntityCapabilities

  /*!
  	@property	talkerStreamSources
  	@abstract	The number of stream sources the entity has.
   */
  var talkerStreamSources: UInt16

  /*!
  	@property	talkerCapabilities
  	@abstract	The talker_capabilities of the entity.
   */
  var talkerCapabilities: AVB17221ADPTalkerCapabilities

  /*!
  	@property	listenerStreamSinks
  	@abstract	The number of stream sinks the entity has.
   */
  var listenerStreamSinks: UInt16

  /*!
  	@property	listenerCapabilities
  	@abstract	The listener_capabilities of the entity.
   */
  var listenerCapabilities: AVB17221ADPListenerCapabilities

  /*!
  	@property	controllerCapabilities
  	@abstract	The controller_capabilities of the entity.
   */
  var controllerCapabilities: AVB17221ADPControllerCapabilities

  /*!
  	@property	availableIndex
  	@abstract	The available_index of the entity.
   */
  var availableIndex: UInt32

  /*!
  	@property	gPTPGrandmasterID
  	@abstract	The clock identifier of the IEEE Std 802.1AS-2011 grandmaster of the entity.
   */
  @available(OSX 10.9, *)
  var gPTPGrandmasterID: UInt64

  /*!
  	@property	gPTPDomainNumber
  	@abstract	The domain number of the IEEE Std 802.1AS-2011 grandmaster of the entity.
   */
  @available(OSX 10.9, *)
  var gPTPDomainNumber: UInt8

  /*!
  	@property	identifyControlIndex
  	@abstract	The descriptor_index of the CONTROL which implements the IDENTIFY for the entity if supported.
   */
  @available(OSX 10.9, *)
  var identifyControlIndex: UInt16

  /*!
  	@property	interfaceIndex
  	@abstract	The descriptor_index of the AVB_INTERFACE descriptor which is associated with this entity.
   */
  @available(OSX 10.9, *)
  var interfaceIndex: UInt16

  /*!
  	@property	associationID
  	@abstract	The association_id of the entity.
   */
  var associationID: UInt64

  /*!
  	@property	macAddresses
  	@abstract	An array of AVBMACAddress objects containing the current MAC addresses of the entity.
   */
  var macAddresses: [AVBMACAddress]

  /*!
  	@property	entityDiscovery
  	@abstract	The AVB17221EntityDiscovery object which discovered the entity.
   */
  unowned(unsafe) var entityDiscovery: @sil_unmanaged AVB17221EntityDiscovery?
  init()
}

/*!
	@class		AVB17221EntityDiscovery
	@abstract	AVB17221EntityDiscovery provides access to the IEEE Std 1722.1™-2013 AVDECC Discovery Protocol (ADP) interface.
	@discussion	AVB17221EntityDiscovery provides access to the IEEE Std 1722.1™-2013 AVDECC Discovery Protocol (ADP) interface.
				It provides a delegate with callbacks whenever an entity is added or removed, 
				either locally or remotely. AVB17221EntityDiscovery objects are typically not created 
				directly but are created indirectly and accessed via the entityDiscovery property of 
				the AVBInterface object.
				
				The AVBInterface object does not register a delegate with the AVB17221EntityDiscovery object
				which is allocated. Immediately after obtaining the entityDiscovery value for the first time,
				the discoveryDelegate should be set and the primeIterators method should be called. Until 
				primeIterators is called, no entities will be discovered.
 */
@available(OSX 10.8, *)
class AVB17221EntityDiscovery : Object {

  /*!
  	@property	interfaceName
  	@abstract	The BSD interface name for the interface that discovery is being performed on.
   */
  var interfaceName: String

  /*!
  	@property	interface
  	@abstract	The AVBInterface object which owns this object. This may be nil if it was not created by an instance of AVBInterface
   */
  unowned(unsafe) var interface: @sil_unmanaged AVBInterface? { get }

  /*!
  	@property	discoveryDelegate
  	@abstract	The delegate, implementing the AVB17221EntityDiscoveryDelegate protocol, which will handle entities arriving, departing and changing properties.
   */
  unowned(unsafe) var discoveryDelegate: @sil_unmanaged AVB17221EntityDiscoveryDelegate?

  /*!
  	@method		initWithInterfaceName:
  	@abstract	Initializes the receiver with a particular interface name.
  	@param		anInterfaceName	The BSD interface name for the interface to perform discovery on.
  	@result		The initialized receiver.
   */
  init(interfaceName anInterfaceName: String)

  /*!
  	@method		primeIterators
  	@abstract	Prepares the IOIterators for receiving entity arrival, departure and property change notifications.
  	@discussion	This method primes the iterators by iterating over any already available entities. This may be called once, at any time after object creation,
  				but if the discoveryDelegate property has not been set, any already discovered entity notifications will be lost.
   */
  func primeIterators()

  /*!
  	@method		discoverEntities
  	@abstract	Triggers the IEEE Std 1722.1™-2013 ADP service to perform an ENTITY_DISCOVER for all entities (an entity_id of 0).
  	@result		A boolean indicating if the call succedded.
   */
  func discoverEntities() -> Bool

  /*!
  	@method		discoverEntity:
  	@abstract	Triggers the IEEE Std 1722.1™-2013 ADP service to perform an ENTITY_DISCOVER for a specified entity.
  	@param		entityID	The entity_id of the entity to look for.
  	@result		A boolean indicating if the call succedded.
   */
  func discoverEntity(entityID: UInt64) -> Bool

  /*!
  	@method		addLocalEntity:error:
  	@abstract	Publishes a entity as being available on the interface. The in kernel portion creates an IOAVB17221LocalEntity and maintains the ADP messaging.
  	@param		anEntity	The entity to be published.
  	@param		error		If the request couldn't be completed, on return it contains an instance of NSError that describes the reason why.
  	@result		A boolean indicating if the entity was added.
   */
  func addLocalEntity(anEntity: AVB17221Entity) throws

  /*!
  	@method		removeLocalEntity:
  	@abstract	Removes a published local entity with the given GUID.
  	@param		guid	The GUID of the local entity to remove.
  	@param		error		If the request couldn't be completed, on return it contains an instance of NSError that describes the reason why.
  	@result		A boolean indicating if the entity was removed.
   */
  func removeLocalEntity(guid: UInt64) throws

  /*!
  	@method		changeEntityWithEntityID:toNewGPTPGrandmasterID:
  	@abstract	Change the gptp_grandmaster_id value of the entity when the grandmaster changes.
  	@param		entityID		The entity_id of the entity to change.
  	@param		gPTPGrandmasterID	The new IEEE Std 802.1AS grandmaster ID.
  	@param		error			If the request couldn't be completed, on return it contains an instance of NSError that describes the reason why.
  	@result		A boolean indicating if the entity was updated.
   */
  @available(OSX 10.9, *)
  func changeEntityWithEntityID(entityID: UInt64, toNewGPTPGrandmasterID gPTPGrandmasterID: UInt64) throws
  init()
}
@available(OSX 10.8, *)
struct AVB17221EntityPropertyChanged : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt

  /*!
  	@constant	AVB17221EntityPropertyChangedTimeToLive
  	@abstract	The time to live property of the entity has changed.
   */
  static var TimeToLive: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedEntityID
  	@abstract	The entityID property of the entity has changed.
   */
  @available(OSX 10.9, *)
  static var EntityID: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedVendorID
  	@abstract	The vendor ID property of the entity has changed.
   */
  static var VendorID: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedModelID
  	@abstract	The model ID property of the entity has changed.
   */
  static var ModelID: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedEntityCapabilities
  	@abstract	The entity capabilities property of the entity has changed.
   */
  static var EntityCapabilities: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedTalkerStreamSources
  	@abstract	The taler stream sources property of the entity has changed.
   */
  static var TalkerStreamSources: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedTalkerCapabilities
  	@abstract	The taler capabilities property of the entity has changed.
   */
  static var TalkerCapabilities: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedListenerStreamSins
  	@abstract	The listener stream sins property of the entity has changed.
   */
  static var ListenerStreamSinks: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedListenerCapabilities
  	@abstract	The listener capabilities property of the entity has changed.
   */
  static var ListenerCapabilities: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedControllerCapabilities
  	@abstract	The controller capabilities property of the entity has changed.
   */
  static var ControllerCapabilities: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedAvailableIndex
  	@abstract	The available index property of the entity has changed.
   */
  static var AvailableIndex: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedGPTPGrandmasterID
  	@abstract	The gPTP grandmaster ID property of the entity has changed.
   */
  @available(OSX 10.9, *)
  static var GPTPGrandmasterID: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedMACAddress
  	@abstract	The MAC address property of the entity has changed.
   */
  static var MACAddress: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedAssociationID
  	@abstract	The association ID property of the entity has changed.
   */
  static var AssociationID: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedEntityType
  	@abstract	The entity type property of the entity has changed.
   */
  static var EntityType: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedIdentifyControlIndex
  	@abstract	The identify control index property of the entity has changed.
   */
  @available(OSX 10.9, *)
  static var IdentifyControlIndex: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedInterfaceIndex
  	@abstract	The interface index property of the entity has changed.
   */
  @available(OSX 10.9, *)
  static var InterfaceIndex: AVB17221EntityPropertyChanged { get }

  /*!
  	@constant	AVB17221EntityPropertyChangedGPTPDomainNumber
  	@abstract	The gPTP domain property of the entity has changed.
   */
  @available(OSX 10.9, *)
  static var GPTPDomainNumber: AVB17221EntityPropertyChanged { get }
}

/*!
	@protocol	AVB17221EntityDiscoveryDelegate
	@abstract	AVB17221EntityDiscoveryDelegate is an objective-c protocol for classes acting as the discovery delegate of the AVB17221EntityDiscovery object.
	@discussion	AVB17221EntityDiscoveryDelegate is an objective-c protocol for classes acting as the discovery delegate of the AVB17221EntityDiscovery object.
				There is a separate callback for each phase of entity discover and property updates. Callbacks are separated between entities discovered on the 
				network and those published locally on the Mac.
 */
protocol AVB17221EntityDiscoveryDelegate {

  /*!
  	@method		didAddRemoteEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever a new IOAVB17221RemoteEntity is published.
  	@param		newEntity		The entity which has been discovered.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didAddRemoteEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didRemoveRemoteEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever an IOAVB17221RemoteEntity is removed.
  	@param		oldEntity		The entity which was removed.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didRemoveRemoteEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didRediscoverRemoteEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever the entity discovery service detects an IOAVB17221RemoteEntity has been published but it hasn't been removed.
  	@param		entity			The entity which was rediscovered.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didRediscoverRemoteEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didUpdateRemoteEntity:changedProperties:on17221EntityDiscovery:
  	@abstract	This method is called whenever the properties of the entity are updated and the kernel notifies user space.
  	@param		entity				The entity which had the properties updated.
  	@param		changedProperties	A bitfield indicating which fields had their values updated.
  	@param		entityDiscovery		The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didUpdateRemoteEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didAddLocalEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever a new IOAVB17221LocalEntity is published.
  	@param		newEntity		The entity which has been discovered.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didAddLocalEntity(newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didRemoveLocalEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever an IOAVB17221LocalEntity is removed.
  	@param		oldEntity		The entity which was removed.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didRemoveLocalEntity(oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didRediscoverLocalEntity:on17221EntityDiscovery:
  	@abstract	This method is called whenever the entity discovery service detects an IOAVB17221LocalEntity has been published but it hasn't been removed.
  	@param		entity			The entity which was rediscovered.
  	@param		entityDiscovery	The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didRediscoverLocalEntity(entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)

  /*!
  	@method		didUpdateLocalEntity:changedProperties:on17221EntityDiscovery:
  	@abstract	This method is called whenever the properties of the entity are updated and the kernel notifies user space.
  	@param		entity				The entity which had the properties updated.
  	@param		changedProperties	A bitfield indicating which fields had their values updated.
  	@param		entityDiscovery		The entity discovery service which discovered the entity.
   */
  @available(OSX 10.8, *)
  func didUpdateLocalEntity(entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
}

/*!
	@class		AVB1722ControlInterface
	@abstract	AVB1722ControlInterface is an abstract class providing the common API for utilizing control services based on IEEE 1722-2011 control frames.
	@discussion	AVB1722ControlInterface is an abstract class providing the common API for utilizing control services based on IEEE 1722-2011 control frames.
				It provides the API for the basic IOKit interactions to talk to the kernel driver.
 */
@available(OSX 10.8, *)
class AVB1722ControlInterface : Object {
  var interfaceName: String { get }

  /*!
   @property	interface
   @abstract	The AVBInterface object which owns this object. This may be nil if it was not created by an instance of AVBInterface
   */
  unowned(unsafe) var interface: @sil_unmanaged AVBInterface? { get }

  /*!
  	@method		initWithInterfaceName:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterfaceName	The BSD name of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.9, *)
  init?(interfaceName anInterfaceName: String)

  /*!
  	@method		initWithInterface:
  	@abstract	Initializes the receiver to work with a 1722 control service on the specified interface. The client must have previously be requested to load on the interface.
  	@param		anInterface	The AVBInterface object of the interface on which to create the object.
  	@result		The initialized receiver.
   */
  @available(OSX 10.11, *)
  init?(interface anInterface: AVBInterface)
}

/*!
	@abstract	This NULL EUI-64. The IEEE defines this as FF-FF-FF-FF-FF-FF-FF-FF.
 */
let AVBNullEUI64: UInt64

/*!
	@class		AVBCentralManager
	@abstract	AVBCentralManager provides centralized management of AVBInterface objects for the network interfaces of the computer.
	@discussion	AVBCentralManager provides centralized management of the AVBInterface subclasses for the network interfaces of the computer.
				Subclasses override the <code>didAddInterface:</code> and <code>didRemoveInterface:</code> methods to be notified when an 
				interface is added to or removed from the computer. Addition and removal can happen for any interface but is typically associated
				with the Thunderbolt Ethernet Adapter.
 
 */
@available(OSX 10.10, *)
class AVBCentralManager : Object {

  /*!
  	@abstract	This method triggers the IOKit matching for the network controllers.
  	@discussion	This is usually called by a subclass as the last thing in it's init method. This call is broken out of the AVBCentralManager's init method so that 
  				subclasses can finish their setup before calling it.
   */
  func startControllerMatching()

  /*!
  	@abstract	This method is called when an AVBInterface object is created for a NIC, either when the central manager is first started up or when the NIC is added later.
  	@param		interface	An instance of an AVBInterface subclass (as appropriate for the NIC) which has been added for the discovered NIC.
  	@discussion	The AVBCentralManager maintains it's own internal reference to the interface object until <code>didRevomeInterface:<code> is called with the same interface object,
  				subclasses do not need to maintain another reference to this. A subclass does not need to call the AVBCentralManager implementation. 
  				Note this method is not called on the main thread and is not safe for performing UI actions.
   */
  func didAdd(interface: AVBInterface)

  /*!
  	@abstract	This method is called when a NIC has been removed from the system and the central manager is cleaning it up.
  	@param		interface	An instance of an AVBInterface subclass (as appropriate for the NIC) which is being removed for the discovered NIC.
  	@discussion	Note this method is not called on the main thread and is not safe for performing UI actions.
   */
  func didRemove(interface: AVBInterface)

  /*!
  	@abstract	This method is used to control if the central manager will create and process AVBInterface objects for non streaming interfaces.
  	@result		YES for only AVB Enabled interfaces or NO for all interfaces.
  	@discussion	The default value returned is YES and as such didAddInterface: will be called for all AVB Enabled network interfaces only.
   */
  func streamingEnabledInterfacesOnly() -> Bool

  /*!
  	@abstract	This method is used to allocate a dynamic Entity ID .
  	@result		The allocated dynamic entity ID or AVBNullEUI64 if allocation failed.
  	@discussion	The entity ID allocated by this call can be used for both publishing an Entity with the AVB17221EntityDiscovery class or as a controllerID for the AVB17221ACMPMessage and AVB17221AECPMessage.
   */
  class func nextAvailableDynamicEntityID() -> UInt64

  /*!
  	@abstract	This method is used to release a previously allocated dynamic Entity ID.
  	@param		entityID	The entity ID to release that was previously allocated by <code>+nextAvailableDynamicEntityID</code>.
   */
  class func releaseDynamicEntityID(entityID: UInt64)

  /*!
  	@abstract	This method is used to allocate a dynamic Entity Model ID .
  	@result		The allocated dynamic entity model ID or AVBNullEUI64 if allocation failed.
  	@discussion	The entity model ID allocated by this call can be used for publishing an Entity with the AVB17221EntityDiscovery class when using a dynamically generated or modified model.
   */
  class func nextAvailableDynamicEntityModelID() -> UInt64

  /*!
  	@abstract	This method is used to release a previously allocated dynamic Entity Model ID.
  	@param		entityModelID	The entity ID to release that was previously allocated by <code>+nextAvailableDynamicEntityModelID</code>.
   */
  class func releaseDynamicEntityModelID(entityModelID: UInt64)
  init()
}
var AVB_LEGACY_OBJC_RUNTIME: Int32 { get }
var AVB_MODERN_OBJC_RUNTIME: Int32 { get }
var AVBMACAddressSize: Int32 { get }
@available(OSX 10.8, *)
enum AVB17221ADPEntityCapabilities : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesEFUMode
  		@abstract	The IEEE Std 1722.1™-2013 entity supports firmware upgrade mode.
  	 */
  @available(OSX 10.9, *)
  static var EFUMode: AVB17221ADPEntityCapabilities { get }

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesAddressAccessSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports using address access commands and responses.
  	 */
  case AddressAccessSupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesGatewayEntity
  		@abstract	The IEEE Std 1722.1™-2013 entity functions as a gateway between AVB and another transport.
  	 */
  case GatewayEntity

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesAEMSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity uses IEEE Std 1722.1™-2013 AVDECC Entity Model for enumeration and control."
  	 */
  case AEMSupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesLegacyAVC
  		@abstract	The IEEE Std 1722.1™-2013 entity supports using IEEE 1394 AV/C for enumeration and control."
  	 */
  case LegacyAVC

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesAssociationIDSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports using the Association ID field.
  	 */
  case AssociationIDSupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesAssociationIDValid
  		@abstract	The IEEE Std 1722.1™-2013 entity has a valid value in the Association ID field.
  	 */
  case AssociationIDValid

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesVendorUniqueSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports vendor unique commands and responses.
  	 */
  case VendorUniqueSupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesClassASupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports class A streaming.
  	 */
  case ClassASupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesClassBSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports class B streaming.
  	 */
  case ClassBSupported

  /*!
  		@constant	AVB17221ADPEntityCapabilitiesGPTPSupported
  		@abstract	The IEEE Std 1722.1™-2013 entity supports IEEE Std 802.1AS-2011.
  	 */
  @available(OSX 10.9, *)
  static var GPTPSupported: AVB17221ADPEntityCapabilities { get }

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesAEMAuthenticationSupported
  		 @abstract	The IEEE Std 1722.1™-2013 entity supports using AEM authentication.
  	 */
  @available(OSX 10.9, *)
  case AEMAuthenticationSupported

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesAEMAuthenticationRequired
  		 @abstract	The IEEE Std 1722.1™-2013 entity requires a controller to authenticate.
  	 */
  @available(OSX 10.9, *)
  case AEMAuthenticationRequired

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesAEMPersistentAcquireSupported
  		 @abstract	The IEEE Std 1722.1™-2013 entity supports being persistentlty aquired.
  	 */
  @available(OSX 10.9, *)
  case AEMPersistentAcquireSupported

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesAEMIdenitifyControlIndexValid
  		 @abstract	The IEEE Std 1722.1™-2013 entity has an idenitfy control and the identify_control_index field contains a valid index.
  	 */
  @available(OSX 10.9, *)
  case AEMIdenitifyControlIndexValid

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesAEMInterfaceIndexValid
  		 @abstract	The IEEE Std 1722.1™-2013 entity has the interface_index field set to a valid index.
  	 */
  @available(OSX 10.9, *)
  case AEMInterfaceIndexValid

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesGeneralControllerIgnore
  		 @abstract	The IEEE Std 1722.1™-2013 entity should be ignored by general controllers.
  	 */
  @available(OSX 10.9, *)
  case GeneralControllerIgnore

  /*!
  		 @constant	AVB17221ADPEntityCapabilitiesEntityNotReady
  		 @abstract	The IEEE Std 1722.1™-2013 entity is not ready to be enumerated or connected by a controller.
  	 */
  @available(OSX 10.9, *)
  case EntityNotReady
}
@available(OSX 10.8, *)
struct AVB17221ADPTalkerCapabilities : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesImplemented
  		@abstract	The IEEE Std 1722.1™-2013 entity has talker capabilities.
  	 */
  static var Implemented: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasOtherSource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which are not control, media clock, SMPTE, MIDI, audio or video.
  	 */
  static var HasOtherSource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasControlSource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which source a control stream.
  	 */
  static var HasControlSource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasMediaClockSource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which source a media clock stream.
  	 */
  static var HasMediaClockSource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasSMPTESource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream source which source a SMPTE stream.
  	 */
  static var HasSMPTESource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasMIDISource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which source a stream carrying MIDI data.
  	 */
  static var HasMIDISource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasAudioSource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which source a stream with audio data (not embedded in a video stream).
  	 */
  static var HasAudioSource: AVB17221ADPTalkerCapabilities { get }

  /*!
  		@constant	AVB17221ADPTalkerCapabilitiesHasVideoSource
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sources which source a stream with video data (and optionally embedded audio data).
  	 */
  static var HasVideoSource: AVB17221ADPTalkerCapabilities { get }
}
@available(OSX 10.8, *)
struct AVB17221ADPListenerCapabilities : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesImplemented
  		@abstract	The IEEE Std 1722.1™-2013 entity has listener capabilities.
  	 */
  static var Implemented: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasOtherSink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which are not control, media clock, SMPTE, MIDI, audio or video.
  	 */
  static var HasOtherSink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasControlSink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which sink a control stream.
  	 */
  static var HasControlSink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasMediaClockSink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which sink a media clock stream.
  	 */
  static var HasMediaClockSink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasSMPTESink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which sink a SMPTE stream.
  	 */
  static var HasSMPTESink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasMIDISink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which can sink a stream carrying MIDI data.
  	 */
  static var HasMIDISink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasAudioSink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which sink a stream with audio data (not embedded in a video stream).
  	 */
  static var HasAudioSink: AVB17221ADPListenerCapabilities { get }

  /*!
  		@constant	AVB17221ADPListenerCapabilitiesHasVideoSink
  		@abstract	The IEEE Std 1722.1™-2013 entity has stream sinks which sink a stream with video data (and optionally embedded audio data).
  	 */
  static var HasVideoSink: AVB17221ADPListenerCapabilities { get }
}
@available(OSX 10.8, *)
struct AVB17221ADPControllerCapabilities : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32

  /*!
  		@constant	AVB17221ADPControllerCapabilitiesImplemented
  		@abstract	The IEEE Std 1722.1™-2013 entity has controller capabilities.
  	 */
  static var Implemented: AVB17221ADPControllerCapabilities { get }

  /*!
  		@constant	AVB17221ADPControllerCapabilitiesHasLayer3Proxy
  		@abstract	The IEEE Std 1722.1™-2013 entity has a layer 3 to layer 2 proxy implementation.
  	 */
  static var HasLayer3Proxy: AVB17221ADPControllerCapabilities { get }
}
@available(OSX 10.8, *)
enum AVB17221AECPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }

  /*!
  		@constant	AVB17221AECPMessageTypeAEMCommand
  		@abstract	The IEEE Std 1722.1™-2013 AECP AVDECC Entity Model command message.
  	 */
  case AEMCommand

  /*!
  		@constant	AVB17221AECPMessageTypeAEMResponse
  		@abstract	The IEEE Std 1722.1™-2013 AECP AVDECC Entity Model response message.
  	 */
  case AEMResponse

  /*!
  		@constant	AVB17221AECPMessageTypeAddressAccessCommand
  		@abstract	The IEEE Std 1722.1™-2013 AECP address access command message.
  	 */
  case AddressAccessCommand

  /*!
  		@constant	AVB17221AECPMessageTypeAddressAccessResponse
  		@abstract	The IEEE Std 1722.1™-2013 AECP address access response message.
  	 */
  case AddressAccessResponse

  /*!
  		@constant	AVB17221AECPMessageTypeLegacyAVCCommand
  		@abstract	The IEEE Std 1722.1™-2013 AECP AV/C command message.
  	 */
  case LegacyAVCCommand

  /*!
  		@constant	AVB17221AECPMessageTypeLegacyAVCResponse
  		@abstract	The IEEE Std 1722.1™-2013 AECP AV/C response message.
  	 */
  case LegacyAVCResponse

  /*!
  		@constant	AVB17221AECPMessageTypeVendorUniqueCommand
  		@abstract	The IEEE Std 1722.1™-2013 AECP vendor unique command message.
  	 */
  case VendorUniqueCommand

  /*!
  		@constant	AVB17221AECPMessageTypeVendorUniqueResponse
  		@abstract	The IEEE Std 1722.1™-2013 AECP vendor unique response message.
  	 */
  case VendorUniqueResponse
}
@available(OSX 10.8, *)
enum AVB17221AECPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }

  /*!
  		@constant	AVB17221AECPStatusSuccess
  		@abstract	The IEEE Std 1722.1™-2013 AECP SUCCESS status code.
  	 */
  case Success

  /*!
  		@constant	AVB17221AECPStatusNotImplemented
  		@abstract	The IEEE Std 1722.1™-2013 AECP NOT_IMPLEMENTED status code.
  	 */
  case NotImplemented

  /*!
  		@constant	AVB17221AECPStatusNoSuchDescriptor
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM NO_SUCH_DESCRIPTOR status code.
  	 */
  case NoSuchDescriptor

  /*!
  		@constant	AVB17221AECPStatusEntityLocked
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM ENTITY_LOCKED status code.
  	 */
  case EntityLocked

  /*!
  		@constant	AVB17221AECPStatusEntityAcquired
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM ENTITY_ACQUIRED status code.
  	 */
  case EntityAcquired

  /*!
  		@constant	AVB17221AECPStatusNotAuthorized
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM NOT_AUTHORIZED status code.
  	 */
  case NotAuthorized

  /*!
  		@constant	AVB17221AECPStatusInsufficientPrivileges
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM INSUFFICIENT_PRIVILEGES status code.
  	 */
  case InsufficientPrivileges

  /*!
  		@constant	AVB17221AECPStatusBadArguments
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM BAD_ARGUMENTS status code.
  	 */
  case BadArguments

  /*!
  		@constant	AVB17221AECPStatusNoResources
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM NO_RESOURCES status code.
  	 */
  case NoResources

  /*!
  		@constant	AVB17221AECPStatusInProgress
  		@abstract	The IEEE Std 1722.1™-2013 AECP AEM IN_PROGRESS status code.
  	 */
  case InProgress

  /*!
  	 @constant	AVB17221AECPStatusEntityMisbehaving
  	 @abstract	The IEEE Std 1722.1™-2013 AECP AEM ENTITY_MISBEHAVING status code.
  	 */
  case EntityMisbehaving

  /*!
  	 @constant	AVB17221AECPStatusNotSupported
  	 @abstract	The IEEE Std 1722.1™-2013 AECP AEM NOT_SUPPORTED status code.
  	 */
  case NotSupported

  /*!
  	 @constant	AVB17221AECPStatusStreamIsRunning
  	 @abstract	The IEEE Std 1722.1™-2013 AECP AEM STREAM_IS_RUNNING status code.
  	 */
  case StreamIsRunning

  /*!
  		@constant	AVB17221AECPStatusAddressAccessAddressTooLow
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_ADDRESS_TOO_LOW status code.
  	 */
  static var AddressAccessAddressTooLow: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAddressAccessAddressTooHigh
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_ADDRESS_TOO_HIGH status code.
  	 */
  static var AddressAccessAddressTooHigh: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAddressAccessAddressInvalid
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_ADDRESS_INVALID status code.
  	 */
  static var AddressAccessAddressInvalid: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAddressAccessTLVInvalid
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_TLV_INVALID status code.
  	 */
  static var AddressAccessTLVInvalid: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAddressAccessDataInvalid
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_DATA_INVALID status code.
  	 */
  static var AddressAccessDataInvalid: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAddressAccessUnsupported
  		@abstract	The IEEE Std 1722.1™-2013 AECP ADDRESS_ACCESS_UNSUPPORTED status code.
  	 */
  static var AddressAccessUnsupported: AVB17221AECPStatusCode { get }

  /*!
  		@constant	AVB17221AECPStatusAVCFailure
  		@abstract	The IEEE Std 1722.1™-2013 AECP AVC FAILURE status code.
  	 */
  static var AVCFailure: AVB17221AECPStatusCode { get }
}
@available(OSX 10.8, *)
enum AVB17221ACMPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }

  /*!
  		@constant	AVB17221ACMPMessageTypeConnectTXCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CONNECT_TX_COMMAND message type.
  	 */
  case ConnectTXCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeConnectTXResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CONNECT_TX_RESPONSE message type.
  	 */
  case ConnectTXResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeDisconnectTXCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP DISCONNECT_TX_COMMAND message type.
  	 */
  case DisconnectTXCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeDisconnectTXResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP DISCONNECT_TX_RESPONSE message type.
  	 */
  case DisconnectTXResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeGetTXStateCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_TX_STATE_COMMAND message type.
  	 */
  case GetTXStateCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeGetTXStateResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_TX_STATE_RESPONSE message type.
  	 */
  case GetTXStateResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeConnectRXCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CONNECT_RX_COMMAND message type.
  	 */
  case ConnectRXCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeConnectRXResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CONNECT_RX_RESPONSE message type.
  	 */
  case ConnectRXResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeDisconnectRXCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP DISCONNECT_RX_COMMAND message type.
  	 */
  case DisconnectRXCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeDisconnectRXResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP DISCONNECT_RX_RESPONSE message type.
  	 */
  case DisconnectRXResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeGetRXStateCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_RX_STATE_COMMAND message type.
  	 */
  case GetRXStateCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeGetRXStateResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_RX_STATE_RESPONSE message type.
  	 */
  case GetRXStateResponse

  /*!
  		@constant	AVB17221ACMPMessageTypeGetTXConnectionCommand
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_TX_CONNECTION_COMMAND message type.
  	 */
  case GetTXConnectionCommand

  /*!
  		@constant	AVB17221ACMPMessageTypeGetTXConnectionResponse
  		@abstract	The IEEE Std 1722.1™-2013 ACMP GET_TX_CONNECTION_RESPONSE message type.
  	 */
  case GetTXConnectionResponse
}
@available(OSX 10.8, *)
enum AVB17221ACMPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }

  /*!
  		@constant	AVB17221ACMPStatusSuccess
  		@abstract	The IEEE Std 1722.1™-2013 ACMP SUCCESS status code.
  	 */
  case Success

  /*!
  		@constant	AVB17221ACMPStatusListenerUnknownID
  		@abstract	The IEEE Std 1722.1™-2013 ACMP LISTENER_UNKNOWN_ID status code.
  	 */
  case ListenerUnknownID

  /*!
  		@constant	AVB17221ACMPStatusTalkerUnknownID
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_UNKNOWN_ID status code.
  	 */
  case TalkerUnknownID

  /*!
  		@constant	AVB17221ACMPStatusTalkerDestMACFail
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_DEST_MAC_FAIL status code.
  	 */
  case TalkerDestMACFail

  /*!
  		@constant	AVB17221ACMPStatusTalkerNoStreamIndex
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_NO_STREAM_INDEX status code.
  	 */
  case TalkerNoStreamIndex

  /*!
  		@constant	AVB17221ACMPStatusTalkerNoBandwidth
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_NO_BANDWIDTH status code.
  	 */
  case TalkerNoBandwidth

  /*!
  		@constant	AVB17221ACMPStatusTalkerExclusive
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_EXCLUSIVE status code.
  	 */
  case TalkerExclusive

  /*!
  		@constant	AVB17221ACMPStatusListenerTalkerTimeout
  		@abstract	The IEEE Std 1722.1™-2013 ACMP LISTENER_TALKER_TIMEOUT status code.
  	 */
  case ListenerTalkerTimeout

  /*!
  		@constant	AVB17221ACMPStatusListenerExclusive
  		@abstract	The IEEE Std 1722.1™-2013 ACMP LISTENER_EXCLUSIVE status code.
  	 */
  case ListenerExclusive

  /*!
  		@constant	AVB17221ACMPStatusStateUnavailable
  		@abstract	The IEEE Std 1722.1™-2013 ACMP STATE_UNAVAILABLE status code.
  	 */
  case StateUnavailable

  /*!
  		@constant	AVB17221ACMPStatusNotConnected
  		@abstract	The IEEE Std 1722.1™-2013 ACMP NOT_CONNECTED status code.
  	 */
  case NotConnected

  /*!
  		@constant	AVB17221ACMPStatusNoSuchConnection
  		@abstract	The IEEE Std 1722.1™-2013 ACMP NO_SUCH_CONNECTION status code.
  	 */
  case NoSuchConnection

  /*!
  		@constant	AVB17221ACMPStatusUnableToSendMessage
  		@abstract	The IEEE Std 1722.1™-2013 ACMP COULD_NOT_SEND_MESSAGE status code.
  	 */
  case UnableToSendMessage

  /*!
  		@constant	AVB17221ACMPStatusTalkerMisbehaving
  		@abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_MISBEHAVING status code.
  	 */
  case TalkerMisbehaving

  /*!
  		@constant	AVB17221ACMPStatusListenerMisbehaving
  		@abstract	The IEEE Std 1722.1™-2013 ACMP LISTENER_MISBEHAVING status code.
  	 */
  case ListenerMisbehaving

  /*!
  		@constant	AVB17221ACMPStatusSRPFace
  		@abstract	The IEEE Std 1722.1™-2013 ACMP SRP_FACE status code.
  	 */
  case SRPFace

  /*!
  		@constant	AVB17221ACMPStatusControllerNotAuthorized
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CONTROLLER_NOT_AUTHORIZED status code.
  	 */
  case ControllerNotAuthorized

  /*!
  		@constant	AVB17221ACMPStatusIncompatibleRequest
  		@abstract	The IEEE Std 1722.1™-2013 ACMP INCOMPATIBLE_REQUEST status code.
  	 */
  case IncompatibleRequest

  /*!
  		@constant	AVB17221ACMPStatusNotSupported
  		@abstract	The IEEE Std 1722.1™-2013 ACMP NOT_SUPPORTED status code.
  	 */
  case NotSupported
}
@available(OSX 10.8, *)
struct AVB17221ACMPFlags : OptionSetType {
  init(rawValue: UInt16)
  let rawValue: UInt16

  /*!
  		@constant	AVB17221ACMPFlagsNone
  		@abstract	The IEEE Std 1722.1™-2013 ACMP no flags.
  	 */
  static var None: AVB17221ACMPFlags { get }

  /*!
  		@constant	AVB17221ACMPFlagsClassB
  		@abstract	The IEEE Std 1722.1™-2013 ACMP CLASS_B flag.
  	 */
  static var ClassB: AVB17221ACMPFlags { get }

  /*!
  		@constant	AVB17221ACMPFlagsFastConnect
  		@abstract	The IEEE Std 1722.1™-2013 ACMP FAST_CONNECT flag.
  	 */
  static var FastConnect: AVB17221ACMPFlags { get }

  /*!
  		@constant	AVB17221ACMPFlagsSavedState
  		@abstract	The IEEE Std 1722.1™-2013 ACMP SAVED_STATE flag.
  	 */
  static var SavedState: AVB17221ACMPFlags { get }

  /*!
  		@constant	AVB17221ACMPFlagsStreamingWait
  		@abstract	The IEEE Std 1722.1™-2013 ACMP STREAMING_WAIT flag.
  	 */
  static var StreamingWait: AVB17221ACMPFlags { get }

  /*!
  	 @constant	AVB17221ACMPFlagsSupportsEncrypted
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP SUPPORTS_ENCRYPTED flag.
  	 */
  static var SupportsEncrypted: AVB17221ACMPFlags { get }

  /*!
  	 @constant	AVB17221ACMPFlagsEncryptedPDU
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP ENCRYPTED_PDU flag.
  	 */
  static var EncryptedPDU: AVB17221ACMPFlags { get }

  /*!
  	 @constant	AVB17221ACMPFlagsStreamingTalkerFailed
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_FAILED flag.
  	 */
  static var StreamingTalkerFailed: AVB17221ACMPFlags { get }
}
@available(OSX 10.8, *)
enum AVB17221AEMCommandType : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }

  /*!
  		@constant	AVB17221AEMCommandTypeAcquireEntity
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ACQUIRE_ENTITY command.
  	 */
  case AcquireEntity

  /*!
  		 @constant	AVB17221AEMCommandTypeLockEntity
  		 @abstract	The command code for the IEEE Std 1722.1™-2013 AEM LOCK_ENTITY command.
  	 */
  case LockEntity

  /*!
  		@constant	AVB17221AEMCommandTypeEntityAvailable
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ENTITY_AVAILABLE command.
  	 */
  case EntityAvailable

  /*!
  		@constant	AVB17221AEMCommandTypeControllerAvailable
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM CONTROLLER_AVAILABLE command.
  	 */
  case ControllerAvailable

  /*!
  		@constant	AVB17221AEMCommandTypeReadDescriptor
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM READ_DESCRIPTOR command.
  	 */
  case ReadDescriptor

  /*!
  		@constant	AVB17221AEMCommandTypeWriteDescriptor
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM WRITE_DESCRIPTOR command.
  	 */
  case WriteDescriptor

  /*!
  		@constant	AVB17221AEMCommandTypeSetConfiguration
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_CONFIGURATION command.
  	 */
  case SetConfiguration

  /*!
  		@constant	AVB17221AEMCommandTypeGetConfiguration
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_CONFIGURATION command.
  	 */
  case GetConfiguration

  /*!
  		@constant	AVB17221AEMCommandTypeSetStreamFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_STREAM_FORMAT command.
  	 */
  case SetStreamFormat

  /*!
  		@constant	AVB17221AEMCommandTypeGetStreamFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_STREAM_FORMAT command.
  	 */
  case GetStreamFormat

  /*!
  		@constant	AVB17221AEMCommandTypeSetVideoFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_VIDEO_FORMAT command.
  	 */
  case SetVideoFormat

  /*!
  		@constant	AVB17221AEMCommandTypeGetVideoFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_VIDEO_FORMAT command.
  	 */
  case GetVideoFormat

  /*!
  		@constant	AVB17221AEMCommandTypeSetSensorFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_SENSOR_FORMAT command.
  	 */
  case SetSensorFormat

  /*!
  		@constant	AVB17221AEMCommandTypeGetSensorFormat
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_SENSOR_FORMAT command.
  	 */
  case GetSensorFormat

  /*!
  		@constant	AVB17221AEMCommandTypeSetStreamInfo
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_STREAM_INFO command.
  	 */
  case SetStreamInfo

  /*!
  		@constant	AVB17221AEMCommandTypeGetStreamInfo
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_STREAM_INFO command.
  	 */
  case GetStreamInfo

  /*!
  		@constant	AVB17221AEMCommandTypeSetName
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_NAME command.
  	 */
  case SetName

  /*!
  		@constant	AVB17221AEMCommandTypeGetName
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_NAME command.
  	 */
  case GetName

  /*!
  		@constant	AVB17221AEMCommandTypeSetAssociationID
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_ASSOCIATION_ID command.
  	 */
  case SetAssociationID

  /*!
  		@constant	AVB17221AEMCommandTypeGetAssociationID
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_ASSOCIATION_ID command.
  	 */
  case GetAssociationID

  /*!
  		@constant	AVB17221AEMCommandTypeSetSamplingRate
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_SAMPLING_RATE command.
  	 */
  case SetSamplingRate

  /*!
  		@constant	AVB17221AEMCommandTypeGetSamplingRate
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_SAMPLING_RATE command.
  	 */
  case GetSamplingRate

  /*!
  		@constant	AVB17221AEMCommandTypeSetClockSource
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_CLOCK_SOURCE command.
  	 */
  case SetClockSource

  /*!
  		@constant	AVB17221AEMCommandTypeGetClockSource
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_CLOCK_SOURCE command.
  	 */
  case GetClockSource

  /*!
  		@constant	AVB17221AEMCommandTypeSetControl
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_CONTROL command.
  	 */
  case SetControl

  /*!
  		@constant	AVB17221AEMCommandTypeGetControl
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_CONTROL command.
  	 */
  case GetControl

  /*!
  		@constant	AVB17221AEMCommandTypeIncrementControlValue
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM INCREMENT_CONTROL_VALUE command.
  	 */
  case IncrementControl

  /*!
  		@constant	AVB17221AEMCommandTypeDecrementControlValue
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM DECREMENT_CONTROL_VALIE command.
  	 */
  case DecrementControl

  /*!
  		@constant	AVB17221AEMCommandTypeSetSignalSelector
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_SIGNAL_SELECTOR command.
  	 */
  case SetSignalSelector

  /*!
  		@constant	AVB17221AEMCommandTypeGetSignalSelector
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_SIGNAL_SELECTOR command.
  	 */
  case GetSignalSelector

  /*!
  		@constant	AVB17221AEMCommandTypeSetMixer
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_MIXER command.
  	 */
  case SetMixer

  /*!
  		@constant	AVB17221AEMCommandTypeGetMixer
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_MIXER command.
  	 */
  case GetMixer

  /*!
  		@constant	AVB17221AEMCommandTypeSetMatrix
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_MATRIX command.
  	 */
  case SetMatrix

  /*!
  		@constant	AVB17221AEMCommandTypeGetMatrix
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_MATRIX command.
  	 */
  case GetMatrix

  /*!
  		@constant	AVB17221AEMCommandTypeStartStreaming
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM START_STREAMING command.
  	 */
  case StartStreaming

  /*!
  		@constant	AVB17221AEMCommandTypeStopStreaming
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM STOP_STREAMING command.
  	 */
  case StopStreaming

  /*!
  		@constant	AVB17221AEMCommandTypeRegisterUnsolicitedNotification
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM REGISTER_UNSOLICITED_NOTIFICATION command.
  	 */
  case RegisterUnsolicitedNotification

  /*!
  		@constant	AVB17221AEMCommandTypeDeregisterUnsolicitedNotification
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM DEREGISTER_UNSOLICITED_NOTIFICATION command.
  	 */
  case DeregisterUnsolicitedNotification

  /*!
  		@constant	AVB17221AEMCommandTypeIdentifyNotification
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM IDENTIFY_NOTIFICATION command.
  	 */
  case IdentifyNotification

  /*!
  		@constant	AVB17221AEMCommandTypeGetAVBInfo
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_AVB_INFO command.
  	 */
  case GetAVBInfo

  /*!
  		@constant	AVB17221AEMCommandTypeGetASPath
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_AS_PATH command.
  	 */
  case GetASPath

  /*!
  		@constant	AVB17221AEMCommandTypeGetCounters
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_COUNTERS command.
  	 */
  case GetCounters

  /*!
  		@constant	AVB17221AEMCommandTypeReboot
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM REBOOT command.
  	 */
  case Reboot

  /*!
  		@constant	AVB17221AEMCommandTypeGetAudioMap
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_AUDIO_MAP command.
  	 */
  case GetAudioMap

  /*!
  		@constant	AVB17221AEMCommandTypeAddAudioMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ADD_AUDIO_MAPPING command.
  	 */
  case AddAudioMapping

  /*!
  		@constant	AVB17221AEMCommandTypeRemoveAudioMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM REMOVE_AUDIO_MAPPING command.
  	 */
  case RemoveAudioMapping

  /*!
  		@constant	AVB17221AEMCommandTypeGetVideoMap
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_VIDEO_MAP command.
  	 */
  case GetVideoMap

  /*!
  		@constant	AVB17221AEMCommandTypeAddVideoMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ADD_VIDEO_MAPPING command.
  	 */
  case AddVideoMapping

  /*!
  		@constant	AVB17221AEMCommandTypeRemoveVideoMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM REMOVE_VIDEO_MAPPING command.
  	 */
  case RemoveVideoMapping

  /*!
  		@constant	AVB17221AEMCommandTypeGetSensorMap
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_SENSOR_MAP command.
  	 */
  case GetSensorMap

  /*!
  		@constant	AVB17221AEMCommandTypeAddSensorMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ADD_SENSOR_MAPPING command.
  	 */
  case AddSensorMapping

  /*!
  		@constant	AVB17221AEMCommandTypeRemoveSensorMapping
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM REMOVE_SENSOR_MAPPING command.
  	 */
  case RemoveSensorMapping

  /*!
  		@constant	AVB17221AEMCommandTypeStartOperation
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM START_OPERATION command.
  	 */
  case StartOperation

  /*!
  		@constant	AVB17221AEMCommandTypeAbortOperation
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ABORT_OPERATION command.
  	 */
  case AbortOperation

  /*!
  		@constant	AVB17221AEMCommandTypeOperationStatus
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM OPERATION_STATUS command.
  	 */
  case OperationStatus

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateAddKey
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_ADD_KEY command.
  	 */
  case AuthenticateAddKey

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateDeleteKey
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_DELETE_KEY command.
  	 */
  case AuthenticateDeleteKey

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateGetKeyList
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_GET_KEY_LIST command.
  	 */
  case AuthenticateGetKeyList

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateGetKey
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_GET_KEY command.
  	 */
  case AuthenticateGetKey

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateAddKeyToChain
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_ADD_KEY_TO_CHAIN command.
  	 */
  case AuthenticateAddKeyToChain

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateDeleteKeyFromChain
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_DELETE_KEY_FROM_CHAIN command.
  	 */
  case AuthenticateDeleteKeyFromChain

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateGetKeychainList
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_GET_KEYCHAIN_LIST command.
  	 */
  case AuthenticateGetKeychainList

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateGetIdentity
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_GET_IDENTITY command.
  	 */
  case AuthenticateGetIdentity

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateAddToken
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_ADD_TOKEN command.
  	 */
  case AuthenticateAddToken

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticateDeleteToken
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTH_DELETE_TOKEN command.
  	 */
  case AuthenticateDeleteToken

  /*!
  		@constant	AVB17221AEMCommandTypeAuthenticate
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM AUTHENTICATE command.
  	 */
  case Authenticate

  /*!
  		@constant	AVB17221AEMCommandTypeDeauthenticate
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM DEAUTHENTICATE command.
  	 */
  case Deauthenticate

  /*!
  		@constant	AVB17221AEMCommandTypeEnableTransportSecurity
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ENABLE_TRANSPORT_SECURITY command.
  	 */
  case EnableTransportSecurity

  /*!
  		@constant	AVB17221AEMCommandTypeDisableTransportSecurity
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM DISABLE_TRANSPORT_SECURITY command.
  	 */
  case DisableTransportSecurity

  /*!
  		@constant	AVB17221AEMCommandTypeEnableStreamEncryption
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM ENABLE_STREAM_ENCRYPTION command.
  	 */
  case EnableStreamEncryption

  /*!
  		@constant	AVB17221AEMCommandTypeDisableStreamEncryption
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM DISABLE_STREAM_ENCRYPTION command.
  	 */
  case DisableStreamEncryption

  /*!
  		@constant	AVB17221AEMCommandTypeSetMemoryObjectLength
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_MEMORY_OBJECT_LENGTH command.
  	 */
  case SetMemoryObjectLength

  /*!
  		@constant	AVB17221AEMCommandTypeGetMemoryObjectLength
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_MEMORY_OBJECT_LENGTH command.
  	 */
  case GetMemoryObjectLength

  /*!
  		@constant	AVB17221AEMCommandTypeSetStreamBackup
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM SET_STREAM_BACKUP command.
  	 */
  case SetStreamBackup

  /*!
  		@constant	AVB17221AEMCommandTypeGetStreamBackup
  		@abstract	The command code for the IEEE Std 1722.1™-2013 AEM GET_STREAM_BACKUP command.
  	 */
  case GetStreamBackup
}
@available(OSX 10.9, *)
enum AVB17221AECPAddressAccessTLVMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }

  /*!
  	 @constant	AVB17221AECPAddressAccessTLVModeRead
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP SUCCESS status code.
  	 */
  case Read

  /*!
  	 @constant	AVB17221AECPAddressAccessTLVModeWrite
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP LISTENER_UNKNOWN_ID status code.
  	 */
  case Write

  /*!
  	 @constant	AVB17221AECPAddressAccessTLVModeExecute
  	 @abstract	The IEEE Std 1722.1™-2013 ACMP TALKER_UNKNOWN_ID status code.
  	 */
  case Execute
}

/*!
	@constant	AVBErrorDomain
	@abstract	The string defining the error domain for AudioVideoBridging errors.
 */
let AVBErrorDomain: String

/*!
	@class		AVBEthernetInterface
	@abstract	AVBEthernetInterface is a concrete subclass of AVBInterface providing access to the AVB services of the interface.
	@discussion	AVBEthernetInterface is a concrete subclass of AVBInterface providing access to the AVB services of the interface.
				AVBEthernetInterface objects should be created for an IEEE 802.3 ethernet based interface on which AVB functionality 
				is being used.
 */
@available(OSX 10.8, *)
class AVBEthernetInterface : AVBInterface {

  /*!
  	@method		initWithInterfaceName:
  	@abstract	This method initializes the receiver to work on the specified interface.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		The initialized receiver.
   */
  init?(interfaceName anInterfaceName: String)
  init()
}

/*!
	@class		AVBInterface
	@abstract	AVBInterface is an abstract class providing a central access point for the AVB functionality of an interface.
	@discussion	AVBInterface is an abstract class providing a central access point for the AVB functionality of an interface.
				AVBInterface objects should not be directly created as they cannot provide full functionality, instead a concrete
				subclass should be instantiated.
 */
@available(OSX 10.8, *)
class AVBInterface : Object {

  /*!
  	@property	interfaceName
  	@abstract	The BSD interface name.
   */
  var interfaceName: String { get }

  /*!
  	@property	entityDiscovery
  	@abstract	The IEEE Std 1722.1™-2013 entity discovery for the interface.
   */
  var entityDiscovery: AVB17221EntityDiscovery? { get }

  /*!
  	@property	aecp
  	@abstract	The IEEE Std 1722.1™-2013 AECP interface for the interface.
   */
  var aecp: AVB17221AECPInterface? { get }

  /*!
  	@property	acmp
  	@abstract	The IEEE Std 1722.1™-2013 ACMP interface for the interface.
   */
  var acmp: AVB17221ACMPInterface? { get }

  /*!
   @method		macAddressForInterfaceNamed:
   @abstract	This method looks up the MAC address for an interface with a given BSD name.
   @param		anInterfaceName	The BSD name of the interface to get the address for.
   @result		An instance of AVBMACAddress if the lookup was successful, nil otherwise.
   */
  class func macAddressForInterfaceNamed(anInterfaceName: String) -> AVBMACAddress?

  /*!
  	@method		supportedInterfaces
  	@abstract	This method returns an array of BSD interface names of interfaces supporting AVB. An interface is included in this list if it claims it supports AVB.
  	@result		An NSArray of NSStrings, with each string being the BSD name of an interface. This may return nil.
   */
  class func supportedInterfaces() -> [String]?

  /*!
  	@method		isAVBEnabledOnInterfaceNamed:
  	@abstract	This method determines if AVB has been enabled on an interface.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		YES if AVB is enabled, NO otherwise.
   */
  class func isAVBEnabledOnInterfaceNamed(anInterfaceName: String) -> Bool

  /*!
  	@method		isAVBCapableInterfaceNamed:
  	@abstract	This method determines if AVB is supported on an interface.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		YES if AVB is supported, NO otherwise.
   */
  class func isAVBCapableInterfaceNamed(anInterfaceName: String) -> Bool

  /*!
  	@method		initWithInterfaceName:
  	@abstract	This method initializes the receiver to work on the specified interface.
  	@param		anInterfaceName	The BSD name of the interface.
  	@result		The initialized receiver.
   */
  init?(interfaceName anInterfaceName: String)

  /*!
   @method		myGUID
   @abstract	This method returns the GUID which is used by the built-in controller functionality of Mac OS X. This is either the FireWire GUID or an EUI64 based on the first found ethernet type interface (may be an ethernet port, USB ethernet adapter, PCI Express adapter or the AirPort card).
   @result		The GUID which is used by the OS.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  class func myGUID() -> UInt64

  /*!
   @method		myEntityID
   @abstract	This method returns the EntityID which is used by the built-in controller functionality of Mac OS X. This is either the FireWire GUID or an EUI64 based on the first found ethernet type interface (may be an ethernet port, USB ethernet adapter, PCI Express adapter or the AirPort card).
   @result		The EntityID which is used by the OS.
   */
  class func myEntityID() -> UInt64
  init()
}

/*!
	@class		AVBMACAddress
	@abstract	AVBMACAddress is a class for holding and representing an Ethernet MAC Address.
 */
@available(OSX 10.8, *)
class AVBMACAddress : Object, Copying {

  /*!
  	@method		initWithBytes:
  	@abstract	This method initializes the receiver to contain the MAC address specified.
  	@param		bytes A pointer to 6 octets of memory containing the MAC address.
  	@result		The initialized receiver.
   */
  init(bytes: UnsafePointer<UInt8>)

  /*!
  	@property	bytes
  	@abstract	The .
   */
  var bytes: UnsafePointer<UInt8> { get }

  /*!
  	@property	dataRepresentation
  	@abstract	An NSData object containing the bytes of the MAC address.
   */
  @NSCopying var dataRepresentation: Data

  /*!
  	@property	stringRepresentation
  	@abstract	The colon separated cannonical string representation of the MAC address e.g. 12:34:56:78:ab:cd
   */
  var stringRepresentation: String

  /*!
  	@property	multicast
  	@abstract	Returns if the multicast bit is set in the MAC address.
   */
  var isMulticast: Bool
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
