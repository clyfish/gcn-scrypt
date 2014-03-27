all: scrypt scrypt_lds

scrypt:
	cpp search.isa | ./post.sh > output/build.isa
	cd output && gcnasm build.isa build.bin
	cd output && ./update.py

scrypt_lds:
	cpp search_lds.isa | ./post.sh > output/build_lds.isa
	cd output && gcnasm build_lds.isa build_lds.bin
	cd output && ./update_lds.py
