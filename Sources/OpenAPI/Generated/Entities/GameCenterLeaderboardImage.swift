// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboardImage: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case gameCenterLeaderboardImages
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var imageAsset: ImageAsset?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, imageAsset: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.imageAsset = imageAsset
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.fileSize = try values.decodeIfPresent(Int.self, forKey: "fileSize")
			self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
			self.imageAsset = try values.decodeIfPresent(ImageAsset.self, forKey: "imageAsset")
			self.uploadOperations = try values.decodeIfPresent([UploadOperation].self, forKey: "uploadOperations")
			self.assetDeliveryState = try values.decodeIfPresent(AppMediaAssetState.self, forKey: "assetDeliveryState")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(fileSize, forKey: "fileSize")
			try values.encodeIfPresent(fileName, forKey: "fileName")
			try values.encodeIfPresent(imageAsset, forKey: "imageAsset")
			try values.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
			try values.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
		}
	}

	public struct Relationships: Codable {
		public var gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization?

		public struct GameCenterLeaderboardLocalization: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardLocalizations
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization? = nil) {
			self.gameCenterLeaderboardLocalization = gameCenterLeaderboardLocalization
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.gameCenterLeaderboardLocalization = try values.decodeIfPresent(GameCenterLeaderboardLocalization.self, forKey: "gameCenterLeaderboardLocalization")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(gameCenterLeaderboardLocalization, forKey: "gameCenterLeaderboardLocalization")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
