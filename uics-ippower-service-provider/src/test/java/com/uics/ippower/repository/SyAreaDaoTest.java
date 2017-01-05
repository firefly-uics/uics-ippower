package com.uics.ippower.repository;

import com.uics.ippower.entity.SyArea;
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
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml"})
public class SyAreaDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private SyAreaDao syAreaDao;

    @Test
    public void findAll(){
        List<SyArea> syAreas = syAreaDao.findAllBy();

        Assert.assertNotNull(syAreas);

        Assert.assertEquals(syAreas.size(), 2);
    }
}
