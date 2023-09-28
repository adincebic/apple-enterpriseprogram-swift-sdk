// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionSubmissions: SubscriptionSubmissions {
		SubscriptionSubmissions(path: path + "/subscriptionSubmissions")
	}

	public struct SubscriptionSubmissions {
		/// Path: `/v1/subscriptionSubmissions`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionSubmissionCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionSubmissionResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionSubmissions-create_instance")
		}
	}
}
