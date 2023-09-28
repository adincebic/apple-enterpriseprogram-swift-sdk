// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.InAppPurchases.WithID.Relationships {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v2/inAppPurchases/{id}/relationships/pricePoints`
		public let path: String
	}
}
