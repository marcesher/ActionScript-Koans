package as3
{
	public class StatementDeclarationSemicolonBug
	{
		
		// Thanks Joe Rinehart (@joeRinehart) for explaining this compiler bug!
		
		// Statement: this'll fail to compile. End the statement with a semicolon to fix it
		public var needToEndAStatementWithASemicolonBeforeAMetadataTag : Boolean = true
		[Bindable]
		public var someOtherVariable
		
		// Declaration: this will compile
		public varneedToEndADeclarationWithASemicolonBeforeAMetadataTag : Boolean
		[Bindable]
		public var yetAnotherVariable
		
		public function StatementDeclarationSemicolonBug()
		{
		}
		
		public function sayHello() : String 
		{
			return "Hello!"
		}
	}
}