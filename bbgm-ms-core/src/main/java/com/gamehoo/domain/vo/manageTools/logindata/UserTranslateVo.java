package com.gamehoo.domain.vo.manageTools.logindata;

import com.gamehoo.domain.vo.BaseVo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class UserTranslateVo extends BaseVo {
    @Id
    @Column(name = "record_time")
    private Timestamp recordTime;

    @Column(name = "import_count")
    private Integer importCount;

    @Column(name = "register_count")
    private Integer registerCount;

    @Column(name = "create_count")
    private Integer createCount;

    public Timestamp getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Timestamp recordTime) {
        this.recordTime = recordTime;
    }

    public Integer getImportCount() {
        return importCount;
    }

    public void setImportCount(Integer importCount) {
        this.importCount = importCount;
    }

    public Integer getRegisterCount() {
        return registerCount;
    }

    public void setRegisterCount(Integer registerCount) {
        this.registerCount = registerCount;
    }

    public Integer getCreateCount() {
        return createCount;
    }

    public void setCreateCount(Integer createCount) {
        this.createCount = createCount;
    }
}
