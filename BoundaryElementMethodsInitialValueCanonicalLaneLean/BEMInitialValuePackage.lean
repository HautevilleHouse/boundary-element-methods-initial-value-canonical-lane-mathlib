import BoundaryElementMethodsInitialValueCanonicalLaneLean.BEMInitialValueDomain

namespace HautevilleHouse
namespace BoundaryElementMethodsInitialValueCanonicalLaneLean

structure BEMInitialValuePackage where
  domain : BoundaryElementMethodDomain
  basisFunctions : Type u
  potentialTheory : Type v
  timeSteppingScheme : Type w
  bemSolutionExistence : Prop
  bemSolutionConvergence : Prop

structure BEMInitialValueEvidence (P : BEMInitialValuePackage) where
  bemSolutionExistenceClosed : P.bemSolutionExistence
  bemSolutionConvergenceClosed : P.bemSolutionConvergence

def BEMInitialValueClosed (P : BEMInitialValuePackage) : Prop :=
  P.bemSolutionExistence ∧ P.bemSolutionConvergence

theorem bem_initial_value_closed_from_evidence
    (P : BEMInitialValuePackage) (E : BEMInitialValueEvidence P) :
    BEMInitialValueClosed P := by
  exact And.intro E.bemSolutionExistenceClosed E.bemSolutionConvergenceClosed

end BoundaryElementMethodsInitialValueCanonicalLaneLean
end HautevilleHouse