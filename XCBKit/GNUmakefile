PACKAGE_NAME = XCBKit
ETOILE_CORE_MODULE = YES

include $(GNUSTEP_MAKEFILES)/common.make

#
# Application
#
VERSION = 0.1
FRAMEWORK_NAME = XCBKit

#
# Resource files
#
$(FRAMEWORK_NAME)_LANGUAGES = English

$(FRAMEWORK_NAME)_OBJC_FILES = \
	 XCBAtomCache.m\
	 XCBConnection.m\
	 XCBNotifications.m\
	 XCBWindow.m\
	 XCBScreen.m\
	 XCBDamage.m \
	 XCBExtension.m \
	 XCBComposite.m \
	 XCBGeometry.m \
	 XCBRender.m \
	 XCBFixes.m \
	 XCBPixmap.m \
	 XCBVisual.m \
	 XCBCachedProperty.m \
	 XCBSelection.m \
	 XCBShape.m \
	 XCBPropertyHelpers.m \
	 XCBException.m \
	 XCBImage.m \
	 ICCCM.m \
	 EWMH.m 

$(FRAMEWORK_NAME)_HEADER_FILES = \
	 XCBAtomCache.h \
	 XCBConnection.h \
	 XCBNotifications.h \
	 XCBDamage.h \
	 XCBExtension.h \
	 XCBComposite.h \
	 XCBGeometry.h \
	 XCBRender.h \
	 XCBFixes.h \
	 XCBPixmap.h \
	 XCBVisual.h \
	 XCBCachedProperty.h \
	 XCBSelection.h \
	 XCBShape.h \
	 XCBWindow.h \
	 XCBScreen.h \
	 XCBPropertyHelpers.h \
	 XCBDrawable.h \
	 XCBException.h \
	 XCBImage.h \
	 ICCCM.h \
	 EWMH.h 

ADDITIONAL_OBJCFLAGS = -std=c99 -g -Wno-unused  -Werror -Wall
ADDITIONAL_INCLUDE_DIRS += -I/usr/X11R6/include
ADDITIONAL_LIB_DIRS += -L/usr/X11R6/lib

LIBRARIES_DEPEND_UPON = $(shell pkg-config --libs xcb xcb-event xcb-composite xcb-damage xcb-render xcb-renderutil xcb-xfixes xcb-shape) -lEtoileFoundation $(FND_LIBS) $(OBJC_LIBS) $(SYSTEM_LIBS)

include $(GNUSTEP_MAKEFILES)/framework.make
-include ../../../../etoile.make
