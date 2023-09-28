// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterEnabledVersions.WithID {
	public var compatibleVersions: CompatibleVersions {
		CompatibleVersions(path: path + "/compatibleVersions")
	}

	public struct CompatibleVersions {
		/// Path: `/v1/gameCenterEnabledVersions/{id}/compatibleVersions`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterEnabledVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterEnabledVersions-compatibleVersions-get_to_many_related")
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterVersionString: [String]?
			public var filterApp: [String]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?
			public var fieldsApps: [FieldsApps]?
			public var limit: Int?
			public var limitCompatibleVersions: Int?
			public var include: [Include]?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
			}

			public enum Sort: String, Codable, CaseIterable {
				case versionString
				case minusversionString = "-versionString"
			}

			public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
				case app
				case compatibleVersions
				case iconAsset
				case platform
				case versionString
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case compatibleVersions
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterVersionString: [String]? = nil, filterApp: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitCompatibleVersions: Int? = nil, include: [Include]? = nil) {
				self.filterPlatform = filterPlatform
				self.filterVersionString = filterVersionString
				self.filterApp = filterApp
				self.filterID = filterID
				self.sort = sort
				self.fieldsGameCenterEnabledVersions = fieldsGameCenterEnabledVersions
				self.fieldsApps = fieldsApps
				self.limit = limit
				self.limitCompatibleVersions = limitCompatibleVersions
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterVersionString, forKey: "filter[versionString]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitCompatibleVersions, forKey: "limit[compatibleVersions]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
