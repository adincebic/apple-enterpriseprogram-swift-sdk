// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID {
	public var inAppPurchaseLocalizations: InAppPurchaseLocalizations {
		InAppPurchaseLocalizations(path: path + "/inAppPurchaseLocalizations")
	}

	public struct InAppPurchaseLocalizations {
		/// Path: `/v2/inAppPurchases/{id}/inAppPurchaseLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "inAppPurchasesV2-inAppPurchaseLocalizations-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
				case description
				case inAppPurchaseV2
				case locale
				case name
				case state
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case app
				case appStoreReviewScreenshot
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
				case reviewNote
				case state
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseV2
			}

			public init(fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsInAppPurchaseLocalizations = fieldsInAppPurchaseLocalizations
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
