package com.gamehoo.domain.serv;

import com.gamehoo.common.exception.RollbackableBizException;
import com.gamehoo.common.system.PageInfo;
import com.gamehoo.domain.bo.BaseBo;
import com.gamehoo.tools.log.Logger;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;

@Transactional(rollbackFor = RollbackableBizException.class)
public class BTService extends BaseService {
    public final static int FLUSH_COUNT = 100;
    protected static final Logger log = new Logger(BTService.class);

    public int batchSaveBo(List<? extends BaseBo> boList) {
        int passNum = 0;
        for (int i = 0; i < boList.size(); i++) {
            BaseBo bo = boList.get(i);
            try {
                em.persist(bo);
                passNum++;
                if (i % FLUSH_COUNT == FLUSH_COUNT - 1) {
                    em.flush();
                    em.clear();
                }
            } catch (Exception e) {
                log.error(e, String.format("Save BaseBo: %s happen error.", bo.toString()));
            }
        }
        return passNum;
    }
}
