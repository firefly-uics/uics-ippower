package com.uics.ippower.consumer;


import com.alibaba.fastjson.JSON;
import com.uics.ippower.entity.Deviceparam;
import com.uics.ippower.service.DeviceparamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
* Created by tom on 2017-01-05 16:43:33.
 */
public class DeviceparamDemoAction {
    private static final Logger LOGGER = LoggerFactory.getLogger(DeviceparamDemoAction.class);
    private DeviceparamService deviceparamService;

    public DeviceparamService getDeviceparamService() {
        return deviceparamService;
    }

    public void setDeviceparamService(DeviceparamService deviceparamService) {
        this.deviceparamService = deviceparamService;
    }

    public void start() throws Exception {
        List<Deviceparam> deviceparams = deviceparamService.listAll();
        assert(deviceparams != null);
        assert(deviceparams.size() == 1);

        LOGGER.info("list all:{}", JSON.toJSON(deviceparams));
    }
}
