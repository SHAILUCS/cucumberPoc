package stepdefs;

import cucumber.api.java.en.Then;

public class AnotherStepDefClass {
	@Then("^A method of Another Step Def Class should be called now$")
	public void a_method_of_Another_Step_Def_Class_should_be_called_now() throws Throwable {
		System.out.println("A method of Another Step Def Class should be called now");
	}
}
