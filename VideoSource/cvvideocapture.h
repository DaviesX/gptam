// -*- c++ *--
// Copyright 2008 Isis Innovation Limited
//
// VideoSource.h
// Declares the VideoSource class
//
// This is a very simple class to provide video input; this can be
// replaced with whatever form of video input that is needed.  It
// should open the video input on construction, and provide two
// function calls after construction: Size() must return the video
// format as an ImageRef, and GetAndFillFrameBWandRGB should wait for
// a new frame and then overwrite the passed-as-reference images with
// GreyScale and Colour versions of the new frame.

#include "OpenCV.h"
#include "../ifvideosource.h"

namespace gptam
{

class cv_video_capture: public if_video_source
{
public:
        cv_video_capture();

        void            GetAndFillFrameBWandRGB(cv::Mat_<uchar> &imBW, cv::Mat &imRGB) override;
        cv::Size2i      getSize() override;
private:
        cv::VideoCapture *pcap;
        cv::Size2i mirSize;
};

}
