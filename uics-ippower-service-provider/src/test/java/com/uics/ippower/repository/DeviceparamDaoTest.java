package com.uics.ippower.repository;

import com.uics.ippower.entity.Deviceparam;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 设备参数
* Created by tom on 2017-01-05 16:43:33.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class DeviceparamDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private DeviceparamDao deviceparamDao;

    @Test
    public void findAll(){
        List<Deviceparam> deviceparams = deviceparamDao.findAllBy();

        Assert.assertNotNull(deviceparams);

        Assert.assertEquals(deviceparams.size(), 2231);
    }
}
