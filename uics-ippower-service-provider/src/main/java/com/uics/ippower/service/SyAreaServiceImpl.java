package com.uics.ippower.service;

import com.uics.ippower.entity.SyArea;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.uics.ippower.repository.SyAreaDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  区域
* Created by tom on 2017-01-05 10:27:49.
 */
public class SyAreaServiceImpl extends CURDServiceBase<SyArea> implements SyAreaService {
    @Autowired
    private SyAreaDao syAreaDao;

    @Override
    public DaoBase<SyArea> getDao() {
        return syAreaDao;
    }
}
