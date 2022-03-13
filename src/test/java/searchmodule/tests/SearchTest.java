package searchmodule.tests;

import org.testng.annotations.Test;
import tests.BaseTest;

public class SearchTest extends BaseTest {
    @Test
    public void test(){
        driver.get("https://duckduckgo.com/");
    }
}
