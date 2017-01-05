package com.uics.ippower.facade;

import com.uics.ippower.entity.Deviceparam;
import org.dubbo.x.service.CURDService;
import org.dubbo.x.facade.RestServiceBase;
import com.uics.ippower.service.DeviceparamService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 设备参数
* Created by tom on 2017-01-05 16:43:33.
 */
public class DeviceparamRestServiceImpl extends RestServiceBase<Deviceparam> implements DeviceparamRestService {

    private static final Logger LOGGER = LoggerFactory.getLogger(DeviceparamRestServiceImpl.class);

    private DeviceparamService deviceparamService;

    public DeviceparamService getDeviceparamService() {
        return deviceparamService;
    }

    public void setDeviceparamService(DeviceparamService deviceparamService) {
        this.deviceparamService = deviceparamService;
    }

    @Override
    public CURDService<Deviceparam> getService() {
        return deviceparamService;
    }

}
