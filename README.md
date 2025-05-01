In today’s lab I test a win32app in Intune with a twist, the app is a printer. No, I haven’t gone mad, while this may not be the obvious choice, I’ll show you why it’s a good choice. 

Just like any other app, installing a printer requires running some commands, adding some supporting files (in this case, driver files) and some way of allowing Intune to work out if the printer is installed already. Since all files required by the printer install can be packaged easily in Intune, I thought this was worth investigating.

https://www.youtube.com/watch?v=E0sQFWvG028
