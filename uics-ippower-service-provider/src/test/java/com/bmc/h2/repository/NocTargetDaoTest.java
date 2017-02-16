package com.bmc.h2.repository;

import com.bmc.h2.entity.NocTarget;
import com.uics.ippower.entity.SyArea;
import com.uics.ippower.repository.SyAreaDao;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import java.util.List;

/**
 * 区域
* Created by tom on 2017-01-05 10:44:30.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContextH2.xml"})
public class NocTargetDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private NocTargetDao nocTargetDao;

    @Test
    public void findAll(){
        List<NocTarget> nocTargets = nocTargetDao.findAllBy();

        Assert.assertNotNull(nocTargets);

        Assert.assertEquals(nocTargets.size(), 1);
    }
}
