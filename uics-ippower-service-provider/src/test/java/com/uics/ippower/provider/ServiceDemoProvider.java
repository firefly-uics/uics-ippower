/*
 * Copyright 1999-2011 Alibaba Group.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.uics.ippower.provider;

import org.apache.commons.lang.time.DateFormatUtils;

import java.util.Date;

public class ServiceDemoProvider {

    public static void main(String[] args) {
      System.setProperty("spring.profiles.default", "test");
//        new Thread(new Runnable() {
//            public void run() {
//                try {
//                    Thread.sleep(20000);
//                } catch (InterruptedException e) {
//                    e.printStackTrace();
//                }
//                ProtocolConfig.destroyAll();
//            }
//        }).start();
        com.alibaba.dubbo.container.Main.main(args);
//        System.out.println(DateFormatUtils.format(1506045365781l, "yyyy-MM-dd mm:ss"));
//        Date date = new Date();
//        date.setMonth(8);
//        System.out.println(date.getTime());
    }

}
