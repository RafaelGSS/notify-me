NOTIFY_ME_NAME=notify-me
NOTIFY_ME_CI_NAME=notify-me-ci

install:
	sudo cp notify-me.sh /usr/local/bin/$(NOTIFY_ME_NAME)
	sudo chmod +x /usr/local/bin/$(NOTIFY_ME_NAME)
	sudo cp notify-me-ci.sh /usr/local/bin/$(NOTIFY_ME_CI_NAME)
	sudo chmod +x /usr/local/bin/$(NOTIFY_ME_CI_NAME)
