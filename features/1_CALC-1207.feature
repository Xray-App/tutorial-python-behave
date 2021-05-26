@REQ_CALC-1207
Feature:  Scenario Outline (tutorial04)

	@TEST_CALC-1209
	Scenario Outline: Use Blender with <thing>
		Given I put "<thing>" in a blender
		When I switch the blender on
		Then it should transform into "<other thing>"
		
		Examples: Amphibians
		    | thing         | other thing |
		    | Red Tree Frog | mush        |
		    | apples        | apple juice |
