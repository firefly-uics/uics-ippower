package com.uics.ippower.job;

import com.bmc.h2.entity.NocTarget;
import com.bmc.h2.repository.NocTargetDao;
import com.uics.ippower.entity.VElement;
import com.uics.ippower.repository.VElementDao;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManagerFactory;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/**
 * Created by tom on 2017/2/22.
 */
public class SyncJob {
    private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(SyncJob.class);
    @Autowired
    private NocTargetDao nocTargetDao;

    @Autowired
    private VElementDao vElementDao;

    @Autowired
    private EntityManagerFactory entityManagerFactory;

    public String getValue(String columnName){
        //select rd_envitemp3 from t_realdata_single
        return entityManagerFactory.createEntityManager().createNativeQuery("select "+columnName+" from t_realdata_single").getSingleResult()+"";
    }

    public void sync(){
        LOGGER.info("sync...");
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

        LOGGER.info("sync.");
    }

}
