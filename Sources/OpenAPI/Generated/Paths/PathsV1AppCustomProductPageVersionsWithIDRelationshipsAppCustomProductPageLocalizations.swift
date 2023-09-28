// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPageVersions.WithID.Relationships {
	public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations {
		AppCustomProductPageLocalizations(path: path + "/appCustomProductPageLocalizations")
	}

	public struct AppCustomProductPageLocalizations {
		/// Path: `/v1/appCustomProductPageVersions/{id}/relationships/appCustomProductPageLocalizations`
		public let path: String
	}
}
