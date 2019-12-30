vm:
	# download vagrant archlinux vm image in current folder

install: vm

run:
	docker-compose up -d --remove-orphans