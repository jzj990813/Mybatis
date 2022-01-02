package com.jian.utils;


import com.jian.pojo.Admin;
import com.jian.service.AdminService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**测试bean是否获得
 * @autHor jzj
 * @create 2021 12 26 16:18
 */
public class MyTest {
    @Test
    public void Test1() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService adminService = (AdminService) applicationContext.getBean("AdminServiceImpl");
        for (Admin admin : adminService.getAdmin()) {
            System.out.println(admin);
        }
    }
}