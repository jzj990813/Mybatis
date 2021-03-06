package com.jian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;


/**操作文件
 * @autHor jzj
 * @create 2022 01 02 12:42
 */
@Controller
@RequestMapping("/file")
public class fileController {
    @RequestMapping("/upload")
    //@RequestParam("file")  将name为dile的控件的到的文件封装为CommonsMultipartFile对象
    public String upload(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request) throws IOException {
        //获取文件名字
        String originalFilename = file.getOriginalFilename();
        //如果文件名为空 返回首页
        if ("".equals(originalFilename)) {
            return "redirect:/main/index.jsp";
        }
        System.out.println("上传文件名为:"+originalFilename);
        //上传路径保存设置
        String path= request.getServletContext().getRealPath("/upload");
        //如果路径不存在 造一个
        File realPath = new File(path);
        if (!realPath.exists()){
            realPath.mkdir();
        }
        System.out.println("文件保存地址"+realPath);
        InputStream inputStream = file.getInputStream();//文件输入流
        OutputStream outputStream = new FileOutputStream(new File(realPath,originalFilename));//文件输出流
        //读取写出
        int len=0;
        byte[] buffer=new byte[1024];
        while((len=inputStream.read(buffer))!=-1){
            outputStream.write(buffer,0,len);
            outputStream.flush();
        }
        outputStream.close();
        inputStream.close();
        return "redirect:/index.jsp";
    }
    //transferTo保存上传文件
    @RequestMapping("/upload2")
    public String upload2(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest request) throws IOException {

        String realPath = request.getServletContext().getRealPath("/upload");
        //如果路径不存在 造一个
        File file1 = new File(realPath);
        if (!file1.exists()) {
            file1.mkdir();
        }
        System.out.println("文件保存地址" + file1);
        file.transferTo(new File(realPath+"/"+file.getOriginalFilename()));
        return "redirect:/index.jsp";
}

@RequestMapping("/download")
    public String download(HttpServletResponse response,HttpServletRequest request) throws IOException {
        //下载地址
      String path= request.getServletContext().getRealPath("/upload");
      String fileName="1.png";
      //设置 response响应头
      response.reset();//设置页面不缓存 清空buffer
      response.setCharacterEncoding("UTF-8");
      response.setContentType("multipart/from-data");
      //设置响应头
    response.setHeader("Content-Disposition","attachment;fileName"+ URLEncoder.encode(fileName,"UTF-8"));
    File file = new File(path,fileName);
    //输入流
    FileInputStream fileInputStream = new FileInputStream(file);
    //输出流
    ServletOutputStream outputStream = response.getOutputStream();
    int len=0;
    byte[] buffer=new byte[1024];
    while((len=fileInputStream.read(buffer))!=-1){
        outputStream.write(buffer,0,len);
        outputStream.flush();
    }
    outputStream.close();
    fileInputStream.close();
    return "ok";



}
}
