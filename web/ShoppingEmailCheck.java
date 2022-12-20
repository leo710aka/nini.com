package com.itheima.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Properties;
import javax.mail.Transport;

@WebServlet("/shoppingEmailCheck")
public class ShoppingEmailCheck extends HttpServlet {

    public static String myEmailAccount = "m13929401866@163.com";
    public static String myEmailPassword = "SQHXAAHKRBJISNJH";
    public static String myEmailSMTPHost = "smtp.163.com";
    private static String receiveMailAccount = "niko.huangyk@outlook.com";

    private static String message="http://localhost:8080/nini/shoppingFinish";

    private static StringBuilder emailContent = new StringBuilder()
            .append("您已经下单成功：<span style=\"color: #F3750F;font-weight: bold;font-size: larger;font-family: cursive;\">")
            .append("<a href=\"")
            .append(message)
            .append("\">")
            .append("点击此链接确认发货")
            .append("</a>")
            .append("</span><br/>")
            .append("此链接只能使用一次，验证成功自动失效；<br/>")
            .append("<div style=\"font-size: small;color: gray;\">")
            .append("(请在10分钟内完成验证，10分钟后验证码失效，您需要重新进行验证。感谢您的支持。)<br/>")
            .append("如果您错误的收到了本电子邮件，请您忽略上述内容<br/>").append("</div>");

    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail) throws Exception {

        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail, "nini.com", "UTF-8"));
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "nini用户", "UTF-8"));
        message.setSubject("下单确认", "UTF-8");
        message.setContent(emailContent.toString(),"text/html;charset=UTF-8");

        message.setSentDate(new Date());
        message.saveChanges();
        return message;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        this.receiveMailAccount = email;

        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证

        // 2. 根据配置创建会话对象, 用于和邮件服务器交互
        Session session = Session.getInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log

        MimeMessage message = null;
        try {
            // 3. 创建一封邮件
            message = createMimeMessage(session, myEmailAccount, receiveMailAccount);

            // 4. 根据 Session 获取邮件传输对象
            Transport transport = session.getTransport();

            transport.connect(myEmailAccount, myEmailPassword);

            // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
            transport.sendMessage(message, message.getAllRecipients());

            // 7. 关闭连接
            transport.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("/nini/client/jiesuan_success.html");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
