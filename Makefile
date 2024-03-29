.PHONY: build
build:
	dotnet build HousingManagementSystemApi

.PHONY: test
test:
	dotnet test

.PHONY: lint
lint:
	-dotnet tool install dotnet-format --tool-path ./local-tools/dotnet-format/
	./local-tools/dotnet-format/dotnet-format

.PHONY: run
run: build
	source ./.env && dotnet run --project HousingManagementSystemApi