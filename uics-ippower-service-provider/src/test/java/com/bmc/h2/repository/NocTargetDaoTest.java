package com.bmc.h2.repository;

import com.bmc.h2.entity.NocTarget;
import com.uics.ippower.entity.SyArea;
import com.uics.ippower.entity.VElement;
import com.uics.ippower.repository.SyAreaDao;
import com.uics.ippower.repository.VElementDao;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.RandomUtils;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import javax.persistence.EntityManagerFactory;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/**
 * 区域
* Created by tom on 2017-01-05 10:44:30.
 */
@ContextConfiguration(locations = {"/META-INF/spring/applicationContext.xml","/META-INF/spring/applicationContextH2.xml"})

public class NocTargetDaoTest extends SpringTransactionalTestCase {

    @Autowired
    private NocTargetDao nocTargetDao;

    @Autowired
    private VElementDao vElementDao;

    @Autowired
    private EntityManagerFactory entityManagerFactory;

//    public LocalContainerEntityManagerFactoryBean getEntityManagerFactory() {
//        return entityManagerFactory;
//    }
//
//    public void setEntityManagerFactory(LocalContainerEntityManagerFactoryBean entityManagerFactory) {
//        this.entityManagerFactory = entityManagerFactory;
//    }

    public String getValue(String columnName){
        //select rd_envitemp3 from t_realdata_single
       return entityManagerFactory.createEntityManager().createNativeQuery("select "+columnName+" from t_realdata_single").getSingleResult()+"";
    }

    @Test
    @Rollback(false)
    public void syncData(){
        List<VElement> elements = (List<VElement>) vElementDao.findAll();

        for (VElement vElement: elements){
            if (!StringUtils.isEmpty(vElement.getTargetId())){
                NocTarget nocTarget = new NocTarget();

                try {
                    BeanUtilsBean.getInstance().copyProperties(nocTarget, vElement);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
                String value = getValue("rd_"+nocTarget.getDeviceId().split("-")[2]);
                if("0".equals(value)){
                    value = null;
                }

                nocTarget.setCollectionTime(System.currentTimeMillis());

                nocTarget.setValue(Double.parseDouble(StringUtils.defaultIfEmpty(value, RandomUtils.nextDouble(10, 100)+"")));
                nocTarget.setStatus("");
                nocTargetDao.save(nocTarget);
            }
        }
    }

    @Test
    public void findAll(){
        List<NocTarget> nocTargets = nocTargetDao.findAllBy();

        Assert.assertNotNull(nocTargets);

        Assert.assertEquals(nocTargets.size(), 1);
    }
}
