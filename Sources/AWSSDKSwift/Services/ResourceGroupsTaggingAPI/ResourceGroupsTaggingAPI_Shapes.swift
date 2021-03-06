// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ResourceGroupsTaggingAPI {

    public struct TagResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Tags", required: true, type: .map), 
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list)
        ]
        /// The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
        public let tags: [String: String]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]

        public init(tags: [String: String], resourceARNList: [String]) {
            self.tags = tags
            self.resourceARNList = resourceARNList
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case resourceARNList = "ResourceARNList"
        }
    }

    public struct GetTagKeysOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagKeys", required: false, type: .list), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A list of all tag keys in the AWS account.
        public let tagKeys: [String]?
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?

        public init(tagKeys: [String]? = nil, paginationToken: String? = nil) {
            self.tagKeys = tagKeys
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagValuesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagValues", required: false, type: .list), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A list of all tag values for the specified key in the AWS account.
        public let tagValues: [String]?
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?

        public init(tagValues: [String]? = nil, paginationToken: String? = nil) {
            self.tagValues = tagValues
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case tagValues = "TagValues"
            case paginationToken = "PaginationToken"
        }
    }

    public struct FailureInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .enum), 
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "StatusCode", required: false, type: .integer)
        ]
        /// The code of the common error. Valid values include InternalServiceException, InvalidParameterException, and any valid error code returned by the AWS service that hosts the resource that you want to tag.
        public let errorCode: ErrorCode?
        /// The message of the common error.
        public let errorMessage: String?
        /// The HTTP status code of the common error.
        public let statusCode: Int32?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, statusCode: Int32? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case statusCode = "StatusCode"
        }
    }

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case internalserviceexception = "InternalServiceException"
        case invalidparameterexception = "InvalidParameterException"
        public var description: String { return self.rawValue }
    }

    public struct GetTagKeysInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(paginationToken: String? = nil) {
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
        }
    }

    public struct UntagResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceARNList", required: true, type: .list), 
            AWSShapeMember(label: "TagKeys", required: true, type: .list)
        ]
        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]
        /// A list of the tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]

        public init(resourceARNList: [String], tagKeys: [String]) {
            self.resourceARNList = resourceARNList
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct GetResourcesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagFilters", required: false, type: .list), 
            AWSShapeMember(label: "ResourceTypeFilters", required: false, type: .list), 
            AWSShapeMember(label: "ResourcesPerPage", required: false, type: .integer), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "TagsPerPage", required: false, type: .integer)
        ]
        /// A list of tags (keys and values). A request can include up to 50 keys, and each key can include up to 20 values. If you specify multiple filters connected by an AND operator in a single request, the response returns only those resources that are associated with every specified filter. If you specify multiple filters connected by an OR operator in a single request, the response returns all resources that are associated with at least one or possibly more of the specified filters.
        public let tagFilters: [TagFilter]?
        /// The constraints on the resources that you want returned. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all tagged Amazon EC2 resources (which includes tagged EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the AWS General Reference for the following:   For a list of service name strings, see AWS Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.  
        public let resourceTypeFilters: [String]?
        /// A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 50 items. 
        public let resourcesPerPage: Int32?
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).  GetResources does not split a resource and its associated tags across pages. If the specified TagsPerPage would cause such a break, a PaginationToken is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a TagsPerPage of 100 and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of 3 pages, with the first page displaying the first 10 resources, each with its 10 tags, the second page displaying the next 10 resources each with its 10 tags, and the third page displaying the remaining 2 resources, each with its 10 tags.  You can set TagsPerPage to a minimum of 100 items and the maximum of 500 items.
        public let tagsPerPage: Int32?

        public init(tagFilters: [TagFilter]? = nil, resourceTypeFilters: [String]? = nil, resourcesPerPage: Int32? = nil, paginationToken: String? = nil, tagsPerPage: Int32? = nil) {
            self.tagFilters = tagFilters
            self.resourceTypeFilters = resourceTypeFilters
            self.resourcesPerPage = resourcesPerPage
            self.paginationToken = paginationToken
            self.tagsPerPage = tagsPerPage
        }

        private enum CodingKeys: String, CodingKey {
            case tagFilters = "TagFilters"
            case resourceTypeFilters = "ResourceTypeFilters"
            case resourcesPerPage = "ResourcesPerPage"
            case paginationToken = "PaginationToken"
            case tagsPerPage = "TagsPerPage"
        }
    }

    public struct GetResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceTagMappingList", required: false, type: .list), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        /// A list of resource ARNs and the tags (keys and values) associated with each.
        public let resourceTagMappingList: [ResourceTagMapping]?
        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?

        public init(resourceTagMappingList: [ResourceTagMapping]? = nil, paginationToken: String? = nil) {
            self.resourceTagMappingList = resourceTagMappingList
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case resourceTagMappingList = "ResourceTagMappingList"
            case paginationToken = "PaginationToken"
        }
    }

    public struct ResourceTagMapping: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Tags", required: false, type: .list), 
            AWSShapeMember(label: "ResourceARN", required: false, type: .string)
        ]
        /// The tags that have been applied to one or more AWS resources.
        public let tags: [Tag]?
        /// An array of resource ARN(s).
        public let resourceARN: String?

        public init(tags: [Tag]? = nil, resourceARN: String? = nil) {
            self.tags = tags
            self.resourceARN = resourceARN
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case resourceARN = "ResourceARN"
        }
    }

    public struct TagResourcesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailedResourcesMap", required: false, type: .map)
        ]
        /// Details of resources that could not be tagged. An error code, status code, and error message are returned for each failed item.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct TagFilter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: false, type: .string), 
            AWSShapeMember(label: "Values", required: false, type: .list)
        ]
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String?
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let values: [String]?

        public init(key: String? = nil, values: [String]? = nil) {
            self.key = key
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct Tag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let value: String
        /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public struct GetTagValuesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PaginationToken", required: false, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// The key for which you want to list all existing values in the specified region for the AWS account.
        public let key: String

        public init(paginationToken: String? = nil, key: String) {
            self.paginationToken = paginationToken
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case key = "Key"
        }
    }

}