// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboardCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case gameCenterLeaderboards
		}

		public struct Attributes: Codable {
			public var defaultFormatter: GameCenterLeaderboardFormatter
			public var referenceName: String
			public var vendorIdentifier: String
			public var submissionType: SubmissionType
			public var scoreSortType: ScoreSortType
			public var scoreRangeStart: String?
			public var scoreRangeEnd: String?
			public var recurrenceStartDate: Date?
			public var recurrenceDuration: String?
			public var recurrenceRule: String?

			public enum SubmissionType: String, Codable, CaseIterable {
				case bestScore = "BEST_SCORE"
				case mostRecentScore = "MOST_RECENT_SCORE"
			}

			public enum ScoreSortType: String, Codable, CaseIterable {
				case asc = "ASC"
				case desc = "DESC"
			}

			public init(defaultFormatter: GameCenterLeaderboardFormatter, referenceName: String, vendorIdentifier: String, submissionType: SubmissionType, scoreSortType: ScoreSortType, scoreRangeStart: String? = nil, scoreRangeEnd: String? = nil, recurrenceStartDate: Date? = nil, recurrenceDuration: String? = nil, recurrenceRule: String? = nil) {
				self.defaultFormatter = defaultFormatter
				self.referenceName = referenceName
				self.vendorIdentifier = vendorIdentifier
				self.submissionType = submissionType
				self.scoreSortType = scoreSortType
				self.scoreRangeStart = scoreRangeStart
				self.scoreRangeEnd = scoreRangeEnd
				self.recurrenceStartDate = recurrenceStartDate
				self.recurrenceDuration = recurrenceDuration
				self.recurrenceRule = recurrenceRule
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.defaultFormatter = try values.decode(GameCenterLeaderboardFormatter.self, forKey: "defaultFormatter")
				self.referenceName = try values.decode(String.self, forKey: "referenceName")
				self.vendorIdentifier = try values.decode(String.self, forKey: "vendorIdentifier")
				self.submissionType = try values.decode(SubmissionType.self, forKey: "submissionType")
				self.scoreSortType = try values.decode(ScoreSortType.self, forKey: "scoreSortType")
				self.scoreRangeStart = try values.decodeIfPresent(String.self, forKey: "scoreRangeStart")
				self.scoreRangeEnd = try values.decodeIfPresent(String.self, forKey: "scoreRangeEnd")
				self.recurrenceStartDate = try values.decodeIfPresent(Date.self, forKey: "recurrenceStartDate")
				self.recurrenceDuration = try values.decodeIfPresent(String.self, forKey: "recurrenceDuration")
				self.recurrenceRule = try values.decodeIfPresent(String.self, forKey: "recurrenceRule")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(defaultFormatter, forKey: "defaultFormatter")
				try values.encode(referenceName, forKey: "referenceName")
				try values.encode(vendorIdentifier, forKey: "vendorIdentifier")
				try values.encode(submissionType, forKey: "submissionType")
				try values.encode(scoreSortType, forKey: "scoreSortType")
				try values.encodeIfPresent(scoreRangeStart, forKey: "scoreRangeStart")
				try values.encodeIfPresent(scoreRangeEnd, forKey: "scoreRangeEnd")
				try values.encodeIfPresent(recurrenceStartDate, forKey: "recurrenceStartDate")
				try values.encodeIfPresent(recurrenceDuration, forKey: "recurrenceDuration")
				try values.encodeIfPresent(recurrenceRule, forKey: "recurrenceRule")
			}
		}

		public struct Relationships: Codable {
			public var gameCenterDetail: GameCenterDetail?
			public var gameCenterGroup: GameCenterGroup?
			public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?

			public struct GameCenterDetail: Codable {
				public var data: Data?

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterDetails
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

			public struct GameCenterGroup: Codable {
				public var data: Data?

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterGroups
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

			public struct GameCenterLeaderboardSets: Codable {
				public var data: [Datum]?

				public struct Datum: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterLeaderboardSets
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

				public init(data: [Datum]? = nil) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public init(gameCenterDetail: GameCenterDetail? = nil, gameCenterGroup: GameCenterGroup? = nil, gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil) {
				self.gameCenterDetail = gameCenterDetail
				self.gameCenterGroup = gameCenterGroup
				self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.gameCenterDetail = try values.decodeIfPresent(GameCenterDetail.self, forKey: "gameCenterDetail")
				self.gameCenterGroup = try values.decodeIfPresent(GameCenterGroup.self, forKey: "gameCenterGroup")
				self.gameCenterLeaderboardSets = try values.decodeIfPresent(GameCenterLeaderboardSets.self, forKey: "gameCenterLeaderboardSets")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(gameCenterDetail, forKey: "gameCenterDetail")
				try values.encodeIfPresent(gameCenterGroup, forKey: "gameCenterGroup")
				try values.encodeIfPresent(gameCenterLeaderboardSets, forKey: "gameCenterLeaderboardSets")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships? = nil) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
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
