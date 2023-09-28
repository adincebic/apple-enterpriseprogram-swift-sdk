// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.TerritoryAvailabilities {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/territoryAvailabilities/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.TerritoryAvailabilityUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.TerritoryAvailabilityResponse> {
			Request(path: path, method: "PATCH", body: body, id: "territoryAvailabilities-update_instance")
		}
	}
}
