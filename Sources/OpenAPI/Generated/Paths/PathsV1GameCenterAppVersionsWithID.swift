// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAppVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterAppVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAppVersionResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterAppVersions-get_instance")
		}

		public struct GetParameters {
			public var fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]?
			public var include: [Include]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var limitCompatibilityVersions: Int?

			public enum FieldsGameCenterAppVersions: String, Codable, CaseIterable {
				case appStoreVersion
				case compatibilityVersions
				case enabled
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreVersion
				case compatibilityVersions
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public init(fieldsGameCenterAppVersions: [FieldsGameCenterAppVersions]? = nil, include: [Include]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, limitCompatibilityVersions: Int? = nil) {
				self.fieldsGameCenterAppVersions = fieldsGameCenterAppVersions
				self.include = include
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.limitCompatibilityVersions = limitCompatibilityVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterAppVersions, forKey: "fields[gameCenterAppVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(limitCompatibilityVersions, forKey: "limit[compatibilityVersions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterAppVersionUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterAppVersionResponse> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterAppVersions-update_instance")
		}
	}
}
