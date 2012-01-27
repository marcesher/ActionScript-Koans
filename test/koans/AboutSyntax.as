package koans
{
	import org.hamcrest.assertThat;
	import org.hamcrest.core.*;
	import org.hamcrest.object.*;

	[TestCase( order = 3 )]
	public class AboutSyntax extends BaseTestCase
	{

		// http://www.adobe.com/devnet/actionscript/learning/as3-fundamentals/syntax.html

		[Test( order = 1 )]
		public function identifiers_are_case_sensitive() : void
		{
			var sampleVariable : int = 1
			var samplevariable : int = 2

			assertThat( samplevariable, equalTo( FILL_ME_IN ))
			assertThat( sampleVariable, equalTo( FILL_ME_IN ))
		}

		[Test( order = 2 )]
		public function semicolons_are_optional() : void
		{
			var variable : int = 1
			var variable2 : int = 2;

			assertThat( FILL_ME_IN, equalTo( 2 ));
		}

		[Test( order = 3 )]
		public function parentheses_can_group_operations() : void
		{
			var noParens : int = 2 + 3 * 4; //3*4 evaluates first
			var parens : int = ( 2 + 3 ) * 4; //the (2+3) evaluates first

			assertThat( FILL_ME_IN, equalTo( noParens ))
			assertThat( FILL_ME_IN, equalTo( parens ))
		}

		[Test( order = 4 )]
		public function parentheses_can_group_a_series_for_evaluation() : void
		{
			var a : int = 2
			var b : int = 3
			var seriesResult : int = ( a + a, b + b, a + b )
			var seriesResultWithIncrement : int = ( a++, b++, a + b )
			assertThat( FILL_ME_IN, equalTo( seriesResult ));
			assertThat( FILL_ME_IN, equalTo( seriesResultWithIncrement ));
		}

		[Test( order = 5 )]
		public function literals_literals_everywhere() : void
		{
			/*
			A literal is any fixed value that appears directly in your code

			use any of these literals to fill in the following:
				a String literal: "hello world"
				a numeric literal: 42
				a boolean literal: true, false
				a null literal: null
				the 'undefined' literal: undefined
			*/
			var object : Object = { string: "hello world", number: 42, truth: true, untruth: false, nada: null }

			trace( object.string )
			trace( 'with brackets is ' + object[ 'string' ])
			trace( object.fill_me_in )

			assertThat( object[ 'nopeNotHere' ], equalTo( 'fill me in with a literal that is not null' ))
			assertThat( object[ 'fill_me_in' ], isTrue())
			assertThat( object.fill_me_in, equalTo( 42 ))
			assertThat( object.fill_me_in, isFalse())
		}
	}
}
