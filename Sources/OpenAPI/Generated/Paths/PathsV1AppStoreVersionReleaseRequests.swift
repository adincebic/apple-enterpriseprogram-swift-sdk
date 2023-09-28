// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionReleaseRequests: AppStoreVersionReleaseRequests {
		AppStoreVersionReleaseRequests(path: path + "/appStoreVersionReleaseRequests")
	}

	public struct AppStoreVersionReleaseRequests {
		/// Path: `/v1/appStoreVersionReleaseRequests`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionReleaseRequestCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionReleaseRequestResponse> {
			Request(path: path, method: "POST", body: body, id: "appStoreVersionReleaseRequests-create_instance")
		}
	}
}
