// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension PinpointSMSVoice {

    public struct DeleteConfigurationSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationSetName", location: .uri(locationName: "ConfigurationSetName"), required: true, type: .string)
        ]
        public let configurationSetName: String

        public init(configurationSetName: String) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct UpdateConfigurationSetEventDestinationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EventDestination", required: false, type: .structure), 
            AWSShapeMember(label: "EventDestinationName", location: .uri(locationName: "EventDestinationName"), required: true, type: .string), 
            AWSShapeMember(label: "ConfigurationSetName", location: .uri(locationName: "ConfigurationSetName"), required: true, type: .string)
        ]
        public let eventDestination: EventDestinationDefinition?
        public let eventDestinationName: String
        public let configurationSetName: String

        public init(eventDestination: EventDestinationDefinition? = nil, eventDestinationName: String, configurationSetName: String) {
            self.eventDestination = eventDestination
            self.eventDestinationName = eventDestinationName
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestination = "EventDestination"
            case eventDestinationName = "EventDestinationName"
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct SSMLMessageType: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VoiceId", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .string), 
            AWSShapeMember(label: "Text", required: false, type: .string)
        ]
        /// The name of the voice that you want to use to deliver the message. For a complete list of supported voices, see the Amazon Polly Developer Guide.
        public let voiceId: String?
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let languageCode: String?
        /// The SSML-formatted text to deliver to the recipient.
        public let text: String?

        public init(voiceId: String? = nil, languageCode: String? = nil, text: String? = nil) {
            self.voiceId = voiceId
            self.languageCode = languageCode
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case voiceId = "VoiceId"
            case languageCode = "LanguageCode"
            case text = "Text"
        }
    }

    public struct CallInstructionsMessageType: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Text", required: false, type: .string)
        ]
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let text: String?

        public init(text: String? = nil) {
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    public struct KinesisFirehoseDestination: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IamRoleArn", required: false, type: .string), 
            AWSShapeMember(label: "DeliveryStreamArn", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose destination that you want to use in the event destination.
        public let iamRoleArn: String?
        /// The Amazon Resource Name (ARN) of an IAM role that can write data to an Amazon Kinesis Data Firehose stream.
        public let deliveryStreamArn: String?

        public init(iamRoleArn: String? = nil, deliveryStreamArn: String? = nil) {
            self.iamRoleArn = iamRoleArn
            self.deliveryStreamArn = deliveryStreamArn
        }

        private enum CodingKeys: String, CodingKey {
            case iamRoleArn = "IamRoleArn"
            case deliveryStreamArn = "DeliveryStreamArn"
        }
    }

    public struct CreateConfigurationSetEventDestinationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EventDestination", required: false, type: .structure), 
            AWSShapeMember(label: "EventDestinationName", required: false, type: .string), 
            AWSShapeMember(label: "ConfigurationSetName", location: .uri(locationName: "ConfigurationSetName"), required: true, type: .string)
        ]
        public let eventDestination: EventDestinationDefinition?
        /// A name that identifies the event destination.
        public let eventDestinationName: String?
        public let configurationSetName: String

        public init(eventDestination: EventDestinationDefinition? = nil, eventDestinationName: String? = nil, configurationSetName: String) {
            self.eventDestination = eventDestination
            self.eventDestinationName = eventDestinationName
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestination = "EventDestination"
            case eventDestinationName = "EventDestinationName"
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct CreateConfigurationSetEventDestinationResponse: AWSShape {

    }

    public struct EventDestination: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "KinesisFirehoseDestination", required: false, type: .structure), 
            AWSShapeMember(label: "Enabled", required: false, type: .boolean), 
            AWSShapeMember(label: "CloudWatchLogsDestination", required: false, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "MatchingEventTypes", required: false, type: .list)
        ]
        public let kinesisFirehoseDestination: KinesisFirehoseDestination?
        /// Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
        public let enabled: Bool?
        public let cloudWatchLogsDestination: CloudWatchLogsDestination?
        /// A name that identifies the event destination configuration.
        public let name: String?
        public let matchingEventTypes: [EventType]?

        public init(kinesisFirehoseDestination: KinesisFirehoseDestination? = nil, enabled: Bool? = nil, cloudWatchLogsDestination: CloudWatchLogsDestination? = nil, name: String? = nil, matchingEventTypes: [EventType]? = nil) {
            self.kinesisFirehoseDestination = kinesisFirehoseDestination
            self.enabled = enabled
            self.cloudWatchLogsDestination = cloudWatchLogsDestination
            self.name = name
            self.matchingEventTypes = matchingEventTypes
        }

        private enum CodingKeys: String, CodingKey {
            case kinesisFirehoseDestination = "KinesisFirehoseDestination"
            case enabled = "Enabled"
            case cloudWatchLogsDestination = "CloudWatchLogsDestination"
            case name = "Name"
            case matchingEventTypes = "MatchingEventTypes"
        }
    }

    public struct CreateConfigurationSetResponse: AWSShape {

    }

    public struct DeleteConfigurationSetEventDestinationRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EventDestinationName", location: .uri(locationName: "EventDestinationName"), required: true, type: .string), 
            AWSShapeMember(label: "ConfigurationSetName", location: .uri(locationName: "ConfigurationSetName"), required: true, type: .string)
        ]
        public let eventDestinationName: String
        public let configurationSetName: String

        public init(eventDestinationName: String, configurationSetName: String) {
            self.eventDestinationName = eventDestinationName
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestinationName = "EventDestinationName"
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct VoiceMessageContent: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CallInstructionsMessage", required: false, type: .structure), 
            AWSShapeMember(label: "SSMLMessage", required: false, type: .structure), 
            AWSShapeMember(label: "PlainTextMessage", required: false, type: .structure)
        ]
        public let callInstructionsMessage: CallInstructionsMessageType?
        public let sSMLMessage: SSMLMessageType?
        public let plainTextMessage: PlainTextMessageType?

        public init(callInstructionsMessage: CallInstructionsMessageType? = nil, sSMLMessage: SSMLMessageType? = nil, plainTextMessage: PlainTextMessageType? = nil) {
            self.callInstructionsMessage = callInstructionsMessage
            self.sSMLMessage = sSMLMessage
            self.plainTextMessage = plainTextMessage
        }

        private enum CodingKeys: String, CodingKey {
            case callInstructionsMessage = "CallInstructionsMessage"
            case sSMLMessage = "SSMLMessage"
            case plainTextMessage = "PlainTextMessage"
        }
    }

    public struct CloudWatchLogsDestination: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IamRoleArn", required: false, type: .string), 
            AWSShapeMember(label: "LogGroupArn", required: false, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of an Amazon Identity and Access Management (IAM) role that is able to write event data to an Amazon CloudWatch destination.
        public let iamRoleArn: String?
        /// The name of the Amazon CloudWatch Log Group that you want to record events in.
        public let logGroupArn: String?

        public init(iamRoleArn: String? = nil, logGroupArn: String? = nil) {
            self.iamRoleArn = iamRoleArn
            self.logGroupArn = logGroupArn
        }

        private enum CodingKeys: String, CodingKey {
            case iamRoleArn = "IamRoleArn"
            case logGroupArn = "LogGroupArn"
        }
    }

    public struct SendVoiceMessageRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationSetName", required: false, type: .string), 
            AWSShapeMember(label: "CallerId", required: false, type: .string), 
            AWSShapeMember(label: "Content", required: false, type: .structure), 
            AWSShapeMember(label: "DestinationPhoneNumber", required: false, type: .string), 
            AWSShapeMember(label: "OriginationPhoneNumber", required: false, type: .string)
        ]
        /// The name of the configuration set that you want to use to send the message.
        public let configurationSetName: String?
        /// The phone number that appears on recipients' devices when they receive the message.
        public let callerId: String?
        public let content: VoiceMessageContent?
        /// The phone number that you want to send the voice message to.
        public let destinationPhoneNumber: String?
        /// The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.
        public let originationPhoneNumber: String?

        public init(configurationSetName: String? = nil, callerId: String? = nil, content: VoiceMessageContent? = nil, destinationPhoneNumber: String? = nil, originationPhoneNumber: String? = nil) {
            self.configurationSetName = configurationSetName
            self.callerId = callerId
            self.content = content
            self.destinationPhoneNumber = destinationPhoneNumber
            self.originationPhoneNumber = originationPhoneNumber
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSetName = "ConfigurationSetName"
            case callerId = "CallerId"
            case content = "Content"
            case destinationPhoneNumber = "DestinationPhoneNumber"
            case originationPhoneNumber = "OriginationPhoneNumber"
        }
    }

    public struct UpdateConfigurationSetEventDestinationResponse: AWSShape {

    }

    public struct CreateConfigurationSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationSetName", required: false, type: .string)
        ]
        /// The name that you want to give the configuration set.
        public let configurationSetName: String?

        public init(configurationSetName: String? = nil) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct PlainTextMessageType: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VoiceId", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .string), 
            AWSShapeMember(label: "Text", required: false, type: .string)
        ]
        public let voiceId: String?
        /// The language to use when delivering the message. For a complete list of supported languages, see the Amazon Polly Developer Guide.
        public let languageCode: String?
        /// The plain (not SSML-formatted) text to deliver to the recipient.
        public let text: String?

        public init(voiceId: String? = nil, languageCode: String? = nil, text: String? = nil) {
            self.voiceId = voiceId
            self.languageCode = languageCode
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case voiceId = "VoiceId"
            case languageCode = "LanguageCode"
            case text = "Text"
        }
    }

    public struct EventDestinationDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "KinesisFirehoseDestination", required: false, type: .structure), 
            AWSShapeMember(label: "Enabled", required: false, type: .boolean), 
            AWSShapeMember(label: "CloudWatchLogsDestination", required: false, type: .structure), 
            AWSShapeMember(label: "MatchingEventTypes", required: false, type: .list)
        ]
        public let kinesisFirehoseDestination: KinesisFirehoseDestination?
        /// Indicates whether or not the event destination is enabled. If the event destination is enabled, then Amazon Pinpoint sends response data to the specified event destination.
        public let enabled: Bool?
        public let cloudWatchLogsDestination: CloudWatchLogsDestination?
        public let matchingEventTypes: [EventType]?

        public init(kinesisFirehoseDestination: KinesisFirehoseDestination? = nil, enabled: Bool? = nil, cloudWatchLogsDestination: CloudWatchLogsDestination? = nil, matchingEventTypes: [EventType]? = nil) {
            self.kinesisFirehoseDestination = kinesisFirehoseDestination
            self.enabled = enabled
            self.cloudWatchLogsDestination = cloudWatchLogsDestination
            self.matchingEventTypes = matchingEventTypes
        }

        private enum CodingKeys: String, CodingKey {
            case kinesisFirehoseDestination = "KinesisFirehoseDestination"
            case enabled = "Enabled"
            case cloudWatchLogsDestination = "CloudWatchLogsDestination"
            case matchingEventTypes = "MatchingEventTypes"
        }
    }

    public struct GetConfigurationSetEventDestinationsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EventDestinations", required: false, type: .list)
        ]
        public let eventDestinations: [EventDestination]?

        public init(eventDestinations: [EventDestination]? = nil) {
            self.eventDestinations = eventDestinations
        }

        private enum CodingKeys: String, CodingKey {
            case eventDestinations = "EventDestinations"
        }
    }

    public struct GetConfigurationSetEventDestinationsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationSetName", location: .uri(locationName: "ConfigurationSetName"), required: true, type: .string)
        ]
        public let configurationSetName: String

        public init(configurationSetName: String) {
            self.configurationSetName = configurationSetName
        }

        private enum CodingKeys: String, CodingKey {
            case configurationSetName = "ConfigurationSetName"
        }
    }

    public struct DeleteConfigurationSetResponse: AWSShape {

    }

    public struct SendVoiceMessageResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MessageId", required: false, type: .string)
        ]
        /// A unique identifier for the voice message.
        public let messageId: String?

        public init(messageId: String? = nil) {
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
        }
    }

    public struct DeleteConfigurationSetEventDestinationResponse: AWSShape {

    }

    public enum EventType: String, CustomStringConvertible, Codable {
        case initiatedCall = "INITIATED_CALL"
        case ringing = "RINGING"
        case answered = "ANSWERED"
        case completedCall = "COMPLETED_CALL"
        case busy = "BUSY"
        case failed = "FAILED"
        case noAnswer = "NO_ANSWER"
        public var description: String { return self.rawValue }
    }

}