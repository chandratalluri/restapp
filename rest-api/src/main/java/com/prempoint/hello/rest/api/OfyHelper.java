package com.prempoint.hello.rest.api;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.prempoint.hello.rest.api.User;
import com.googlecode.objectify.ObjectifyService;

/**
 * OfyHelper, a ServletContextListener, is setup in web.xml to run before a JSP is run.  This is
 * required to let JSP's access Ofy.
 **/
public class OfyHelper implements ServletContextListener {
    public static void register() {
        ObjectifyService.register(User.class);
    }

    public void contextInitialized(ServletContextEvent event) {
        // This will be invoked as part of a warmup request, or the first user
        // request if no warmup request was invoked.
        register();
    }

    public void contextDestroyed(ServletContextEvent event) {
        // App Engine does not currently invoke this method.
    }
}
