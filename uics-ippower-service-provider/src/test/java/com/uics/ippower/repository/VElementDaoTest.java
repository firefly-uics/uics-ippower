package com.uics.ippower.repository;

import com.uics.ippower.entity.SyArea;
import com.uics.ippower.entity.VElement;
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
public class VElementDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private VElementDao vElementDao;

    @Test
    public void findAll(){
        List<VElement> vElements = vElementDao.findAllBy();

        Assert.assertNotNull(vElements);

        Assert.assertEquals(vElements.size(), 612);
    }
}
