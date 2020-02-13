all:
	corral run -- ponyc -o ./build/ ./os
	./build/os

test:
	corral run -- ponyc -V=0 -o ./build/ ./os
	./build/os




corral-fetch:
	@corral clean -q
	@corral fetch -q

corral-local:
	-@rm corral.json
	-@rm lock.json
	@corral init -q
	#@corral add /Volumes/Development/Development/pony/pony.stringExt -q

corral-git:
	-@rm corral.json
	-@rm lock.json
	@corral init -q
	#@corral add github.com/KittyMac/pony.stringExt.git -q

ci: corral-git corral-fetch all
	
dev: corral-local corral-fetch all
