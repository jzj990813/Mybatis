package com.jian.utils;
import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import com.mysql.jdbc.Driver;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

/**
 * @autHor jzj  监听侦：用于解决tomcat停止出现内存泄漏
 * @create 2022 01 01 18:18
 */
public class ContextFinalizer implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {
    }
    public void contextDestroyed(ServletContextEvent sce) {
        Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
        Driver d = null;
        while (drivers.hasMoreElements()) {
            try {
                d = (Driver) drivers.nextElement();
                DriverManager.deregisterDriver(d);
                System.out.println(String.format("ContextFinalizer:Driver %s deregistered", d));
            } catch (SQLException ex) {
                System.out.println(String.format("ContextFinalizer:Error deregistering driver %s", d) + ":" + ex);
            }finally {
                AbandonedConnectionCleanupThread.uncheckedShutdown();
            }
        }

    }
}
