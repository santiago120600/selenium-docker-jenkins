package com.searchmodule.tests;

import com.searchmodule.pages.SearchPage;
import org.testng.Assert;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;
import tests.BaseTest;

public class SearchTest extends BaseTest {

    @Test
    @Parameters({"keyword"})
    public void searchPage(String keyword){
        SearchPage searchPage = new SearchPage(driver);
        searchPage.goTo();
        searchPage.doSearch(keyword);
        searchPage.goToVideos();
        int size = searchPage.getResult();
        Assert.assertTrue(size > 0);
    }
}
