package com.gamehoo.domain.vo.system;

import com.gamehoo.tools.ObjectUtils;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class BaseUserSession {
    public final static String USER_SESSION_KEY = "sessionUser";

    public abstract Long getUserId();
}
