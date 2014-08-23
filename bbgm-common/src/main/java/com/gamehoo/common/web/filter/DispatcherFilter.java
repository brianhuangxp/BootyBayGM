package com.gamehoo.common.web.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;

public class DispatcherFilter implements Filter {
    private final String INDEX_PAGE = "INDEX_PAGE";
    private String indexPage;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        indexPage = filterConfig.getInitParameter(INDEX_PAGE);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if(request instanceof HttpServletRequest){
            HttpServletRequest req = (HttpServletRequest)request;
            String uri = req.getRequestURI();
            String[] lastNode = uri.split("\\/");
            if(lastNode.length > 0 && lastNode[lastNode.length - 1].indexOf(".") > -1){

//                if("/BootyBayGM/json/manageTools/loginData/loginData.findUserTranslate".equals(uri)){
//                    chain.doFilter(request, response);
//                    HttpServletResponse resp = (HttpServletResponse)response;
//                    Object result = request.getAttribute("result");
//                    String abc = "{a:123}";
////                    resp.reset();
//                    resp.resetBuffer();
//                    response.getOutputStream().print(abc);
//                    resp.setStatus(200);
//                } else {
                    chain.doFilter(request, response);
//                }
            } else {
                req.getRequestDispatcher(indexPage).forward(req, response);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
