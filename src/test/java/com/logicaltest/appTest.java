package test.java.com.logicaltest;

import org.junit.Test;

import main.java.com.logicaltest.app;

import org.junit.Assert;

// import static org.junit.jupiter.api.Assertions.assertEquals;


 public class appTest {

    @Test
    public void testApp() {
        app object = new app();
        Assert.assertEquals(5, object.add(2,3));
        Assert.assertEquals(9, object.add(6,3));
        Assert.assertEquals(11, object.add(7,4));
        Assert.assertEquals(15, object.add(6,9));
    }
}


