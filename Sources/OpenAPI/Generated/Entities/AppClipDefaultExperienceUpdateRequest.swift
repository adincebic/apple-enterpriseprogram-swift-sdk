// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppClipDefaultExperienceUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable, Identifiable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case appClipDefaultExperiences
		}

		public struct Attributes: Codable {
			public var action: AppClipAction?

			public init(action: AppClipAction? = nil) {
				self.action = action
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.action = try values.decodeIfPresent(AppClipAction.self, forKey: "action")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(action, forKey: "action")
			}
		}

		public struct Relationships: Codable {
			public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?

			public struct ReleaseWithAppStoreVersion: Codable {
				public var data: Data?

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.type = try values.decode(`Type`.self, forKey: "type")
						self.id = try values.decode(String.self, forKey: "id")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encode(type, forKey: "type")
						try values.encode(id, forKey: "id")
					}
				}

				public init(data: Data? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public init(releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil) {
				self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.releaseWithAppStoreVersion = try values.decodeIfPresent(ReleaseWithAppStoreVersion.self, forKey: "releaseWithAppStoreVersion")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(releaseWithAppStoreVersion, forKey: "releaseWithAppStoreVersion")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
			self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
			try values.encodeIfPresent(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
