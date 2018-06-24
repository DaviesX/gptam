// ********** George Terzakis 2016 ***************
//
//         University of Portsmouth
//
// Code is based on PTAM by Klein and Murray (Copyright 2008 Isis Innovation Limited)
//
//
#include <stdlib.h>
#include <iostream>

#include "Persistence/instances.h"
#include "System.h"

int main(int, char**)
{

        std::cout << "  Visual Tracking and Mapping with OpenCV" << std::endl;
        std::cout << "  --------------- " << std::endl;
        std::cout <<std::endl<<std::endl<<" University of Portsmouth 2016";
        std::cout << "  Based on PTAM by Klein and Murray (Isis Innovation Limited 2008)" << std::endl;
        std::cout << "   " << std::endl;
        std::cout << std::endl;

        cout << "  Parsing settings.cfg ...." << endl;
        Persistence::GUI.LoadFile("settings.cfg");

        Persistence::GUI.StartParserThread(); // Start parsing of the console input
        atexit(Persistence::GUI.StopParserThread);

        try
        {
                gptam::System s;
                s.Run();
        }
        catch(cv::Exception e) {

                cout << endl;
                cout << "!! Failed to run System; got exception. " << endl;
                cout << "   Exception was: " << endl;
                //cout << e.what << endl;
                cout <<"At line : " << e.line << endl << e.msg << endl;
        }

}










