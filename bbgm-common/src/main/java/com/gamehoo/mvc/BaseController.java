package com.gamehoo.mvc;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class BaseController {
    /** Logger available to subclasses */
    	protected final Log logger = LogFactory.getLog(getClass());

    public boolean isEmpty(Object obj){
        return (obj instanceof  String) ? null == obj || "".equals(obj) : null == obj;
    }
}
