// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersionExperiments.WithID {
	public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments {
		AppStoreVersionExperimentTreatments(path: path + "/appStoreVersionExperimentTreatments")
	}

	public struct AppStoreVersionExperimentTreatments {
		/// Path: `/v1/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentTreatmentsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appStoreVersionExperiments-appStoreVersionExperimentTreatments-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?
			public var fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?
			public var limit: Int?
			public var limitAppStoreVersionExperimentTreatmentLocalizations: Int?
			public var include: [Include]?

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
				case appStoreVersion
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
				case appIcon
				case appIconName
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
				case name
				case promotedDate
			}

			public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersionExperimentTreatment
				case locale
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
			}

			public init(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAppStoreVersionExperimentTreatments = fieldsAppStoreVersionExperimentTreatments
				self.fieldsAppStoreVersionExperimentTreatmentLocalizations = fieldsAppStoreVersionExperimentTreatmentLocalizations
				self.limit = limit
				self.limitAppStoreVersionExperimentTreatmentLocalizations = limitAppStoreVersionExperimentTreatmentLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
				encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppStoreVersionExperimentTreatmentLocalizations, forKey: "limit[appStoreVersionExperimentTreatmentLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
