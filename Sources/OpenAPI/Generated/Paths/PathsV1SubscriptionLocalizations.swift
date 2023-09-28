// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionLocalizations: SubscriptionLocalizations {
		SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
	}

	public struct SubscriptionLocalizations {
		/// Path: `/v1/subscriptionLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionLocalizationResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionLocalizations-create_instance")
		}
	}
}
