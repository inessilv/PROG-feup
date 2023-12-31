//! @file color.hpp
#ifndef __rgb_color_hpp__
#define __rgb_color_hpp__

#include <iostream>

namespace rgb {
    typedef unsigned char rgb_value;//! \typedef unsigned char RBG component;
    //!  A class to represent colors.
   /*!
     An rgb::color object is an integer triplet (r,g,b) where each value
     is between 0 and 255 and r=red, g=green and b=blue.
    */
    class color {
    private:
        rgb_value r;  //! value of parameter red between 0 and 255.
        rgb_value g;  //! value of parameter green between 0 and 255.
        rgb_value b;  //! value of parameter blue between 0 and 255.
    public:
        static const color RED;  //! static const color value where r=255, g=0, b=0.
        static const color GREEN;//! static const color value where r=0, g=255, b=0.
        static const color BLUE;//! static const color value where r=0, g=0, b=255.
        static const color BLACK;//! static const color value where r=0, g=0, b=0.
        static const color WHITE;//! static const color value where r=255, g=255, b=255.
        //! A default constructor that initializes all rgb_value members with value 0.
        color();
        //!
        //! A copy constructor.
        color(const color &c);
        //!
        //! A constructor that uses the given values to initialize the RGB components.
        //! \param rgb_value between 0 and 255.
        //! \param rgb_value between 0 and 255.
        //! \param rgb_value between 0 and 255.
        color(rgb_value r, rgb_value g, rgb_value b);
        //!
        //! \return Value of Red Component.
        rgb_value red() const;
        //!
        //! \return Reference of Red Component.
        rgb_value& red();
        //!
        //! \return Value of Green Component.
        rgb_value green() const;
        //!
        //! \return Reference of Green Component.
        rgb_value& green();
        //! \return Value of Blue Component.
        rgb_value blue() const;
        //! \return Reference of Blue Component.
        rgb_value& blue();
        //!
//!Assignment operator.
//! \param color& given color.
//! \return Assigns the value of its right-hand operand to the element given by its left-hand operand.
        color& operator=(const color&c);
        //!
        //!Equality operator.
        //!\param color& given color.
       //!\return True if both operands have the same value, False otherwise.
        bool operator==(const color &c) const;
        //!
        //!Non-Equality operator.
        //!\param color& given color.
        //!\return True if operands have the different values, False otherwise.
        bool operator!=(const color &c) const;
        //!
        //! Inverts the color by replacing each RGB component for 255-RGB_value.
        void invert();
        //!
        //! Converts each color to a gray scale.
        //!Replaces each RGB component for (r+g+b)/3.
        void to_gray_scale();
        //!
        //! Mixes each color with the one passed as an argument with a factor between 0 and 100.
        //!\param const color& Color to mix.
        //!\param int Factor.
        void mix(const color& c, int f);
    };
}
#endif
