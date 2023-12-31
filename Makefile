.PHONY: FORCE
base-image: FORCE
	docker build -t python-base-image python-base-image

base-fs: FORCE
	sh python-base-image/make-base-fs.sh

base-spin-image: FORCE
	gcc spin-base-image/spin.c -o spin-base-image/spin -O2 -static && docker build -t spin-base-image spin-base-image

base-c-image: FORCE
	gcc c-base-image/daemon.c -o c-base-image/daemon -O2 -static && gcc c-base-image/simple_swap.c -o c-base-image/simple_swap -O2 -static && docker build -t c-base-image c-base-image
