package koans
{
	import as3.DemonstrateVariableAccess;
	import as3.DemonstrateVariableAccessChild;

	import org.flexunit.asserts.*;
	import org.hamcrest.assertThat;
	import org.hamcrest.core.*;
	import org.hamcrest.object.*;
	import org.hamcrest.text.*;

	[TestCase( order = 4 )]
	public class AboutVariables extends BaseTestCase
	{

		//http://www.adobe.com/devnet/actionscript/learning/as3-fundamentals/variables.html

		[Test( order = 1 )]
		public function variables_have_naming_limitations() : void
		{
			var var1 : Boolean = true
			var $var1 : Boolean = false
			var _var1 : String = "underscores typically denote private variables"
			//var !var1 : Number = 1 // BOOM... won't compile
			assertThat( FILL_ME_IN, isTrue())
			assertThat( FILL_ME_IN, isFalse())
			assertThat( FILL_ME_IN, startsWith( "underscores" ))
		}


		[Test( order = 2 )]
		public function variables_use_post_colon_syntax_for_type_declaration() : void
		{
			var anInt : int = 1

			//fix the Compiler warning by adding a datatype delcaration after the variable name
			var imNotSure = 2
		}

		[Test( order = 3 )]
		public function variables_can_be_declared_and_assigned_separately() : void
		{
			//a declaration
			var wesley : String

			//an assignment statement
			wesley = "Dread Pirate Roberts"

			//declaration and assignment combined
			var spaniard : String = FILL_ME_IN

			assertThat( FILL_ME_IN, startsWith( "Dread" ))
			assertThat( spaniard, equalTo( "Inigo Montoya" ))
		}

		[Test( order = 4 )]
		public function variable_access_can_be_controlled() : void
		{
			var parent : DemonstrateVariableAccess = new DemonstrateVariableAccess()
			var child : DemonstrateVariableAccessChild = new DemonstrateVariableAccessChild()

			assertThat( parent.aPublicVar, equalTo( FILL_ME_IN ))
			assertThat( child.aPublicVar, equalTo( FILL_ME_IN ))
			assertThat( child.getProtectedVariable(), equalTo( FILL_ME_IN ))
			assertThat( child.getParentPrivateVariable(), startsWith( FILL_ME_IN ))
		}

		private const I_AM_MODIFIABLE : Boolean = false;
		private var iAmModifiable : Boolean = false;

		[Test( order = 5 )]
		public function const_cannot_be_modified() : void
		{
			//uncomment to see the compiler error
			//I_AM_MODIFIABLE = true

			assertEquals( FILL_ME_IN, I_AM_MODIFIABLE )

			iAmModifiable = true
			assertEquals( FILL_ME_IN, iAmModifiable )
		}

	}
}
