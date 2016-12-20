
package com.uics.ippower;

import com.uics.ippower.entity.Account;
import com.uics.ippower.entity.Message;
import com.alibaba.dubbo.common.serialize.support.SerializationOptimizer;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/**
 * This class must be accessible from both the provider and consumer
 *
 * @author
 */
public class SerializationOptimizerImpl implements SerializationOptimizer {

    public Collection<Class> getSerializableClasses() {
        List<Class> classes = new LinkedList<Class>();
        classes.add(Account.class);
        classes.add(Message.class);
        return classes;
    }
}
