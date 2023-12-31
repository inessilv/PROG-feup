
//! @file script.hpp
#ifndef __rgb_script_hpp__
#define __rgb_script_hpp__

#include <fstream>
#include <rgb/image.hpp>

namespace rgb {
    //!  A class to process "scripts" of text with remotes related to image manipulation.
    class script {

    public:

        script(const std::string& filename);
        //!
        //!A destructor.
        ~script();
        //!
        //! Gets every command included in the file and calls the functiom related to it.
        void process();
        //!
        //!Applies the transformation to the image related to fill function from rgb::image.
        void fill();
        //!
        //!Initializes the image in file filename.
        void open();
        //!
        //!Initializes an image w*h with color (r,g,b) for every pixel.
        void blank();
        //!
        //!Saves the image to the file filename.
        void save();
        //!
        //!Applies the transformation to the image related to invert function from rgb::image.
        void invert();
        //!
        //!Applies the transformation to the image related to to_gray_scale function from rgb::image.
        void gray();
        //!
        //!Applies the transformation to the image related to replace function from rgb::image.
        void replace();
        //!
        //!Applies the transformation to the image related to crop function from rgb::image.
        void crop();
        //!
        //!Applies the transformation to the image related to rotate_left function from rgb::image.
        void rotate_l();
        //!
        //!Applies the transformation to the image related to rotate_right function from rgb::image.
        void rotate_r();
        //!
        //!Applies the transformation to the image related to mix function from rgb::image.
        void mix();
        //!
        //!Applies the transformation to the image related to add function from rgb::image.
        void add();
    private:
        image* img; //! An image pointer available for the remotes.
        std::ifstream input; //! Input where we can access the script and images.
        std::string root_path; //! Path of the loaded image/s.



    };
}
#endif
