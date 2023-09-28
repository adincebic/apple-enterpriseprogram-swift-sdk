// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/apps/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-get_instance")
		}

		public struct GetParameters {
			public var fieldsApps: [FieldsApps]?
			public var include: [Include]?
			public var fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsAppPriceSchedules: [FieldsAppPriceSchedules]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var fieldsBetaGroups: [FieldsBetaGroups]?
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsAppAvailabilities: [FieldsAppAvailabilities]?
			public var fieldsCustomerReviews: [FieldsCustomerReviews]?
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?
			public var fieldsAppPricePoints: [FieldsAppPricePoints]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsAppPrices: [FieldsAppPrices]?
			public var fieldsAppPreOrders: [FieldsAppPreOrders]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?
			public var fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?
			public var fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]?
			public var limitAppClips: Int?
			public var limitAppCustomProductPages: Int?
			public var limitAppEncryptionDeclarations: Int?
			public var limitAppEvents: Int?
			public var limitAppInfos: Int?
			public var limitAppStoreVersionExperimentsV2: Int?
			public var limitAppStoreVersions: Int?
			public var limitAvailableTerritories: Int?
			public var limitBetaAppLocalizations: Int?
			public var limitBetaGroups: Int?
			public var limitBuilds: Int?
			public var limitGameCenterEnabledVersions: Int?
			public var limitInAppPurchases: Int?
			public var limitInAppPurchasesV2: Int?
			public var limitPreReleaseVersions: Int?
			public var limitPrices: Int?
			public var limitPromotedPurchases: Int?
			public var limitReviewSubmissions: Int?
			public var limitSubscriptionGroups: Int?

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
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case builds
				case ciProduct
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case preOrder
				case preReleaseVersions
				case prices
				case promotedPurchases
				case reviewSubmissions
				case subscriptionGracePeriod
				case subscriptionGroups
			}

			public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
				case app
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
			}

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case achievementReleases
				case app
				case arcadeEnabled
				case challengeEnabled
				case defaultGroupLeaderboard
				case defaultLeaderboard
				case gameCenterAchievements
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case gameCenterLeaderboards
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public enum FieldsAppPriceSchedules: String, Codable, CaseIterable {
				case app
				case automaticPrices
				case baseTerritory
				case manualPrices
			}

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case additionalRepositories
				case app
				case buildRuns
				case bundleID = "bundleId"
				case createdDate
				case name
				case primaryRepositories
				case productType
				case workflows
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

			public enum FieldsBetaGroups: String, Codable, CaseIterable {
				case app
				case betaTesters
				case builds
				case createdDate
				case feedbackEnabled
				case hasAccessToAllBuilds
				case iosBuildsAvailableForAppleSiliconMac
				case isInternalGroup
				case name
				case publicLink
				case publicLinkEnabled
				case publicLinkID = "publicLinkId"
				case publicLinkLimit
				case publicLinkLimitEnabled
			}

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum FieldsAppAvailabilities: String, Codable, CaseIterable {
				case app
				case availableInNewTerritories
				case availableTerritories
			}

			public enum FieldsCustomerReviews: String, Codable, CaseIterable {
				case body
				case createdDate
				case rating
				case response
				case reviewerNickname
				case territory
				case title
			}

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
			}

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case appStoreAgeRating
				case appStoreState
				case brazilAgeRating
				case brazilAgeRatingV2
				case kidsAgeBand
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
				case app
				case description
				case feedbackEmail
				case locale
				case marketingURL = "marketingUrl"
				case privacyPolicyURL = "privacyPolicyUrl"
				case tvOsPrivacyPolicy
			}

			public enum FieldsAppPricePoints: String, Codable, CaseIterable {
				case app
				case customerPrice
				case equalizations
				case priceTier
				case proceeds
				case territory
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case app
				case appStoreReviewScreenshot
				case apps
				case availableInAllTerritories
				case content
				case contentHosting
				case familySharable
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case inAppPurchaseLocalizations
				case inAppPurchaseType
				case name
				case pricePoints
				case productID = "productId"
				case promotedPurchase
				case referenceName
				case reviewNote
				case state
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case app
				case builds
				case platform
				case version
			}

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
				case app
				case referenceName
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum FieldsAppPrices: String, Codable, CaseIterable {
				case app
				case priceTier
			}

			public enum FieldsAppPreOrders: String, Codable, CaseIterable {
				case app
				case appReleaseDate
				case preOrderAvailableDate
			}

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
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

			public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
				case app
				case compatibleVersions
				case iconAsset
				case platform
				case versionString
			}

			public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
				case duration
				case optIn
				case renewalType
				case sandboxOptIn
			}

			public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
				case territories
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

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
			}

			public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
				case app
				case appDescription
				case appEncryptionDeclarationDocument
				case appEncryptionDeclarationState
				case availableOnFrenchStore
				case builds
				case codeValue
				case containsProprietaryCryptography
				case containsThirdPartyCryptography
				case createdDate
				case documentName
				case documentType
				case documentURL = "documentUrl"
				case exempt
				case platform
				case uploadedDate
				case usesEncryption
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum FieldsPerfPowerMetrics: String, Codable, CaseIterable {
				case deviceType
				case metricType
				case platform
			}

			public init(fieldsApps: [FieldsApps]? = nil, include: [Include]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsAppPriceSchedules: [FieldsAppPriceSchedules]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsPerfPowerMetrics: [FieldsPerfPowerMetrics]? = nil, limitAppClips: Int? = nil, limitAppCustomProductPages: Int? = nil, limitAppEncryptionDeclarations: Int? = nil, limitAppEvents: Int? = nil, limitAppInfos: Int? = nil, limitAppStoreVersionExperimentsV2: Int? = nil, limitAppStoreVersions: Int? = nil, limitAvailableTerritories: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitInAppPurchases: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPreReleaseVersions: Int? = nil, limitPrices: Int? = nil, limitPromotedPurchases: Int? = nil, limitReviewSubmissions: Int? = nil, limitSubscriptionGroups: Int? = nil) {
				self.fieldsApps = fieldsApps
				self.include = include
				self.fieldsBetaAppReviewDetails = fieldsBetaAppReviewDetails
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsAppPriceSchedules = fieldsAppPriceSchedules
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.fieldsBetaGroups = fieldsBetaGroups
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsAppAvailabilities = fieldsAppAvailabilities
				self.fieldsCustomerReviews = fieldsCustomerReviews
				self.fieldsAppEvents = fieldsAppEvents
				self.fieldsBuilds = fieldsBuilds
				self.fieldsBetaLicenseAgreements = fieldsBetaLicenseAgreements
				self.fieldsAppClips = fieldsAppClips
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsBetaAppLocalizations = fieldsBetaAppLocalizations
				self.fieldsAppPricePoints = fieldsAppPricePoints
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsAppPrices = fieldsAppPrices
				self.fieldsAppPreOrders = fieldsAppPreOrders
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsGameCenterEnabledVersions = fieldsGameCenterEnabledVersions
				self.fieldsSubscriptionGracePeriods = fieldsSubscriptionGracePeriods
				self.fieldsEndUserLicenseAgreements = fieldsEndUserLicenseAgreements
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.fieldsAppEncryptionDeclarations = fieldsAppEncryptionDeclarations
				self.fieldsTerritories = fieldsTerritories
				self.fieldsPerfPowerMetrics = fieldsPerfPowerMetrics
				self.limitAppClips = limitAppClips
				self.limitAppCustomProductPages = limitAppCustomProductPages
				self.limitAppEncryptionDeclarations = limitAppEncryptionDeclarations
				self.limitAppEvents = limitAppEvents
				self.limitAppInfos = limitAppInfos
				self.limitAppStoreVersionExperimentsV2 = limitAppStoreVersionExperimentsV2
				self.limitAppStoreVersions = limitAppStoreVersions
				self.limitAvailableTerritories = limitAvailableTerritories
				self.limitBetaAppLocalizations = limitBetaAppLocalizations
				self.limitBetaGroups = limitBetaGroups
				self.limitBuilds = limitBuilds
				self.limitGameCenterEnabledVersions = limitGameCenterEnabledVersions
				self.limitInAppPurchases = limitInAppPurchases
				self.limitInAppPurchasesV2 = limitInAppPurchasesV2
				self.limitPreReleaseVersions = limitPreReleaseVersions
				self.limitPrices = limitPrices
				self.limitPromotedPurchases = limitPromotedPurchases
				self.limitReviewSubmissions = limitReviewSubmissions
				self.limitSubscriptionGroups = limitSubscriptionGroups
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsAppPriceSchedules, forKey: "fields[appPriceSchedules]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
				encoder.encode(fieldsCustomerReviews, forKey: "fields[customerReviews]")
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
				encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
				encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
				encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
				encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(fieldsPerfPowerMetrics, forKey: "fields[perfPowerMetrics]")
				encoder.encode(limitAppClips, forKey: "limit[appClips]")
				encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
				encoder.encode(limitAppEncryptionDeclarations, forKey: "limit[appEncryptionDeclarations]")
				encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
				encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
				encoder.encode(limitAppStoreVersionExperimentsV2, forKey: "limit[appStoreVersionExperimentsV2]")
				encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
				encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
				encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
				encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
				encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
				encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppResponse> {
			Request(path: path, method: "PATCH", body: body, id: "apps-update_instance")
		}
	}
}
