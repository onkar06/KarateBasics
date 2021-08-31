package com.karate.check.karatefrominitializer.test;

//import com.intuit.karate.junit4.Karate;
import com.intuit.karate.junit5.Karate;
//import org.junit.runner.RunWith;
//import org.junit.runner.Runner;

public class KaratePrintRunner
{

//    Not working right now for class in other package
    @Karate.Test
    Karate testSample()
    {
        return Karate.run("print").relativeTo(getClass());
    }

    @Karate.Test
    Karate getTest()
    {
        return Karate.run("classpath: com/karate/check/karatefrominitializer/Get.feature").relativeTo(getClass());
    }
}
