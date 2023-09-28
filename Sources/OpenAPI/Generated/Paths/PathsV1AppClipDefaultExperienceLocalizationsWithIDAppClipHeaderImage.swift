// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperienceLocalizations.WithID {
	public var appClipHeaderImage: AppClipHeaderImage {
		AppClipHeaderImage(path: path + "/appClipHeaderImage")
	}

	public struct AppClipHeaderImage {
		/// Path: `/v1/appClipDefaultExperienceLocalizations/{id}/appClipHeaderImage`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipHeaderImageResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipDefaultExperienceLocalizations-appClipHeaderImage-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var include: [Include]?

			public enum FieldsAppClipHeaderImages: String, Codable, CaseIterable {
				case appClipDefaultExperienceLocalization
				case assetDeliveryState
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
				case locale
				case subtitle
			}

			public enum Include: String, Codable, CaseIterable {
				case appClipDefaultExperienceLocalization
			}

			public init(fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, include: [Include]? = nil) {
				self.fieldsAppClipHeaderImages = fieldsAppClipHeaderImages
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
