clc, clear

syms x y z

d = x + y;

Mass = int(int(int(d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);

MomentsAboutYZ = int(int(int(x*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);
MomentsAboutXZ = int(int(int(y*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);
MomentsAboutXY = int(int(int(z*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);

COM = [MomentsAboutYZ / Mass, MomentsAboutXZ / Mass, MomentsAboutXY / Mass];

MOIAboutX = int(int(int((y^2 + z^2)*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);
MOIAboutY = int(int(int((x^2 + z^2)*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);
MOIAboutZ = int(int(int((x^2 + y^2)*d, z, 0, 2-x-y), y, 0, 2-x), x, 0, 2);

MOI = [MOIAboutX, MOIAboutY, MOIAboutZ];

fprintf("COM is: (%f, %f, %f)\n", double(COM(1)), double(COM(2)), double(COM(3)))
fprintf("MOI is: (%f, %f, %f)\n", double(MOI(1)), double(MOI(2)), double(MOI(3)))