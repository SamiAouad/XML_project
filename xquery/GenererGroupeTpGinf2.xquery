 <groupes xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

{
for $x at $i in doc("../students/students_GINF2.xml")/students/student
	return  if ($i mod 24 = 0 )
		then 
			<student groupe="{$i div 24 }">
			    <CNE>{data($x/@CNE)}</CNE>
				<LastName> {data($x/nom)} </LastName>
				<FirstName> {data($x/prenom)} </FirstName>
			</student>
		
	else 
		<student groupe="{ceiling($i div 24)}">
		    <CNE>{data($x/@CNE)}</CNE>
			<LastName> {data($x/nom)} </LastName>
			<FirstName> {data($x/prenom)} </FirstName>
		</student>
}
</groupes>
    
