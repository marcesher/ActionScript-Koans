package koans
{
	import org.flexunit.asserts.*;
	import org.hamcrest.assertThat;
	import org.hamcrest.core.*;
	import org.hamcrest.number.*;
	import org.hamcrest.object.*;
	import org.hamcrest.text.*;

	[TestCase( order = 2 )]
	public class AboutHamcrestAssertions
	{

		/*The FlexUnit wiki suggests using Hamcrest assertions over the legacy assertEquals, assertTrue, etc

		  Let's learn those:

		  For one, the error messages are more helpful. See for yourself..


		http://docs.flexunit.org/index.php?title=Hamcrest
		https://github.com/drewbourne/hamcrest-as3/wiki
		*/

		public const FILL_ME_IN : * = null;

		[Test( order = 1 )]
		public function use_hamcrest_numeric_matchers_to_test_numbers() : void
		{
			assertThat( FILL_ME_IN, greaterThan( 4 ))
			assertThat( FILL_ME_IN, greaterThanOrEqualTo( 4 ))
			assertThat( FILL_ME_IN, lessThan( 4 ))
			assertThat( FILL_ME_IN, lessThanOrEqualTo( 4 ))
			assertThat( FILL_ME_IN, between( 1, 10 ))
			assertThat( FILL_ME_IN, closeTo( 4, 2 )) //matches if a value is within +/- the error value from the given value.
		}

		[Test( order = 2 )]
		public function use_hamcrest_text_matchers_to_test_strings() : void
		{
			assertThat( FILL_ME_IN, not( emptyString()))
			assertThat( FILL_ME_IN, startsWith( 'The quick' ))
			assertThat( FILL_ME_IN, containsString( 'fox' ))
			assertThat( FILL_ME_IN, endsWith( 'fox' ))
			assertThat( 'has some whitespace', FILL_ME_IN, re( /\s+/ )) //this is the regex for 'one or more spaces'
		}

		[Test( order = 3 )]
		public function use_hamcrest_core_matchers_to_test_anything() : void
		{
			assertThat( FILL_ME_IN, equalTo( "a string" ))
			assertThat( FILL_ME_IN, equalTo( 1 ))
			assertThat( FILL_ME_IN, equalTo( true ))
		}

		[Test( order = 4 )]
		public function use_hamcrest_core_matchers_to_test_multiple_items() : void
		{
			assertThat( FILL_ME_IN, allOf( equalTo( "good" ), not( equalTo( "bad" )), not( equalTo( "indifferent" )))); //the 'actual' value must match ALL of the matchers
			assertThat( FILL_ME_IN, anyOf( equalTo( "good" ), equalTo( "bad" ), equalTo( "indifferent" ))); //the 'actual' value must match ANY of the matchers
			assertThat( FILL_ME_IN, both( equalTo( "good" )).and( not( equalTo( "bad" )))); //the 'actual' must match BOTH of the matchers
			assertThat( FILL_ME_IN, either( equalTo( "good" )).or( equalTo( "bad" ))); //the 'actual' value must match either of the matchers
		}

		[Test( order = 5 )]
		public function use_hamcrest_core_matcher_to_test_object_type() : void
		{
			assertThat( FILL_ME_IN, isA( String ))
			assertThat( FILL_ME_IN, isA( Number ))
			assertThat( FILL_ME_IN, isA( Object )) // any old object will do... even this
			assertThat( new BaseTestCase(), isA( ATest )) //fix the Class name used in the 'new' statement
		}

		[Test( order = 6 )]
		public function use_hamcrest_object_matcher_to_test_truthiness() : void
		{
			// here, you'll make the tests pass by deciding which function to use
			// to get the 'actual' argument to pass the test
			assertThat( true, isTruthy())
			assertThat( true, isTrue())
			assertThat( 1, FILL_ME_IN ) //isTruthy(), or isTrue()?
			assertThat( -11, FILL_ME_IN ) //isTruthy(), or isTrue()?
			assertThat([], FILL_ME_IN ) //isTruthy(), or isTrue()?
			assertThat({}, FILL_ME_IN ) //isTruthy(), or isTrue()?
		}

		[Test( order = 7 )]
		public function use_hamcrest_object_matcher_to_test_falsiness() : void
		{
			//again, decide which function to use to get the test to pass
			assertThat( false, isFalsey())
			assertThat( false, isFalse())
			assertThat( 0, FILL_ME_IN ) //isFalse(), or isFalsey()?
			assertThat( null, FILL_ME_IN ) //isFalse(), or isFalsey()?
			assertThat( NaN, FILL_ME_IN ) //isFalse(), or isFalsey()?
		}

	}
}
