#ifndef IFVIDEOSOURCE_H
#define IFVIDEOSOURCE_H

#include "OpenCV.h"

namespace gptam
{

class if_video_source
{
public:
        if_video_source();
        virtual ~if_video_source();

        virtual void            GetAndFillFrameBWandRGB(cv::Mat_<uchar> &imBW, cv::Mat &imRGB) = 0;
        virtual cv::Size2i      getSize() = 0;
};

}

#endif // IFVIDEOSOURCE_H
