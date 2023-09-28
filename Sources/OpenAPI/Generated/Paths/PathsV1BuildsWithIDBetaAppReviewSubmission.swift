// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var betaAppReviewSubmission: BetaAppReviewSubmission {
		BetaAppReviewSubmission(path: path + "/betaAppReviewSubmission")
	}

	public struct BetaAppReviewSubmission {
		/// Path: `/v1/builds/{id}/betaAppReviewSubmission`
		public let path: String

		public func get(fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaAppReviewSubmissionWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaAppReviewSubmissions), id: "builds-betaAppReviewSubmission-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBetaAppReviewSubmissions, forKey: "fields[betaAppReviewSubmissions]", explode: false)
			return encoder.items
		}

		public enum FieldsBetaAppReviewSubmissions: String, Codable, CaseIterable {
			case betaReviewState
			case build
			case submittedDate
		}
	}
}
