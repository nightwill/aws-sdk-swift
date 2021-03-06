// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension FMS {

    public struct PolicyComplianceDetail: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IssueInfoMap", required: false, type: .map), 
            AWSShapeMember(label: "PolicyOwner", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "EvaluationLimitExceeded", required: false, type: .boolean), 
            AWSShapeMember(label: "Violators", required: false, type: .list), 
            AWSShapeMember(label: "MemberAccount", required: false, type: .string), 
            AWSShapeMember(label: "ExpiredAt", required: false, type: .timestamp)
        ]
        /// Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be non-compliant. The details include the name of the dependent service and the error message recieved indicating the problem with the service.
        public let issueInfoMap: [DependentServiceName: String]?
        /// The AWS account that created the AWS Firewall Manager policy.
        public let policyOwner: String?
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// Indicates if over 100 resources are non-compliant with the AWS Firewall Manager policy.
        public let evaluationLimitExceeded: Bool?
        /// An array of resources that are not protected by the policy.
        public let violators: [ComplianceViolator]?
        /// The AWS account ID.
        public let memberAccount: String?
        /// A time stamp that indicates when the returned information should be considered out-of-date.
        public let expiredAt: TimeStamp?

        public init(issueInfoMap: [DependentServiceName: String]? = nil, policyOwner: String? = nil, policyId: String? = nil, evaluationLimitExceeded: Bool? = nil, violators: [ComplianceViolator]? = nil, memberAccount: String? = nil, expiredAt: TimeStamp? = nil) {
            self.issueInfoMap = issueInfoMap
            self.policyOwner = policyOwner
            self.policyId = policyId
            self.evaluationLimitExceeded = evaluationLimitExceeded
            self.violators = violators
            self.memberAccount = memberAccount
            self.expiredAt = expiredAt
        }

        private enum CodingKeys: String, CodingKey {
            case issueInfoMap = "IssueInfoMap"
            case policyOwner = "PolicyOwner"
            case policyId = "PolicyId"
            case evaluationLimitExceeded = "EvaluationLimitExceeded"
            case violators = "Violators"
            case memberAccount = "MemberAccount"
            case expiredAt = "ExpiredAt"
        }
    }

    public enum ViolationReason: String, CustomStringConvertible, Codable {
        case webAclMissingRuleGroup = "WEB_ACL_MISSING_RULE_GROUP"
        case resourceMissingWebAcl = "RESOURCE_MISSING_WEB_ACL"
        case resourceIncorrectWebAcl = "RESOURCE_INCORRECT_WEB_ACL"
        public var description: String { return self.rawValue }
    }

    public struct ListMemberAccountsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MemberAccounts", required: false, type: .list)
        ]
        /// If you have more member account IDs than the number that you specified for MaxResults in the request, the response includes a NextToken value. To list more IDs, submit another ListMemberAccounts request, and specify the NextToken value from the response in the NextToken value in the next request.
        public let nextToken: String?
        /// An array of account IDs.
        public let memberAccounts: [String]?

        public init(nextToken: String? = nil, memberAccounts: [String]? = nil) {
            self.nextToken = nextToken
            self.memberAccounts = memberAccounts
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case memberAccounts = "MemberAccounts"
        }
    }

    public enum PolicyComplianceStatusType: String, CustomStringConvertible, Codable {
        case compliant = "COMPLIANT"
        case nonCompliant = "NON_COMPLIANT"
        public var description: String { return self.rawValue }
    }

    public struct PolicyComplianceStatus: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IssueInfoMap", required: false, type: .map), 
            AWSShapeMember(label: "PolicyOwner", required: false, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "PolicyName", required: false, type: .string), 
            AWSShapeMember(label: "EvaluationResults", required: false, type: .list), 
            AWSShapeMember(label: "LastUpdated", required: false, type: .timestamp), 
            AWSShapeMember(label: "MemberAccount", required: false, type: .string)
        ]
        /// Details about problems with dependent services, such as AWS WAF or AWS Config, that are causing a resource to be non-compliant. The details include the name of the dependent service and the error message recieved indicating the problem with the service.
        public let issueInfoMap: [DependentServiceName: String]?
        /// The AWS account that created the AWS Firewall Manager policy.
        public let policyOwner: String?
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// The friendly name of the AWS Firewall Manager policy.
        public let policyName: String?
        /// An array of EvaluationResult objects.
        public let evaluationResults: [EvaluationResult]?
        /// Time stamp of the last update to the EvaluationResult objects.
        public let lastUpdated: TimeStamp?
        /// The member account ID.
        public let memberAccount: String?

        public init(issueInfoMap: [DependentServiceName: String]? = nil, policyOwner: String? = nil, policyId: String? = nil, policyName: String? = nil, evaluationResults: [EvaluationResult]? = nil, lastUpdated: TimeStamp? = nil, memberAccount: String? = nil) {
            self.issueInfoMap = issueInfoMap
            self.policyOwner = policyOwner
            self.policyId = policyId
            self.policyName = policyName
            self.evaluationResults = evaluationResults
            self.lastUpdated = lastUpdated
            self.memberAccount = memberAccount
        }

        private enum CodingKeys: String, CodingKey {
            case issueInfoMap = "IssueInfoMap"
            case policyOwner = "PolicyOwner"
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case evaluationResults = "EvaluationResults"
            case lastUpdated = "LastUpdated"
            case memberAccount = "MemberAccount"
        }
    }

    public struct GetComplianceDetailRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MemberAccount", required: true, type: .string), 
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The AWS account that owns the resources that you want to get the details for.
        public let memberAccount: String
        /// The ID of the policy that you want to get the details for. PolicyId is returned by PutPolicy and by ListPolicies.
        public let policyId: String

        public init(memberAccount: String, policyId: String) {
            self.memberAccount = memberAccount
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccount = "MemberAccount"
            case policyId = "PolicyId"
        }
    }

    public struct PutPolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: false, type: .structure), 
            AWSShapeMember(label: "PolicyArn", required: false, type: .string)
        ]
        /// The details of the AWS Firewall Manager policy that was created.
        public let policy: Policy?
        /// The Amazon Resource Name (ARN) of the policy that was created.
        public let policyArn: String?

        public init(policy: Policy? = nil, policyArn: String? = nil) {
            self.policy = policy
            self.policyArn = policyArn
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
            case policyArn = "PolicyArn"
        }
    }

    public struct PutNotificationChannelRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SnsRoleName", required: true, type: .string), 
            AWSShapeMember(label: "SnsTopicArn", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record AWS Firewall Manager activity. 
        public let snsRoleName: String
        /// The Amazon Resource Name (ARN) of the SNS topic that collects notifications from AWS Firewall Manager.
        public let snsTopicArn: String

        public init(snsRoleName: String, snsTopicArn: String) {
            self.snsRoleName = snsRoleName
            self.snsTopicArn = snsTopicArn
        }

        private enum CodingKeys: String, CodingKey {
            case snsRoleName = "SnsRoleName"
            case snsTopicArn = "SnsTopicArn"
        }
    }

    public struct GetComplianceDetailResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyComplianceDetail", required: false, type: .structure)
        ]
        /// Information about the resources and the policy that you specified in the GetComplianceDetail request.
        public let policyComplianceDetail: PolicyComplianceDetail?

        public init(policyComplianceDetail: PolicyComplianceDetail? = nil) {
            self.policyComplianceDetail = policyComplianceDetail
        }

        private enum CodingKeys: String, CodingKey {
            case policyComplianceDetail = "PolicyComplianceDetail"
        }
    }

    public struct GetNotificationChannelRequest: AWSShape {

    }

    public struct GetNotificationChannelResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SnsRoleName", required: false, type: .string), 
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string)
        ]
        /// The IAM role that is used by AWS Firewall Manager to record activity to SNS.
        public let snsRoleName: String?
        /// The SNS topic that records AWS Firewall Manager activity. 
        public let snsTopicArn: String?

        public init(snsRoleName: String? = nil, snsTopicArn: String? = nil) {
            self.snsRoleName = snsRoleName
            self.snsTopicArn = snsTopicArn
        }

        private enum CodingKeys: String, CodingKey {
            case snsRoleName = "SnsRoleName"
            case snsTopicArn = "SnsTopicArn"
        }
    }

    public struct ComplianceViolator: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceType", required: false, type: .string), 
            AWSShapeMember(label: "ResourceId", required: false, type: .string), 
            AWSShapeMember(label: "ViolationReason", required: false, type: .enum)
        ]
        /// The resource type. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String?
        /// The resource ID.
        public let resourceId: String?
        /// The reason that the resource is not protected by the policy.
        public let violationReason: ViolationReason?

        public init(resourceType: String? = nil, resourceId: String? = nil, violationReason: ViolationReason? = nil) {
            self.resourceType = resourceType
            self.resourceId = resourceId
            self.violationReason = violationReason
        }

        private enum CodingKeys: String, CodingKey {
            case resourceType = "ResourceType"
            case resourceId = "ResourceId"
            case violationReason = "ViolationReason"
        }
    }

    public struct GetPolicyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: false, type: .structure), 
            AWSShapeMember(label: "PolicyArn", required: false, type: .string)
        ]
        /// Information about the specified AWS Firewall Manager policy.
        public let policy: Policy?
        /// The Amazon Resource Name (ARN) of the specified policy.
        public let policyArn: String?

        public init(policy: Policy? = nil, policyArn: String? = nil) {
            self.policy = policy
            self.policyArn = policyArn
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
            case policyArn = "PolicyArn"
        }
    }

    public struct PolicySummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceType", required: false, type: .string), 
            AWSShapeMember(label: "PolicyArn", required: false, type: .string), 
            AWSShapeMember(label: "PolicyName", required: false, type: .string), 
            AWSShapeMember(label: "SecurityServiceType", required: false, type: .enum), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "RemediationEnabled", required: false, type: .boolean)
        ]
        /// The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String?
        /// The Amazon Resource Name (ARN) of the specified policy.
        public let policyArn: String?
        /// The friendly name of the specified policy.
        public let policyName: String?
        /// The service that the policy is using to protect the resources. This value is WAF.
        public let securityServiceType: SecurityServiceType?
        /// The ID of the specified policy.
        public let policyId: String?
        /// Indicates if the policy should be automatically applied to new resources.
        public let remediationEnabled: Bool?

        public init(resourceType: String? = nil, policyArn: String? = nil, policyName: String? = nil, securityServiceType: SecurityServiceType? = nil, policyId: String? = nil, remediationEnabled: Bool? = nil) {
            self.resourceType = resourceType
            self.policyArn = policyArn
            self.policyName = policyName
            self.securityServiceType = securityServiceType
            self.policyId = policyId
            self.remediationEnabled = remediationEnabled
        }

        private enum CodingKeys: String, CodingKey {
            case resourceType = "ResourceType"
            case policyArn = "PolicyArn"
            case policyName = "PolicyName"
            case securityServiceType = "SecurityServiceType"
            case policyId = "PolicyId"
            case remediationEnabled = "RemediationEnabled"
        }
    }

    public struct GetPolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The ID of the AWS Firewall Manager policy that you want the details for.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    public struct EvaluationResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ViolatorCount", required: false, type: .long), 
            AWSShapeMember(label: "EvaluationLimitExceeded", required: false, type: .boolean), 
            AWSShapeMember(label: "ComplianceStatus", required: false, type: .enum)
        ]
        /// Number of resources that are non-compliant with the specified policy. A resource is considered non-compliant if it is not associated with the specified policy.
        public let violatorCount: Int64?
        /// Indicates that over 100 resources are non-compliant with the AWS Firewall Manager policy.
        public let evaluationLimitExceeded: Bool?
        /// Describes an AWS account's compliance with the AWS Firewall Manager policy.
        public let complianceStatus: PolicyComplianceStatusType?

        public init(violatorCount: Int64? = nil, evaluationLimitExceeded: Bool? = nil, complianceStatus: PolicyComplianceStatusType? = nil) {
            self.violatorCount = violatorCount
            self.evaluationLimitExceeded = evaluationLimitExceeded
            self.complianceStatus = complianceStatus
        }

        private enum CodingKeys: String, CodingKey {
            case violatorCount = "ViolatorCount"
            case evaluationLimitExceeded = "EvaluationLimitExceeded"
            case complianceStatus = "ComplianceStatus"
        }
    }

    public enum AccountRoleStatus: String, CustomStringConvertible, Codable {
        case ready = "READY"
        case creating = "CREATING"
        case pendingDeletion = "PENDING_DELETION"
        case deleting = "DELETING"
        case deleted = "DELETED"
        public var description: String { return self.rawValue }
    }

    public struct ListComplianceStatusResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyComplianceStatusList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// An array of PolicyComplianceStatus objects.
        public let policyComplianceStatusList: [PolicyComplianceStatus]?
        /// If you have more PolicyComplianceStatus objects than the number that you specified for MaxResults in the request, the response includes a NextToken value. To list more PolicyComplianceStatus objects, submit another ListComplianceStatus request, and specify the NextToken value from the response in the NextToken value in the next request.
        public let nextToken: String?

        public init(policyComplianceStatusList: [PolicyComplianceStatus]? = nil, nextToken: String? = nil) {
            self.policyComplianceStatusList = policyComplianceStatusList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case policyComplianceStatusList = "PolicyComplianceStatusList"
            case nextToken = "NextToken"
        }
    }

    public struct AssociateAdminAccountRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdminAccount", required: true, type: .string)
        ]
        /// The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. For more information about AWS Organizations and master accounts, see Managing the AWS Accounts in Your Organization.
        public let adminAccount: String

        public init(adminAccount: String) {
            self.adminAccount = adminAccount
        }

        private enum CodingKeys: String, CodingKey {
            case adminAccount = "AdminAccount"
        }
    }

    public struct DeleteNotificationChannelRequest: AWSShape {

    }

    public struct DeletePolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string)
        ]
        /// The ID of the policy that you want to delete. PolicyId is returned by PutPolicy and by ListPolicies.
        public let policyId: String

        public init(policyId: String) {
            self.policyId = policyId
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    public struct ListPoliciesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// An array of PolicySummary objects.
        public let policyList: [PolicySummary]?
        /// If you have more PolicySummary objects than the number that you specified for MaxResults in the request, the response includes a NextToken value. To list more PolicySummary objects, submit another ListPolicies request, and specify the NextToken value from the response in the NextToken value in the next request.
        public let nextToken: String?

        public init(policyList: [PolicySummary]? = nil, nextToken: String? = nil) {
            self.policyList = policyList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case policyList = "PolicyList"
            case nextToken = "NextToken"
        }
    }

    public struct ListMemberAccountsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of member account IDs. The maximum value for MaxResults is 100.
        public let maxResults: Int32?
        /// If you specify a value for MaxResults and you have more account IDs than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of IDs. For the second and subsequent ListMemberAccountsRequest requests, specify the value of NextToken from the previous response to get information about another batch of member account IDs.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public enum DependentServiceName: String, CustomStringConvertible, Codable {
        case awsconfig = "AWSCONFIG"
        case awswaf = "AWSWAF"
        public var description: String { return self.rawValue }
    }

    public struct ListPoliciesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Specifies the number of PolicySummary objects that you want AWS Firewall Manager to return for this request. If you have more PolicySummary objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicySummary objects.
        public let maxResults: Int32?
        /// If you specify a value for MaxResults and you have more PolicySummary objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicySummary objects. For the second and subsequent ListPolicies requests, specify the value of NextToken from the previous response to get information about another batch of PolicySummary objects.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ResourceTag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: false, type: .string), 
            AWSShapeMember(label: "Key", required: true, type: .string)
        ]
        /// The resource tag value.
        public let value: String?
        /// The resource tag key.
        public let key: String

        public init(value: String? = nil, key: String) {
            self.value = value
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case key = "Key"
        }
    }

    public enum SecurityServiceType: String, CustomStringConvertible, Codable {
        case waf = "WAF"
        public var description: String { return self.rawValue }
    }

    public struct GetAdminAccountResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdminAccount", required: false, type: .string), 
            AWSShapeMember(label: "RoleStatus", required: false, type: .enum)
        ]
        /// The AWS account that is set as the AWS Firewall Manager administrator.
        public let adminAccount: String?
        /// The status of the AWS account that you set as the AWS Firewall Manager administrator.
        public let roleStatus: AccountRoleStatus?

        public init(adminAccount: String? = nil, roleStatus: AccountRoleStatus? = nil) {
            self.adminAccount = adminAccount
            self.roleStatus = roleStatus
        }

        private enum CodingKeys: String, CodingKey {
            case adminAccount = "AdminAccount"
            case roleStatus = "RoleStatus"
        }
    }

    public struct SecurityServicePolicyData: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ManagedServiceData", required: false, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// Details about the service. This contains WAF data in JSON format, as shown in the following example:  ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\": \"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" : {\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}} 
        public let managedServiceData: String?
        /// The service that the policy is using to protect the resources. This value is WAF.
        public let `type`: SecurityServiceType

        public init(managedServiceData: String? = nil, type: SecurityServiceType) {
            self.managedServiceData = managedServiceData
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case managedServiceData = "ManagedServiceData"
            case `type` = "Type"
        }
    }

    public struct DisassociateAdminAccountRequest: AWSShape {

    }

    public struct PutPolicyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: true, type: .structure)
        ]
        /// The details of the AWS Firewall Manager policy to be created.
        public let policy: Policy

        public init(policy: Policy) {
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
        }
    }

    public enum CustomerPolicyScopeIdType: String, CustomStringConvertible, Codable {
        case account = "ACCOUNT"
        public var description: String { return self.rawValue }
    }

    public struct ListComplianceStatusRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyId", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The ID of the AWS Firewall Manager policy that you want the details for.
        public let policyId: String
        /// Specifies the number of PolicyComplianceStatus objects that you want AWS Firewall Manager to return for this request. If you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, the response includes a NextToken value that you can use to get another batch of PolicyComplianceStatus objects.
        public let maxResults: Int32?
        /// If you specify a value for MaxResults and you have more PolicyComplianceStatus objects than the number that you specify for MaxResults, AWS Firewall Manager returns a NextToken value in the response that allows you to list another group of PolicyComplianceStatus objects. For the second and subsequent ListComplianceStatus requests, specify the value of NextToken from the previous response to get information about another batch of PolicyComplianceStatus objects.
        public let nextToken: String?

        public init(policyId: String, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.policyId = policyId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct Policy: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PolicyUpdateToken", required: false, type: .string), 
            AWSShapeMember(label: "RemediationEnabled", required: true, type: .boolean), 
            AWSShapeMember(label: "ResourceTags", required: false, type: .list), 
            AWSShapeMember(label: "PolicyName", required: true, type: .string), 
            AWSShapeMember(label: "PolicyId", required: false, type: .string), 
            AWSShapeMember(label: "ExcludeResourceTags", required: true, type: .boolean), 
            AWSShapeMember(label: "IncludeMap", required: false, type: .map), 
            AWSShapeMember(label: "SecurityServicePolicyData", required: true, type: .structure), 
            AWSShapeMember(label: "ExcludeMap", required: false, type: .map), 
            AWSShapeMember(label: "ResourceType", required: true, type: .string)
        ]
        /// A unique identifier for each update to the policy. When issuing a PutPolicy request, the PolicyUpdateToken in the request must match the PolicyUpdateToken of the current policy version. To get the PolicyUpdateToken of the current policy version, use a GetPolicy request.
        public let policyUpdateToken: String?
        /// Indicates if the policy should be automatically applied to new resources.
        public let remediationEnabled: Bool
        /// An array of ResourceTag objects.
        public let resourceTags: [ResourceTag]?
        /// The friendly name of the AWS Firewall Manager policy.
        public let policyName: String
        /// The ID of the AWS Firewall Manager policy.
        public let policyId: String?
        /// If set to True, resources with the tags that are specified in the ResourceTag array are not protected by the policy. If set to False, and the ResourceTag array is not null, only resources with the specified tags are associated with the policy.
        public let excludeResourceTags: Bool
        /// Specifies the AWS account IDs to include in the policy. If IncludeMap is null, all accounts in the AWS Organization are included in the policy. If IncludeMap is not null, only values listed in IncludeMap will be included in the policy. The key to the map is ACCOUNT. For example, a valid IncludeMap would be {“ACCOUNT” : [“accountID1”, “accountID2”]}.
        public let includeMap: [CustomerPolicyScopeIdType: [String]]?
        /// Details about the security service that is being used to protect the resources.
        public let securityServicePolicyData: SecurityServicePolicyData
        /// Specifies the AWS account IDs to exclude from the policy. The IncludeMap values are evaluated first, with all of the appropriate account IDs added to the policy. Then the accounts listed in ExcludeMap are removed, resulting in the final list of accounts to add to the policy. The key to the map is ACCOUNT. For example, a valid ExcludeMap would be {“ACCOUNT” : [“accountID1”, “accountID2”]}.
        public let excludeMap: [CustomerPolicyScopeIdType: [String]]?
        /// The type of resource to protect with the policy, either an Application Load Balancer or a CloudFront distribution. This is in the format shown in AWS Resource Types Reference. Valid values are AWS::ElasticLoadBalancingV2::LoadBalancer or AWS::CloudFront::Distribution.
        public let resourceType: String

        public init(policyUpdateToken: String? = nil, remediationEnabled: Bool, resourceTags: [ResourceTag]? = nil, policyName: String, policyId: String? = nil, excludeResourceTags: Bool, includeMap: [CustomerPolicyScopeIdType: [String]]? = nil, securityServicePolicyData: SecurityServicePolicyData, excludeMap: [CustomerPolicyScopeIdType: [String]]? = nil, resourceType: String) {
            self.policyUpdateToken = policyUpdateToken
            self.remediationEnabled = remediationEnabled
            self.resourceTags = resourceTags
            self.policyName = policyName
            self.policyId = policyId
            self.excludeResourceTags = excludeResourceTags
            self.includeMap = includeMap
            self.securityServicePolicyData = securityServicePolicyData
            self.excludeMap = excludeMap
            self.resourceType = resourceType
        }

        private enum CodingKeys: String, CodingKey {
            case policyUpdateToken = "PolicyUpdateToken"
            case remediationEnabled = "RemediationEnabled"
            case resourceTags = "ResourceTags"
            case policyName = "PolicyName"
            case policyId = "PolicyId"
            case excludeResourceTags = "ExcludeResourceTags"
            case includeMap = "IncludeMap"
            case securityServicePolicyData = "SecurityServicePolicyData"
            case excludeMap = "ExcludeMap"
            case resourceType = "ResourceType"
        }
    }

    public struct GetAdminAccountRequest: AWSShape {

    }

}