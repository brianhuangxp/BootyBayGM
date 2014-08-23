package com.gamehoo.web;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class DispatcherFilter implements Filter {
    private final String INDEX_PAGE = "INDEX_PAGE";
    private final String IGNORE_PAGES_PREFIX = "IGNORE_PAGES_PREFIX";
    private String indexPage;
    private String[] ignorePagePrefixes;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        indexPage = filterConfig.getInitParameter(INDEX_PAGE);
        String ignorePagePrefix = filterConfig.getInitParameter(IGNORE_PAGES_PREFIX);
        ignorePagePrefixes = !"".equals(ignorePagePrefix) && ignorePagePrefix != null ? ignorePagePrefix.split("\\|") : new String[0];
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if(request instanceof HttpServletRequest){
            HttpServletRequest req = (HttpServletRequest)request;
            String uri = req.getRequestURI();
            boolean isFilter = false;
            if(ignorePagePrefixes.length > 0){
                String contextPath = req.getContextPath();
                isFilter = true;
                for(String ignorePagePrefix : ignorePagePrefixes){
                    if(isFilter && uri.startsWith(contextPath + ignorePagePrefix)){
                        isFilter = false;
                    }
                }
            }

            if(isFilter){
                req.getRequestDispatcher(indexPage).forward(req, response);
            } else {
                chain.doFilter(request, response);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
