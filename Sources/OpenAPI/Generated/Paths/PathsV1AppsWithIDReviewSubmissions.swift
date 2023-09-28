// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var reviewSubmissions: ReviewSubmissions {
		ReviewSubmissions(path: path + "/reviewSubmissions")
	}

	public struct ReviewSubmissions {
		/// Path: `/v1/apps/{id}/reviewSubmissions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-reviewSubmissions-get_to_many_related")
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterState: [FilterState]?
			public var fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?
			public var fieldsActors: [FieldsActors]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var limit: Int?
			public var limitItems: Int?
			public var include: [Include]?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
			}

			public enum FilterState: String, Codable, CaseIterable {
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case unresolvedIssues = "UNRESOLVED_ISSUES"
				case canceling = "CANCELING"
				case completing = "COMPLETING"
				case complete = "COMPLETE"
			}

			public enum FieldsReviewSubmissionItems: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appEvent
				case appStoreVersion
				case appStoreVersionExperiment
				case appStoreVersionExperimentV2
				case removed
				case resolved
				case reviewSubmission
				case state
			}

			public enum FieldsActors: String, Codable, CaseIterable {
				case actorType
				case apiKeyID = "apiKeyId"
				case userEmail
				case userFirstName
				case userLastName
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

			public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case canceled
				case items
				case lastUpdatedByActor
				case platform
				case state
				case submitted
				case submittedByActor
				case submittedDate
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case items
				case lastUpdatedByActor
				case submittedByActor
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterState: [FilterState]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, fieldsActors: [FieldsActors]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, limit: Int? = nil, limitItems: Int? = nil, include: [Include]? = nil) {
				self.filterPlatform = filterPlatform
				self.filterState = filterState
				self.fieldsReviewSubmissionItems = fieldsReviewSubmissionItems
				self.fieldsActors = fieldsActors
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsApps = fieldsApps
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.limit = limit
				self.limitItems = limitItems
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
				encoder.encode(fieldsActors, forKey: "fields[actors]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitItems, forKey: "limit[items]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
