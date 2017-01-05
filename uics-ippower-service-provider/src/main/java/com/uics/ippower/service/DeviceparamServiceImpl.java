package com.uics.ippower.service;

import com.uics.ippower.entity.Deviceparam;
import org.dubbo.x.repository.DaoBase;
import org.dubbo.x.service.CURDServiceBase;
import com.uics.ippower.repository.DeviceparamDao;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *  设备参数
* Created by tom on 2017-01-05 16:43:33.
 */
public class DeviceparamServiceImpl extends CURDServiceBase<Deviceparam> implements DeviceparamService {
    @Autowired
    private DeviceparamDao deviceparamDao;

    @Override
    public DaoBase<Deviceparam> getDao() {
        return deviceparamDao;
    }
}
