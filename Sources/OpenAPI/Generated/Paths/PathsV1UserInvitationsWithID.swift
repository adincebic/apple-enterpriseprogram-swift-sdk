// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.UserInvitations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/userInvitations/{id}`
		public let path: String

		/// Read UserInvitation Information
		public func get(fieldsUserInvitations: [FieldsUserInvitations]? = nil) -> Request<EnterpriseProgram_Swift_SDK.UserInvitationResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsUserInvitations), id: "userInvitations-get_instance")
		}

		private func makeGetQuery(_ fieldsUserInvitations: [FieldsUserInvitations]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsUserInvitations, forKey: "fields[userInvitations]", explode: false)
			return encoder.items
		}

		public enum FieldsUserInvitations: String, Codable, CaseIterable {
			case email
			case expirationDate
			case firstName
			case lastName
			case roles
		}

		/// Cancel a User Invitation
		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "userInvitations-delete_instance")
		}
	}
}
