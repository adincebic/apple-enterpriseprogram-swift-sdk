// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionOfferCodeCreateRequest: Codable {
	public var data: Data
	public var included: [SubscriptionOfferCodePriceInlineCreate]?

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case subscriptionOfferCodes
		}

		public struct Attributes: Codable {
			public var name: String
			public var customerEligibilities: [SubscriptionCustomerEligibility]
			public var offerEligibility: SubscriptionOfferEligibility
			public var duration: SubscriptionOfferDuration
			public var offerMode: SubscriptionOfferMode
			public var numberOfPeriods: Int

			public init(name: String, customerEligibilities: [SubscriptionCustomerEligibility], offerEligibility: SubscriptionOfferEligibility, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
				self.name = name
				self.customerEligibilities = customerEligibilities
				self.offerEligibility = offerEligibility
				self.duration = duration
				self.offerMode = offerMode
				self.numberOfPeriods = numberOfPeriods
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.name = try values.decode(String.self, forKey: "name")
				self.customerEligibilities = try values.decode([SubscriptionCustomerEligibility].self, forKey: "customerEligibilities")
				self.offerEligibility = try values.decode(SubscriptionOfferEligibility.self, forKey: "offerEligibility")
				self.duration = try values.decode(SubscriptionOfferDuration.self, forKey: "duration")
				self.offerMode = try values.decode(SubscriptionOfferMode.self, forKey: "offerMode")
				self.numberOfPeriods = try values.decode(Int.self, forKey: "numberOfPeriods")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(name, forKey: "name")
				try values.encode(customerEligibilities, forKey: "customerEligibilities")
				try values.encode(offerEligibility, forKey: "offerEligibility")
				try values.encode(duration, forKey: "duration")
				try values.encode(offerMode, forKey: "offerMode")
				try values.encode(numberOfPeriods, forKey: "numberOfPeriods")
			}
		}

		public struct Relationships: Codable {
			public var subscription: Subscription
			public var prices: Prices

			public struct Subscription: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case subscriptions
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

			public struct Prices: Codable {
				public var data: [Datum]

				public struct Datum: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case subscriptionOfferCodePrices
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

				public init(data: [Datum]) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(subscription: Subscription, prices: Prices) {
				self.subscription = subscription
				self.prices = prices
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.subscription = try values.decode(Subscription.self, forKey: "subscription")
				self.prices = try values.decode(Prices.self, forKey: "prices")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(subscription, forKey: "subscription")
				try values.encode(prices, forKey: "prices")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data, included: [SubscriptionOfferCodePriceInlineCreate]? = nil) {
		self.data = data
		self.included = included
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
		self.included = try values.decodeIfPresent([SubscriptionOfferCodePriceInlineCreate].self, forKey: "included")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
	}
}
