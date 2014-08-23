package com.gamehoo.bbgmimport.mvc.system;

import com.gamehoo.bbgmimport.domain.vo.AjaxResponseVo;
import com.gamehoo.bbgmimport.domain.vo.Status;
import com.gamehoo.mvc.BaseController;

public class AjaxController extends BaseController {
    public AjaxResponseVo putResult(Status status, Object result, long spendTime){
        AjaxResponseVo vo = new AjaxResponseVo(status, result, spendTime);
        return vo;
    }
}
