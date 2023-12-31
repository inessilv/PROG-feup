//! @file image.hpp
#ifndef __rgb_image_hpp__
#define __rgb_image_hpp__
#include <cassert>
#include <rgb/color.hpp>

namespace rgb {
    //!  A class to represent images.
    /*!
      An rgb::image object is defined by a width width(), a height height() and
      an RGB color matrix width()*height() in which position (x,y) it`s called a pixel.
     */
    class image {
    private:
        int iwidth;  //! integer value that defines width of an image.
        int iheight;  //! integer value that defines height of an image.
        color **pixels; //! RGB color matrix.
    public:
        //!
        //! A constructor that uses the given values to initialize the image components.
        //! \param int width of matrix.
        //! \param int height of matrix.
        //! \param const color& to initialize matrix values.
        image(int w, int h, const color& fill = color::WHITE);
        //!
        //! A destructor.
        ~image();
        //!
        //!Returns width of the image.
        int width() const;
        //!
        //!Returns height of the image.
        int height() const;
        //!
        //!Returns the variable reference for color of pixel at (x,y) where 0 < x < width() e 0 < y < height().
        //! \param int between 0 and width().
        //! \param int between 0 and height().
        //! \return Pixel at (x,y).

        color& at(int x, int y);
        //!
        //!Returns the constant reference for color of pixel at (x,y) where 0 < x < width() e 0 < y < height().
        //! \param int between 0 and width().
        //! \param int between 0 and height().
        //! \return Pixel at (x,y).

        const color& at(int x, int y) const;
        //!
        //!Inverts every pixel by applying color.invert().
        void invert();
        //!
        //!Converts every pixel to a gray scale by applying color.to_gray_scale().
        void to_gray_scale();
        //!
        //! Replaces every pixel with color a to color b.
        //! \param const color& color to look for .
        //! \param const color& color to replace for .
        void replace(const color& a, const color& b);
        //!
        //!Defines color c for every pixel with coordinates (x`,y`),x ≤ x′< x+w e y ≤ y′ < y+h
        //! \param int x value.
        //! \param int y value.
        //! \param int width value.
        //! \param int height value.
        //! \param const color& color to replace for.
        void fill(int x, int y, int w, int h, const color& c);
        //!
        //!Changes the image, mixing every pixel with the matching one in img with factor f by applying color.mix().
        //! \param const color& image used to mix.
        //! \param int factor.
        void mix(const image& img, int factor);
        //!
        //!Reduces the image(change its dimension) to the rectangle with left top (x,y) and dimension w*h.
        //! \param int x value.
        //! \param int y value.
        //! \param int width value.
        //! \param int height value.
        void crop(int x, int y, int w, int h);
        //!
        //!Rotates image to the left.
        void rotate_left();
        //!Rotates image to the right.
        void rotate_right();
        //!
        //!Add the matrix values of img, replacing every pixel starting from position (x,y), except for the ones in img that are equal to color neutral.
        //! \param const color& image used in the addition .
        //! \param const color& color neutral .
        //! \param int x value.
        //! \param int y value.
        void add(const image& img, const color& neutral,
                 int x, int y);
    };
}


#endif
