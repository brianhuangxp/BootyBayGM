package com.gamehoo.common.exception;

import java.io.Serializable;

import com.gamehoo.common.SysMessage;

/**
 * 可回滚的业务异常，
 * 是BizException的直接实现类，方法列表和逻辑与BizException一致，作为标记，供事务框架识别。触发事务的回滚
 * 
 */
public class RollbackableBizException extends BizException implements Serializable{
	/**
	 * 异常版本号
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 一般的异常构造，由于不包含异常代码，不建议使用
	 */
	public RollbackableBizException() {
		super();
	}
	/**
	 * @see cn.ccb.clpm.common.BizException
	 */
	public RollbackableBizException(String message) {
		super(message);

	}
	/**
	 * @see cn.ccb.clpm.common.BizException
	 * @param message
	 * @param cause
	 */
	public RollbackableBizException(String message, Throwable cause) {
		super(message, cause);
	}
	/**
	 * @see cn.ccb.clpm.common.BizException
	 * @param message
	 * @param cause
	 */
	public RollbackableBizException(SysMessage msg, String message,Throwable cause) {
		super(msg,message, cause);
	}

	/**
	 * @see cn.ccb.clpm.common.BizException
	 * @param msg
	 */
	public RollbackableBizException(SysMessage msg) {
		super(msg);
	}
	/**
	 * @see cn.ccb.clpm.common.BizException
	 * @param msg
	 * @param cause
	 */
	public RollbackableBizException(SysMessage msg, Throwable cause) {
		super(msg, cause);
	}
	/**
	 * @see cn.ccb.clpm.common.BizException
	 * @param cause
	 */
	public RollbackableBizException(Throwable cause) {
		super(cause);
	}
}
