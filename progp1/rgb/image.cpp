#include <rgb/image.hpp>

namespace rgb {
    image::image(int w, int h, const color &fill) {

        assert(h > 0 && w > 0);
        iwidth = w;
        iheight = h;

        pixels = new color *[w];
        color *data = new color[h * w];

        for (int i = 0; i < w; i++) {
            pixels[i] = data + i * h;
            for (int j = 0; j < h; j++) {
                pixels[i][j] = fill;
            }
        }
    }

    image::~image() {
        delete[] pixels[0];
        delete[] pixels;
    }

    int image::width() const {
        return iwidth;
    }

    int image::height() const {
        return iheight;
    }

    color &image::at(int x, int y) {
        return pixels[x][y];
    }

    const color &image::at(int x, int y) const {
        return pixels[x][y];
    }

    void image::invert() {
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                pixels[i][j].invert();
            }
        }
    }

    void image::to_gray_scale() {
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                pixels[i][j].to_gray_scale();
            }
        }
    }

    void image::fill(int x, int y, int w, int h, const color &c) {
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                if ((j >= y && j < y + h) && (i >= x && i < x + w))pixels[i][j] = c;
            }
        }
    }

    void image::replace(const color &a, const color &b) {
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                if (pixels[i][j] == a)pixels[i][j] = b;
            }
        }
    }

    void image::add(const image &img, const color &neutral,int x, int y) {
        int w=x+img.iwidth;
        int h=y+img.iheight;

        for (int i = x; i < w; i++) {
            for (int j = y; j < h; j++) {
                if (img.pixels[i-x][j-y] != neutral) {
                    pixels[i][j] = img.pixels[i-x][j-y];

                }
            }
        }
    }

    void image::crop(int x, int y, int w, int h) {
        if (w >= iwidth) w = iwidth;
        if (h >= iheight) h = iheight;
        image *nova = new image(iwidth, iheight, color::WHITE);
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                nova->pixels[i][j] = pixels[i][j];
            }
        }
        for (int i = x; i < x + w; i++) {
            for (int j = y; j < y + h; j++) {
                pixels[i - x][j - y] = nova->pixels[i][j];
            }
        }
        iwidth = w;
        iheight = h;

    }

    void image::rotate_left() {

        color** temp= new color* [iheight];
        color * temp1 = new color[iheight*iwidth];
        for(int i=0; i<iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                temp[j] = temp1 + j * iwidth;
                temp[j][iwidth-1-i] = pixels[i][j];
            }
        }

        int lol = iwidth;
        iwidth= iheight;
        iheight = lol;
        delete [] pixels[0];
        delete [] pixels;
        pixels = new color*[iwidth];
        for(int i=0;i<iwidth;i++){
            pixels[i] = new color[iheight];
            for (int j=0;j< iheight;j++){
                pixels[i][j]=temp[i][j];
            }
        }
        delete [] temp[0];
        delete [] temp;

    }

    void image::rotate_right() {
        color** temp= new color* [iheight];
        color * temp1 = new color[iheight*iwidth];

        for (int p=0;p<iheight;p++){
            temp[p] = temp1 + p * iwidth;
        }
        for(int i=0; i<iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                temp[iheight -j-1][i] = pixels[i][j];
            }
        }

        int lol = iwidth;
        iwidth= iheight;
        iheight = lol;
        delete [] pixels[0];
        delete [] pixels;
        pixels = new color*[iwidth];
        for(int i=0;i<iwidth;i++){
            pixels[i] = new color[iheight];
            for (int j=0;j< iheight;j++){
                pixels[i][j]=temp[i][j];
            }
        }
        delete [] temp[0];
        delete [] temp;


    }

    void image::mix(const image &img, int factor) {
        for (int i = 0; i < iwidth; i++) {
            for (int j = 0; j < iheight; j++) {
                pixels[i][j].mix(img.pixels[i][j], factor);
            }
        }
    }

}


