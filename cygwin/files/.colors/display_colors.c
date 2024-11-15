#include "stdio.h"

const char *fore[] = {
    "Foreground=Black,",
    "Foreground=Red,",
    "Foreground=Green,",
    "Foreground=Yellow,",
    "Foreground=Blue,",
    "Foreground=Magenta,",
    "Foreground=Cyan,",
    "Foreground=White,",
};

const char *back[] = {
    "Background=Default",
    "Background=Black",
    "Background=Red",
    "Background=Green",
    "Background=Yellow",
    "Background=Blue",
    "Background=Magenta",
    "Background=Cyan",
    "Background=White",
};

const char *attr[] = {
    "normal,",
    "bold,",
};

int main( int argc, char *argv[] )
{
    int fg;
    int bg;
    int b;

    char e = '';

    for ( b = 0; b <= 1; b++ )
    {
        for ( bg = 39; bg <= 47; bg++ )
        {
            for ( fg = 30; fg <= 37; fg++ )
            {

               if ( bg < 40 )
               {
                   if ( b == 0 )
                   {
                       printf( "%02d      ", fg );
                   }
                   else
                   {
                       printf( "%02d;%02d   ", b, fg );
                   }
               }
               else
               {
                   if ( b == 0 )
                   {
                       printf( "%02d;%02d   ", fg, bg );
                   }
                   else
                   {
                       printf( "%02d;%02d;%02d", b, fg, bg );
                   }
               }


               printf( "    " );

               printf( "%c[%dm", e, b );
               printf( "%c[%dm", e, fg );

               if ( bg >= 40 ) printf( "%c[%dm", e, bg );

               printf( "%-7s %-19s %-18s", attr[b], fore[fg-30], back[bg-39] );

               printf( "%c[0m", e );
               printf( "\n" );

           }
       }
    }

    return 0;
}

