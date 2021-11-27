package web;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter(filterName = "ControlFilter",value = "/control/ControlFilter")
public class ControlFilter implements Filter {
    /**
     * 保存不拦截的url
     */
    private static List<String> passUrls = new ArrayList<>();
    /**
     * 上下文
     */
    private String ctxPath = null;
    /**
     * 重定向url
     */
    private static String redirectUrl = "";
    /**
     * 过滤器初始化方法
     *
     * @param config
     * @throws ServletException
     */
    public void init(FilterConfig config) throws ServletException {
        // 获取web.xml中的初始化参数
        String ignoreURL = config.getInitParameter("passURL");
        redirectUrl = config.getInitParameter("redirectURL");
        // 保存不拦截的url
        String[] ignoreURLArray = ignoreURL.split(",");
        for (String url : ignoreURLArray) {
            passUrls.add(url.trim());
        }
        ctxPath = config.getServletContext().getContextPath();
        System.out.println("ctx = " + ctxPath);
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest rst = (HttpServletRequest) request;
        HttpServletResponse rps = (HttpServletResponse) response;

        // 请求的url
        String url = rst.getRequestURI();
        // 相对路径
        String subUrl = url.substring(ctxPath.length() + 1);

        for (String urlStr : passUrls) {
            // 如果匹配, 则放行
            if (subUrl.contains(urlStr)) {
                //System.out.println(1);
                chain.doFilter(rst, rps);
                return;
            }
        }
        // 获得session
        HttpSession session = rst.getSession();
        if (session.getAttribute("aid") != null) {
            chain.doFilter(rst, rps);
        } else {
            rps.sendRedirect(ctxPath+"/control/Control_login");
        }
    }
}
