package com.gamehoo.domain.bo.system;

import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "SYS_GM_USER")
@NamedNativeQueries({
        @NamedNativeQuery(
                name = "SysGmUser.findMenuList",
                query = "select menu_id, menu_name, menu_url, parent_id, route_path, module_path, r.route_id, " +
                        "module_name, load_css from sys_gm_menu m, sys_gm_route r " +
                        "where m.route_id = r.route_id(+) and m.menu_id in " +
//                        "where m.route_id = r.route_id and m.menu_id in " +
                        "   (select m1.menu_id from sys_gm_menu m1, sys_gm_menu_re_role mrr" +
                        "       where m1.menu_id = mrr.menu_id and (mrr.role_id in " +
                        "           (select role_id from sys_gm_user_re_role where user_id = ?) and" +
                        "               m1.disable <> '1')" +
                        "   or m1.parent_id = -1) " +
                        "and (r.disable is null or r.disable <> '1') order by m.menu_id",
                resultClass = MenuRouteVo.class
        ),
        @NamedNativeQuery(
                name = "SysGmUser.findProviderServerVo",
                query = "select provider_server_id, s.SERVER_ID, SERVER_NAME, CONNECT_SITE, s.start_server_date, p.provider_id, PROVIDER_NAME " +
                        "from sys_gm_server s, sys_gm_provider p, sys_gm_provider_re_server r " +
                        "where r.server_id = s.server_id and r.provider_id = p.provider_id and s.disable = '0' " +
                        "and p.disable = '0' and p.provider_id in( " +
                        "       select provider_id from sys_gm_user_re_role ur, sys_gm_role r  " +
                        "       where r.role_type = 1 and ur.user_id = ? and r.role_id = ur.role_id)",
                resultClass = ProviderServerVo.class
        )
})
public class SysGmUser implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USER_ID")
    private Long userId;

    @Column(name = "NICK_NAME")
    private String nickName;

    @Column(name = "USER_NAME")
    private String userName;

    @Column(name = "USER_PWD")
    private String userPwd;

    @Column(name = "DISABLE")
    private String disable;

    public SysGmUser() {
    }

    public Long getUserId() {
        return this.userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getNickName() {
        return this.nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return this.userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getDisable() {
        return disable;
    }

    public void setDisable(String disable) {
        this.disable = disable;
    }

}