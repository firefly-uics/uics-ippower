package com.uics.ippower.consumer;


import com.alibaba.fastjson.JSON;
import com.uics.ippower.entity.SyArea;
import com.uics.ippower.service.SyAreaService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2017-01-05 10:27:49.
 */
public class SyAreaDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(SyAreaDemoAction.class);
    private SyAreaService syAreaService;

    public SyAreaService getSyAreaService() {
        return syAreaService;
    }

    public void setSyAreaService(SyAreaService syAreaService) {
        this.syAreaService = syAreaService;
    }

    public void start() throws Exception {
        List<SyArea> syAreas = syAreaService.listAll();
        assert(syAreas != null);
        assert(syAreas.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(syAreas));
    }
}
