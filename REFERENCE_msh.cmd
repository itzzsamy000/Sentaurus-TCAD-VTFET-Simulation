Title ""

Controls {
}

IOControls {
	EnableSections
}

Definitions {
	Constant "ConstantProfileDefinition_1" {
		Species = "BoronActiveConcentration"
		Value = 1e+17
	}
	Constant "ConstantProfileDefinition_2" {
		Species = "BoronActiveConcentration"
		Value = 1e+15
	}
	Constant "ConstantProfileDefinition_3" {
		Species = "BoronActiveConcentration"
		Value = 1e+18
	}
	Constant "ConstantProfileDefinition_4" {
		Species = "ArsenicActiveConcentration"
		Value = 1e+20
	}
	Refinement "RefinementDefinition_1" {
		MaxElementSize = ( 0.008 0.008 )
		MinElementSize = ( 0.005 0.005 )
	}
	Refinement "RefinementDefinition_2" {
		MaxElementSize = ( 0.008 0.008 )
		MinElementSize = ( 0.005 0.005 )
	}
	Refinement "RefinementDefinition_3" {
		MaxElementSize = ( 0.008 0.008 )
		MinElementSize = ( 0.005 0.005 )
	}
	Refinement "RefinementDefinition_4" {
		MaxElementSize = ( 0.008 0.008 )
		MinElementSize = ( 0.005 0.005 )
	}
}

Placements {
	Constant "ConstantProfilePlacement_1" {
		Reference = "ConstantProfileDefinition_1"
		EvaluateWindow {
			Element = Rectangle [(0 0) (0.03 0.03)]
		}
	}
	Constant "ConstantProfilePlacement_2" {
		Reference = "ConstantProfileDefinition_2"
		EvaluateWindow {
			Element = Rectangle [(0 0) (0.074 -0.003)]
		}
	}
	Constant "ConstantProfilePlacement_3" {
		Reference = "ConstantProfileDefinition_3"
		EvaluateWindow {
			Element = Rectangle [(0.074 0) (0.08 -0.003)]
		}
	}
	Constant "ConstantProfilePlacement_4" {
		Reference = "ConstantProfileDefinition_4"
		EvaluateWindow {
			Element = Rectangle [(0.08 0) (0.09 -0.003)]
		}
	}
	Refinement "RefinementPlacement_1" {
		Reference = "RefinementDefinition_1"
		RefineWindow = Rectangle [(0 0) (0.03 0.03)]
	}
	Refinement "RefinementPlacement_2" {
		Reference = "RefinementDefinition_2"
		RefineWindow = Rectangle [(0 0) (0.074 -0.003)]
	}
	Refinement "RefinementPlacement_3" {
		Reference = "RefinementDefinition_3"
		RefineWindow = Rectangle [(0.074 0) (0.08 -0.003)]
	}
	Refinement "RefinementPlacement_4" {
		Reference = "RefinementDefinition_4"
		RefineWindow = Rectangle [(0.08 0) (0.09 -0.003)]
	}
}

# Filename REFERENCE could not be opened.
