// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.RoutingAppCoverages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/routingAppCoverages/{id}`
		public let path: String

		public func get(fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.RoutingAppCoverageResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsRoutingAppCoverages, include), id: "routingAppCoverages-get_instance")
		}

		private func makeGetQuery(_ fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsRoutingAppCoverages: String, Codable, CaseIterable {
			case appStoreVersion
			case assetDeliveryState
			case fileName
			case fileSize
			case sourceFileChecksum
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case appStoreVersion
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.RoutingAppCoverageUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.RoutingAppCoverageResponse> {
			Request(path: path, method: "PATCH", body: body, id: "routingAppCoverages-update_instance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "routingAppCoverages-delete_instance")
		}
	}
}
