TEMPLATE = lib
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    FAST/fast_10_detect.cpp \
    FAST/fast_10_score.cpp \
    FAST/fast_11_detect.cpp \
    FAST/fast_11_score.cpp \
    FAST/fast_12_detect.cpp \
    FAST/fast_12_score.cpp \
    FAST/fast_7_detect.cpp \
    FAST/fast_7_score.cpp \
    FAST/fast_8_detect.cpp \
    FAST/fast_8_score.cpp \
    FAST/fast_9_detect.cpp \
    FAST/fast_9_score.cpp \
    FAST/fast_corner.cpp \
    FAST/nonmax_suppression.cpp \
    GCVD/GLText.cpp \
    GCVD/GLWindow.cpp \
    GCVD/timer.cpp \
    Persistence/GStringUtil.cpp \
    Persistence/GUI.cpp \
    Persistence/GUI_impl_readline.cpp \
    Persistence/GUI_language.cpp \
    Persistence/GUI_readline.cpp \
    Persistence/instances.cpp \
    Persistence/PVars.cpp \
    Persistence/serialize.cpp \
    ARDriver.cpp \
    ATANCamera.cpp \
    Bundle.cpp \
    CalibCornerPatch.cpp \
    CalibImage.cpp \
    EssentialInit.cpp \
    EyeGame.cpp \
    GLWindow2.cpp \
    GLWindowMenu.cpp \
    HomographyInit.cpp \
    KeyFrame.cpp \
    Map.cpp \
    MapMaker.cpp \
    MapPoint.cpp \
    MapViewer.cpp \
    MiniPatch.cpp \
    PatchFinder.cpp \
    Relocaliser.cpp \
    ShiTomasi.cpp \
    SmallBlurryImage.cpp \
    System.cpp \
    Tracker.cpp \
    VideoSource.cpp

HEADERS += \
    FAST/fast_corner.h \
    FAST/nonmax_suppression.h \
    FAST/prototypes.h \
    GCVD/Addedutils.h \
    GCVD/FontStructs.h \
    GCVD/Geometry2views.h \
    GCVD/GLFont.h \
    GCVD/GLHelpers.h \
    GCVD/GLWindow.h \
    GCVD/GraphSLAM.h \
    GCVD/image_interpolate.h \
    GCVD/mono.h \
    GCVD/Operators.h \
    GCVD/Quaternion.h \
    GCVD/sans.h \
    GCVD/SE2.h \
    GCVD/SE3.h \
    GCVD/serif.h \
    GCVD/SO2.h \
    GCVD/SO3.h \
    GCVD/timer.h \
    Persistence/default.h \
    Persistence/GStringUtil.h \
    Persistence/GUI.h \
    Persistence/GUI_impl.h \
    Persistence/GUI_readline.h \
    Persistence/instances.h \
    Persistence/PVars.h \
    Persistence/serialize.h \
    Persistence/type_name.h \
    ARDriver.h \
    ATANCamera.h \
    Bundle.h \
    CalibCornerPatch.h \
    CalibImage.h \
    EssentialInit.h \
    EyeGame.h \
    GLWindow2.h \
    GLWindowMenu.h \
    HomographyInit.h \
    Initializer.h \
    KeyFrame.h \
    LevelHelpers.h \
    Map.h \
    MapMaker.h \
    MapPoint.h \
    MapViewer.h \
    MEstimator.h \
    MiniPatch.h \
    OpenCV.h \
    OpenGL.h \
    PatchFinder.h \
    Relocaliser.h \
    ShiTomasi.h \
    SmallBlurryImage.h \
    System.h \
    Tracker.h \
    TrackerData.h \
    VideoSource.h

CONFIG += link_pkgconfig
PKGCONFIG += opencv

LIBS += -lGL -lGLU -lglut
LIBS += -lpthread
LIBS += -lreadline
LIBS += -lm
