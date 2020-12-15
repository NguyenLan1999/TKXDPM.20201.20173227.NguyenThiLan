package controller;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ValidatePhoneNumberTest {
	
	private PlaceOrderController placeOrderController;

	@BeforeEach
	void setUp() throws Exception {
		placeOrderController = new PlaceOrderController();
	}
	
	

	@Test
	void test() {
		boolean isVaild = placeOrderController.validatePhoneNumber("012345");
		assertEquals(true, isVaild);
	}

}
