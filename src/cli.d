module cli;

class OptionManager {

	private {
	
		string		fCredits		= "";
		string		fDescription	= "";
	
	}
	
	public {
	
		this() {
		}
		
		~this() {
		}
		
		void process() {
		}
		
		int countDefinedOptions() {
			return 0;
		}
		
		int countProcessedOptions() {
			return 0;
		}
		
		void credits(string credits) {
			fCredits = credits;
		}
		
		string credits() {
			return fCredits;
		}
		
		void description(string desc) {
			fDescription = desc;
		}
		
		string description() {
			return fDescription;
		}
		
		// TODO Range with min and max positional arguments.
		
		ref OptionDefinition option(string option, int id = 0) {
			return null;
		}
		
		void alias(string option, string alias) {
		}
		
		bool hasOption(string option) {
			return false;
		}
		
		bool hasOption(int id) {
			return false;
		}
		
		const ref Option getOption(string name) {
			return null;
		}
		
		string getArgument(int index = 0) {
			return "";
		}
		
		string firstArgument() {
			return "";
		}
		
		string lastArgument() {
			return "";
		}
		
		// TODO Can be done with other D features (like ranges)?
		const ref Option next() {
			return null;
		}
		
		void rewind() {
		}
		
		string toString() {
			return "";
		}
		
	}

}

class OptionDefinition {

	public {
	
		enum ValueType {
			None,
			Integer,
			Float,
			Boolean,
			String
		}
		
	}

	private {
		
		OptionManager	fOwner				= null;
		int				fId					= 0;
		string			fName				= "";
		ValueType		fType				= ValueType.String;
		string			fAlias				= "";
		string			fDescription		= "";
		bool			fHidden				= false;
		bool			fRequired			= false;
		bool			fHasArgument		= false;
		bool			fArgumentRequired	= false;
		bool			fMultiple			= false;
		bool			fExclusive			= false;
		string[]		fValidStrings		= [];
		string[]		fConflictsWith		= [];
		// TODO How can use float ranges here? Only numbers, not D ranges.
		bool			fHasDefaultValue	= false;
		string			fDefaultValue		= "";
		// TODO Delegate to run on option processed.
		
	}
	
	public {
		
		this() {
		}
		
		~this() {
		}
		
		ref OptionDefinition id(int id) {
		}
		
		int id() {
			return fId;
		}
		
		ref OptionDefinition name(string name) {
			fName = name;
		}
		
		string name() {
			return fName;
		}
		
		bool isLongOption() {
			// TODO Implement this.
			return false;
		}
		
		bool isShortOption() {
			// TODO Implement this.
			return false;
		}
		
		ref OptionDefinition type(ValueType type = ValueType.String) {
			fType = type;
		}
		
		ValueType type() {
			return fType;
		}
		
		// TODO Implement methos typeInteger(), typeFloat(), etc.
		
		ref OptionDefinition alias(string alias) {
			fAlias = alias;
		}
		
		bool hasAlias() {
			return fAlias != "";
		}
		
		string alias() {
			return fAlias;
		}
		
		ref OptionDefinition description(string desc) {
			fDescription = desc;
		}
		
		string description() {
			return fDescription;
		}
		
		ref OptionDefinition required(bool required = true) {
			fIsRequired = required;
			return this;
		}
		
		bool isRequired() {
			return fIsRequired;
		}
		
		// TODO Introspection methods.
		
	}
}

class Option {

	private {
	
		int			fId				= 0;
		string		fName			= "";
		int			fOccurrences	= 0;
		string[]	fValues			= [];
		
		ref OptionDefinition	fDefinition	= null;
	
	}
	
	public {
		
		this() {
		}
		
		~this() {
		}
		
		int id() {
			return fId;
		}
		
		string name() {
			return fName;
		}
		
		const ref OptionDefinition definition() {
			return fDefinition;
		}
		
		int occurrences() {
			return 0;
		}
		
		void add(string value) {
		}
		
		void set(string value, int index = 0) {
		}
		
		string getAt(int index) {
		}
		
		string get() {
			return getAt(0);
		}
		
		// TODO Templated get methods (with casted arguments).
		
		int countValues() {
			return 0;
		}
	}
	
}