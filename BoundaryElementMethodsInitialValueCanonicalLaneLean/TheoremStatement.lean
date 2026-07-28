import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bemConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceBEMTheoremStatement : BEMTheoremStatement := {
  sourceKey := "BEM-initial-value-canonical-lane",
  theoremName := "Boundary Element Methods Initial Value",
  theoremObject := "BEMAdmittedObject",
  classicalBoundary := "carried",
  bemConstrainedStatement := "admissible-class closure via bridge and gate",
  certificateLane := "bem_constrained",
  carriedRemainder := "open classical boundary"
}

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse