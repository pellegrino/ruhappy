describe("AreYouHappy", function(){
  beforeEach(function(){
    loadFixtures("ruhappy.html");
  });

  describe("toggleSurvey()",function(){
    it("should show if div.ruhappy is hidden",function(){
      AreYouHappy.toggleSurvey();
			expect($(".content")).toBeVisible();
    });    
  });
});