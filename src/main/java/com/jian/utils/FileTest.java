package com.jian.utils;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.UUID;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @autHor jzj
 * @create 2022 04 16 14:06
 */
@Component
public class FileTest {
    public FileTest() {
    }

    public String upload(CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        //获取文件名字
        String originalFilename = file.getOriginalFilename();
        //如果文件名为空 返回首页
        if ("".equals(originalFilename)) {
            return "上传失败";
        }
        UUID uuid = UUID.randomUUID();
        String newName = uuid.toString() + originalFilename;
        System.out.println(newName);
        System.out.println("上传文件名为:" + newName);
        //上传路径保存设置
        String path = request.getServletContext().getRealPath("/upload");
        //如果路径不存在 造一个
        File realPath = new File(path);
        if (!realPath.exists()) {
            realPath.mkdir();
        }
        System.out.println("文件保存地址" + realPath);
        InputStream inputStream = file.getInputStream();//文件输入流
        OutputStream outputStream = new FileOutputStream(new File(realPath, newName));//文件输出流
        //读取写出
        int len = 0;
        byte[] buffer = new byte[1024];
        while ((len = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, len);
            outputStream.flush();
        }
        outputStream.close();
        inputStream.close();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(realPath.toString());
        stringBuffer.append("\\");
        stringBuffer.append(newName.toString());
        String ads = stringBuffer.toString();
        System.out.println(ads);
        int i = ads.indexOf("\\upload");
        String substring = ads.substring(i);
        return substring;
    }

    //transferTo保存上传文件
    public String upload2(CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        UUID uuid = UUID.randomUUID();

        String realPath = request.getServletContext().getRealPath("/upload");
        //如果路径不存在 造一个
        File file1 = new File(realPath);
        if (!file1.exists()) {
            file1.mkdir();
        }
        System.out.println("文件保存地址" + file1);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(realPath.toString());
        stringBuffer.append("\\");
        stringBuffer.append(uuid.toString());
        stringBuffer.append(file.getOriginalFilename());
        String ads = stringBuffer.toString();
        System.out.println(ads);
        int i = ads.indexOf("\\upload");
        String substring = ads.substring(i);
        file.transferTo(new File(realPath + "/" +uuid.toString()+ file.getOriginalFilename()));
        return substring;
    }


    public String download(HttpServletResponse response, HttpServletRequest request) throws IOException {
        //下载地址
        String path = request.getServletContext().getRealPath("/upload");
        String fileName = "1.png";
        //设置 response响应头
        response.reset();//设置页面不缓存 清空buffer
        response.setCharacterEncoding("UTF-8");
        response.setContentType("multipart/from-data");
        //设置响应头
        response.setHeader("Content-Disposition", "attachment;fileName" + URLEncoder.encode(fileName, "UTF-8"));
        File file = new File(path, fileName);
        //输入流
        FileInputStream fileInputStream = new FileInputStream(file);
        //输出流
        ServletOutputStream outputStream = response.getOutputStream();
        int len = 0;
        byte[] buffer = new byte[1024];
        while ((len = fileInputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, len);
            outputStream.flush();
        }
        outputStream.close();
        fileInputStream.close();
        return "ok";
    }
}

