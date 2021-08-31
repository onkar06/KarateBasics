package com.karate.check.karatefrominitializer;

//import com.intuit.karate.junit4.Karate;
import com.intuit.karate.junit5.Karate;
//import org.junit.runner.RunWith;
//import org.junit.runner.Runner;

public class KaratePrintRunner
{
    @Karate.Test
    Karate testSample()
    {
        return Karate.run("print").relativeTo(getClass());
    }

    @Karate.Test
    Karate getTest1()
    {
        return Karate.run("Get").relativeTo(getClass());
    }

//    No need to mention build->testResource->directory
//    @Karate.Test
//    Karate getTest2()
//    {
//        return Karate.run("src/test/java/com/karate/check/karatefrominitializer/Get.feature");
//    }

//    Need to mention directory in build->testResource->directory
//    Otherwise : Giving error
    @Karate.Test
    Karate getTest3()
    {
        return Karate.run("classpath:com/karate/check/karatefrominitializer/Get.feature");
    }

    @Karate.Test
    Karate getTest4()
    {
        return Karate.run("GetBackground").relativeTo(getClass());
    }

}
