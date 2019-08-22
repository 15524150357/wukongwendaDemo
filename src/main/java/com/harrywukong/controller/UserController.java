package com.harrywukong.controller;

import com.harrywukong.bean.GenerateCode;
import com.harrywukong.bean.Userinfo;
import com.harrywukong.fastdfs.FastDFSFile;
import com.harrywukong.fastdfs.FileManager;
import com.harrywukong.service.IQuestionService;
import com.harrywukong.service.IUserService;
import org.csource.common.NameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

/**
 * Created by ttc on 2018/8/9.
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    IUserService iUserService;
    @Autowired
    IQuestionService iQuestionService;

    @RequestMapping("reg")
    public String reg()
    {
        return "reg";
    }

    @RequestMapping("login")
    public String login()
    {
        return "login";
    }

    @RequestMapping("doreg")
    public String doreg(Userinfo userinfo, HttpServletRequest request) {

        int flag = iUserService.isUserExist(userinfo);

        if (flag == 1)//用户已存在
        {
            return "redirect:reg";
        }
        else
        {
            String vertifycode = (String) request.getSession().getAttribute("vertifycode");
            String code = request.getParameter("verify");

            System.out.println(vertifycode);
            System.out.println(code);

            if (vertifycode.equals(code))
            {
                userinfo.setPicpath(" http://192.168.216.130/group1/M00/00/00/wKjYgluAxSqANFtyAJiWgK5ngcA592.jpg");
                iUserService.addUser(userinfo);

                request.getSession().setAttribute("user_info", userinfo);

                return "redirect:regbuffer";
            }

            return "redirect:reg";
        }

    }

    @RequestMapping("regbuffer")
    public String regbuffer() {

        return "profile";
    }

    @RequestMapping("dologin")
    public String dologin(Userinfo userinfo, HttpServletRequest request) {

        String vertifycode = (String) request.getSession().getAttribute("vertifycode");
        String code = request.getParameter("verify");

        System.out.println(vertifycode);
        System.out.println(code);

        if (vertifycode.equals(code))
        {
            Userinfo userinfo1 = iUserService.userLogin(userinfo);

            request.getSession().setAttribute("user_info",userinfo1);

            if (userinfo1 != null)
            {

                List<Map<String,Object>> questioninfoList = iQuestionService.getAllQuestions();

                request.getSession().setAttribute("questions",questioninfoList);

//            request.getRequestDispatcher("home.do").forward(request,response);
                return "redirect:/";
            }
            else
            {
                return "redirect:login";
            }
        }
        else
        {
            return "redirect:login";
        }
    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest request) {

        request.getSession().invalidate();
        return "redirect:/";
    }

    @RequestMapping("profile/{userid}")
    public String profile(@PathVariable Integer userid, HttpServletRequest request) {

        Userinfo userinfo = iUserService.getUserInfoByID(userid);

        request.getSession().setAttribute("user_info1",userinfo);

//        response.sendRedirect("profile1.jsp");
        return "profile1";
    }

    @RequestMapping("upload")
    public void upload(@RequestParam MultipartFile upfile, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        if(upfile.isEmpty())
        {
            System.out.println("no file upload");
        }
        else
        {
//            String fileName = upfile.getOriginalFilename();
//            System.out.println("头像名称："+ fileName);
//
//            String path = request.getServletContext().getRealPath("/upload/");
//            File folder = new File(path);
//            if(!folder.exists())
//            {
//                folder.mkdirs();
//            }
//
//            UUID uuid = UUID.randomUUID();
//            String strFinalFileName = path + File.separator  + uuid.toString()+ fileName;
//
//            userinfo.setPicpath(uuid.toString()+ fileName);
//            request.getSession().setAttribute("user_info",userinfo);
//
//            File fileSaved = new File(strFinalFileName);
//            upfile.transferTo(fileSaved);





            //得到上传的文件名
            String fileName = upfile.getOriginalFilename();//a.jpg

            InputStream fileReader = upfile.getInputStream();
            byte[] bytes = new byte[10000000];//10M
            int length = fileReader.read(bytes);
            String ext = fileName.substring(fileName.lastIndexOf(".")+1);
            FastDFSFile file = new FastDFSFile(bytes,ext);
            NameValuePair[] meta_list = new NameValuePair[4];
            meta_list[0] = new NameValuePair("fileName", "abc");
            meta_list[1] = new NameValuePair("fileLength", String.valueOf(length));
            meta_list[2] = new NameValuePair("fileExt", ext);
            meta_list[3] = new NameValuePair("fileAuthor", "WangLiang");
            String filePath = FileManager.upload(file,meta_list);
            System.out.println(filePath);
            response.getWriter().println(filePath);




//            request.getSession().setAttribute("imgpath",uuid.toString()+ fileName);
            userinfo.setPicpath(filePath);
            request.getSession().setAttribute("user_info",userinfo);
            iUserService.saveUser(userinfo);
//            System.out.println(uuid.toString()+ fileName);

            //AJAX只能用这个返回，函数返回值必须是void，不能再return
//            response.getWriter().println(uuid.toString()+ fileName);

        }

    }

    @RequestMapping("generatecode")
    public void generatecode(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int codeCount = 4;

        //验证码由哪些字符组成
        char [] codeSequence = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".toCharArray();

        StringBuilder sb = new StringBuilder();
        for (int i = 0;i < codeCount;i++){
            Random random = new Random();
            int index = random.nextInt(62);
            sb.append(codeSequence[index]);
        }

        request.getSession().setAttribute("vertifycode",sb.toString());

        GenerateCode gc = new GenerateCode();
        BufferedImage image = gc.Generate(sb.toString());
        OutputStream os = response.getOutputStream();
        ImageIO.write(image,"jpg",os);

        os.close();
    }

    @RequestMapping("edit_user")
    public String edituser() {

        return "edit_user";
    }

    @RequestMapping("editname/{username1}")
    public void editname(@PathVariable String username1, HttpServletRequest request, HttpServletResponse response) throws IOException {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");
//        System.out.println(userinfo);
        userinfo.setUsername(username1);
        iUserService.saveUser(userinfo);
        request.getSession().setAttribute("user_info",userinfo);
//        System.out.println(username1);
        response.getWriter().println(username1);
    }

    @RequestMapping("editintroduce")
    public void editintroduce(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String introduce1 = request.getParameter("introduce1");
        System.out.println(introduce1);
        response.getWriter().println(introduce1);
    }



}
