window.inject = (d) ->

	d.innerHTML = '<h1>A short introduction to Java (Draft Version!)</h1>
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;By undergraduate CS students at the University of Illinois at Urbana Champaign (UIUC).</p>
	    
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;When first looking at <tt>code</tt>, it can be very confusing and disorienting because it is so different from conventional human language.  Once you understand your first language, picking up another will be considerably easier, and something you may have to do quickly and often if you program professionally.  In these regards, <tt>Java</tt> is no different.</p>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;To help you get acquainted with reading and writing scripts, there will be code snippets and examples in boxes littered throughout this text that you can compile and run by clicking the little button beneath them.  To start out, these boxes will not contain real code, but something called <tt>pseudocode</tt>.  <tt>Pseudocode</tt> is halfway between a real programming language and a normal human language, it allows us to plan out and understand computer logic in an easier to read format.  Read further and the <tt>pseudocode</tt> examples will be replaced more and more by actual code as you learn about <tt>Java.</tt></p>
	
	<h2>Basic Formatting</h2>
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;Syntax, or the laws and rules that govern whether or not code will work on a computer are very strict.  You must follow syntax rules exactly, or the code will not work.  Some basic things to become aware of are <tt>white space</tt>(spaces, tabs, and newlines) <tt>semicolons</tt>(;), <tt>brackets</tt>(<tt>(),{},[]</tt>), and <tt>comments</tt>(//,/*).  Understanding how these things are used and what they do is fundamental in both writing and reading code.</p>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Comments</tt> are denoted on a single line by // or contained within /* Text Here! */.  <tt>Comments</tt> are used to leave notes to yourself about the code or to explain the functionality and thought process you intended for the code so that others can read and understand your program.</p>
	
	<div class="pseudo">//If you make a script with nothing but comments, the computer won\'t find anything to do!</div>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Spacing</tt> is what helps make code more readable, and though not always a convention that is necessary for code to run, code is already hard enough to read as it is.  Each line is typically used for a single command - when you start writing a new command you go to a new line, this also allows error reporting programs, or "<tt>debuggers</tt>", to help you pinpoint your problem because they can tell you exactly what line the error is occurring on.</p>
	
	<div class="pseudo">Get bread\nGet peanutButter\nSpread peanutButter\nAssemble sandwich\nDevour sandwich</div>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Tabs</tt> are used to create what is called <tt>indentation</tt>, which is very important when reading code.  Programming instructions are arranged in a hierarchy - that is, some instructions of code may have certain pieces of memory (variables), or other instructions that they have control of.  This is a form of <tt>Parent</tt> and <tt>Child</tt> relationship, a concept that will come up many times in programming in different ways.  In this context, the <tt>child</tt> code will be directly underneath its <tt>parent</tt> code and <tt>indented</tt> with one more tab then the <tt>parent</tt> code is.</p>
	
	<div class="pseudo">MakePeanutButterSandwich\n\tGet bread\n\tGet peanutButter\n\tSpread peanutButter\n\tAssemble sandwich\n\tDevour sandwich</div>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Semicolons</tt> are a very common feature in many languages, and like newlines denote the end of a command, or rather, separate one command from another.  Unlike newlines, however, <tt>semicolons</tt> are not optional.  With the exception of <tt>if</tt>, <tt>for</tt>, and <tt>while</tt> statements - which don\'t need <tt>semicolons</tt> and are covered later - if you are missing a single <tt>semicolon</tt> somewhere in your code the whole thing won\'t work.  Chances are the only way to find the error will be to read through the whole thing looking for that one insignificant missing character, so its best to make <tt>semicolons</tt> an ingrained habit.</p>
	
	<div class="pseudo">MakePeanutButterSandwich\n\tGet bread;\n\tGet peanutButter;\n\tSpread peanutButter;\n\tAssemble sandwich;\n\tDevour sandwich;</div>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;Brackets perform a role similar to <tt>indentation</tt>.  They are used to create a hierarchy of <tt>parent</tt> and <tt>child</tt> relationships by grouping children inside of them that are of the same level in the hierarchy, also called <tt>siblings</tt>, and tying them to a <tt>parent</tt>.  Like <tt>semicolons</tt> they are also mandatory, if not implemented in the correct manner and place, your code will break.</p>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Parenthetical brackets</tt> - () - are used for function parameter grouping, which we\'ll talk about more in depth later, and for order of operations when you perform math on things.  <tt>Squiggly brackets</tt> - {} - are used in conjunction with tabs and newlines to group lines of code under their parent code lines.  <tt>Square brackets</tt> - [] - are used specifically for a special kind of memory grouping called an <tt>Array</tt>, which will be covered in detail later.</p>

	<div class="pseudo">MakeSandwich(peanutButter) {\n\tGet(bread);\n\tGet(peanutButter);\n\tSpread(peanutButter);\n\tAssemble(sandwich);\n\tDevour(sandwich);\n}</div>

	<h2>Stored Information - Variables</h2>
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;Computers only do exactly what they are told, and know only exactly what they are given at any point in time.  <tt>Variables</tt> are a vital tool that allow us to handle data and information: manipulating it, moving it around, and ensuring that the data is in the correct form and place at the correct time.  A <tt>variable</tt> is a virtual object that stores data, whether that data be a number, a string of characters, or a <tt>reference</tt> (in a sense, a pointer) to another <tt>variable</tt>.</p>

		<div class="ex">int num = 4;\nprint(num);</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Variables</tt> in Java are typed, that is, when created the <tt>variable</tt> will only be able to contain a specific kind of information.  A <tt>variable</tt> initialized to hold numbers will not hold words for instance.  To this end, there are many different types of <tt>variables</tt>, ones that can hold numbers of varying sizes and decimal place accuracies such as <tt>int</tt>, <tt>double</tt>, and <tt>long</tt>.  There are types that will hold single characters, such as <tt>char</tt>, and a special type of variable called a <tt>string</tt> that points to words and sentences by building on top of the basic <tt>variable</tt> functionalities.  <tt>Boolean</tt> variable types hold either true or false and nothing else - simplistic, yet very useful and efficient.</p>

		<div class="ex">String out = "Hello World";\nprint(out);</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Reference variables</tt>, more commonly called <tt>pointers</tt>, are <tt>variables</tt> that hold the location of constructs of information such as other <tt>variables</tt>, groups of <tt>variables</tt>, and many other things.  While chaining their use can become confusing, developing the skills and understanding of how they function will be very helpful.  <tt>Pointers</tt> are an integral part of programming.</p>

		<div class="ex">int[] numArray;\nnumArray = new int[3];\nnumArray[0] = 1;\nnumArray[1] = 2;\nnumArray[2] = 3;\nprint(numArray[1]);</div>

	<h2>Expressions</h2>
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;A considerable amount of your time programming will be spent devising ways to extrapolate the important information held in the data, this is often done by writing what is called an <tt>expression</tt>.  An <tt>expression</tt> takes several inputs - a combination of <tt>variables</tt> and <tt>constants</tt> - and produces a single output.  Math, <tt>string</tt> manipulation, and <tt>boolean</tt> logic are all forms of <tt>expressions</tt>.  For those unfamiliar with the term, <tt>boolean</tt> logic is a sort of math performed on true and false, instead of numbers.</p>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Operators</tt> are functions that usually take two inputs and produce one output, and are used to evaluate <tt>expressions</tt>, to find out what they simplify to.  The +,-,*,/,%,^ signs are all mathematical <tt>operators</tt>, more formally called the <tt>Arithmetic Operators</tt>.  For those unfamiliar with the % operator, it is called <tt>modulus</tt>, or \'remainder after division\'.  <tt>Modulus</tt> makes numbers act as if on a clock, they wrap around after a certain magnitude.  For example, if you wait 13 hours from noon, it will be 1 o\'clock.</p>

	<div class="ex">print((13*1)%(6+6));</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Relational operators</tt> make a statement about equality between two operands, and then evaluate to either true or false.  These are the ==(equals), !=(not equals), &gt;(greater than), &lt;(less than), &lt;=(less than or equals), and &gt;=(greater than or equals) operators.  Take careful note that the == <tt>operator</tt> and =, the <tt>assignment operator</tt>, are completely different.  The = <tt>operator</tt> will assign one value to another, usually variables, while the == <tt>operator</tt> checks to see if the two operands are equivalent.</p>

	<div class="ex">print((1+1)==5);</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>Logical operators</tt> perform what is called <tt>boolean logic</tt>, and concern whether a statement is true or false.  These operators include the &&(and),||(or), and !(not, one of the few operators to take only a single input expression).  These are primarily used to direct <tt>conditional logic</tt>, the focus of the next subject.</p>

	<div class="ex">print(true && false);</div>

	<h2>Controlling Logic Flow - Conditionals</h2>
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;Crucial to useful programs is our ability to give computers the ability to make choices based on the information that they are given.  This is done through <tt>conditionals</tt>, also called control statements, such as <tt>if</tt>, <tt>while</tt>, and <tt>for</tt>.</p>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>If</tt> statements are the most elementary of <tt>conditionals</tt>.  The <tt>if</tt> statement is given control of some of its own instructions, indicated by some conventions discussed earlier (tabs, {} braces).  The <tt>if</tt> statement will check its condition, which ultimately evaluates to true or false.  If the statement is true, the <tt>if</tt> statements own set of instructions will be executed, otherwise they will be passed over.</p>

	<div class="ex">if( 1+1 == 2 ) {\n\tprint("Yes! one plus one is two");\n}\nif( 1 + 1 == 3) {\n\tprint("I will not be printed :-(");\n}</div>
	
	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>If</tt> statements can be further extended in influence and ability using the <tt>else</tt> statement.  Appended to an <tt>if</tt> statement, the <tt>else</tt> statement denotes instructions to be run if its partner <tt>if</tt> statement resolves to false.  The <tt>else</tt> statement can even branch to more <tt>if</tt> and <tt>else</tt> statements to create a nested tree of logic to accommodate the programs purpose.</p>

	<div class="ex">if (3==8) {\n\tprint("this won\'t print");\n} else {\n\tprint("but this will");\n}</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>For loops</tt> perform their commands a certain number of times.  They are traditionally given a variable which they increment each loop until the given condition is met, and the loop terminates.</p>

	<div class="ex">for(int i=1; i<4; i++) {\n\tprint("This is loop #:" + i);\n}</div>

	<p class="rp">&nbsp;&nbsp;&nbsp;&nbsp;<tt>While loops</tt> come in two forms, <tt>do while</tt> and <tt>while</tt>.  <tt>Do while</tt> will loop once no matter what, since it checks its condition after running.  <tt>While</tt> will check its condition before running, and may therefore not run at all depending on the rest of the code.

	<div class="ex">int num = 0;\nwhile(num < 3) {\n\tprint(num);\n\tnum = num + 1;\n}</div>
	'