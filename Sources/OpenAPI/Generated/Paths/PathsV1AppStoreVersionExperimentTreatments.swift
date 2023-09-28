// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments {
		AppStoreVersionExperimentTreatments(path: path + "/appStoreVersionExperimentTreatments")
	}

	public struct AppStoreVersionExperimentTreatments {
		/// Path: `/v1/appStoreVersionExperimentTreatments`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentResponse> {
			Request(path: path, method: "POST", body: body, id: "appStoreVersionExperimentTreatments-create_instance")
		}
	}
}
