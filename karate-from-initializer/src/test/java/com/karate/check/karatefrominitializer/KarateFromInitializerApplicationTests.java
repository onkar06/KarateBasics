package com.karate.check.karatefrominitializer;

//import org.junit.jupiter.api.Test;
import com.intuit.karate.junit5.Karate;
import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.boot;

@SpringBootTest
class KarateFromInitializerApplicationTests {

	@Karate.Test
	void contextLoads() {
	}

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

	@Karate.Test
	Karate getTest2()
	{
		return Karate.run("GetBackground").relativeTo(getClass());
	}

}
