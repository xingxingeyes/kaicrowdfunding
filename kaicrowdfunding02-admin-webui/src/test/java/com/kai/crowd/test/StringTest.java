package com.kai.crowd.test;

import com.kai.crowd.util.CrowdUtil;
import org.junit.Test;

/**
 * @description:
 * @author: kai.lv
 * @date: 2022/4/6
 **/
public class StringTest {

    @Test
    public void testMd5() {
        String source = "123123";
        String encoded = CrowdUtil.md5(source);
        System.out.println(encoded);
    }

}
