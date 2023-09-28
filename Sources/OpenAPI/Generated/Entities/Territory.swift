// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct Territory: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?

	public enum `Type`: String, Codable, CaseIterable {
		case territories
	}

	public struct Attributes: Codable {
		public var currency: String?

		public init(currency: String? = nil) {
			self.currency = currency
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(currency, forKey: "currency")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
	}
}
