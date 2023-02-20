VERSION=$(shell cat ../slu/dist/metadata.json | jq -r .tag)

add:
	mkdir -p bin/windows/amd64/${VERSION}/
	cp ../slu/dist/slu_windows_amd64_v1/slu.exe bin/windows/amd64/${VERSION}/

	git add bin bin/windows/amd64/${VERSION}/
	git commit -m "content: Add slu windows amd64 ${VERSION}"
