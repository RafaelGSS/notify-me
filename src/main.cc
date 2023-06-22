#include <libnotify/notify.h>
#include <iostream>

// Parse argv
// setInterval

int main(int argc, char * argv[]) {
    notify_init("Sample");
    NotifyNotification* n = notify_notification_new ("Hello world",
                                 "some message text... bla bla",
                                  0);
    notify_notification_set_timeout(n, 10000); // 10 seconds

    if (!notify_notification_show(n, 0))
    {
        std::cerr << "show has failed" << std::endl;
        delete n;
        return -1;
    }
    return 0;
}
