# Downloads latest spec and Regenerates source code
.PHONY: update
update: download generate

# Grabs the latest spec and perform some manual coersion to fix errors
# see https://github.com/AvdLee/EnterpriseProgram-Swift-SDK/pull/197
.PHONY: download
download:
	curl -fsSL -o - https://developer.apple.com/sample-code/enterprise/enterprise-program-openapi-oas.zip | bsdtar -xOf - | jq '.components.schemas.BundleIdPlatform.enum |= [ "IOS", "MAC_OS", "UNIVERSAL", "SERVICES" ] | del(.["x-important"]) | del(.. |."enum"? | select(. != null and length == 0))' > Sources/OpenAPI/app_store_connect_api.json

# Runs the CreateAPI generator to update generated source code
.PHONY: generate
generate:
	swift package --allow-writing-to-package-directory generate-open-api
