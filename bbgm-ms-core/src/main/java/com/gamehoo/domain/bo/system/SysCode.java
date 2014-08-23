package com.gamehoo.domain.bo.system;

import com.gamehoo.domain.vo.system.MenuRouteVo;
import com.gamehoo.domain.vo.system.ProviderServerVo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "SYS_CODE")
@NamedNativeQueries({
        @NamedNativeQuery(
                name = "SysCode.findAllEnableCode",
                query = "select code_id, code_type, parent_code_id, code_value, code_label, display from sys_code where disable = '0'",
                resultClass = SysCode.class
        )
})
public class SysCode implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "CODE_ID")
    private Integer codeId;

    @Column(name = "CODE_TYPE")
    private String codeType;

    @Column(name = "PARENT_CODE_ID")
    private Integer parentCodeId;

    @Column(name = "CODE_VALUE")
    private String value;

    @Column(name = "CODE_LABEL")
    private String label;

    private String display;

    @Transient
    private List<SysCode> childCodes;

    public Integer getCodeId() {
        return codeId;
    }

    public void setCodeId(Integer codeId) {
        this.codeId = codeId;
    }

    public String getCodeType() {
        return codeType;
    }

    public void setCodeType(String codeType) {
        this.codeType = codeType;
    }

    public Integer getParentCodeId() {
        return parentCodeId;
    }

    public void setParentCodeId(Integer parentCodeId) {
        this.parentCodeId = parentCodeId;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public List<SysCode> getChildCodes() {
        return childCodes;
    }

    public void setChildCodes(List<SysCode> childCodes) {
        this.childCodes = childCodes;
    }

    public void putChildCode(SysCode code) {
        if (childCodes == null) {
            childCodes = new ArrayList<SysCode>();
        }
        childCodes.add(code);
    }

    public SysCode() {
    }

    public SysCode(Integer codeId) {
        this.codeId = codeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SysCode sysCode = (SysCode) o;

        if (codeId != null ? !codeId.equals(sysCode.codeId) : sysCode.codeId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return codeId != null ? codeId.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "SysCode{" +
                "codeId=" + codeId +
                ", codeType='" + codeType + '\'' +
                ", parentCodeId=" + parentCodeId +
                ", value='" + value + '\'' +
                ", label='" + label + '\'' +
                ", display='" + display + '\'' +
                ", childCodes=" + childCodes +
                '}';
    }
}