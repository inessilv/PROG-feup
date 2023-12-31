
#include <iostream>
#include <fstream>

#include <rgb/script.hpp>
#include <png/png.hpp>

namespace rgb {
    std::istream &operator>>(std::istream &input, color &c) {
        int r, g, b;
        input >> r >> g >> b;
        c.red() = r;
        c.green() = g;
        c.blue() = b;
        return input;
    }

    script::script(const std::string &filename) :
            img(NULL), input(filename), root_path(ROOT_PROJ_DIR) {

    }

    script::~script() {
        if (img != NULL) {
            delete img;
        }
    }

    void script::process() {
        while (!input.eof()) {
            std::string command;
            input >> command;
            if (command.empty()) {
                break;
            }
            std::cout << "Executing command '" << command << "' ..." << std::endl;

            if (command == "open") {
                open();
            } else if (command == "blank") {
                blank();
            }

            // Other commands
            if (img == NULL) {
                std::cout << "No image loaded! Stopping ..." << std::endl;
                break;
            }

            if (command == "save") {
                save();
            } else if (command == "fill") {
                fill();
            } else if (command == "invert") {
                invert();
            } else if (command == "to_gray_scale") {
                gray();
            } else if (command == "replace") {
                replace();
            } else if (command == "crop") {
                crop();
            } else if (command == "mix") {
                mix();
           /* } else if (command == "rotate_left") {
                rotate_l();
            } else if (command == "rotate_right") {
                rotate_r();
            */} else if (command == "add") {
                add();
            }
        }
    }

    void script::open() {
        if (img != NULL) {
            // Delete previous image
            delete img;
        }
        std::string filename;
        input >> filename;
        img = png::load(root_path + "/" + filename);
    }

    void script::blank() {
        if (img != NULL) {
            // Delete previous image
            delete img;
        }
        int w, h;
        color c;
        input >> w >> h >> c;
        img = new image(w, h, c);
    }

    void script::save() {
        std::string filename;
        input >> filename;
        png::save(root_path + "/" + filename, img);
    }

    void script::fill() {
        int x, y, w, h;
        color c;
        input >> x >> y >> w >> h >> c;
        img->fill(x, y, w, h, c);
    }

    void script::invert() {
        img->invert();
    }

    void script::gray() {
        img->to_gray_scale();
    }


    void script::replace() {
        color c1, c2;
        input >> c1 >> c2;
        img->replace(c1, c2);
    }

    void script::crop() {
        int x, y, w, h;
        input >> x >> y >> w >> h;
        img->crop(x, y, w, h);
    }

    void script::rotate_r() {
      img->rotate_right();
    }

    void script::rotate_l() {
      img->rotate_left();
    }

    void script::mix(){
        int f;
        std::string filename;
        input >> filename >> f;
        img->mix(*(png::load(root_path + "/" + filename)), f);
    }
    void script::add(){
        int x,y;
        color c;
        std::string filename;
        input >> filename >> c >> x >> y;
        img->add(*(png::load(root_path + "/" + filename)),c ,x ,y );
    }
}