// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CiWorkflowsResponse: Codable {
	public var data: [CiWorkflow]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case ciProduct(CiProduct)
		case scmRepository(ScmRepository)
		case ciXcodeVersion(CiXcodeVersion)
		case ciMacOsVersion(CiMacOsVersion)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(CiProduct.self) {
				self = .ciProduct(value)
			} else if let value = try? container.decode(ScmRepository.self) {
				self = .scmRepository(value)
			} else if let value = try? container.decode(CiXcodeVersion.self) {
				self = .ciXcodeVersion(value)
			} else if let value = try? container.decode(CiMacOsVersion.self) {
				self = .ciMacOsVersion(value)
			} else {
				throw DecodingError.dataCorruptedError(
					in: container,
					debugDescription: "Data could not be decoded as any of the expected types (CiProduct, ScmRepository, CiXcodeVersion, CiMacOsVersion)."
				)
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .ciProduct(let value): try container.encode(value)
			case .scmRepository(let value): try container.encode(value)
			case .ciXcodeVersion(let value): try container.encode(value)
			case .ciMacOsVersion(let value): try container.encode(value)
			}
		}
	}

	public init(data: [CiWorkflow], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([CiWorkflow].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
