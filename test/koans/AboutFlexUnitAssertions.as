package koans
{
	import org.flexunit.asserts.*;

	[TestCase( order = 1 )]
	public class AboutFlexUnitAssertions
	{
		private const FILL_ME_IN : * = null;

		[BeforeClass]
		public static function setUpBeforeClass() : void
		{
			trace( 'Runs before the entire TestCase' )
		}

		[AfterClass]
		public static function tearDownAfterClass() : void
		{
			trace( 'Runs after the entire TestCase' )
		}


		[Before]
		public function setUp() : void
		{
			trace( 'Runs before every single test' )
		}

		[After]
		public function tearDown() : void
		{
			trace( 'Runs after every single test' )
		}

		public function a_note_on_TestCase_and_Test_order() : void
		{
			/*
			I'm using TestCase and Test ordering here so that tests are run
			in 'learning order'.

			When you write tests for your applications, in general you should not
			concern yourself with test order, except in rare cases.

			See here for more: http://docs.flexunit.org/index.php?title=Order
			*/

			var orderingTestsIsFrownedUpon : Boolean = true
			assertTrue( orderingTestsIsFrownedUpon )
		}

		[Test( order = 1 )]
		public function fill_in_the_expected_value_to_get_the_test_to_pass() : void
		{
			assertEquals( FILL_ME_IN, 1 )
			assertTrue( FILL_ME_IN )
			assertFalse( FILL_ME_IN )
		}

		[Test( order = 2 )]
		public function tests_require_Test_annotation() : void
		{
			assertEquals( '[Test] is the name of the annotation', FILL_ME_IN, '[Test]' );
		}

		[Test( order = 3 )]
		public function optional_failure_messages_appear_first_in_assertions() : void
		{
			//meaningful failure messages are important to help explain why something failed when it was not expected to
			// USE THEM
			assertEquals( '1 should equal 1 but did not', FILL_ME_IN, 1 )
		}


		[Test( order = 4 )]
		public function functions_without_Test_annotation_are_not_tests() : void
		{
			var isAmIATestATest : Boolean = amIATest()
			assertEquals( 'amIATest() should return false. Notice that the amIATest function was not included as a Test', FILL_ME_IN, isAmIATestATest )
		}

		[Test( order = 5 )]
		public function assertStrictlyEquals_is_different_from_assertEquals() : void
		{
			assertEquals( 'this will pass due to type coersion', '1', 1 )
			assertEquals( 'this will pass due to type coersion', '.25', .25 )
			assertStrictlyEquals( 'this will not pass if you use "1"', FILL_ME_IN, 1 )
		}

		//----------------------------------------------------------
		// Private Methods 
		//----------------------------------------------------------

		private function amIATest() : Boolean
		{
			return false;
		}
	}
}

