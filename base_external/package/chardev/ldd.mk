#LDD

CHARDEV_VERSION = ece2703d5bee9780fb7245e4b92749736e911cf1
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CHARDEV_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-VenkatTata.git'

CHARDEV_SITE_METHOD = git
CHARDEV_GIT_SUBMODULES = YES
CHARDEV_MODULE_SUBDIRS = aesd-char-driver/


define CHARDEV_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
