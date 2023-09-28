// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID.Relationships {
	public var appEvents: AppEvents {
		AppEvents(path: path + "/appEvents")
	}

	public struct AppEvents {
		/// Path: `/v1/apps/{id}/relationships/appEvents`
		public let path: String
	}
}
