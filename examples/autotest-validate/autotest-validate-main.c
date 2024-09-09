#include <stdio.h>
#include "autotest-validate.h"

const char * git_username = "intronix";

int main(int argc, char**argv)
{

    printf("Username: %s\n", my_username());

    printf("this_function_returns_true returned %s\n",
                this_function_returns_true() ? "true" : "false");
    printf("this_function_returns_false returned %s\n",
                this_function_returns_false() ? "true" : "false");
}
