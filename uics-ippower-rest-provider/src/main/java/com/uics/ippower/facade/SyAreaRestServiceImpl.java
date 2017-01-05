package com.uics.ippower.facade;

import com.uics.ippower.entity.SyArea;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.uics.ippower.service.SyAreaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 区域
* Created by tom on 2017-01-05 10:27:49.
 */
public class SyAreaRestServiceImpl extends RestServiceBase<SyArea> implements SyAreaRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(SyAreaRestServiceImpl.class);

    private SyAreaService syAreaService;

    public SyAreaService getSyAreaService() {
        return syAreaService;
    }

    public void setSyAreaService(SyAreaService syAreaService) {
        this.syAreaService = syAreaService;
    }

    @Override
    public CURDService<SyArea> getService() {
        return syAreaService;
    }

}
